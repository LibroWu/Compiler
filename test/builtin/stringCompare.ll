; ModuleID = 'stringCompare.cpp'
source_filename = "stringCompare.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.String = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z5printPc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z7printlnPc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z8printInti(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z10printlnInti(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.String* @_Z20_string_stringAppendP6StringS0_(%struct.String* %0, %struct.String* %1) #2 {
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
  %16 = call noalias i8* @malloc(i64 %15) #5
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.String*, %struct.String** %3, align 8
  %19 = getelementptr inbounds %struct.String, %struct.String* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strcpy(i8* %17, i8* %20) #5
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.String*, %struct.String** %3, align 8
  %24 = getelementptr inbounds %struct.String, %struct.String* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load %struct.String*, %struct.String** %4, align 8
  %29 = getelementptr inbounds %struct.String, %struct.String* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strcpy(i8* %27, i8* %30) #5
  %32 = call noalias i8* @malloc(i64 12) #5
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

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.String* @_Z23_string_stringSubStringP6Stringii(%struct.String* %0, i32 %1, i32 %2) #2 {
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
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  %43 = call noalias i8* @malloc(i64 12) #5
  %44 = bitcast i8* %43 to %struct.String*
  store %struct.String* %44, %struct.String** %9, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.String*, %struct.String** %9, align 8
  %47 = getelementptr inbounds %struct.String, %struct.String* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load %struct.String*, %struct.String** %9, align 8
  %52 = getelementptr inbounds %struct.String, %struct.String* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.String*, %struct.String** %9, align 8
  ret %struct.String* %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Z22_string_stringParseIntP6String(%struct.String* %0) #2 {
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
define dso_local i32 @_Z17_string_stringOrdP6Stringi(%struct.String* %0, i32 %1) #2 {
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
define dso_local i32 @_Z20_string_stringLengthP6String(%struct.String* %0) #2 {
  %2 = alloca %struct.String*, align 8
  store %struct.String* %0, %struct.String** %2, align 8
  %3 = load %struct.String*, %struct.String** %2, align 8
  %4 = getelementptr inbounds %struct.String, %struct.String* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Z17_string_getStrcmpP6StringS0_(%struct.String* %0, %struct.String* %1) #2 {
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
  %11 = call i32 @strcmp(i8* %7, i8* %10) #6
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.String* @_Z8toStringi(i32 %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.String*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = call noalias i8* @malloc(i64 %12) #5
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 48, i8* %15, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  br label %52

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %23, %18
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = sdiv i32 %24, 10
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %20

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = call noalias i8* @malloc(i64 %30) #5
  store i8* %31, i8** %5, align 8
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %35, %28
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = srem i32 %36, 10
  %38 = add nsw i32 %37, 48
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 %39, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sdiv i32 %49, 10
  store i32 %50, i32* %3, align 4
  br label %32

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %10
  %53 = call noalias i8* @malloc(i64 12) #5
  %54 = bitcast i8* %53 to %struct.String*
  store %struct.String* %54, %struct.String** %7, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.String*, %struct.String** %7, align 8
  %57 = getelementptr inbounds %struct.String, %struct.String* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.String*, %struct.String** %7, align 8
  %61 = getelementptr inbounds %struct.String, %struct.String* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.String*, %struct.String** %7, align 8
  ret %struct.String* %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.String* @_Z17_string_substringP6Stringii(%struct.String* %0, i32 %1, i32 %2) #2 {
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

; Function Attrs: noinline optnone uwtable
define dso_local %struct.String* @_Z9getStringv() #0 {
  %1 = alloca %struct.String*, align 8
  %2 = alloca [255 x i8], align 16
  %3 = call noalias i8* @malloc(i64 12) #5
  %4 = bitcast i8* %3 to %struct.String*
  store %struct.String* %4, %struct.String** %1, align 8
  %5 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %6 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %8 = call i64 @strlen(i8* %7) #6
  %9 = trunc i64 %8 to i32
  %10 = load %struct.String*, %struct.String** %1, align 8
  %11 = getelementptr inbounds %struct.String, %struct.String* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.String*, %struct.String** %1, align 8
  %13 = getelementptr inbounds %struct.String, %struct.String* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @malloc(i64 %16) #5
  %18 = load %struct.String*, %struct.String** %1, align 8
  %19 = getelementptr inbounds %struct.String, %struct.String* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.String*, %struct.String** %1, align 8
  %21 = getelementptr inbounds %struct.String, %struct.String* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %24 = call i8* @strcpy(i8* %22, i8* %23) #5
  %25 = load %struct.String*, %struct.String** %1, align 8
  ret %struct.String* %25
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: noinline optnone uwtable
define dso_local i32 @_Z6getIntv() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
