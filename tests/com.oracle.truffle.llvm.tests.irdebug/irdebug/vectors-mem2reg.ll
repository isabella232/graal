; ModuleID = 'vectors.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (i32 ()* @test to void ()*), i8* null }]

; Function Attrs: nounwind uwtable
define i32 @test() #0 {
  %1 = add <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <i32 0, i32 1, i32 2, i32 3>
  %2 = mul <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <i32 0, i32 1, i32 2, i32 3>
  %3 = sub <4 x i32> %2, %1
  %4 = add <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <i32 0, i32 1, i32 2, i32 3>
  %5 = add <4 x i32> %4, %1
  %6 = add <4 x i32> %5, %2
  %7 = add <4 x i32> %6, %3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (tags/RELEASE_381/final)"}
