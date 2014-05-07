//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"

#include "llvm/ExecutionEngine/GenericValue.h"
#include "llvm/ExecutionEngine/Interpreter.h"
#include "llvm/ExecutionEngine/JIT.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Constants.h"

#include "llvm/IR/LegacyPassManager.h"

#include "llvm/Transforms/IPO/PassManagerBuilder.h"


#define __DEBUG__

using namespace llvm;

namespace {
	struct FuncMod : public ModulePass {
		static char ID; // Pass identification, replacement for typeid
		FuncMod() : ModulePass(ID) {}

		public:
		virtual bool runOnModule(Module &M) {
			// don't modify the first sse2 call
			errs() << "run on module!!\n";
			LLVMContext & context = M.getContext();
			Module::FunctionListType & funclist = M.getFunctionList();
			for (Module::FunctionListType::iterator funcit = funclist.begin(); funcit != funclist.end(); funcit++)
			{
				Function & f = *funcit;
				Function::BasicBlockListType & blocklist = f.getBasicBlockList();
				for (Function::BasicBlockListType::iterator bbit = blocklist.begin(); bbit != blocklist.end();)
				{
					BasicBlock & bb = *bbit;

					// if modified, must iterate over this basic block again
					bool modified = false;

					for (BasicBlock::iterator IRit = bb.begin(); IRit != bb.end(); IRit++)
					{
						Instruction & ins = *IRit;
						CallInst * callinst = dyn_cast<CallInst>(&ins);
						if (callinst != 0)
						{
							Function &llvmfunc = *(callinst->getCalledFunction());
							if (llvmfunc.getName() == "llvm.x86.sse2.psll.q")//pass // one to one
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin()+1);
								Value *newvalue = BinaryOperator::CreateShl(v1, v2, "", callinst);
								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								
								modified = true;
								break;
							}

							if (llvmfunc.getName() == "llvm.x86.sse2.pslli.w")//pass // one to one
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin() + 1);
								Constant * y = dyn_cast<Constant>(v2);
								ConstantInt * yint = dyn_cast<ConstantInt>(y);
								if (y == 0)
									errs() << "wrong\n";
								ConstantInt *y16 = ConstantInt::get(Type::getInt16Ty(context), *(yint->getValue().getRawData()));
								Constant *yarray[8];
								for (int i = 0; i < 8; i++)
									yarray[i] = y16;
								ArrayRef<Constant *> yref(yarray, 8);
								Constant * yVector = ConstantVector::get(yref
									);
								BinaryOperator *newvalue = BinaryOperator::CreateShl(v1, yVector, "");
								newvalue->insertAfter(callinst);

								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								modified = true;
								break;
								
							}
							if (llvmfunc.getName() == "llvm.x86.sse2.pslli.q")//pass
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin() + 1);
								Constant * y = dyn_cast<Constant>(v2);
								ConstantInt * yint = dyn_cast<ConstantInt>(y);
								if(y==0)
									errs()<<"wrong\n";
								ConstantInt *y64 = ConstantInt::get(Type::getInt64Ty(context), *(yint->getValue().getRawData()));
								Constant * yarray[2];
								yarray[0] = y64;
								yarray[1] = y64;

								ArrayRef<Constant *> yref(yarray, 2);
								Constant * yVector = ConstantVector::get(yref);
								BinaryOperator *newvalue = BinaryOperator::CreateShl(v1, yVector, "");
								newvalue->insertAfter(callinst);

								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								modified = true;
								break;
							}

