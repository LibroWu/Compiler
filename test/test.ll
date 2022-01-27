%struct.string = type { i32, i8* }
%struct.Edge = type { i32, i32, i32 }
%struct.EdgeList = type { %struct.Edge**, i32*, i32*, i32 }
%struct.Array_Node = type { %struct.Node**, i32 }
%struct.Heap_Node = type { %struct.Array_Node* }
%struct.Node = type { i32, i32 }

@n = global i32 0, align 4
@m = global i32 0, align 4
@g = global %struct.EdgeList* null, align 8
@INF = global i32 10000000, align 4

@.libro.str = constant [3 x i8] c"-1\00", align 1
@.libro.str.1 = constant [2 x i8] c" \00", align 1
@.libro.str.2 = constant [1 x i8] c"\00", align 1

define void @_EdgeList_init(%struct.EdgeList* %0,i32 %1,i32 %2){
	%4 = alloca %struct.EdgeList*, align 8
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	store %struct.EdgeList* %0, %struct.EdgeList** %4, align 8
	store i32 %1, i32* %5, align 4
	store i32 %2, i32* %6, align 4
	%8 = load i32, i32* %6, align 4
	%9 = sext i32 %8 to i64
	%10 = mul i64 %9, 8
	%11 = add i64 %10, 4
	%12 = call i8* @myNew(i64 %11)
	%13 = bitcast i8* %12 to i32*
	store i32 %8, i32* %13, align 4
	%14 = bitcast i8* %12 to %struct.Edge**
	%15 = load %struct.EdgeList*, %struct.EdgeList** %4, align 8
	%16 = getelementptr %struct.EdgeList, %struct.EdgeList* %15, i64 0, i32 0
	%17 = load %struct.Edge**, %struct.Edge*** %16, align 8
	store %struct.Edge** %14, %struct.Edge*** %16, align 8
	%18 = load i32, i32* %6, align 4
	%19 = sext i32 %18 to i64
	%20 = mul i64 %19, 4
	%21 = add i64 %20, 4
	%22 = call i8* @myNew(i64 %21)
	%23 = bitcast i8* %22 to i32*
	store i32 %18, i32* %23, align 4
	%24 = bitcast i8* %22 to i32*
	%25 = load %struct.EdgeList*, %struct.EdgeList** %4, align 8
	%26 = getelementptr %struct.EdgeList, %struct.EdgeList* %25, i64 0, i32 1
	%27 = load i32*, i32** %26, align 8
	store i32* %24, i32** %26, align 8
	%28 = load i32, i32* %5, align 4
	%29 = sext i32 %28 to i64
	%30 = mul i64 %29, 4
	%31 = add i64 %30, 4
	%32 = call i8* @myNew(i64 %31)
	%33 = bitcast i8* %32 to i32*
	store i32 %28, i32* %33, align 4
	%34 = bitcast i8* %32 to i32*
	%35 = load %struct.EdgeList*, %struct.EdgeList** %4, align 8
	%36 = getelementptr %struct.EdgeList, %struct.EdgeList* %35, i64 0, i32 2
	%37 = load i32*, i32** %36, align 8
	store i32* %34, i32** %36, align 8
	%38 = load i32, i32* %7, align 4
	store i32 0, i32* %7, align 4
	br label %39

39:
	%40 = load i32, i32* %7, align 4
	%41 = load i32, i32* %6, align 4
	%42 = icmp slt i32 %40, %41
	br i1 %42, label %43, label %59

43:
	%44 = sub i32 0, 1
	%45 = load %struct.EdgeList*, %struct.EdgeList** %4, align 8
	%46 = getelementptr %struct.EdgeList, %struct.EdgeList* %45, i64 0, i32 1
	%47 = load i32*, i32** %46, align 8
	%48 = load i32, i32* %7, align 4
	%49 = sext i32 %48 to i64
	%50 = mul i64 %49, 4
	%51 = add i64 %50, 4
	%52 = bitcast i32* %47 to i8*
	%53 = getelementptr i8, i8* %52, i64 %51
	%54 = bitcast i8* %53 to i32*
	%55 = load i32, i32* %54, align 4
	store i32 %44, i32* %54, align 4
	br label %56

56:
	%57 = load i32, i32* %7, align 4
	%58 = add i32 %57, 1
	store i32 %58, i32* %7, align 4
	br label %39

59:
	%60 = load i32, i32* %7, align 4
	store i32 0, i32* %7, align 4
	br label %61

61:
	%62 = load i32, i32* %7, align 4
	%63 = load i32, i32* %5, align 4
	%64 = icmp slt i32 %62, %63
	br i1 %64, label %65, label %81

65:
	%66 = sub i32 0, 1
	%67 = load %struct.EdgeList*, %struct.EdgeList** %4, align 8
	%68 = getelementptr %struct.EdgeList, %struct.EdgeList* %67, i64 0, i32 2
	%69 = load i32*, i32** %68, align 8
	%70 = load i32, i32* %7, align 4
	%71 = sext i32 %70 to i64
	%72 = mul i64 %71, 4
	%73 = add i64 %72, 4
	%74 = bitcast i32* %69 to i8*
	%75 = getelementptr i8, i8* %74, i64 %73
	%76 = bitcast i8* %75 to i32*
	%77 = load i32, i32* %76, align 4
	store i32 %66, i32* %76, align 4
	br label %78

78:
	%79 = load i32, i32* %7, align 4
	%80 = add i32 %79, 1
	store i32 %80, i32* %7, align 4
	br label %61

81:
	%82 = load %struct.EdgeList*, %struct.EdgeList** %4, align 8
	%83 = getelementptr %struct.EdgeList, %struct.EdgeList* %82, i64 0, i32 3
	%84 = load i32, i32* %83, align 4
	store i32 0, i32* %83, align 4
	br label %85

85:
	ret void
}

