; ModuleID = 'main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %__a = alloca <2 x i64>, align 16
  %tmp = alloca <2 x i64>, align 16
  store i32 0, i32* %retval
  %0 = load <2 x i64>* %a, align 16
  store <2 x i64> %0, <2 x i64>* %__a, align 16
  %1 = load <2 x i64>* %__a, align 16
  %2 = call <2 x i64> @llvm.x86.sse2.psll.dq(<2 x i64> %1, i32 512)
  store <2 x i64> %2, <2 x i64>* %tmp
  %3 = load <2 x i64>* %tmp
  store <2 x i64> %3, <2 x i64>* %b, align 16
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 1)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psll.dq(<2 x i64>, i32) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (trunk 205540) (llvm/trunk 205538)"}
