; ModuleID = 'myBuiltin.cpp'
source_filename = "myBuiltin.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "riscv32"

%struct.string = type { i8*, i32 }

@.str = constant [3 x i8] c"%s\00", align 1
@.str.1 = constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = constant [3 x i8] c"%d\00", align 1
@.str.3 = constant [4 x i8] c"%d\0A\00", align 1

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
define %struct.string @getString() {
  %1 = alloca %struct.string, align 8
  %2 = alloca [255 x i8], align 16
  %3 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %6 = call i64 @strlen(i8* %5) 
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.string, %struct.string* %1, i32 0, i32 1
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.string, %struct.string* %1, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = call noalias i8* @malloc(i64 %12) 
  %14 = getelementptr inbounds %struct.string, %struct.string* %1, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.string, %struct.string* %1, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %18 = call i8* @strcpy(i8* %16, i8* %17) 
  %19 = bitcast %struct.string* %1 to %struct.string*
  %20 = load %struct.string, %struct.string* %19, align 8
  ret %struct.string %20
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
define %struct.string @toString(i32 %0)  {
  %2 = alloca %struct.string, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = call noalias i8* @malloc(i64 %12) 
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 48, i8* %15, align 1
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  br label %53

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %22, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %23, 10
  %25 = load i32, i32* %3, align 4
  %26 = srem i32 %25, 10
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 10
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %19

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = call noalias i8* @malloc(i64 %34) 
  store i8* %35, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %39, %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = srem i32 %40, 10
  %42 = add nsw i32 %41, 48
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 %43, i8* %47, align 1
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sdiv i32 %50, 10
  store i32 %51, i32* %4, align 4
  br label %36

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %10
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds %struct.string, %struct.string* %2, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = getelementptr inbounds %struct.string, %struct.string* %2, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = bitcast %struct.string* %2 to %struct.string*
  %59 = load %struct.string, %struct.string* %58, align 8
  ret %struct.string %59
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.string @___Libro___stringAppend(i8* %0, i32 %1, i8* %2, i32 %3)  {
  %5 = alloca %struct.string, align 8
  %6 = alloca %struct.string, align 8
  %7 = alloca %struct.string, align 8
  %8 = alloca i8*, align 8
  %9 = bitcast %struct.string* %6 to %struct.string*
  %10 = getelementptr inbounds %struct.string, %struct.string* %9, i32 0, i32 0
  store i8* %0, i8** %10, align 8
  %11 = getelementptr inbounds %struct.string, %struct.string* %9, i32 0, i32 1
  store i32 %1, i32* %11, align 8
  %12 = bitcast %struct.string* %7 to %struct.string*
  %13 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 0
  store i8* %2, i8** %13, align 8
  %14 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 1
  store i32 %3, i32* %14, align 8
  %15 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %16, %18
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = call noalias i8* @malloc(i64 %21) 
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strcpy(i8* %23, i8* %25) 
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @strcpy(i8* %31, i8* %33) 
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %38, %40
  %42 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = bitcast %struct.string* %5 to %struct.string*
  %44 = load %struct.string, %struct.string* %43, align 8
  ret %struct.string %44
}

; Function Attrs: noinline nounwind optnone uwtable
define zeroext i1 @___Libro___stringLess(i8* %0, i32 %1, i8* %2, i32 %3)  {
  %5 = alloca %struct.string, align 8
  %6 = alloca %struct.string, align 8
  %7 = bitcast %struct.string* %5 to %struct.string*
  %8 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 0
  store i8* %0, i8** %8, align 8
  %9 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 1
  store i32 %1, i32* %9, align 8
  %10 = bitcast %struct.string* %6 to %struct.string*
  %11 = getelementptr inbounds %struct.string, %struct.string* %10, i32 0, i32 0
  store i8* %2, i8** %11, align 8
  %12 = getelementptr inbounds %struct.string, %struct.string* %10, i32 0, i32 1
  store i32 %3, i32* %12, align 8
  %13 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %14, i8* %16) 
  %18 = icmp slt i32 %17, 0
  ret i1 %18
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) 

; Function Attrs: noinline nounwind optnone uwtable
define %struct.string @___Libro___stringSubString(i8* %0, i32 %1, i32 %2, i32 %3)  {
  %5 = alloca %struct.string, align 8
  %6 = alloca %struct.string, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = bitcast %struct.string* %6 to %struct.string*
  %12 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 0
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.string, %struct.string* %11, i32 0, i32 1
  store i32 %1, i32* %13, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = call noalias i8* @malloc(i64 %18) 
  store i8* %19, i8** %9, align 8
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %38, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  store i8 %31, i8* %37, align 1
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = bitcast %struct.string* %5 to %struct.string*
  %53 = load %struct.string, %struct.string* %52, align 8
  ret %struct.string %53
}
