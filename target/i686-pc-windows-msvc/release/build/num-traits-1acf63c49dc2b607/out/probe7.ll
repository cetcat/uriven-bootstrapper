; ModuleID = 'probe7.2b7e31889be4461d-cgu.0'
source_filename = "probe7.2b7e31889be4461d-cgu.0"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc"

; core::f64::<impl f64>::to_ne_bytes
; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17h72564e0f9d99105eE"(ptr sret([8 x i8]) align 1 %_0, double %self) unnamed_addr #0 {
start:
  %self1 = bitcast double %self to i64
  store i64 %self1, ptr %_0, align 1
  ret void
}

; probe7::probe
; Function Attrs: uwtable
define void @_ZN6probe75probe17hd020aa8047da86feE() unnamed_addr #1 {
start:
  %_1 = alloca [8 x i8], align 1
; call core::f64::<impl f64>::to_ne_bytes
  call void @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17h72564e0f9d99105eE"(ptr sret([8 x i8]) align 1 %_1, double 3.140000e+00)
  ret void
}

attributes #0 = { inlinehint uwtable "target-cpu"="pentium4" }
attributes #1 = { uwtable "target-cpu"="pentium4" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.85.0-nightly (c94848c04 2024-12-05)"}