define void @_EdgeList_addEdge(%struct.EdgeList* %0,i32 %1,i32 %2,i32 %3){
	%5 = alloca %struct.EdgeList*, align 8
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	%8 = alloca i32, align 4
	%9 = alloca %struct.Edge*, align 8
	store %struct.EdgeList* %0, %struct.EdgeList** %5, align 8
	store i32 %1, i32* %6, align 4
	store i32 %2, i32* %7, align 4
	store i32 %3, i32* %8, align 4
	%10 = call i8* @myNew(i64 12)
	%11 = bitcast i8* %10 to %struct.Edge*
	store %struct.Edge* %11, %struct.Edge** %9, align 8
	%12 = load i32, i32* %6, align 4
	%13 = load %struct.Edge*, %struct.Edge** %9, align 8
	%14 = getelementptr %struct.Edge, %struct.Edge* %13, i64 0, i32 0
	%15 = load i32, i32* %14, align 4
	store i32 %12, i32* %14, align 4
	%16 = load i32, i32* %7, align 4
	%17 = load %struct.Edge*, %struct.Edge** %9, align 8
	%18 = getelementptr %struct.Edge, %struct.Edge* %17, i64 0, i32 1
	%19 = load i32, i32* %18, align 4
	store i32 %16, i32* %18, align 4
	%20 = load i32, i32* %8, align 4
	%21 = load %struct.Edge*, %struct.Edge** %9, align 8
	%22 = getelementptr %struct.Edge, %struct.Edge* %21, i64 0, i32 2
	%23 = load i32, i32* %22, align 4
	store i32 %20, i32* %22, align 4
	%24 = load %struct.Edge*, %struct.Edge** %9, align 8
	%25 = load %struct.EdgeList*, %struct.EdgeList** %5, align 8
	%26 = getelementptr %struct.EdgeList, %struct.EdgeList* %25, i64 0, i32 0
	%27 = load %struct.Edge**, %struct.Edge*** %26, align 8
	%28 = load %struct.EdgeList*, %struct.EdgeList** %5, align 8
	%29 = getelementptr %struct.EdgeList, %struct.EdgeList* %28, i64 0, i32 3
	%30 = load i32, i32* %29, align 4
	%31 = sext i32 %30 to i64
	%32 = mul i64 %31, 8
	%33 = add i64 %32, 4
	%34 = bitcast %struct.Edge** %27 to i8*
	%35 = getelementptr i8, i8* %34, i64 %33
	%36 = bitcast i8* %35 to %struct.Edge**
	%37 = load %struct.Edge*, %struct.Edge** %36, align 8
	store %struct.Edge* %24, %struct.Edge** %36, align 8
	%38 = load %struct.EdgeList*, %struct.EdgeList** %5, align 8
	%39 = getelementptr %struct.EdgeList, %struct.EdgeList* %38, i64 0, i32 2
	%40 = load i32*, i32** %39, align 8
	%41 = load i32, i32* %6, align 4
	%42 = sext i32 %41 to i64
	%43 = mul i64 %42, 4
	%44 = add i64 %43, 4
	%45 = bitcast i32* %40 to i8*
	%46 = getelementptr i8, i8* %45, i64 %44
	%47 = bitcast i8* %46 to i32*
	%48 = load i32, i32* %47, align 4
	%49 = load %struct.EdgeList*, %struct.EdgeList** %5, align 8
	%50 = getelementptr %struct.EdgeList, %struct.EdgeList* %49, i64 0, i32 1
	%51 = load i32*, i32** %50, align 8
	%52 = load %struct.EdgeList*, %struct.EdgeList** %5, align 8
	%53 = getelementptr %struct.EdgeList, %struct.EdgeList* %52, i64 0, i32 3
	%54 = load i32, i32* %53, align 4
	%55 = sext i32 %54 to i64
	%56 = mul i64 %55, 4
	%57 = add i64 %56, 4
	%58 = bitcast i32* %51 to i8*
	%59 = getelementptr i8, i8* %58, i64 %57
	%60 = bitcast i8* %59 to i32*
	%61 = load i32, i32* %60, align 4
	store i32 %48, i32* %60, align 4
	%62 = load %struct.EdgeList*, %struct.EdgeList** %5, align 8
	%63 = getelementptr %struct.EdgeList, %struct.EdgeList* %62, i64 0, i32 3
	%64 = load i32, i32* %63, align 4
	%65 = load %struct.EdgeList*, %struct.EdgeList** %5, align 8
	%66 = getelementptr %struct.EdgeList, %struct.EdgeList* %65, i64 0, i32 2
	%67 = load i32*, i32** %66, align 8
	%68 = load i32, i32* %6, align 4
	%69 = sext i32 %68 to i64
	%70 = mul i64 %69, 4
	%71 = add i64 %70, 4
	%72 = bitcast i32* %67 to i8*
	%73 = getelementptr i8, i8* %72, i64 %71
	%74 = bitcast i8* %73 to i32*
	%75 = load i32, i32* %74, align 4
	store i32 %64, i32* %74, align 4
	%76 = load %struct.EdgeList*, %struct.EdgeList** %5, align 8
	%77 = getelementptr %struct.EdgeList, %struct.EdgeList* %76, i64 0, i32 3
	%78 = load i32, i32* %77, align 4
	%79 = add i32 %78, 1
	store i32 %79, i32* %77, align 4
	br label %80

80:
	ret void
}

define i32 @_EdgeList_nVertices(%struct.EdgeList* %0){
	%2 = alloca %struct.EdgeList*, align 8
	%3 = alloca i32, align 4
	store %struct.EdgeList* %0, %struct.EdgeList** %2, align 8
	store i32 0, i32* %3, align 4
	%4 = load %struct.EdgeList*, %struct.EdgeList** %2, align 8
	%5 = getelementptr %struct.EdgeList, %struct.EdgeList* %4, i64 0, i32 2
	%6 = load i32*, i32** %5, align 8
	%7 = bitcast i32* %6 to i32*
	%8 = getelementptr i32, i32* %7, i64 0
	%9 = load i32, i32* %8, align 4
	store i32 %9, i32* %3, align 4
	br label %10

10:
	%11 = load i32, i32* %3, align 4
	ret i32 %11
}

define i32 @_EdgeList_nEdges(%struct.EdgeList* %0){
	%2 = alloca %struct.EdgeList*, align 8
	%3 = alloca i32, align 4
	store %struct.EdgeList* %0, %struct.EdgeList** %2, align 8
	store i32 0, i32* %3, align 4
	%4 = load %struct.EdgeList*, %struct.EdgeList** %2, align 8
	%5 = getelementptr %struct.EdgeList, %struct.EdgeList* %4, i64 0, i32 0
	%6 = load %struct.Edge**, %struct.Edge*** %5, align 8
	%7 = bitcast %struct.Edge** %6 to i32*
	%8 = getelementptr i32, i32* %7, i64 0
	%9 = load i32, i32* %8, align 4
	store i32 %9, i32* %3, align 4
	br label %10

10:
	%11 = load i32, i32* %3, align 4
	ret i32 %11
}

define void @_Array_Node_push_back(%struct.Array_Node* %0,%struct.Node* %1){
	%3 = alloca %struct.Array_Node*, align 8
	%4 = alloca %struct.Node*, align 8
	store %struct.Array_Node* %0, %struct.Array_Node** %3, align 8
	store %struct.Node* %1, %struct.Node** %4, align 8
	%5 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	%6 = call i32 @_Array_Node_size(%struct.Array_Node* %5)
	%7 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	%8 = getelementptr %struct.Array_Node, %struct.Array_Node* %7, i64 0, i32 0
	%9 = load %struct.Node**, %struct.Node*** %8, align 8
	%10 = bitcast %struct.Node** %9 to i32*
	%11 = getelementptr i32, i32* %10, i64 0
	%12 = load i32, i32* %11, align 4
	%13 = icmp eq i32 %6, %12
	br i1 %13, label %14, label %16

14:
	%15 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	call void @_Array_Node_doubleStorage(%struct.Array_Node* %15)
	br label %16

16:
	%17 = load %struct.Node*, %struct.Node** %4, align 8
	%18 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	%19 = getelementptr %struct.Array_Node, %struct.Array_Node* %18, i64 0, i32 0
	%20 = load %struct.Node**, %struct.Node*** %19, align 8
	%21 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	%22 = getelementptr %struct.Array_Node, %struct.Array_Node* %21, i64 0, i32 1
	%23 = load i32, i32* %22, align 4
	%24 = sext i32 %23 to i64
	%25 = mul i64 %24, 8
	%26 = add i64 %25, 4
	%27 = bitcast %struct.Node** %20 to i8*
	%28 = getelementptr i8, i8* %27, i64 %26
	%29 = bitcast i8* %28 to %struct.Node**
	%30 = load %struct.Node*, %struct.Node** %29, align 8
	store %struct.Node* %17, %struct.Node** %29, align 8
	%31 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	%32 = getelementptr %struct.Array_Node, %struct.Array_Node* %31, i64 0, i32 1
	%33 = load i32, i32* %32, align 4
	%34 = add i32 %33, 1
	store i32 %34, i32* %32, align 4
	br label %35

35:
	ret void
}

