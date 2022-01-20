; ModuleID = 'myBuiltin.cpp'
source_filename = "myBuiltin.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "riscv32"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline optnone uwtable
define void @print(i8* %0) {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3)
  ret void
}

declare i32 @printf(i8*, ...)

; Function Attrs: noinline optnone uwtable
define void @println(i8* %0) {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @printInt(i32 %0) {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @printlnInt(i32 %0) {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define i8* @getString() {
  %1 = alloca [255 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds [255 x i8], [255 x i8]* %1, i64 0, i64 0
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = getelementptr inbounds [255 x i8], [255 x i8]* %1, i64 0, i64 0
  %7 = call i64 @strlen(i8* %6) 
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @malloc(i64 %11) 
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds [255 x i8], [255 x i8]* %1, i64 0, i64 0
  %15 = call i8* @strcpy(i8* %13, i8* %14) 
  %16 = load i8*, i8** %3, align 8
  ret i8* %16
}

declare i32 @__isoc99_scanf(i8*, ...)

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) 

; Function Attrs: nounwind
declare noalias i8* @malloc(i64)

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*)

; Function Attrs: noinline optnone uwtable
define i32 @getInt() {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @toString(i32 %0) {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  store i32 2, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @malloc(i64 %11) 
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 48, i8* %14, align 1
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  br label %52

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %21, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 10
  %24 = load i32, i32* %2, align 4
  %25 = srem i32 %24, 10
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = sdiv i32 %27, 10
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = call noalias i8* @malloc(i64 %33) 
  store i8* %34, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %38, %31
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = srem i32 %39, 10
  %41 = add nsw i32 %40, 48
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sdiv i32 %49, 10
  store i32 %50, i32* %3, align 4
  br label %35

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %9
  %53 = load i8*, i8** %5, align 8
  ret i8* %53
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @___Libro___stringAppend(i8* %0, i8* %1, i32 %2, i32 %3) {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %10, %11
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = call noalias i8* @malloc(i64 %14) 
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @strcpy(i8* %16, i8* %17) 
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strcpy(i8* %22, i8* %23) 
  %25 = load i8*, i8** %9, align 8
  ret i8* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define i1 @___Libro___stringLess(i8* %0, i8* %1) {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) 
  %8 = icmp slt i32 %7, 0
  ret i1 %8
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) 

; Function Attrs: noinline nounwind optnone uwtable
define i8* @___Libro___stringSubString(i8* %0, i32 %1, i32 %2) {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %9, %10
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call noalias i8* @malloc(i64 %13) 
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %32, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8 %25, i8* %31, align 1
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %7, align 8
  ret i8* %40
}