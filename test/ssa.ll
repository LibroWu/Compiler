; ModuleID = 'ssa.ll'
source_filename = "test.ll"

%struct.node = type { i32, i32, %struct.node* }
%struct.string = type { i32, i8* }

@hashsize = global i32 100, align 4
@table = global %struct.node** null, align 4
@.libro.str = constant [2 x i8] c" \00", align 1

define i32 @getHash(i32 %0) {
  %2 = mul i32 %0, 237
  %3 = load i32, i32* @hashsize, align 4
  %4 = srem i32 %2, %3
  br label %5

5:                                                ; preds = %1
  ret i32 %4
}

define void @put(i32 %0, i32 %1) {
  %3 = call i32 @getHash(i32 %0)
  %4 = load %struct.node**, %struct.node*** @table, align 4
  %5 = mul i32 %3, 4
  %6 = add i32 %5, 4
  %7 = bitcast %struct.node** %4 to i8*
  %8 = getelementptr i8, i8* %7, i32 %6
  %9 = bitcast i8* %8 to %struct.node**
  %10 = load %struct.node*, %struct.node** %9, align 4
  %11 = icmp eq %struct.node* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = call i8* @myNew(i32 12)
  %14 = bitcast i8* %13 to %struct.node*
  %15 = load %struct.node**, %struct.node*** @table, align 4
  %16 = mul i32 %3, 4
  %17 = add i32 %16, 4
  %18 = bitcast %struct.node** %15 to i8*
  %19 = getelementptr i8, i8* %18, i32 %17
  %20 = bitcast i8* %19 to %struct.node**
  %21 = load %struct.node*, %struct.node** %20, align 4
  store %struct.node* %14, %struct.node** %20, align 4
  %22 = load %struct.node**, %struct.node*** @table, align 4
  %23 = mul i32 %3, 4
  %24 = add i32 %23, 4
  %25 = bitcast %struct.node** %22 to i8*
  %26 = getelementptr i8, i8* %25, i32 %24
  %27 = bitcast i8* %26 to %struct.node**
  %28 = load %struct.node*, %struct.node** %27, align 4
  %29 = getelementptr %struct.node, %struct.node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %0, i32* %29, align 4
  %31 = load %struct.node**, %struct.node*** @table, align 4
  %32 = mul i32 %3, 4
  %33 = add i32 %32, 4
  %34 = bitcast %struct.node** %31 to i8*
  %35 = getelementptr i8, i8* %34, i32 %33
  %36 = bitcast i8* %35 to %struct.node**
  %37 = load %struct.node*, %struct.node** %36, align 4
  %38 = getelementptr %struct.node, %struct.node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %1, i32* %38, align 4
  %40 = load %struct.node**, %struct.node*** @table, align 4
  %41 = mul i32 %3, 4
  %42 = add i32 %41, 4
  %43 = bitcast %struct.node** %40 to i8*
  %44 = getelementptr i8, i8* %43, i32 %42
  %45 = bitcast i8* %44 to %struct.node**
  %46 = load %struct.node*, %struct.node** %45, align 4
  %47 = getelementptr %struct.node, %struct.node* %46, i32 0, i32 2
  %48 = load %struct.node*, %struct.node** %47, align 4
  store %struct.node* null, %struct.node** %47, align 4
  br label %49

49:                                               ; preds = %82, %12
  ret void

50:                                               ; preds = %2
  %51 = load %struct.node**, %struct.node*** @table, align 4
  %52 = mul i32 %3, 4
  %53 = add i32 %52, 4
  %54 = bitcast %struct.node** %51 to i8*
  %55 = getelementptr i8, i8* %54, i32 %53
  %56 = bitcast i8* %55 to %struct.node**
  %57 = load %struct.node*, %struct.node** %56, align 4
  br label %58

58:                                               ; preds = %79, %50
  %.0 = phi %struct.node* [ %57, %50 ], [ %81, %79 ]
  %59 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, %0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 2
  %64 = load %struct.node*, %struct.node** %63, align 4
  %65 = icmp eq %struct.node* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = call i8* @myNew(i32 12)
  %68 = bitcast i8* %67 to %struct.node*
  %69 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 2
  %70 = load %struct.node*, %struct.node** %69, align 4
  store %struct.node* %68, %struct.node** %69, align 4
  %71 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 2
  %72 = load %struct.node*, %struct.node** %71, align 4
  %73 = getelementptr %struct.node, %struct.node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %0, i32* %73, align 4
  %75 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 2
  %76 = load %struct.node*, %struct.node** %75, align 4
  %77 = getelementptr %struct.node, %struct.node* %76, i32 0, i32 2
  %78 = load %struct.node*, %struct.node** %77, align 4
  store %struct.node* null, %struct.node** %77, align 4
  br label %79

79:                                               ; preds = %66, %62
  %80 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 2
  %81 = load %struct.node*, %struct.node** %80, align 4
  br label %58

82:                                               ; preds = %58
  %83 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %1, i32* %83, align 4
  br label %49
}