define %struct.Node* @_Array_Node_pop_back(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 8
	%3 = alloca %struct.Node*, align 8
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 8
	store %struct.Node* null, %struct.Node** %3, align 8
	%4 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i64 0, i32 1
	%6 = load i32, i32* %5, align 4
	%7 = sub i32 %6, 1
	store i32 %7, i32* %5, align 4
	%8 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %8, i64 0, i32 0
	%10 = load %struct.Node**, %struct.Node*** %9, align 8
	%11 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%12 = getelementptr %struct.Array_Node, %struct.Array_Node* %11, i64 0, i32 1
	%13 = load i32, i32* %12, align 4
	%14 = sext i32 %13 to i64
	%15 = mul i64 %14, 8
	%16 = add i64 %15, 4
	%17 = bitcast %struct.Node** %10 to i8*
	%18 = getelementptr i8, i8* %17, i64 %16
	%19 = bitcast i8* %18 to %struct.Node**
	%20 = load %struct.Node*, %struct.Node** %19, align 8
	store %struct.Node* %20, %struct.Node** %3, align 8
	br label %21

21:
	%22 = load %struct.Node*, %struct.Node** %3, align 8
	ret %struct.Node* %22
}

define %struct.Node* @_Array_Node_back(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 8
	%3 = alloca %struct.Node*, align 8
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 8
	store %struct.Node* null, %struct.Node** %3, align 8
	%4 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i64 0, i32 0
	%6 = load %struct.Node**, %struct.Node*** %5, align 8
	%7 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%8 = getelementptr %struct.Array_Node, %struct.Array_Node* %7, i64 0, i32 1
	%9 = load i32, i32* %8, align 4
	%10 = sub i32 %9, 1
	%11 = sext i32 %10 to i64
	%12 = mul i64 %11, 8
	%13 = add i64 %12, 4
	%14 = bitcast %struct.Node** %6 to i8*
	%15 = getelementptr i8, i8* %14, i64 %13
	%16 = bitcast i8* %15 to %struct.Node**
	%17 = load %struct.Node*, %struct.Node** %16, align 8
	store %struct.Node* %17, %struct.Node** %3, align 8
	br label %18

18:
	%19 = load %struct.Node*, %struct.Node** %3, align 8
	ret %struct.Node* %19
}

define %struct.Node* @_Array_Node_front(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 8
	%3 = alloca %struct.Node*, align 8
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 8
	store %struct.Node* null, %struct.Node** %3, align 8
	%4 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i64 0, i32 0
	%6 = load %struct.Node**, %struct.Node*** %5, align 8
	%7 = sext i32 0 to i64
	%8 = mul i64 %7, 8
	%9 = add i64 %8, 4
	%10 = bitcast %struct.Node** %6 to i8*
	%11 = getelementptr i8, i8* %10, i64 %9
	%12 = bitcast i8* %11 to %struct.Node**
	%13 = load %struct.Node*, %struct.Node** %12, align 8
	store %struct.Node* %13, %struct.Node** %3, align 8
	br label %14

14:
	%15 = load %struct.Node*, %struct.Node** %3, align 8
	ret %struct.Node* %15
}

define i32 @_Array_Node_size(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 8
	%3 = alloca i32, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 8
	store i32 0, i32* %3, align 4
	%4 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i64 0, i32 1
	%6 = load i32, i32* %5, align 4
	store i32 %6, i32* %3, align 4
	br label %7

7:
	%8 = load i32, i32* %3, align 4
	ret i32 %8
}

define void @_Array_Node_resize(%struct.Array_Node* %0,i32 %1){
	%3 = alloca %struct.Array_Node*, align 8
	%4 = alloca i32, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %3, align 8
	store i32 %1, i32* %4, align 4
	br label %5

5:
	%6 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	%7 = getelementptr %struct.Array_Node, %struct.Array_Node* %6, i64 0, i32 0
	%8 = load %struct.Node**, %struct.Node*** %7, align 8
	%9 = bitcast %struct.Node** %8 to i32*
	%10 = getelementptr i32, i32* %9, i64 0
	%11 = load i32, i32* %10, align 4
	%12 = load i32, i32* %4, align 4
	%13 = icmp slt i32 %11, %12
	br i1 %13, label %14, label %16

14:
	%15 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	call void @_Array_Node_doubleStorage(%struct.Array_Node* %15)
	br label %5

16:
	%17 = load i32, i32* %4, align 4
	%18 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	%19 = getelementptr %struct.Array_Node, %struct.Array_Node* %18, i64 0, i32 1
	%20 = load i32, i32* %19, align 4
	store i32 %17, i32* %19, align 4
	br label %21

21:
	ret void
}

define %struct.Node* @_Array_Node_get(%struct.Array_Node* %0,i32 %1){
	%3 = alloca %struct.Array_Node*, align 8
	%4 = alloca %struct.Node*, align 8
	%5 = alloca i32, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %3, align 8
	store %struct.Node* null, %struct.Node** %4, align 8
	store i32 %1, i32* %5, align 4
	%6 = load %struct.Array_Node*, %struct.Array_Node** %3, align 8
	%7 = getelementptr %struct.Array_Node, %struct.Array_Node* %6, i64 0, i32 0
	%8 = load %struct.Node**, %struct.Node*** %7, align 8
	%9 = load i32, i32* %5, align 4
	%10 = sext i32 %9 to i64
	%11 = mul i64 %10, 8
	%12 = add i64 %11, 4
	%13 = bitcast %struct.Node** %8 to i8*
	%14 = getelementptr i8, i8* %13, i64 %12
	%15 = bitcast i8* %14 to %struct.Node**
	%16 = load %struct.Node*, %struct.Node** %15, align 8
	store %struct.Node* %16, %struct.Node** %4, align 8
	br label %17

17:
	%18 = load %struct.Node*, %struct.Node** %4, align 8
	ret %struct.Node* %18
}

define void @_Array_Node_set(%struct.Array_Node* %0,i32 %1,%struct.Node* %2){
	%4 = alloca %struct.Array_Node*, align 8
	%5 = alloca i32, align 4
	%6 = alloca %struct.Node*, align 8
	store %struct.Array_Node* %0, %struct.Array_Node** %4, align 8
	store i32 %1, i32* %5, align 4
	store %struct.Node* %2, %struct.Node** %6, align 8
	%7 = load %struct.Node*, %struct.Node** %6, align 8
	%8 = load %struct.Array_Node*, %struct.Array_Node** %4, align 8
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %8, i64 0, i32 0
	%10 = load %struct.Node**, %struct.Node*** %9, align 8
	%11 = load i32, i32* %5, align 4
	%12 = sext i32 %11 to i64
	%13 = mul i64 %12, 8
	%14 = add i64 %13, 4
	%15 = bitcast %struct.Node** %10 to i8*
	%16 = getelementptr i8, i8* %15, i64 %14
	%17 = bitcast i8* %16 to %struct.Node**
	%18 = load %struct.Node*, %struct.Node** %17, align 8
	store %struct.Node* %7, %struct.Node** %17, align 8
	br label %19

19:
	ret void
}