							if (llvmfunc.getName() == "llvm.x86.sse2.psll.dq")//pass
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin()+1);
								ConstantInt *y = dyn_cast<ConstantInt>(dyn_cast<Constant>(v2));
								ConstantInt *y128 = ConstantInt::get(Type::getIntNTy(context,128), *(y->getValue().getRawData()));
								// Warning!! don't use CastInst::CreateZExtOrBitCast, it has a wrong type checking
								BitCastInst *x128 = new BitCastInst(v1, Type::getIntNTy(context, 128), "x128");
								//Instruction *x128 = CastInst::CreateZExtOrBitCast(v1, Type::getIntNTy(context, 128), "x128");
								x128->insertAfter(callinst);
								Instruction *newX128 = BinaryOperator::CreateShl(x128, y128, "newX128");
								newX128->insertAfter(x128);
								BitCastInst *newvalue = new BitCastInst(newX128, VectorType::get(Type::getInt64Ty(context),2), "");
								newvalue->insertAfter(newX128);
								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								modified = true;
								break;
							}

							if (llvmfunc.getName() == "llvm.x86.sse2.psrl.q")//pass
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin()+1);
								Value *newvalue = BinaryOperator::CreateLShr(v1, v2, "", callinst);
								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								//!!warning!! : current iterator is invalid !! must jump out of loop
								modified = true;
								break;
							}

							if (llvmfunc.getName() == "llvm.x86.sse2.psrli.w")//pass
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin() + 1);
								Constant * y = dyn_cast<Constant>(v2);
								ConstantInt * yint = dyn_cast<ConstantInt>(y);
								if (y == 0)
								{
									errs() << "wrong\n";
									errs() << *callinst << "\n";
									break;
								}
								ConstantInt *y16 = ConstantInt::get(Type::getInt16Ty(context), *(yint->getValue().getRawData()));
								Constant *yarray[8];
								for (int i = 0; i < 8; i++)
									yarray[i] = y16;
								ArrayRef<Constant *> yref(yarray, 8);
								Constant * yVector = ConstantVector::get(yref);
								BinaryOperator *newvalue = BinaryOperator::CreateLShr(v1, yVector, "");
								newvalue->insertAfter(callinst);

								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								modified = true;
								break;
							}

							if (llvmfunc.getName() == "llvm.x86.sse2.psrli.d")//pass
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin() + 1);
								Constant * y = dyn_cast<Constant>(v2);
								ConstantInt * yint = dyn_cast<ConstantInt>(y);
								ConstantInt *y32 = ConstantInt::get(Type::getInt32Ty(context), *(yint->getValue().getRawData()));
								Constant * yarray[4];
								yarray[0] = yarray[1] = yarray[2] = yarray[3] = y32;
								ArrayRef<Constant *> yref(yarray, 4);
								Constant * yVector = ConstantVector::get(yref);
								BinaryOperator *newvalue = BinaryOperator::CreateLShr(v1, yVector, "");
								newvalue->insertAfter(callinst);
								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								modified = true;
								break;
							}


							if (llvmfunc.getName() == "llvm.x86.sse2.psrli.q")//pass
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin() + 1);
								Constant * y = dyn_cast<Constant>(v2);
								ConstantInt * yint = dyn_cast<ConstantInt>(y);
								ConstantInt *y64 = ConstantInt::get(Type::getInt64Ty(context), *(yint->getValue().getRawData()));
								Constant * y2[2];
								y2[0] = y64;
								y2[1] = y64;
								ArrayRef<Constant *> yref(y2, 2);
								Constant * yVector = ConstantVector::get(yref);
								BinaryOperator *newvalue = BinaryOperator::CreateLShr(v1, yVector, "");
								newvalue->insertAfter(callinst);
								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								modified = true;
								break;
							}

							if (llvmfunc.getName() == "llvm.x86.sse2.psrl.dq")//pass //one to three//two bitcast
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin() + 1);
								ConstantInt *y = dyn_cast<ConstantInt>(dyn_cast<Constant>(v2));
								ConstantInt *y128 = ConstantInt::get(Type::getIntNTy(context, 128), *(y->getValue().getRawData()));
								// error  here
								BitCastInst *x128 = new BitCastInst(v1, Type::getIntNTy(context, 128), "x128");
								//Instruction *x128 = CastInst::CreateZExtOrBitCast(v1, Type::getIntNTy(context, 128), "x128");
								x128->insertAfter(callinst);
								Instruction *newX128 = BinaryOperator::CreateLShr(x128, y128, "newX128");
								newX128->insertAfter(x128);
								BitCastInst *newvalue = new BitCastInst(newX128, VectorType::get(Type::getInt64Ty(context), 2), "");
								newvalue->insertAfter(newX128);
								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
								modified = true;
								break;
							}
							if (llvmfunc.getName() == "llvm.x86.sse2.packuswb.128") //pass //slow
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin() + 1);
								Constant * index[16];
								for (int i = 0; i < 16;i++)
									index[i] = ConstantInt::get(Type::getInt32Ty(context), i);
								ArrayRef <Constant *> indexref(index,16);
								Constant * indexVector = ConstantVector::get(indexref);
								//!! using shuffle vector
								ShuffleVectorInst * xy_16_i16 = new ShuffleVectorInst(v1, v2, indexVector, "xy_16_i16");
								xy_16_i16->insertAfter(callinst);
								TruncInst * xy_16_i8 = new TruncInst(xy_16_i16, VectorType::get(Type::getInt8Ty(context), 16), "xy_16_i8");
								xy_16_i8->insertAfter(xy_16_i16);

								Constant * FF_i16 = ConstantInt::get(Type::getInt16Ty(context), 0xFF);
								Constant * FF_16_i16 = ConstantVector::getSplat(16, FF_i16);
								ICmpInst * xy_sgt_16_i1 = new ICmpInst(ICmpInst::ICMP_SGT, xy_16_i16, FF_16_i16, "xy_sgt_16_i1");
								xy_sgt_16_i1->insertAfter(xy_16_i8);
								
								Constant * FF_i8 = ConstantInt::get(Type::getInt8Ty(context), 0xFF);
								Constant * FF_16_i8 = ConstantVector::getSplat(16, FF_i8);

								SelectInst * xy_result_16_i8 = SelectInst::Create(xy_sgt_16_i1, FF_16_i8, xy_16_i8,"xy_result_16_i8");
								xy_result_16_i8->insertAfter(xy_sgt_16_i1);

								Constant * ZERO_i16 = ConstantInt::get(Type::getInt16Ty(context), 0);
								Constant * ZERO_16_i16 = ConstantVector::getSplat(16, ZERO_i16);
								ICmpInst * xy_slt_16_i1 = new ICmpInst(ICmpInst::ICMP_SLT, xy_16_i16, ZERO_16_i16, "xy_slt_16_i1");
								xy_slt_16_i1->insertAfter(xy_result_16_i8);

								Constant * ZERO_i8 = ConstantInt::get(Type::getInt8Ty(context), 0);
								Constant * ZERO_16_i8 = ConstantVector::getSplat(16, ZERO_i8);
								SelectInst * newvalue = SelectInst::Create(xy_slt_16_i1, ZERO_16_i8, xy_result_16_i8);
								newvalue->insertAfter(xy_slt_16_i1);

								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);

								#ifdef __DEBUG__
								return true;
								#endif

								modified = true;
								break;
							}
						}
					}

					if(!modified)
						bbit++;
				}
			}
			return true;
		}
	};
}

char FuncMod::ID = 0;
static RegisterPass<FuncMod> X("funcmod", "modify a function");


static void registerFuncMod(const PassManagerBuilder &,
	legacy::PassManagerBase &PM) {
	PM.add(new FuncMod());
	errs() << "ok!!??\n";
}
static RegisterStandardPasses
RegisterFuncMod(PassManagerBuilder::EP_EnabledOnOptLevel0,
registerFuncMod);