define i32 @get(i32 %0) {
  %2 = load %struct.node**, %struct.node*** @table, align 4
  %3 = call i32 @getHash(i32 %0)
  %4 = mul i32 %3, 4
  %5 = add i32 %4, 4
  %6 = bitcast %struct.node** %2 to i8*
  %7 = getelementptr i8, i8* %6, i32 %5
  %8 = bitcast i8* %7 to %struct.node**
  %9 = load %struct.node*, %struct.node** %8, align 4
  br label %10

10:                                               ; preds = %14, %1
  %.0 = phi %struct.node* [ %9, %1 ], [ %16, %14 ]
  %11 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, %0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 2
  %16 = load %struct.node*, %struct.node** %15, align 4
  br label %10

17:                                               ; preds = %10
  %18 = getelementptr %struct.node, %struct.node* %.0, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %17
  ret i32 %19
}

define i32 @main() {
  call void @_GLOBAL_()
  %1 = call i8* @myNew(i32 404)
  %2 = bitcast i8* %1 to i32*
  store i32 100, i32* %2, align 4
  %3 = bitcast i8* %1 to %struct.node**
  %4 = load %struct.node**, %struct.node*** @table, align 4
  store %struct.node** %3, %struct.node*** @table, align 4
  br label %5

5:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %6 = load i32, i32* @hashsize, align 4
  %7 = icmp slt i32 %.0, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load %struct.node**, %struct.node*** @table, align 4
  %10 = mul i32 %.0, 4
  %11 = add i32 %10, 4
  %12 = bitcast %struct.node** %9 to i8*
  %13 = getelementptr i8, i8* %12, i32 %11
  %14 = bitcast i8* %13 to %struct.node**
  %15 = load %struct.node*, %struct.node** %14, align 4
  store %struct.node* null, %struct.node** %14, align 4
  br label %16

16:                                               ; preds = %8
  %17 = add i32 %.0, 1
  br label %5

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %22, %18
  %.1 = phi i32 [ 0, %18 ], [ %23, %22 ]
  %20 = icmp slt i32 %.1, 1000
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  call void @put(i32 %.1, i32 %.1)
  br label %22

22:                                               ; preds = %21
  %23 = add i32 %.1, 1
  br label %19

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %40, %24
  %.2 = phi i32 [ 0, %24 ], [ %41, %40 ]
  %26 = icmp slt i32 %.2, 1000
  br i1 %26, label %27, label %42

27:                                               ; preds = %25
  %28 = call %struct.string* @toString(i32 %.2)
  %29 = call i8* @myNew(i32 12)
  %30 = bitcast i8* %29 to %struct.string*
  %31 = getelementptr %struct.string, %struct.string* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = bitcast [2 x i8]* @.libro.str to i8*
  %33 = getelementptr %struct.string, %struct.string* %30, i32 0, i32 1
  store i8* %32, i8** %33, align 4
  %34 = call %struct.string* @_string_stringAppend(%struct.string* %28, %struct.string* %30)
  %35 = call i32 @get(i32 %.2)
  %36 = call %struct.string* @toString(i32 %35)
  %37 = call %struct.string* @_string_stringAppend(%struct.string* %34, %struct.string* %36)
  %38 = getelementptr %struct.string, %struct.string* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 4
  call void @println(i8* %39)
  br label %40

40:                                               ; preds = %27
  %41 = add i32 %.2, 1
  br label %25

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  ret i32 0
}

define void @_GLOBAL_() {
  ret void
}

declare i32 @_string_length(%struct.string*)

declare %struct.string* @_string_substring(%struct.string*, i32, i32)

declare i32 @_string_parseInt(%struct.string*)

declare i32 @_string_ord(%struct.string*, i32)

declare %struct.string* @_string_stringAppend(%struct.string*, %struct.string*)

declare i32 @_string_getStrcmp(%struct.string*, %struct.string*)

declare %struct.string* @toString(i32)

declare void @print(i8*)

declare void @println(i8*)

declare void @printInt(i32)

declare void @printlnInt(i32)

declare i32 @getInt()

declare %struct.string* @getString()

declare i8* @myNew(i32)