define void @_Array_Node_swap(%struct.Array_Node* %0,i32 %1,i32 %2){
	%4 = alloca %struct.Array_Node*, align 8
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca %struct.Node*, align 8
	store %struct.Array_Node* %0, %struct.Array_Node** %4, align 8
	store i32 %1, i32* %5, align 4
	store i32 %2, i32* %6, align 4
	%8 = load %struct.Array_Node*, %struct.Array_Node** %4, align 8
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %8, i64 0, i32 0
	%10 = load %struct.Node**, %struct.Node*** %9, align 8
	%11 = load i32, i32* %5, align 4
	%12 = sext i32 %11 to i64
	%13 = mul i64 %12, 8
	%14 = add i64 %13, 4
	%15 = bitcast %struct.Node** %10 to i8*
	%16 = getelementptr i8, i8* %15, i64 %14
	%17 = bitcast i8* %16 to %struct.Node**
	%18 = load %struct.Node*, %struct.Node** %17, align 8
	store %struct.Node* %18, %struct.Node** %7, align 8
	%19 = load %struct.Array_Node*, %struct.Array_Node** %4, align 8
	%20 = getelementptr %struct.Array_Node, %struct.Array_Node* %19, i64 0, i32 0
	%21 = load %struct.Node**, %struct.Node*** %20, align 8
	%22 = load i32, i32* %6, align 4
	%23 = sext i32 %22 to i64
	%24 = mul i64 %23, 8
	%25 = add i64 %24, 4
	%26 = bitcast %struct.Node** %21 to i8*
	%27 = getelementptr i8, i8* %26, i64 %25
	%28 = bitcast i8* %27 to %struct.Node**
	%29 = load %struct.Node*, %struct.Node** %28, align 8
	%30 = load %struct.Array_Node*, %struct.Array_Node** %4, align 8
	%31 = getelementptr %struct.Array_Node, %struct.Array_Node* %30, i64 0, i32 0
	%32 = load %struct.Node**, %struct.Node*** %31, align 8
	%33 = load i32, i32* %5, align 4
	%34 = sext i32 %33 to i64
	%35 = mul i64 %34, 8
	%36 = add i64 %35, 4
	%37 = bitcast %struct.Node** %32 to i8*
	%38 = getelementptr i8, i8* %37, i64 %36
	%39 = bitcast i8* %38 to %struct.Node**
	%40 = load %struct.Node*, %struct.Node** %39, align 8
	store %struct.Node* %29, %struct.Node** %39, align 8
	%41 = load %struct.Node*, %struct.Node** %7, align 8
	%42 = load %struct.Array_Node*, %struct.Array_Node** %4, align 8
	%43 = getelementptr %struct.Array_Node, %struct.Array_Node* %42, i64 0, i32 0
	%44 = load %struct.Node**, %struct.Node*** %43, align 8
	%45 = load i32, i32* %6, align 4
	%46 = sext i32 %45 to i64
	%47 = mul i64 %46, 8
	%48 = add i64 %47, 4
	%49 = bitcast %struct.Node** %44 to i8*
	%50 = getelementptr i8, i8* %49, i64 %48
	%51 = bitcast i8* %50 to %struct.Node**
	%52 = load %struct.Node*, %struct.Node** %51, align 8
	store %struct.Node* %41, %struct.Node** %51, align 8
	br label %53

53:
	ret void
}

define void @_Array_Node_doubleStorage(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 8
	%3 = alloca %struct.Node**, align 8
	%4 = alloca i32, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 8
	%5 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%6 = getelementptr %struct.Array_Node, %struct.Array_Node* %5, i64 0, i32 0
	%7 = load %struct.Node**, %struct.Node*** %6, align 8
	store %struct.Node** %7, %struct.Node*** %3, align 8
	%8 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %8, i64 0, i32 1
	%10 = load i32, i32* %9, align 4
	store i32 %10, i32* %4, align 4
	%11 = load %struct.Node**, %struct.Node*** %3, align 8
	%12 = bitcast %struct.Node** %11 to i32*
	%13 = getelementptr i32, i32* %12, i64 0
	%14 = load i32, i32* %13, align 4
	%15 = mul i32 %14, 2
	%16 = sext i32 %15 to i64
	%17 = mul i64 %16, 8
	%18 = add i64 %17, 4
	%19 = call i8* @myNew(i64 %18)
	%20 = bitcast i8* %19 to i32*
	store i32 %15, i32* %20, align 4
	%21 = bitcast i8* %19 to %struct.Node**
	%22 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%23 = getelementptr %struct.Array_Node, %struct.Array_Node* %22, i64 0, i32 0
	%24 = load %struct.Node**, %struct.Node*** %23, align 8
	store %struct.Node** %21, %struct.Node*** %23, align 8
	%25 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%26 = getelementptr %struct.Array_Node, %struct.Array_Node* %25, i64 0, i32 1
	%27 = load i32, i32* %26, align 4
	store i32 0, i32* %26, align 4
	br label %28

28:
	%29 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%30 = getelementptr %struct.Array_Node, %struct.Array_Node* %29, i64 0, i32 1
	%31 = load i32, i32* %30, align 4
	%32 = load i32, i32* %4, align 4
	%33 = icmp ne i32 %31, %32
	br i1 %33, label %34, label %64

34:
	%35 = load %struct.Node**, %struct.Node*** %3, align 8
	%36 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%37 = getelementptr %struct.Array_Node, %struct.Array_Node* %36, i64 0, i32 1
	%38 = load i32, i32* %37, align 4
	%39 = sext i32 %38 to i64
	%40 = mul i64 %39, 8
	%41 = add i64 %40, 4
	%42 = bitcast %struct.Node** %35 to i8*
	%43 = getelementptr i8, i8* %42, i64 %41
	%44 = bitcast i8* %43 to %struct.Node**
	%45 = load %struct.Node*, %struct.Node** %44, align 8
	%46 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%47 = getelementptr %struct.Array_Node, %struct.Array_Node* %46, i64 0, i32 0
	%48 = load %struct.Node**, %struct.Node*** %47, align 8
	%49 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%50 = getelementptr %struct.Array_Node, %struct.Array_Node* %49, i64 0, i32 1
	%51 = load i32, i32* %50, align 4
	%52 = sext i32 %51 to i64
	%53 = mul i64 %52, 8
	%54 = add i64 %53, 4
	%55 = bitcast %struct.Node** %48 to i8*
	%56 = getelementptr i8, i8* %55, i64 %54
	%57 = bitcast i8* %56 to %struct.Node**
	%58 = load %struct.Node*, %struct.Node** %57, align 8
	store %struct.Node* %45, %struct.Node** %57, align 8
	br label %59

59:
	%60 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%61 = getelementptr %struct.Array_Node, %struct.Array_Node* %60, i64 0, i32 1
	%62 = load i32, i32* %61, align 4
	%63 = add i32 %62, 1
	store i32 %63, i32* %61, align 4
	br label %28

64:
	br label %65

65:
	ret void
}

define void @_Array_Node_Array_Node(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 8
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 8
	%3 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%4 = getelementptr %struct.Array_Node, %struct.Array_Node* %3, i64 0, i32 1
	%5 = load i32, i32* %4, align 4
	store i32 0, i32* %4, align 4
	%6 = call i8* @myNew(i64 132)
	%7 = bitcast i8* %6 to i32*
	store i32 16, i32* %7, align 4
	%8 = bitcast i8* %6 to %struct.Node**
	%9 = load %struct.Array_Node*, %struct.Array_Node** %2, align 8
	%10 = getelementptr %struct.Array_Node, %struct.Array_Node* %9, i64 0, i32 0
	%11 = load %struct.Node**, %struct.Node*** %10, align 8
	store %struct.Node** %8, %struct.Node*** %10, align 8
	br label %12

12:
	ret void
}

