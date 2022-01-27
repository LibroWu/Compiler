; ModuleID = 'myBuiltin.cpp'
source_filename = "myBuiltin.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "riscv32"

%struct.String = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline optnone uwtable
define void @print(i8* %0)  {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3)
  ret void
}

declare i32 @printf(i8*, ...) 

; Function Attrs: noinline optnone uwtable
define void @println(i8* %0)  {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @printInt(i32 %0)  {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @printlnInt(i32 %0)  {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define %struct.String* @getString()  {
  %1 = alloca %struct.String*, align 8
  %2 = alloca [255 x i8], align 16
  %3 = call noalias i8* @malloc(i64 12)
  %4 = bitcast i8* %3 to %struct.String*
  store %struct.String* %4, %struct.String** %1, align 8
  %5 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %6 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %8 = call i64 @strlen(i8* %7)
  %9 = trunc i64 %8 to i32
  %10 = load %struct.String*, %struct.String** %1, align 8
  %11 = getelementptr inbounds %struct.String, %struct.String* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.String*, %struct.String** %1, align 8
  %13 = getelementptr inbounds %struct.String, %struct.String* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @malloc(i64 %16)
  %18 = load %struct.String*, %struct.String** %1, align 8
  %19 = getelementptr inbounds %struct.String, %struct.String* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.String*, %struct.String** %1, align 8
  %21 = getelementptr inbounds %struct.String, %struct.String* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %24 = call i8* @strcpy(i8* %22, i8* %23)
  %25 = load %struct.String*, %struct.String** %1, align 8
  ret %struct.String* %25
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) 

declare i32 @__isoc99_scanf(i8*, ...) 

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) 

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*)

; Function Attrs: noinline optnone uwtable
define i32 @getInt()  {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.String* @toString(i32 %0) {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.String*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %5, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  store i32 2, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = call noalias i8* @malloc(i64 %24) #5
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 48, i8* %27, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 0, i8* %29, align 1
  br label %70

30:                                               ; preds = %19
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %35, %30
  %33 = load i32, i32* %2, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = sdiv i32 %36, 10
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %32

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = call noalias i8* @malloc(i64 %42) #5
  store i8* %43, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %44 = load i8, i8* %5, align 1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 45, i8* %48, align 1
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %53, %49
  %51 = load i32, i32* %3, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = srem i32 %54, 10
  %56 = add nsw i32 %55, 48
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  store i8 %57, i8* %64, align 1
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %3, align 4
  %68 = sdiv i32 %67, 10
  store i32 %68, i32* %3, align 4
  br label %50

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %22
  %71 = call noalias i8* @malloc(i64 12) #5
  %72 = bitcast i8* %71 to %struct.String*
  store %struct.String* %72, %struct.String** %8, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.String*, %struct.String** %8, align 8
  %75 = getelementptr inbounds %struct.String, %struct.String* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.String*, %struct.String** %8, align 8
  %79 = getelementptr inbounds %struct.String, %struct.String* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.String*, %struct.String** %8, align 8
  ret %struct.String* %80
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.String* @_string_stringAppend(%struct.String* %0, %struct.String* %1)  {
  %3 = alloca %struct.String*, align 8
  %4 = alloca %struct.String*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.String*, align 8
  store %struct.String* %0, %struct.String** %3, align 8
  store %struct.String* %1, %struct.String** %4, align 8
  %7 = load %struct.String*, %struct.String** %3, align 8
  %8 = getelementptr inbounds %struct.String, %struct.String* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.String*, %struct.String** %4, align 8
  %11 = getelementptr inbounds %struct.String, %struct.String* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %9, %12
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = call noalias i8* @malloc(i64 %15) 
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.String*, %struct.String** %3, align 8
  %19 = getelementptr inbounds %struct.String, %struct.String* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strcpy(i8* %17, i8* %20) 
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.String*, %struct.String** %3, align 8
  %24 = getelementptr inbounds %struct.String, %struct.String* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load %struct.String*, %struct.String** %4, align 8
  %29 = getelementptr inbounds %struct.String, %struct.String* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strcpy(i8* %27, i8* %30) 
  %32 = call noalias i8* @malloc(i64 12) 
  %33 = bitcast i8* %32 to %struct.String*
  store %struct.String* %33, %struct.String** %6, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.String*, %struct.String** %6, align 8
  %36 = getelementptr inbounds %struct.String, %struct.String* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.String*, %struct.String** %3, align 8
  %38 = getelementptr inbounds %struct.String, %struct.String* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.String*, %struct.String** %4, align 8
  %41 = getelementptr inbounds %struct.String, %struct.String* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %39, %42
  %44 = load %struct.String*, %struct.String** %6, align 8
  %45 = getelementptr inbounds %struct.String, %struct.String* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.String*, %struct.String** %6, align 8
  ret %struct.String* %46
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.String* @_string_substring(%struct.String* %0, i32 %1, i32 %2) {
  %4 = alloca %struct.String*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.String*, align 8
  store %struct.String* %0, %struct.String** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = call noalias i8* @malloc(i64 %14) #5
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.String*, %struct.String** %4, align 8
  %23 = getelementptr inbounds %struct.String, %struct.String* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8 %28, i8* %34, align 1
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8 0, i8* %44, align 1
  %45 = call noalias i8* @malloc(i64 12) #5
  %46 = bitcast i8* %45 to %struct.String*
  store %struct.String* %46, %struct.String** %9, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.String*, %struct.String** %9, align 8
  %49 = getelementptr inbounds %struct.String, %struct.String* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load %struct.String*, %struct.String** %9, align 8
  %54 = getelementptr inbounds %struct.String, %struct.String* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.String*, %struct.String** %9, align 8
  ret %struct.String* %55
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_string_parseInt(%struct.String* %0)  {
  %2 = alloca %struct.String*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.String* %0, %struct.String** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.String*, %struct.String** %2, align 8
  %8 = getelementptr inbounds %struct.String, %struct.String* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load %struct.String*, %struct.String** %2, align 8
  %16 = getelementptr inbounds %struct.String, %struct.String* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %6, align 1
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sle i32 %23, 57
  br i1 %24, label %25, label %36

25:                                               ; preds = %14
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sge i32 %27, 48
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %30, 10
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %31, %33
  %35 = sub nsw i32 %34, 48
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %25, %14
  br label %41

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %10

41:                                               ; preds = %36, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_string_ord(%struct.String* %0, i32 %1)  {
  %3 = alloca %struct.String*, align 8
  %4 = alloca i32, align 4
  store %struct.String* %0, %struct.String** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.String*, %struct.String** %3, align 8
  %6 = getelementptr inbounds %struct.String, %struct.String* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_string_length(%struct.String* %0)  {
  %2 = alloca %struct.String*, align 8
  store %struct.String* %0, %struct.String** %2, align 8
  %3 = load %struct.String*, %struct.String** %2, align 8
  %4 = getelementptr inbounds %struct.String, %struct.String* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @_string_getStrcmp(%struct.String* %0, %struct.String* %1)  {
  %3 = alloca %struct.String*, align 8
  %4 = alloca %struct.String*, align 8
  store %struct.String* %0, %struct.String** %3, align 8
  store %struct.String* %1, %struct.String** %4, align 8
  %5 = load %struct.String*, %struct.String** %3, align 8
  %6 = getelementptr inbounds %struct.String, %struct.String* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.String*, %struct.String** %4, align 8
  %9 = getelementptr inbounds %struct.String, %struct.String* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strcmp(i8* %7, i8* %10) 
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) 