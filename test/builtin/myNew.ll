; ModuleID = 'myNew.c'
source_filename = "myNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "riscv32"

; Function Attrs: noinline nounwind optnone uwtable
define i8* @myNew(i64 %0) {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 %3) 
  ret i8* %4
}

; Function Attrs: nounwind
declare i8* @malloc(i64) 