define void @_Heap_Node_push(%struct.Heap_Node* %0,%struct.Node* %1){
	%3 = alloca %struct.Heap_Node*, align 8
	%4 = alloca %struct.Node*, align 8
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 8
	store %struct.Node* %1, %struct.Node** %4, align 8
	%7 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%8 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %7, i64 0, i32 0
	%9 = load %struct.Array_Node*, %struct.Array_Node** %8, align 8
	%10 = load %struct.Node*, %struct.Node** %4, align 8
	call void @_Array_Node_push_back(%struct.Array_Node* %9, %struct.Node* %10)
	%11 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%12 = call i32 @_Heap_Node_size(%struct.Heap_Node* %11)
	%13 = sub i32 %12, 1
	store i32 %13, i32* %5, align 4
	br label %14

14:
	%15 = load i32, i32* %5, align 4
	%16 = icmp sgt i32 %15, 0
	br i1 %16, label %17, label %43

17:
	%18 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%19 = load i32, i32* %5, align 4
	%20 = call i32 @_Heap_Node_pnt(%struct.Heap_Node* %18, i32 %19)
	store i32 %20, i32* %6, align 4
	%21 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%22 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %21, i64 0, i32 0
	%23 = load %struct.Array_Node*, %struct.Array_Node** %22, align 8
	%24 = load i32, i32* %6, align 4
	%25 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %23, i32 %24)
	%26 = call i32 @_Node_key_(%struct.Node* %25)
	%27 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%28 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %27, i64 0, i32 0
	%29 = load %struct.Array_Node*, %struct.Array_Node** %28, align 8
	%30 = load i32, i32* %5, align 4
	%31 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %29, i32 %30)
	%32 = call i32 @_Node_key_(%struct.Node* %31)
	%33 = icmp sge i32 %26, %32
	br i1 %33, label %34, label %35

34:
	br label %43

35:
	%36 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%37 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %36, i64 0, i32 0
	%38 = load %struct.Array_Node*, %struct.Array_Node** %37, align 8
	%39 = load i32, i32* %6, align 4
	%40 = load i32, i32* %5, align 4
	call void @_Array_Node_swap(%struct.Array_Node* %38, i32 %39, i32 %40)
	%41 = load i32, i32* %6, align 4
	%42 = load i32, i32* %5, align 4
	store i32 %41, i32* %5, align 4
	br label %14

43:
	br label %44

44:
	ret void
}

define %struct.Node* @_Heap_Node_pop(%struct.Heap_Node* %0){
	%2 = alloca %struct.Heap_Node*, align 8
	%3 = alloca %struct.Node*, align 8
	%4 = alloca %struct.Node*, align 8
	store %struct.Heap_Node* %0, %struct.Heap_Node** %2, align 8
	store %struct.Node* null, %struct.Node** %3, align 8
	%5 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 8
	%6 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %5, i64 0, i32 0
	%7 = load %struct.Array_Node*, %struct.Array_Node** %6, align 8
	%8 = call %struct.Node* @_Array_Node_front(%struct.Array_Node* %7)
	store %struct.Node* %8, %struct.Node** %4, align 8
	%9 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 8
	%10 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %9, i64 0, i32 0
	%11 = load %struct.Array_Node*, %struct.Array_Node** %10, align 8
	%12 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 8
	%13 = call i32 @_Heap_Node_size(%struct.Heap_Node* %12)
	%14 = sub i32 %13, 1
	call void @_Array_Node_swap(%struct.Array_Node* %11, i32 0, i32 %14)
	%15 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 8
	%16 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %15, i64 0, i32 0
	%17 = load %struct.Array_Node*, %struct.Array_Node** %16, align 8
	%18 = call %struct.Node* @_Array_Node_pop_back(%struct.Array_Node* %17)
	%19 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 8
	call void @_Heap_Node_maxHeapify(%struct.Heap_Node* %19, i32 0)
	%20 = load %struct.Node*, %struct.Node** %4, align 8
	store %struct.Node* %20, %struct.Node** %3, align 8
	br label %21

21:
	%22 = load %struct.Node*, %struct.Node** %3, align 8
	ret %struct.Node* %22
}

define %struct.Node* @_Heap_Node_top(%struct.Heap_Node* %0){
	%2 = alloca %struct.Heap_Node*, align 8
	%3 = alloca %struct.Node*, align 8
	store %struct.Heap_Node* %0, %struct.Heap_Node** %2, align 8
	store %struct.Node* null, %struct.Node** %3, align 8
	%4 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 8
	%5 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %4, i64 0, i32 0
	%6 = load %struct.Array_Node*, %struct.Array_Node** %5, align 8
	%7 = call %struct.Node* @_Array_Node_front(%struct.Array_Node* %6)
	store %struct.Node* %7, %struct.Node** %3, align 8
	br label %8

8:
	%9 = load %struct.Node*, %struct.Node** %3, align 8
	ret %struct.Node* %9
}

define i32 @_Heap_Node_size(%struct.Heap_Node* %0){
	%2 = alloca %struct.Heap_Node*, align 8
	%3 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %2, align 8
	store i32 0, i32* %3, align 4
	%4 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 8
	%5 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %4, i64 0, i32 0
	%6 = load %struct.Array_Node*, %struct.Array_Node** %5, align 8
	%7 = call i32 @_Array_Node_size(%struct.Array_Node* %6)
	store i32 %7, i32* %3, align 4
	br label %8

8:
	%9 = load i32, i32* %3, align 4
	ret i32 %9
}

define i32 @_Heap_Node_lchild(%struct.Heap_Node* %0,i32 %1){
	%3 = alloca %struct.Heap_Node*, align 8
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 8
	store i32 0, i32* %4, align 4
	store i32 %1, i32* %5, align 4
	%6 = load i32, i32* %5, align 4
	%7 = mul i32 %6, 2
	%8 = add i32 %7, 1
	store i32 %8, i32* %4, align 4
	br label %9

9:
	%10 = load i32, i32* %4, align 4
	ret i32 %10
}

define i32 @_Heap_Node_rchild(%struct.Heap_Node* %0,i32 %1){
	%3 = alloca %struct.Heap_Node*, align 8
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 8
	store i32 0, i32* %4, align 4
	store i32 %1, i32* %5, align 4
	%6 = load i32, i32* %5, align 4
	%7 = mul i32 %6, 2
	%8 = add i32 %7, 2
	store i32 %8, i32* %4, align 4
	br label %9

9:
	%10 = load i32, i32* %4, align 4
	ret i32 %10
}

define i32 @_Heap_Node_pnt(%struct.Heap_Node* %0,i32 %1){
	%3 = alloca %struct.Heap_Node*, align 8
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 8
	store i32 0, i32* %4, align 4
	store i32 %1, i32* %5, align 4
	%6 = load i32, i32* %5, align 4
	%7 = sub i32 %6, 1
	%8 = sdiv i32 %7, 2
	store i32 %8, i32* %4, align 4
	br label %9

9:
	%10 = load i32, i32* %4, align 4
	ret i32 %10
}

