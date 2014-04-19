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

using namespace llvm;


/*
namespace {
	struct SSE2Eliminate : public ModulePass
	{
		static char ID;
		SSE2Eliminate() :ModulePass(ID) {}

	public:
		virtual bool runOnModule(Module &M)
		{
			LLVMContext & context = M.getContext();

//#define v_2_i64 VectorType::get(Type::getInt64Ty(context) 

			Function *psll_q = cast<Function>(M.getOrInsertFunction("llvm_x86_sse2_psll_q", 
				VectorType::get(Type::getInt64Ty(context),2), 
				VectorType::get(Type::getInt64Ty(context), 2),
				VectorType::get(Type::getInt64Ty(context), 2), (Type*)0));

			Function::ArgumentListType::iterator it = psll_q->arg_begin();
			Argument *x = it;
			x->setName("x");
			Argument *y = ++it;
			y->setName("y");

			BasicBlock *bb = BasicBlock::Create(context, "body", psll_q);
			Value *result = BinaryOperator::CreateShl(x, y, "result",bb);

			ReturnInst::Create(context, result, bb);

//			errs() << *psll_q << "\n";
			return true;
		}

	};
}


char SSE2Eliminate::ID = 0;
static RegisterPass<SSE2Eliminate>
Z("funcins", "insert functions");
*/

namespace {
	struct FuncMod : public ModulePass {
		static char ID; // Pass identification, replacement for typeid
		FuncMod() : ModulePass(ID) {}

	public:
		virtual bool runOnModule(Module &M) {
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
							if (llvmfunc.getName() == "llvm.x86.sse2.psll.q")
							{
								//callinst->setCalledFunction(M.getFunction("llvm_x86_sse2_psll_q"));
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin()+1);
								Value *newvalue = BinaryOperator::CreateShl(v1, v2, "", callinst);
								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
//								callinst->replaceAllUsesWith(llvm_x86_sse2_psll_q);
//								callinst->removeFromParent();
//								!!warning!! : current iterator is invalid !! must jump out of loop
								modified = true;
								break;
							}
							if (llvmfunc.getName() == "llvm.x86.sse2.pslli.q")
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin() + 1);

								/*
								CastInst *newY = CastInst::CreateZExtOrBitCast(v2, Type::getInt64Ty(context),"newY");
								newY->insertAfter(callinst);
								*/

								Constant * y = dyn_cast<Constant>(v2);
								ConstantInt * yint = dyn_cast<ConstantInt>(y);
								if(y==0)
									errs()<<"wrong\n";
								ConstantInt *y64 = ConstantInt::get(Type::getInt64Ty(context), *(yint->getValue().getRawData()));
								Constant * y2[2];
								y2[0] = y64;
								y2[1] = y64;

								ArrayRef<Constant *> yref(y2, 2);
								Constant * yVector = ConstantVector::get(yref);
								// must use vector but not vector
								//Constant * yArray = ConstantArray::get(ArrayType::get(Type::getInt64Ty(context), 2), yref);
								/*
								InsertElementInst *_1 = InsertElementInst::Create(yArray, newY, ConstantInt::get(Type::getInt32Ty(context), 0), "_1");
								_1->insertAfter(newY);
								InsertElementInst *_2 = InsertElementInst::Create(_1, newY, ConstantInt::get(Type::getInt32Ty(context), 1) , "_2");
								_2->insertAfter(_1);

								*/
								//errs()<<*(v1->getType())<<"\n" ;
								//errs()<<*(yArray->getType())<<"\n" ;
								//errs() << *(yVector->getType()) << "\n";

								BinaryOperator *newvalue = BinaryOperator::CreateShl(v1, yVector, "");
								newvalue->insertAfter(callinst);

								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);

								modified = true;
								break;
								
							}
							if (llvmfunc.getName() == "llvm.x86.sse2.psrl.q")
							{
								Value *v1 = *(callinst->op_begin());
								Value *v2 = *(callinst->op_begin()+1);
								Value *newvalue = BinaryOperator::CreateLShr(v1, v2, "", callinst);
								BasicBlock::iterator from(callinst);
								ReplaceInstWithValue(callinst->getParent()->getInstList(), from, newvalue);
//								!!warning!! : current iterator is invalid !! must jump out of loop
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