define void @_Heap_Node_maxHeapify(%struct.Heap_Node* %0,i32 %1){
	%3 = alloca %struct.Heap_Node*, align 8
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 8
	store i32 %1, i32* %4, align 4
	%8 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%9 = load i32, i32* %4, align 4
	%10 = call i32 @_Heap_Node_lchild(%struct.Heap_Node* %8, i32 %9)
	store i32 %10, i32* %5, align 4
	%11 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%12 = load i32, i32* %4, align 4
	%13 = call i32 @_Heap_Node_rchild(%struct.Heap_Node* %11, i32 %12)
	store i32 %13, i32* %6, align 4
	%14 = load i32, i32* %4, align 4
	store i32 %14, i32* %7, align 4
	%15 = load i32, i32* %5, align 4
	%16 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%17 = call i32 @_Heap_Node_size(%struct.Heap_Node* %16)
	%18 = icmp slt i32 %15, %17
	br i1 %18, label %19, label %33

19:
	%20 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%21 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %20, i64 0, i32 0
	%22 = load %struct.Array_Node*, %struct.Array_Node** %21, align 8
	%23 = load i32, i32* %5, align 4
	%24 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %22, i32 %23)
	%25 = call i32 @_Node_key_(%struct.Node* %24)
	%26 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%27 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %26, i64 0, i32 0
	%28 = load %struct.Array_Node*, %struct.Array_Node** %27, align 8
	%29 = load i32, i32* %7, align 4
	%30 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %28, i32 %29)
	%31 = call i32 @_Node_key_(%struct.Node* %30)
	%32 = icmp sgt i32 %25, %31
	br label %33

33:
	%34 = phi i1 [ 0, %2 ], [ %32, %19 ]
	br i1 %34, label %35, label %38

35:
	%36 = load i32, i32* %5, align 4
	%37 = load i32, i32* %7, align 4
	store i32 %36, i32* %7, align 4
	br label %38

38:
	%39 = load i32, i32* %6, align 4
	%40 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%41 = call i32 @_Heap_Node_size(%struct.Heap_Node* %40)
	%42 = icmp slt i32 %39, %41
	br i1 %42, label %43, label %57

43:
	%44 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%45 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %44, i64 0, i32 0
	%46 = load %struct.Array_Node*, %struct.Array_Node** %45, align 8
	%47 = load i32, i32* %6, align 4
	%48 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %46, i32 %47)
	%49 = call i32 @_Node_key_(%struct.Node* %48)
	%50 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%51 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %50, i64 0, i32 0
	%52 = load %struct.Array_Node*, %struct.Array_Node** %51, align 8
	%53 = load i32, i32* %7, align 4
	%54 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %52, i32 %53)
	%55 = call i32 @_Node_key_(%struct.Node* %54)
	%56 = icmp sgt i32 %49, %55
	br label %57

57:
	%58 = phi i1 [ 0, %38 ], [ %56, %43 ]
	br i1 %58, label %59, label %62

59:
	%60 = load i32, i32* %6, align 4
	%61 = load i32, i32* %7, align 4
	store i32 %60, i32* %7, align 4
	br label %62

62:
	%63 = load i32, i32* %7, align 4
	%64 = load i32, i32* %4, align 4
	%65 = icmp eq i32 %63, %64
	br i1 %65, label %66, label %67

66:
	br label %75

67:
	%68 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%69 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %68, i64 0, i32 0
	%70 = load %struct.Array_Node*, %struct.Array_Node** %69, align 8
	%71 = load i32, i32* %4, align 4
	%72 = load i32, i32* %7, align 4
	call void @_Array_Node_swap(%struct.Array_Node* %70, i32 %71, i32 %72)
	%73 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 8
	%74 = load i32, i32* %7, align 4
	call void @_Heap_Node_maxHeapify(%struct.Heap_Node* %73, i32 %74)
	br label %75

75:
	ret void
}

define void @_Heap_Node_Heap_Node(%struct.Heap_Node* %0){
	%2 = alloca %struct.Heap_Node*, align 8
	store %struct.Heap_Node* %0, %struct.Heap_Node** %2, align 8
	%3 = call i8* @myNew(i64 16)
	%4 = bitcast i8* %3 to %struct.Array_Node*
	call void @_Array_Node_Array_Node(%struct.Array_Node* %4)
	%5 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 8
	%6 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %5, i64 0, i32 0
	%7 = load %struct.Array_Node*, %struct.Array_Node** %6, align 8
	store %struct.Array_Node* %4, %struct.Array_Node** %6, align 8
	br label %8

8:
	ret void
}

define void @init(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	%5 = call i32 @getInt()
	%6 = load i32, i32* @n, align 4
	store i32 %5, i32* @n, align 4
	%7 = call i32 @getInt()
	%8 = load i32, i32* @m, align 4
	store i32 %7, i32* @m, align 4
	%9 = call i8* @myNew(i64 32)
	%10 = bitcast i8* %9 to %struct.EdgeList*
	%11 = load %struct.EdgeList*, %struct.EdgeList** @g, align 8
	store %struct.EdgeList* %10, %struct.EdgeList** @g, align 8
	%12 = load %struct.EdgeList*, %struct.EdgeList** @g, align 8
	%13 = load i32, i32* @n, align 4
	%14 = load i32, i32* @m, align 4
	call void @_EdgeList_init(%struct.EdgeList* %12, i32 %13, i32 %14)
	%15 = load i32, i32* %1, align 4
	store i32 0, i32* %1, align 4
	br label %16

16:
	%17 = load i32, i32* %1, align 4
	%18 = load i32, i32* @m, align 4
	%19 = icmp slt i32 %17, %18
	br i1 %19, label %20, label %31

20:
	%21 = call i32 @getInt()
	store i32 %21, i32* %2, align 4
	%22 = call i32 @getInt()
	store i32 %22, i32* %3, align 4
	%23 = call i32 @getInt()
	store i32 %23, i32* %4, align 4
	%24 = load %struct.EdgeList*, %struct.EdgeList** @g, align 8
	%25 = load i32, i32* %2, align 4
	%26 = load i32, i32* %3, align 4
	%27 = load i32, i32* %4, align 4
	call void @_EdgeList_addEdge(%struct.EdgeList* %24, i32 %25, i32 %26, i32 %27)
	br label %28

28:
	%29 = load i32, i32* %1, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* %1, align 4
	br label %16

31:
	br label %32

32:
	ret void
}

define i32 @_Node_key_(%struct.Node* %0){
	%2 = alloca %struct.Node*, align 8
	%3 = alloca i32, align 4
	store %struct.Node* %0, %struct.Node** %2, align 8
	store i32 0, i32* %3, align 4
	%4 = load %struct.Node*, %struct.Node** %2, align 8
	%5 = getelementptr %struct.Node, %struct.Node* %4, i64 0, i32 1
	%6 = load i32, i32* %5, align 4
	%7 = sub i32 0, %6
	store i32 %7, i32* %3, align 4
	br label %8

8:
	%9 = load i32, i32* %3, align 4
	ret i32 %9
}

define i32* @dijkstra(i32 %0){
	%2 = alloca i32*, align 8
	%3 = alloca i32, align 4
	%4 = alloca i32*, align 8
	%5 = alloca i32*, align 8
	%6 = alloca i32, align 4
	%7 = alloca %struct.Heap_Node*, align 8
	%8 = alloca %struct.Node*, align 8
	%9 = alloca %struct.Node*, align 8
	%10 = alloca i32, align 4
	%11 = alloca i32, align 4
	%12 = alloca i32, align 4
	%13 = alloca i32, align 4
	%14 = alloca i32, align 4
	store i32* null, i32** %2, align 8
	store i32 %0, i32* %3, align 4
	%15 = load i32, i32* @n, align 4
	%16 = sext i32 %15 to i64
	%17 = mul i64 %16, 4
	%18 = add i64 %17, 4
	%19 = call i8* @myNew(i64 %18)
	%20 = bitcast i8* %19 to i32*
	store i32 %15, i32* %20, align 4
	%21 = bitcast i8* %19 to i32*
	store i32* %21, i32** %4, align 8
	%22 = load i32, i32* @n, align 4
	%23 = sext i32 %22 to i64
	%24 = mul i64 %23, 4
	%25 = add i64 %24, 4
	%26 = call i8* @myNew(i64 %25)
	%27 = bitcast i8* %26 to i32*
	store i32 %22, i32* %27, align 4
	%28 = bitcast i8* %26 to i32*
	store i32* %28, i32** %5, align 8
	%29 = load i32, i32* %6, align 4
	store i32 0, i32* %6, align 4
	br label %30

30:
	%31 = load i32, i32* %6, align 4
	%32 = load i32, i32* @n, align 4
	%33 = icmp slt i32 %31, %32
	br i1 %33, label %34, label %57

34:
	%35 = load i32, i32* @INF, align 4
	%36 = load i32*, i32** %5, align 8
	%37 = load i32, i32* %6, align 4
	%38 = sext i32 %37 to i64
	%39 = mul i64 %38, 4
	%40 = add i64 %39, 4
	%41 = bitcast i32* %36 to i8*
	%42 = getelementptr i8, i8* %41, i64 %40
	%43 = bitcast i8* %42 to i32*
	%44 = load i32, i32* %43, align 4
	store i32 %35, i32* %43, align 4
	%45 = load i32*, i32** %4, align 8
	%46 = load i32, i32* %6, align 4
	%47 = sext i32 %46 to i64
	%48 = mul i64 %47, 4
	%49 = add i64 %48, 4
	%50 = bitcast i32* %45 to i8*
	%51 = getelementptr i8, i8* %50, i64 %49
	%52 = bitcast i8* %51 to i32*
	%53 = load i32, i32* %52, align 4
	store i32 0, i32* %52, align 4
	br label %54

54:
	%55 = load i32, i32* %6, align 4
	%56 = add i32 %55, 1
	store i32 %56, i32* %6, align 4
	br label %30

57:
	%58 = load i32*, i32** %5, align 8
	%59 = load i32, i32* %3, align 4
	%60 = sext i32 %59 to i64
	%61 = mul i64 %60, 4
	%62 = add i64 %61, 4
	%63 = bitcast i32* %58 to i8*
	%64 = getelementptr i8, i8* %63, i64 %62
	%65 = bitcast i8* %64 to i32*
	%66 = load i32, i32* %65, align 4
	store i32 0, i32* %65, align 4
	%67 = call i8* @myNew(i64 8)
	%68 = bitcast i8* %67 to %struct.Heap_Node*
	call void @_Heap_Node_Heap_Node(%struct.Heap_Node* %68)
	store %struct.Heap_Node* %68, %struct.Heap_Node** %7, align 8
	%69 = call i8* @myNew(i64 8)
	%70 = bitcast i8* %69 to %struct.Node*
	store %struct.Node* %70, %struct.Node** %8, align 8
	%71 = load %struct.Node*, %struct.Node** %8, align 8
	%72 = getelementptr %struct.Node, %struct.Node* %71, i64 0, i32 1
	%73 = load i32, i32* %72, align 4
	store i32 0, i32* %72, align 4
	%74 = load i32, i32* %3, align 4
	%75 = load %struct.Node*, %struct.Node** %8, align 8
	%76 = getelementptr %struct.Node, %struct.Node* %75, i64 0, i32 0
	%77 = load i32, i32* %76, align 4
	store i32 %74, i32* %76, align 4
	%78 = load %struct.Heap_Node*, %struct.Heap_Node** %7, align 8
	%79 = load %struct.Node*, %struct.Node** %8, align 8
	call void @_Heap_Node_push(%struct.Heap_Node* %78, %struct.Node* %79)
	br label %80

80:
	%81 = load %struct.Heap_Node*, %struct.Heap_Node** %7, align 8
	%82 = call i32 @_Heap_Node_size(%struct.Heap_Node* %81)
	%83 = icmp ne i32 %82, 0
	br i1 %83, label %84, label %223

84:
	%85 = load %struct.Heap_Node*, %struct.Heap_Node** %7, align 8
	%86 = call %struct.Node* @_Heap_Node_pop(%struct.Heap_Node* %85)
	store %struct.Node* %86, %struct.Node** %9, align 8
	%87 = load %struct.Node*, %struct.Node** %9, align 8
	%88 = getelementptr %struct.Node, %struct.Node* %87, i64 0, i32 0
	%89 = load i32, i32* %88, align 4
	store i32 %89, i32* %10, align 4
	%90 = load i32*, i32** %4, align 8
	%91 = load i32, i32* %10, align 4
	%92 = sext i32 %91 to i64
	%93 = mul i64 %92, 4
	%94 = add i64 %93, 4
	%95 = bitcast i32* %90 to i8*
	%96 = getelementptr i8, i8* %95, i64 %94
	%97 = bitcast i8* %96 to i32*
	%98 = load i32, i32* %97, align 4
	%99 = icmp eq i32 %98, 1
	br i1 %99, label %100, label %101

100:
	br label %80

101:
	%102 = load i32*, i32** %4, align 8
	%103 = load i32, i32* %10, align 4
	%104 = sext i32 %103 to i64
	%105 = mul i64 %104, 4
	%106 = add i64 %105, 4
	%107 = bitcast i32* %102 to i8*
	%108 = getelementptr i8, i8* %107, i64 %106
	%109 = bitcast i8* %108 to i32*
	%110 = load i32, i32* %109, align 4
	store i32 1, i32* %109, align 4
	%111 = load %struct.EdgeList*, %struct.EdgeList** @g, align 8
	%112 = getelementptr %struct.EdgeList, %struct.EdgeList* %111, i64 0, i32 2
	%113 = load i32*, i32** %112, align 8
	%114 = load i32, i32* %10, align 4
	%115 = sext i32 %114 to i64
	%116 = mul i64 %115, 4
	%117 = add i64 %116, 4
	%118 = bitcast i32* %113 to i8*
	%119 = getelementptr i8, i8* %118, i64 %117
	%120 = bitcast i8* %119 to i32*
	%121 = load i32, i32* %120, align 4
	%122 = load i32, i32* %11, align 4
	store i32 %121, i32* %11, align 4
	br label %123

123:
	%124 = load i32, i32* %11, align 4
	%125 = sub i32 0, 1
	%126 = icmp ne i32 %124, %125
	br i1 %126, label %127, label %222

127:
	%128 = load %struct.EdgeList*, %struct.EdgeList** @g, align 8
	%129 = getelementptr %struct.EdgeList, %struct.EdgeList* %128, i64 0, i32 0
	%130 = load %struct.Edge**, %struct.Edge*** %129, align 8
	%131 = load i32, i32* %11, align 4
	%132 = sext i32 %131 to i64
	%133 = mul i64 %132, 8
	%134 = add i64 %133, 4
	%135 = bitcast %struct.Edge** %130 to i8*
	%136 = getelementptr i8, i8* %135, i64 %134
	%137 = bitcast i8* %136 to %struct.Edge**
	%138 = load %struct.Edge*, %struct.Edge** %137, align 8
	%139 = getelementptr %struct.Edge, %struct.Edge* %138, i64 0, i32 1
	%140 = load i32, i32* %139, align 4
	store i32 %140, i32* %12, align 4
	%141 = load %struct.EdgeList*, %struct.EdgeList** @g, align 8
	%142 = getelementptr %struct.EdgeList, %struct.EdgeList* %141, i64 0, i32 0
	%143 = load %struct.Edge**, %struct.Edge*** %142, align 8
	%144 = load i32, i32* %11, align 4
	%145 = sext i32 %144 to i64
	%146 = mul i64 %145, 8
	%147 = add i64 %146, 4
	%148 = bitcast %struct.Edge** %143 to i8*
	%149 = getelementptr i8, i8* %148, i64 %147
	%150 = bitcast i8* %149 to %struct.Edge**
	%151 = load %struct.Edge*, %struct.Edge** %150, align 8
	%152 = getelementptr %struct.Edge, %struct.Edge* %151, i64 0, i32 2
	%153 = load i32, i32* %152, align 4
	store i32 %153, i32* %13, align 4
	%154 = load i32*, i32** %5, align 8
	%155 = load i32, i32* %10, align 4
	%156 = sext i32 %155 to i64
	%157 = mul i64 %156, 4
	%158 = add i64 %157, 4
	%159 = bitcast i32* %154 to i8*
	%160 = getelementptr i8, i8* %159, i64 %158
	%161 = bitcast i8* %160 to i32*
	%162 = load i32, i32* %161, align 4
	%163 = load i32, i32* %13, align 4
	%164 = add i32 %162, %163
	store i32 %164, i32* %14, align 4
	%165 = load i32, i32* %14, align 4
	%166 = load i32*, i32** %5, align 8
	%167 = load i32, i32* %12, align 4
	%168 = sext i32 %167 to i64
	%169 = mul i64 %168, 4
	%170 = add i64 %169, 4
	%171 = bitcast i32* %166 to i8*
	%172 = getelementptr i8, i8* %171, i64 %170
	%173 = bitcast i8* %172 to i32*
	%174 = load i32, i32* %173, align 4
	%175 = icmp sge i32 %165, %174
	br i1 %175, label %176, label %177

176:
	br label %209

177:
	%178 = load i32, i32* %14, align 4
	%179 = load i32*, i32** %5, align 8
	%180 = load i32, i32* %12, align 4
	%181 = sext i32 %180 to i64
	%182 = mul i64 %181, 4
	%183 = add i64 %182, 4
	%184 = bitcast i32* %179 to i8*
	%185 = getelementptr i8, i8* %184, i64 %183
	%186 = bitcast i8* %185 to i32*
	%187 = load i32, i32* %186, align 4
	store i32 %178, i32* %186, align 4
	%188 = call i8* @myNew(i64 8)
	%189 = bitcast i8* %188 to %struct.Node*
	%190 = load %struct.Node*, %struct.Node** %9, align 8
	store %struct.Node* %189, %struct.Node** %9, align 8
	%191 = load i32, i32* %12, align 4
	%192 = load %struct.Node*, %struct.Node** %9, align 8
	%193 = getelementptr %struct.Node, %struct.Node* %192, i64 0, i32 0
	%194 = load i32, i32* %193, align 4
	store i32 %191, i32* %193, align 4
	%195 = load i32*, i32** %5, align 8
	%196 = load i32, i32* %12, align 4
	%197 = sext i32 %196 to i64
	%198 = mul i64 %197, 4
	%199 = add i64 %198, 4
	%200 = bitcast i32* %195 to i8*
	%201 = getelementptr i8, i8* %200, i64 %199
	%202 = bitcast i8* %201 to i32*
	%203 = load i32, i32* %202, align 4
	%204 = load %struct.Node*, %struct.Node** %9, align 8
	%205 = getelementptr %struct.Node, %struct.Node* %204, i64 0, i32 1
	%206 = load i32, i32* %205, align 4
	store i32 %203, i32* %205, align 4
	%207 = load %struct.Heap_Node*, %struct.Heap_Node** %7, align 8
	%208 = load %struct.Node*, %struct.Node** %9, align 8
	call void @_Heap_Node_push(%struct.Heap_Node* %207, %struct.Node* %208)
	br label %209

209:
	%210 = load %struct.EdgeList*, %struct.EdgeList** @g, align 8
	%211 = getelementptr %struct.EdgeList, %struct.EdgeList* %210, i64 0, i32 1
	%212 = load i32*, i32** %211, align 8
	%213 = load i32, i32* %11, align 4
	%214 = sext i32 %213 to i64
	%215 = mul i64 %214, 4
	%216 = add i64 %215, 4
	%217 = bitcast i32* %212 to i8*
	%218 = getelementptr i8, i8* %217, i64 %216
	%219 = bitcast i8* %218 to i32*
	%220 = load i32, i32* %219, align 4
	%221 = load i32, i32* %11, align 4
	store i32 %220, i32* %11, align 4
	br label %123

222:
	br label %80

223:
	%224 = load i32*, i32** %5, align 8
	store i32* %224, i32** %2, align 8
	br label %225

225:
	%226 = load i32*, i32** %2, align 8
	ret i32* %226
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32*, align 8
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	call void @init()
	%5 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %6

6:
	%7 = load i32, i32* %2, align 4
	%8 = load i32, i32* @n, align 4
	%9 = icmp slt i32 %7, %8
	br i1 %9, label %10, label %55

10:
	%11 = load i32, i32* %2, align 4
	%12 = call i32* @dijkstra(i32 %11)
	store i32* %12, i32** %4, align 8
	%13 = load i32, i32* %3, align 4
	store i32 0, i32* %3, align 4
	br label %14

14:
	%15 = load i32, i32* %3, align 4
	%16 = load i32, i32* @n, align 4
	%17 = icmp slt i32 %15, %16
	br i1 %17, label %18, label %50

18:
	%19 = load i32*, i32** %4, align 8
	%20 = load i32, i32* %3, align 4
	%21 = sext i32 %20 to i64
	%22 = mul i64 %21, 4
	%23 = add i64 %22, 4
	%24 = bitcast i32* %19 to i8*
	%25 = getelementptr i8, i8* %24, i64 %23
	%26 = bitcast i8* %25 to i32*
	%27 = load i32, i32* %26, align 4
	%28 = load i32, i32* @INF, align 4
	%29 = icmp eq i32 %27, %28
	br i1 %29, label %30, label %32

30:
	%31 = bitcast [3 x i8]* @.libro.str to i8*
	call void @print(i8* %31)
	br label %45

32:
	%33 = load i32*, i32** %4, align 8
	%34 = load i32, i32* %3, align 4
	%35 = sext i32 %34 to i64
	%36 = mul i64 %35, 4
	%37 = add i64 %36, 4
	%38 = bitcast i32* %33 to i8*
	%39 = getelementptr i8, i8* %38, i64 %37
	%40 = bitcast i8* %39 to i32*
	%41 = load i32, i32* %40, align 4
	%42 = call %struct.string* @toString(i32 %41)
	%43 = getelementptr %struct.string, %struct.string* %42, i64 0, i32 1
	%44 = load i8*, i8** %43, align 8
	call void @print(i8* %44)
	br label %45

45:
	%46 = bitcast [2 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %46)
	br label %47

47:
	%48 = load i32, i32* %3, align 4
	%49 = add i32 %48, 1
	store i32 %49, i32* %3, align 4
	br label %14

50:
	%51 = bitcast [1 x i8]* @.libro.str.2 to i8*
	call void @println(i8* %51)
	br label %52

52:
	%53 = load i32, i32* %2, align 4
	%54 = add i32 %53, 1
	store i32 %54, i32* %2, align 4
	br label %6

55:
	store i32 0, i32* %1, align 4
	br label %56

56:
	%57 = load i32, i32* %1, align 4
	ret i32 %57
}

define void @_GLOBAL_(){
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
declare i8* @myNew(i64)

