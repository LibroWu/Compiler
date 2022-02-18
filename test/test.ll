%struct.string = type { i32, i8* }
%struct.Edge = type { i32, i32, i32 }
%struct.EdgeList = type { %struct.Edge**, i32*, i32*, i32 }
%struct.Array_Node = type { %struct.Node**, i32 }
%struct.Heap_Node = type { %struct.Array_Node* }
%struct.Node = type { i32, i32 }

@n = global i32 0, align 4
@m = global i32 0, align 4
@g = global %struct.EdgeList* null, align 4
@INF = global i32 10000000, align 4

@.libro.str = constant [3 x i8] c"-1\00", align 1
@.libro.str.1 = constant [2 x i8] c" \00", align 1
@.libro.str.2 = constant [1 x i8] c"\00", align 1

define void @_EdgeList_init(%struct.EdgeList* %0,i32 %1,i32 %2){
	%4 = alloca %struct.EdgeList*, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	store %struct.EdgeList* %0, %struct.EdgeList** %4, align 4
	store i32 %1, i32* %5, align 4
	store i32 %2, i32* %6, align 4
	%8 = load i32, i32* %6, align 4
	%9 = mul i32 %8, 4
	%10 = add i32 %9, 4
	%11 = call i8* @myNew(i32 %10)
	%12 = bitcast i8* %11 to i32*
	store i32 %8, i32* %12, align 4
	%13 = bitcast i8* %11 to %struct.Edge**
	%14 = load %struct.EdgeList*, %struct.EdgeList** %4, align 4
	%15 = getelementptr %struct.EdgeList, %struct.EdgeList* %14, i32 0, i32 0
	%16 = load %struct.Edge**, %struct.Edge*** %15, align 4
	store %struct.Edge** %13, %struct.Edge*** %15, align 4
	%17 = load i32, i32* %6, align 4
	%18 = mul i32 %17, 4
	%19 = add i32 %18, 4
	%20 = call i8* @myNew(i32 %19)
	%21 = bitcast i8* %20 to i32*
	store i32 %17, i32* %21, align 4
	%22 = bitcast i8* %20 to i32*
	%23 = load %struct.EdgeList*, %struct.EdgeList** %4, align 4
	%24 = getelementptr %struct.EdgeList, %struct.EdgeList* %23, i32 0, i32 1
	%25 = load i32*, i32** %24, align 4
	store i32* %22, i32** %24, align 4
	%26 = load i32, i32* %5, align 4
	%27 = mul i32 %26, 4
	%28 = add i32 %27, 4
	%29 = call i8* @myNew(i32 %28)
	%30 = bitcast i8* %29 to i32*
	store i32 %26, i32* %30, align 4
	%31 = bitcast i8* %29 to i32*
	%32 = load %struct.EdgeList*, %struct.EdgeList** %4, align 4
	%33 = getelementptr %struct.EdgeList, %struct.EdgeList* %32, i32 0, i32 2
	%34 = load i32*, i32** %33, align 4
	store i32* %31, i32** %33, align 4
	%35 = load i32, i32* %7, align 4
	store i32 0, i32* %7, align 4
	br label %36

;loop check block _EdgeList_init loopDepth 1 iterCount 0
36:
	%37 = load i32, i32* %7, align 4
	%38 = load i32, i32* %6, align 4
	%39 = icmp slt i32 %37, %38
	br i1 %39, label %40, label %55

;loop body _EdgeList_init loopDepth 1 iterCount 0
40:
	%41 = sub i32 0, 1
	%42 = load %struct.EdgeList*, %struct.EdgeList** %4, align 4
	%43 = getelementptr %struct.EdgeList, %struct.EdgeList* %42, i32 0, i32 1
	%44 = load i32*, i32** %43, align 4
	%45 = load i32, i32* %7, align 4
	%46 = mul i32 %45, 4
	%47 = add i32 %46, 4
	%48 = bitcast i32* %44 to i8*
	%49 = getelementptr i8, i8* %48, i32 %47
	%50 = bitcast i8* %49 to i32*
	%51 = load i32, i32* %50, align 4
	store i32 %41, i32* %50, align 4
	br label %52

;loop increase block _EdgeList_init loopDepth 1 iterCount 0
52:
	%53 = load i32, i32* %7, align 4
	%54 = add i32 %53, 1
	store i32 %54, i32* %7, align 4
	br label %36

;loop exit block _EdgeList_init loopDepth 1 iterCount 0
55:
	%56 = load i32, i32* %7, align 4
	store i32 0, i32* %7, align 4
	br label %57

;loop check block _EdgeList_init loopDepth 1 iterCount 1
57:
	%58 = load i32, i32* %7, align 4
	%59 = load i32, i32* %5, align 4
	%60 = icmp slt i32 %58, %59
	br i1 %60, label %61, label %76

;loop body _EdgeList_init loopDepth 1 iterCount 1
61:
	%62 = sub i32 0, 1
	%63 = load %struct.EdgeList*, %struct.EdgeList** %4, align 4
	%64 = getelementptr %struct.EdgeList, %struct.EdgeList* %63, i32 0, i32 2
	%65 = load i32*, i32** %64, align 4
	%66 = load i32, i32* %7, align 4
	%67 = mul i32 %66, 4
	%68 = add i32 %67, 4
	%69 = bitcast i32* %65 to i8*
	%70 = getelementptr i8, i8* %69, i32 %68
	%71 = bitcast i8* %70 to i32*
	%72 = load i32, i32* %71, align 4
	store i32 %62, i32* %71, align 4
	br label %73

;loop increase block _EdgeList_init loopDepth 1 iterCount 1
73:
	%74 = load i32, i32* %7, align 4
	%75 = add i32 %74, 1
	store i32 %75, i32* %7, align 4
	br label %57

;loop exit block _EdgeList_init loopDepth 1 iterCount 1
76:
	%77 = load %struct.EdgeList*, %struct.EdgeList** %4, align 4
	%78 = getelementptr %struct.EdgeList, %struct.EdgeList* %77, i32 0, i32 3
	%79 = load i32, i32* %78, align 4
	store i32 0, i32* %78, align 4
	br label %80

80:
	ret void
}

define void @_EdgeList_addEdge(%struct.EdgeList* %0,i32 %1,i32 %2,i32 %3){
	%5 = alloca %struct.EdgeList*, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	%8 = alloca i32, align 4
	%9 = alloca %struct.Edge*, align 4
	store %struct.EdgeList* %0, %struct.EdgeList** %5, align 4
	store i32 %1, i32* %6, align 4
	store i32 %2, i32* %7, align 4
	store i32 %3, i32* %8, align 4
	%10 = call i8* @myNew(i32 12)
	%11 = bitcast i8* %10 to %struct.Edge*
	store %struct.Edge* %11, %struct.Edge** %9, align 4
	%12 = load i32, i32* %6, align 4
	%13 = load %struct.Edge*, %struct.Edge** %9, align 4
	%14 = getelementptr %struct.Edge, %struct.Edge* %13, i32 0, i32 0
	%15 = load i32, i32* %14, align 4
	store i32 %12, i32* %14, align 4
	%16 = load i32, i32* %7, align 4
	%17 = load %struct.Edge*, %struct.Edge** %9, align 4
	%18 = getelementptr %struct.Edge, %struct.Edge* %17, i32 0, i32 1
	%19 = load i32, i32* %18, align 4
	store i32 %16, i32* %18, align 4
	%20 = load i32, i32* %8, align 4
	%21 = load %struct.Edge*, %struct.Edge** %9, align 4
	%22 = getelementptr %struct.Edge, %struct.Edge* %21, i32 0, i32 2
	%23 = load i32, i32* %22, align 4
	store i32 %20, i32* %22, align 4
	%24 = load %struct.Edge*, %struct.Edge** %9, align 4
	%25 = load %struct.EdgeList*, %struct.EdgeList** %5, align 4
	%26 = getelementptr %struct.EdgeList, %struct.EdgeList* %25, i32 0, i32 0
	%27 = load %struct.Edge**, %struct.Edge*** %26, align 4
	%28 = load %struct.EdgeList*, %struct.EdgeList** %5, align 4
	%29 = getelementptr %struct.EdgeList, %struct.EdgeList* %28, i32 0, i32 3
	%30 = load i32, i32* %29, align 4
	%31 = mul i32 %30, 4
	%32 = add i32 %31, 4
	%33 = bitcast %struct.Edge** %27 to i8*
	%34 = getelementptr i8, i8* %33, i32 %32
	%35 = bitcast i8* %34 to %struct.Edge**
	%36 = load %struct.Edge*, %struct.Edge** %35, align 4
	store %struct.Edge* %24, %struct.Edge** %35, align 4
	%37 = load %struct.EdgeList*, %struct.EdgeList** %5, align 4
	%38 = getelementptr %struct.EdgeList, %struct.EdgeList* %37, i32 0, i32 2
	%39 = load i32*, i32** %38, align 4
	%40 = load i32, i32* %6, align 4
	%41 = mul i32 %40, 4
	%42 = add i32 %41, 4
	%43 = bitcast i32* %39 to i8*
	%44 = getelementptr i8, i8* %43, i32 %42
	%45 = bitcast i8* %44 to i32*
	%46 = load i32, i32* %45, align 4
	%47 = load %struct.EdgeList*, %struct.EdgeList** %5, align 4
	%48 = getelementptr %struct.EdgeList, %struct.EdgeList* %47, i32 0, i32 1
	%49 = load i32*, i32** %48, align 4
	%50 = load %struct.EdgeList*, %struct.EdgeList** %5, align 4
	%51 = getelementptr %struct.EdgeList, %struct.EdgeList* %50, i32 0, i32 3
	%52 = load i32, i32* %51, align 4
	%53 = mul i32 %52, 4
	%54 = add i32 %53, 4
	%55 = bitcast i32* %49 to i8*
	%56 = getelementptr i8, i8* %55, i32 %54
	%57 = bitcast i8* %56 to i32*
	%58 = load i32, i32* %57, align 4
	store i32 %46, i32* %57, align 4
	%59 = load %struct.EdgeList*, %struct.EdgeList** %5, align 4
	%60 = getelementptr %struct.EdgeList, %struct.EdgeList* %59, i32 0, i32 3
	%61 = load i32, i32* %60, align 4
	%62 = load %struct.EdgeList*, %struct.EdgeList** %5, align 4
	%63 = getelementptr %struct.EdgeList, %struct.EdgeList* %62, i32 0, i32 2
	%64 = load i32*, i32** %63, align 4
	%65 = load i32, i32* %6, align 4
	%66 = mul i32 %65, 4
	%67 = add i32 %66, 4
	%68 = bitcast i32* %64 to i8*
	%69 = getelementptr i8, i8* %68, i32 %67
	%70 = bitcast i8* %69 to i32*
	%71 = load i32, i32* %70, align 4
	store i32 %61, i32* %70, align 4
	%72 = load %struct.EdgeList*, %struct.EdgeList** %5, align 4
	%73 = getelementptr %struct.EdgeList, %struct.EdgeList* %72, i32 0, i32 3
	%74 = load i32, i32* %73, align 4
	%75 = add i32 %74, 1
	store i32 %75, i32* %73, align 4
	br label %76

76:
	ret void
}

define i32 @_EdgeList_nVertices(%struct.EdgeList* %0){
	%2 = alloca %struct.EdgeList*, align 4
	%3 = alloca i32, align 4
	store %struct.EdgeList* %0, %struct.EdgeList** %2, align 4
	store i32 0, i32* %3, align 4
	%4 = load %struct.EdgeList*, %struct.EdgeList** %2, align 4
	%5 = getelementptr %struct.EdgeList, %struct.EdgeList* %4, i32 0, i32 2
	%6 = load i32*, i32** %5, align 4
	%7 = bitcast i32* %6 to i32*
	%8 = getelementptr i32, i32* %7, i32 0
	%9 = load i32, i32* %8, align 4
	store i32 %9, i32* %3, align 4
	br label %10

10:
	%11 = load i32, i32* %3, align 4
	ret i32 %11
}

define i32 @_EdgeList_nEdges(%struct.EdgeList* %0){
	%2 = alloca %struct.EdgeList*, align 4
	%3 = alloca i32, align 4
	store %struct.EdgeList* %0, %struct.EdgeList** %2, align 4
	store i32 0, i32* %3, align 4
	%4 = load %struct.EdgeList*, %struct.EdgeList** %2, align 4
	%5 = getelementptr %struct.EdgeList, %struct.EdgeList* %4, i32 0, i32 0
	%6 = load %struct.Edge**, %struct.Edge*** %5, align 4
	%7 = bitcast %struct.Edge** %6 to i32*
	%8 = getelementptr i32, i32* %7, i32 0
	%9 = load i32, i32* %8, align 4
	store i32 %9, i32* %3, align 4
	br label %10

10:
	%11 = load i32, i32* %3, align 4
	ret i32 %11
}

define void @_Array_Node_push_back(%struct.Array_Node* %0,%struct.Node* %1){
	%3 = alloca %struct.Array_Node*, align 4
	%4 = alloca %struct.Node*, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %3, align 4
	store %struct.Node* %1, %struct.Node** %4, align 4
	%5 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	%6 = call i32 @_Array_Node_size(%struct.Array_Node* %5)
	%7 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	%8 = getelementptr %struct.Array_Node, %struct.Array_Node* %7, i32 0, i32 0
	%9 = load %struct.Node**, %struct.Node*** %8, align 4
	%10 = bitcast %struct.Node** %9 to i32*
	%11 = getelementptr i32, i32* %10, i32 0
	%12 = load i32, i32* %11, align 4
	%13 = icmp eq i32 %6, %12
	br i1 %13, label %14, label %16

;True block in _Array_Node_push_back selectCount 0
14:
	%15 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	call void @_Array_Node_doubleStorage(%struct.Array_Node* %15)
	br label %16

;Converge block in _Array_Node_push_back selectCount 0
16:
	%17 = load %struct.Node*, %struct.Node** %4, align 4
	%18 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	%19 = getelementptr %struct.Array_Node, %struct.Array_Node* %18, i32 0, i32 0
	%20 = load %struct.Node**, %struct.Node*** %19, align 4
	%21 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	%22 = getelementptr %struct.Array_Node, %struct.Array_Node* %21, i32 0, i32 1
	%23 = load i32, i32* %22, align 4
	%24 = mul i32 %23, 4
	%25 = add i32 %24, 4
	%26 = bitcast %struct.Node** %20 to i8*
	%27 = getelementptr i8, i8* %26, i32 %25
	%28 = bitcast i8* %27 to %struct.Node**
	%29 = load %struct.Node*, %struct.Node** %28, align 4
	store %struct.Node* %17, %struct.Node** %28, align 4
	%30 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	%31 = getelementptr %struct.Array_Node, %struct.Array_Node* %30, i32 0, i32 1
	%32 = load i32, i32* %31, align 4
	%33 = add i32 %32, 1
	store i32 %33, i32* %31, align 4
	br label %34

34:
	ret void
}

define %struct.Node* @_Array_Node_pop_back(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 4
	%3 = alloca %struct.Node*, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 4
	store %struct.Node* null, %struct.Node** %3, align 4
	%4 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%6 = load i32, i32* %5, align 4
	%7 = sub i32 %6, 1
	store i32 %7, i32* %5, align 4
	%8 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %8, i32 0, i32 0
	%10 = load %struct.Node**, %struct.Node*** %9, align 4
	%11 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%12 = getelementptr %struct.Array_Node, %struct.Array_Node* %11, i32 0, i32 1
	%13 = load i32, i32* %12, align 4
	%14 = mul i32 %13, 4
	%15 = add i32 %14, 4
	%16 = bitcast %struct.Node** %10 to i8*
	%17 = getelementptr i8, i8* %16, i32 %15
	%18 = bitcast i8* %17 to %struct.Node**
	%19 = load %struct.Node*, %struct.Node** %18, align 4
	store %struct.Node* %19, %struct.Node** %3, align 4
	br label %20

20:
	%21 = load %struct.Node*, %struct.Node** %3, align 4
	ret %struct.Node* %21
}

define %struct.Node* @_Array_Node_back(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 4
	%3 = alloca %struct.Node*, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 4
	store %struct.Node* null, %struct.Node** %3, align 4
	%4 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 0
	%6 = load %struct.Node**, %struct.Node*** %5, align 4
	%7 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%8 = getelementptr %struct.Array_Node, %struct.Array_Node* %7, i32 0, i32 1
	%9 = load i32, i32* %8, align 4
	%10 = sub i32 %9, 1
	%11 = mul i32 %10, 4
	%12 = add i32 %11, 4
	%13 = bitcast %struct.Node** %6 to i8*
	%14 = getelementptr i8, i8* %13, i32 %12
	%15 = bitcast i8* %14 to %struct.Node**
	%16 = load %struct.Node*, %struct.Node** %15, align 4
	store %struct.Node* %16, %struct.Node** %3, align 4
	br label %17

17:
	%18 = load %struct.Node*, %struct.Node** %3, align 4
	ret %struct.Node* %18
}

define %struct.Node* @_Array_Node_front(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 4
	%3 = alloca %struct.Node*, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 4
	store %struct.Node* null, %struct.Node** %3, align 4
	%4 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 0
	%6 = load %struct.Node**, %struct.Node*** %5, align 4
	%7 = mul i32 0, 4
	%8 = add i32 %7, 4
	%9 = bitcast %struct.Node** %6 to i8*
	%10 = getelementptr i8, i8* %9, i32 %8
	%11 = bitcast i8* %10 to %struct.Node**
	%12 = load %struct.Node*, %struct.Node** %11, align 4
	store %struct.Node* %12, %struct.Node** %3, align 4
	br label %13

13:
	%14 = load %struct.Node*, %struct.Node** %3, align 4
	ret %struct.Node* %14
}

define i32 @_Array_Node_size(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 4
	%3 = alloca i32, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 4
	store i32 0, i32* %3, align 4
	%4 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%6 = load i32, i32* %5, align 4
	store i32 %6, i32* %3, align 4
	br label %7

7:
	%8 = load i32, i32* %3, align 4
	ret i32 %8
}

define void @_Array_Node_resize(%struct.Array_Node* %0,i32 %1){
	%3 = alloca %struct.Array_Node*, align 4
	%4 = alloca i32, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %3, align 4
	store i32 %1, i32* %4, align 4
	br label %5

;loop check block _Array_Node_resize loopDepth 1 iterCount 0
5:
	%6 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	%7 = getelementptr %struct.Array_Node, %struct.Array_Node* %6, i32 0, i32 0
	%8 = load %struct.Node**, %struct.Node*** %7, align 4
	%9 = bitcast %struct.Node** %8 to i32*
	%10 = getelementptr i32, i32* %9, i32 0
	%11 = load i32, i32* %10, align 4
	%12 = load i32, i32* %4, align 4
	%13 = icmp slt i32 %11, %12
	br i1 %13, label %14, label %16

;loop body _Array_Node_resize loopDepth 1 iterCount 0
14:
	%15 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	call void @_Array_Node_doubleStorage(%struct.Array_Node* %15)
	br label %5

;loop exit block _Array_Node_resize loopDepth 1 iterCount 0
16:
	%17 = load i32, i32* %4, align 4
	%18 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	%19 = getelementptr %struct.Array_Node, %struct.Array_Node* %18, i32 0, i32 1
	%20 = load i32, i32* %19, align 4
	store i32 %17, i32* %19, align 4
	br label %21

21:
	ret void
}

define %struct.Node* @_Array_Node_get(%struct.Array_Node* %0,i32 %1){
	%3 = alloca %struct.Array_Node*, align 4
	%4 = alloca %struct.Node*, align 4
	%5 = alloca i32, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %3, align 4
	store %struct.Node* null, %struct.Node** %4, align 4
	store i32 %1, i32* %5, align 4
	%6 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	%7 = getelementptr %struct.Array_Node, %struct.Array_Node* %6, i32 0, i32 0
	%8 = load %struct.Node**, %struct.Node*** %7, align 4
	%9 = load i32, i32* %5, align 4
	%10 = mul i32 %9, 4
	%11 = add i32 %10, 4
	%12 = bitcast %struct.Node** %8 to i8*
	%13 = getelementptr i8, i8* %12, i32 %11
	%14 = bitcast i8* %13 to %struct.Node**
	%15 = load %struct.Node*, %struct.Node** %14, align 4
	store %struct.Node* %15, %struct.Node** %4, align 4
	br label %16

16:
	%17 = load %struct.Node*, %struct.Node** %4, align 4
	ret %struct.Node* %17
}

define void @_Array_Node_set(%struct.Array_Node* %0,i32 %1,%struct.Node* %2){
	%4 = alloca %struct.Array_Node*, align 4
	%5 = alloca i32, align 4
	%6 = alloca %struct.Node*, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %4, align 4
	store i32 %1, i32* %5, align 4
	store %struct.Node* %2, %struct.Node** %6, align 4
	%7 = load %struct.Node*, %struct.Node** %6, align 4
	%8 = load %struct.Array_Node*, %struct.Array_Node** %4, align 4
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %8, i32 0, i32 0
	%10 = load %struct.Node**, %struct.Node*** %9, align 4
	%11 = load i32, i32* %5, align 4
	%12 = mul i32 %11, 4
	%13 = add i32 %12, 4
	%14 = bitcast %struct.Node** %10 to i8*
	%15 = getelementptr i8, i8* %14, i32 %13
	%16 = bitcast i8* %15 to %struct.Node**
	%17 = load %struct.Node*, %struct.Node** %16, align 4
	store %struct.Node* %7, %struct.Node** %16, align 4
	br label %18

18:
	ret void
}

define void @_Array_Node_swap(%struct.Array_Node* %0,i32 %1,i32 %2){
	%4 = alloca %struct.Array_Node*, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca %struct.Node*, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %4, align 4
	store i32 %1, i32* %5, align 4
	store i32 %2, i32* %6, align 4
	%8 = load %struct.Array_Node*, %struct.Array_Node** %4, align 4
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %8, i32 0, i32 0
	%10 = load %struct.Node**, %struct.Node*** %9, align 4
	%11 = load i32, i32* %5, align 4
	%12 = mul i32 %11, 4
	%13 = add i32 %12, 4
	%14 = bitcast %struct.Node** %10 to i8*
	%15 = getelementptr i8, i8* %14, i32 %13
	%16 = bitcast i8* %15 to %struct.Node**
	%17 = load %struct.Node*, %struct.Node** %16, align 4
	store %struct.Node* %17, %struct.Node** %7, align 4
	%18 = load %struct.Array_Node*, %struct.Array_Node** %4, align 4
	%19 = getelementptr %struct.Array_Node, %struct.Array_Node* %18, i32 0, i32 0
	%20 = load %struct.Node**, %struct.Node*** %19, align 4
	%21 = load i32, i32* %6, align 4
	%22 = mul i32 %21, 4
	%23 = add i32 %22, 4
	%24 = bitcast %struct.Node** %20 to i8*
	%25 = getelementptr i8, i8* %24, i32 %23
	%26 = bitcast i8* %25 to %struct.Node**
	%27 = load %struct.Node*, %struct.Node** %26, align 4
	%28 = load %struct.Array_Node*, %struct.Array_Node** %4, align 4
	%29 = getelementptr %struct.Array_Node, %struct.Array_Node* %28, i32 0, i32 0
	%30 = load %struct.Node**, %struct.Node*** %29, align 4
	%31 = load i32, i32* %5, align 4
	%32 = mul i32 %31, 4
	%33 = add i32 %32, 4
	%34 = bitcast %struct.Node** %30 to i8*
	%35 = getelementptr i8, i8* %34, i32 %33
	%36 = bitcast i8* %35 to %struct.Node**
	%37 = load %struct.Node*, %struct.Node** %36, align 4
	store %struct.Node* %27, %struct.Node** %36, align 4
	%38 = load %struct.Node*, %struct.Node** %7, align 4
	%39 = load %struct.Array_Node*, %struct.Array_Node** %4, align 4
	%40 = getelementptr %struct.Array_Node, %struct.Array_Node* %39, i32 0, i32 0
	%41 = load %struct.Node**, %struct.Node*** %40, align 4
	%42 = load i32, i32* %6, align 4
	%43 = mul i32 %42, 4
	%44 = add i32 %43, 4
	%45 = bitcast %struct.Node** %41 to i8*
	%46 = getelementptr i8, i8* %45, i32 %44
	%47 = bitcast i8* %46 to %struct.Node**
	%48 = load %struct.Node*, %struct.Node** %47, align 4
	store %struct.Node* %38, %struct.Node** %47, align 4
	br label %49

49:
	ret void
}

define void @_Array_Node_doubleStorage(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 4
	%3 = alloca %struct.Node**, align 4
	%4 = alloca i32, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 4
	%5 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%6 = getelementptr %struct.Array_Node, %struct.Array_Node* %5, i32 0, i32 0
	%7 = load %struct.Node**, %struct.Node*** %6, align 4
	store %struct.Node** %7, %struct.Node*** %3, align 4
	%8 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %8, i32 0, i32 1
	%10 = load i32, i32* %9, align 4
	store i32 %10, i32* %4, align 4
	%11 = load %struct.Node**, %struct.Node*** %3, align 4
	%12 = bitcast %struct.Node** %11 to i32*
	%13 = getelementptr i32, i32* %12, i32 0
	%14 = load i32, i32* %13, align 4
	%15 = mul i32 %14, 2
	%16 = mul i32 %15, 4
	%17 = add i32 %16, 4
	%18 = call i8* @myNew(i32 %17)
	%19 = bitcast i8* %18 to i32*
	store i32 %15, i32* %19, align 4
	%20 = bitcast i8* %18 to %struct.Node**
	%21 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%22 = getelementptr %struct.Array_Node, %struct.Array_Node* %21, i32 0, i32 0
	%23 = load %struct.Node**, %struct.Node*** %22, align 4
	store %struct.Node** %20, %struct.Node*** %22, align 4
	%24 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%25 = getelementptr %struct.Array_Node, %struct.Array_Node* %24, i32 0, i32 1
	%26 = load i32, i32* %25, align 4
	store i32 0, i32* %25, align 4
	br label %27

;loop check block _Array_Node_doubleStorage loopDepth 1 iterCount 0
27:
	%28 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%29 = getelementptr %struct.Array_Node, %struct.Array_Node* %28, i32 0, i32 1
	%30 = load i32, i32* %29, align 4
	%31 = load i32, i32* %4, align 4
	%32 = icmp ne i32 %30, %31
	br i1 %32, label %33, label %61

;loop body _Array_Node_doubleStorage loopDepth 1 iterCount 0
33:
	%34 = load %struct.Node**, %struct.Node*** %3, align 4
	%35 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%36 = getelementptr %struct.Array_Node, %struct.Array_Node* %35, i32 0, i32 1
	%37 = load i32, i32* %36, align 4
	%38 = mul i32 %37, 4
	%39 = add i32 %38, 4
	%40 = bitcast %struct.Node** %34 to i8*
	%41 = getelementptr i8, i8* %40, i32 %39
	%42 = bitcast i8* %41 to %struct.Node**
	%43 = load %struct.Node*, %struct.Node** %42, align 4
	%44 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%45 = getelementptr %struct.Array_Node, %struct.Array_Node* %44, i32 0, i32 0
	%46 = load %struct.Node**, %struct.Node*** %45, align 4
	%47 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%48 = getelementptr %struct.Array_Node, %struct.Array_Node* %47, i32 0, i32 1
	%49 = load i32, i32* %48, align 4
	%50 = mul i32 %49, 4
	%51 = add i32 %50, 4
	%52 = bitcast %struct.Node** %46 to i8*
	%53 = getelementptr i8, i8* %52, i32 %51
	%54 = bitcast i8* %53 to %struct.Node**
	%55 = load %struct.Node*, %struct.Node** %54, align 4
	store %struct.Node* %43, %struct.Node** %54, align 4
	br label %56

;loop increase block _Array_Node_doubleStorage loopDepth 1 iterCount 0
56:
	%57 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%58 = getelementptr %struct.Array_Node, %struct.Array_Node* %57, i32 0, i32 1
	%59 = load i32, i32* %58, align 4
	%60 = add i32 %59, 1
	store i32 %60, i32* %58, align 4
	br label %27

;loop exit block _Array_Node_doubleStorage loopDepth 1 iterCount 0
61:
	br label %62

62:
	ret void
}

define void @_Array_Node_Array_Node(%struct.Array_Node* %0){
	%2 = alloca %struct.Array_Node*, align 4
	store %struct.Array_Node* %0, %struct.Array_Node** %2, align 4
	%3 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%4 = getelementptr %struct.Array_Node, %struct.Array_Node* %3, i32 0, i32 1
	%5 = load i32, i32* %4, align 4
	store i32 0, i32* %4, align 4
	%6 = call i8* @myNew(i32 68)
	%7 = bitcast i8* %6 to i32*
	store i32 16, i32* %7, align 4
	%8 = bitcast i8* %6 to %struct.Node**
	%9 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	%10 = getelementptr %struct.Array_Node, %struct.Array_Node* %9, i32 0, i32 0
	%11 = load %struct.Node**, %struct.Node*** %10, align 4
	store %struct.Node** %8, %struct.Node*** %10, align 4
	br label %12

12:
	ret void
}

define void @_Heap_Node_push(%struct.Heap_Node* %0,%struct.Node* %1){
	%3 = alloca %struct.Heap_Node*, align 4
	%4 = alloca %struct.Node*, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 4
	store %struct.Node* %1, %struct.Node** %4, align 4
	%7 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%8 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %7, i32 0, i32 0
	%9 = load %struct.Array_Node*, %struct.Array_Node** %8, align 4
	%10 = load %struct.Node*, %struct.Node** %4, align 4
	call void @_Array_Node_push_back(%struct.Array_Node* %9, %struct.Node* %10)
	%11 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%12 = call i32 @_Heap_Node_size(%struct.Heap_Node* %11)
	%13 = sub i32 %12, 1
	store i32 %13, i32* %5, align 4
	br label %14

;loop check block _Heap_Node_push loopDepth 1 iterCount 0
14:
	%15 = load i32, i32* %5, align 4
	%16 = icmp sgt i32 %15, 0
	br i1 %16, label %17, label %43

;loop body _Heap_Node_push loopDepth 1 iterCount 0
17:
	%18 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%19 = load i32, i32* %5, align 4
	%20 = call i32 @_Heap_Node_pnt(%struct.Heap_Node* %18, i32 %19)
	store i32 %20, i32* %6, align 4
	%21 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%22 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %21, i32 0, i32 0
	%23 = load %struct.Array_Node*, %struct.Array_Node** %22, align 4
	%24 = load i32, i32* %6, align 4
	%25 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %23, i32 %24)
	%26 = call i32 @_Node_key_(%struct.Node* %25)
	%27 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%28 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %27, i32 0, i32 0
	%29 = load %struct.Array_Node*, %struct.Array_Node** %28, align 4
	%30 = load i32, i32* %5, align 4
	%31 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %29, i32 %30)
	%32 = call i32 @_Node_key_(%struct.Node* %31)
	%33 = icmp sge i32 %26, %32
	br i1 %33, label %34, label %35

;True block in _Heap_Node_push selectCount 0
34:
	br label %43

;Converge block in _Heap_Node_push selectCount 0
35:
	%36 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%37 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %36, i32 0, i32 0
	%38 = load %struct.Array_Node*, %struct.Array_Node** %37, align 4
	%39 = load i32, i32* %6, align 4
	%40 = load i32, i32* %5, align 4
	call void @_Array_Node_swap(%struct.Array_Node* %38, i32 %39, i32 %40)
	%41 = load i32, i32* %6, align 4
	%42 = load i32, i32* %5, align 4
	store i32 %41, i32* %5, align 4
	br label %14

;loop exit block _Heap_Node_push loopDepth 1 iterCount 0
43:
	br label %44

44:
	ret void
}

define %struct.Node* @_Heap_Node_pop(%struct.Heap_Node* %0){
	%2 = alloca %struct.Heap_Node*, align 4
	%3 = alloca %struct.Node*, align 4
	%4 = alloca %struct.Node*, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %2, align 4
	store %struct.Node* null, %struct.Node** %3, align 4
	%5 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 4
	%6 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %5, i32 0, i32 0
	%7 = load %struct.Array_Node*, %struct.Array_Node** %6, align 4
	%8 = call %struct.Node* @_Array_Node_front(%struct.Array_Node* %7)
	store %struct.Node* %8, %struct.Node** %4, align 4
	%9 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 4
	%10 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %9, i32 0, i32 0
	%11 = load %struct.Array_Node*, %struct.Array_Node** %10, align 4
	%12 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 4
	%13 = call i32 @_Heap_Node_size(%struct.Heap_Node* %12)
	%14 = sub i32 %13, 1
	call void @_Array_Node_swap(%struct.Array_Node* %11, i32 0, i32 %14)
	%15 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 4
	%16 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %15, i32 0, i32 0
	%17 = load %struct.Array_Node*, %struct.Array_Node** %16, align 4
	%18 = call %struct.Node* @_Array_Node_pop_back(%struct.Array_Node* %17)
	%19 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 4
	call void @_Heap_Node_maxHeapify(%struct.Heap_Node* %19, i32 0)
	%20 = load %struct.Node*, %struct.Node** %4, align 4
	store %struct.Node* %20, %struct.Node** %3, align 4
	br label %21

21:
	%22 = load %struct.Node*, %struct.Node** %3, align 4
	ret %struct.Node* %22
}

define %struct.Node* @_Heap_Node_top(%struct.Heap_Node* %0){
	%2 = alloca %struct.Heap_Node*, align 4
	%3 = alloca %struct.Node*, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %2, align 4
	store %struct.Node* null, %struct.Node** %3, align 4
	%4 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 4
	%5 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %4, i32 0, i32 0
	%6 = load %struct.Array_Node*, %struct.Array_Node** %5, align 4
	%7 = call %struct.Node* @_Array_Node_front(%struct.Array_Node* %6)
	store %struct.Node* %7, %struct.Node** %3, align 4
	br label %8

8:
	%9 = load %struct.Node*, %struct.Node** %3, align 4
	ret %struct.Node* %9
}

define i32 @_Heap_Node_size(%struct.Heap_Node* %0){
	%2 = alloca %struct.Heap_Node*, align 4
	%3 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %2, align 4
	store i32 0, i32* %3, align 4
	%4 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 4
	%5 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %4, i32 0, i32 0
	%6 = load %struct.Array_Node*, %struct.Array_Node** %5, align 4
	%7 = call i32 @_Array_Node_size(%struct.Array_Node* %6)
	store i32 %7, i32* %3, align 4
	br label %8

8:
	%9 = load i32, i32* %3, align 4
	ret i32 %9
}

define i32 @_Heap_Node_lchild(%struct.Heap_Node* %0,i32 %1){
	%3 = alloca %struct.Heap_Node*, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 4
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
	%3 = alloca %struct.Heap_Node*, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 4
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
	%3 = alloca %struct.Heap_Node*, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 4
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
	%3 = alloca %struct.Heap_Node*, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %3, align 4
	store i32 %1, i32* %4, align 4
	%8 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%9 = load i32, i32* %4, align 4
	%10 = call i32 @_Heap_Node_lchild(%struct.Heap_Node* %8, i32 %9)
	store i32 %10, i32* %5, align 4
	%11 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%12 = load i32, i32* %4, align 4
	%13 = call i32 @_Heap_Node_rchild(%struct.Heap_Node* %11, i32 %12)
	store i32 %13, i32* %6, align 4
	%14 = load i32, i32* %4, align 4
	store i32 %14, i32* %7, align 4
	%15 = load i32, i32* %5, align 4
	%16 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%17 = call i32 @_Heap_Node_size(%struct.Heap_Node* %16)
	%18 = icmp slt i32 %15, %17
	br i1 %18, label %19, label %33

19:
	%20 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%21 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %20, i32 0, i32 0
	%22 = load %struct.Array_Node*, %struct.Array_Node** %21, align 4
	%23 = load i32, i32* %5, align 4
	%24 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %22, i32 %23)
	%25 = call i32 @_Node_key_(%struct.Node* %24)
	%26 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%27 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %26, i32 0, i32 0
	%28 = load %struct.Array_Node*, %struct.Array_Node** %27, align 4
	%29 = load i32, i32* %7, align 4
	%30 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %28, i32 %29)
	%31 = call i32 @_Node_key_(%struct.Node* %30)
	%32 = icmp sgt i32 %25, %31
	br label %33

33:
	%34 = phi i1 [ 0, %2 ], [ %32, %19 ]
	br i1 %34, label %35, label %38

;True block in _Heap_Node_maxHeapify selectCount 0
35:
	%36 = load i32, i32* %5, align 4
	%37 = load i32, i32* %7, align 4
	store i32 %36, i32* %7, align 4
	br label %38

;Converge block in _Heap_Node_maxHeapify selectCount 0
38:
	%39 = load i32, i32* %6, align 4
	%40 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%41 = call i32 @_Heap_Node_size(%struct.Heap_Node* %40)
	%42 = icmp slt i32 %39, %41
	br i1 %42, label %43, label %57

43:
	%44 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%45 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %44, i32 0, i32 0
	%46 = load %struct.Array_Node*, %struct.Array_Node** %45, align 4
	%47 = load i32, i32* %6, align 4
	%48 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %46, i32 %47)
	%49 = call i32 @_Node_key_(%struct.Node* %48)
	%50 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%51 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %50, i32 0, i32 0
	%52 = load %struct.Array_Node*, %struct.Array_Node** %51, align 4
	%53 = load i32, i32* %7, align 4
	%54 = call %struct.Node* @_Array_Node_get(%struct.Array_Node* %52, i32 %53)
	%55 = call i32 @_Node_key_(%struct.Node* %54)
	%56 = icmp sgt i32 %49, %55
	br label %57

57:
	%58 = phi i1 [ 0, %38 ], [ %56, %43 ]
	br i1 %58, label %59, label %62

;True block in _Heap_Node_maxHeapify selectCount 1
59:
	%60 = load i32, i32* %6, align 4
	%61 = load i32, i32* %7, align 4
	store i32 %60, i32* %7, align 4
	br label %62

;Converge block in _Heap_Node_maxHeapify selectCount 1
62:
	%63 = load i32, i32* %7, align 4
	%64 = load i32, i32* %4, align 4
	%65 = icmp eq i32 %63, %64
	br i1 %65, label %66, label %67

;True block in _Heap_Node_maxHeapify selectCount 2
66:
	br label %75

;Converge block in _Heap_Node_maxHeapify selectCount 2
67:
	%68 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%69 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %68, i32 0, i32 0
	%70 = load %struct.Array_Node*, %struct.Array_Node** %69, align 4
	%71 = load i32, i32* %4, align 4
	%72 = load i32, i32* %7, align 4
	call void @_Array_Node_swap(%struct.Array_Node* %70, i32 %71, i32 %72)
	%73 = load %struct.Heap_Node*, %struct.Heap_Node** %3, align 4
	%74 = load i32, i32* %7, align 4
	call void @_Heap_Node_maxHeapify(%struct.Heap_Node* %73, i32 %74)
	br label %75

75:
	ret void
}

define void @_Heap_Node_Heap_Node(%struct.Heap_Node* %0){
	%2 = alloca %struct.Heap_Node*, align 4
	store %struct.Heap_Node* %0, %struct.Heap_Node** %2, align 4
	%3 = call i8* @myNew(i32 8)
	%4 = bitcast i8* %3 to %struct.Array_Node*
	call void @_Array_Node_Array_Node(%struct.Array_Node* %4)
	%5 = load %struct.Heap_Node*, %struct.Heap_Node** %2, align 4
	%6 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %5, i32 0, i32 0
	%7 = load %struct.Array_Node*, %struct.Array_Node** %6, align 4
	store %struct.Array_Node* %4, %struct.Array_Node** %6, align 4
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
	%9 = call i8* @myNew(i32 16)
	%10 = bitcast i8* %9 to %struct.EdgeList*
	%11 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	store %struct.EdgeList* %10, %struct.EdgeList** @g, align 4
	%12 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%13 = load i32, i32* @n, align 4
	%14 = load i32, i32* @m, align 4
	call void @_EdgeList_init(%struct.EdgeList* %12, i32 %13, i32 %14)
	%15 = load i32, i32* %1, align 4
	store i32 0, i32* %1, align 4
	br label %16

;loop check block init loopDepth 1 iterCount 0
16:
	%17 = load i32, i32* %1, align 4
	%18 = load i32, i32* @m, align 4
	%19 = icmp slt i32 %17, %18
	br i1 %19, label %20, label %31

;loop body init loopDepth 1 iterCount 0
20:
	%21 = call i32 @getInt()
	store i32 %21, i32* %2, align 4
	%22 = call i32 @getInt()
	store i32 %22, i32* %3, align 4
	%23 = call i32 @getInt()
	store i32 %23, i32* %4, align 4
	%24 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%25 = load i32, i32* %2, align 4
	%26 = load i32, i32* %3, align 4
	%27 = load i32, i32* %4, align 4
	call void @_EdgeList_addEdge(%struct.EdgeList* %24, i32 %25, i32 %26, i32 %27)
	br label %28

;loop increase block init loopDepth 1 iterCount 0
28:
	%29 = load i32, i32* %1, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* %1, align 4
	br label %16

;loop exit block init loopDepth 1 iterCount 0
31:
	br label %32

32:
	ret void
}

define i32 @_Node_key_(%struct.Node* %0){
	%2 = alloca %struct.Node*, align 4
	%3 = alloca i32, align 4
	store %struct.Node* %0, %struct.Node** %2, align 4
	store i32 0, i32* %3, align 4
	%4 = load %struct.Node*, %struct.Node** %2, align 4
	%5 = getelementptr %struct.Node, %struct.Node* %4, i32 0, i32 1
	%6 = load i32, i32* %5, align 4
	%7 = sub i32 0, %6
	store i32 %7, i32* %3, align 4
	br label %8

8:
	%9 = load i32, i32* %3, align 4
	ret i32 %9
}

define i32* @dijkstra(i32 %0){
	%2 = alloca i32*, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32*, align 4
	%5 = alloca i32*, align 4
	%6 = alloca i32, align 4
	%7 = alloca %struct.Heap_Node*, align 4
	%8 = alloca %struct.Node*, align 4
	%9 = alloca %struct.Node*, align 4
	%10 = alloca i32, align 4
	%11 = alloca i32, align 4
	%12 = alloca i32, align 4
	%13 = alloca i32, align 4
	%14 = alloca i32, align 4
	store i32* null, i32** %2, align 4
	store i32 %0, i32* %3, align 4
	%15 = load i32, i32* @n, align 4
	%16 = mul i32 %15, 4
	%17 = add i32 %16, 4
	%18 = call i8* @myNew(i32 %17)
	%19 = bitcast i8* %18 to i32*
	store i32 %15, i32* %19, align 4
	%20 = bitcast i8* %18 to i32*
	store i32* %20, i32** %4, align 4
	%21 = load i32, i32* @n, align 4
	%22 = mul i32 %21, 4
	%23 = add i32 %22, 4
	%24 = call i8* @myNew(i32 %23)
	%25 = bitcast i8* %24 to i32*
	store i32 %21, i32* %25, align 4
	%26 = bitcast i8* %24 to i32*
	store i32* %26, i32** %5, align 4
	%27 = load i32, i32* %6, align 4
	store i32 0, i32* %6, align 4
	br label %28

;loop check block dijkstra loopDepth 1 iterCount 0
28:
	%29 = load i32, i32* %6, align 4
	%30 = load i32, i32* @n, align 4
	%31 = icmp slt i32 %29, %30
	br i1 %31, label %32, label %53

;loop body dijkstra loopDepth 1 iterCount 0
32:
	%33 = load i32, i32* @INF, align 4
	%34 = load i32*, i32** %5, align 4
	%35 = load i32, i32* %6, align 4
	%36 = mul i32 %35, 4
	%37 = add i32 %36, 4
	%38 = bitcast i32* %34 to i8*
	%39 = getelementptr i8, i8* %38, i32 %37
	%40 = bitcast i8* %39 to i32*
	%41 = load i32, i32* %40, align 4
	store i32 %33, i32* %40, align 4
	%42 = load i32*, i32** %4, align 4
	%43 = load i32, i32* %6, align 4
	%44 = mul i32 %43, 4
	%45 = add i32 %44, 4
	%46 = bitcast i32* %42 to i8*
	%47 = getelementptr i8, i8* %46, i32 %45
	%48 = bitcast i8* %47 to i32*
	%49 = load i32, i32* %48, align 4
	store i32 0, i32* %48, align 4
	br label %50

;loop increase block dijkstra loopDepth 1 iterCount 0
50:
	%51 = load i32, i32* %6, align 4
	%52 = add i32 %51, 1
	store i32 %52, i32* %6, align 4
	br label %28

;loop exit block dijkstra loopDepth 1 iterCount 0
53:
	%54 = load i32*, i32** %5, align 4
	%55 = load i32, i32* %3, align 4
	%56 = mul i32 %55, 4
	%57 = add i32 %56, 4
	%58 = bitcast i32* %54 to i8*
	%59 = getelementptr i8, i8* %58, i32 %57
	%60 = bitcast i8* %59 to i32*
	%61 = load i32, i32* %60, align 4
	store i32 0, i32* %60, align 4
	%62 = call i8* @myNew(i32 4)
	%63 = bitcast i8* %62 to %struct.Heap_Node*
	call void @_Heap_Node_Heap_Node(%struct.Heap_Node* %63)
	store %struct.Heap_Node* %63, %struct.Heap_Node** %7, align 4
	%64 = call i8* @myNew(i32 8)
	%65 = bitcast i8* %64 to %struct.Node*
	store %struct.Node* %65, %struct.Node** %8, align 4
	%66 = load %struct.Node*, %struct.Node** %8, align 4
	%67 = getelementptr %struct.Node, %struct.Node* %66, i32 0, i32 1
	%68 = load i32, i32* %67, align 4
	store i32 0, i32* %67, align 4
	%69 = load i32, i32* %3, align 4
	%70 = load %struct.Node*, %struct.Node** %8, align 4
	%71 = getelementptr %struct.Node, %struct.Node* %70, i32 0, i32 0
	%72 = load i32, i32* %71, align 4
	store i32 %69, i32* %71, align 4
	%73 = load %struct.Heap_Node*, %struct.Heap_Node** %7, align 4
	%74 = load %struct.Node*, %struct.Node** %8, align 4
	call void @_Heap_Node_push(%struct.Heap_Node* %73, %struct.Node* %74)
	br label %75

;loop check block dijkstra loopDepth 1 iterCount 1
75:
	%76 = load %struct.Heap_Node*, %struct.Heap_Node** %7, align 4
	%77 = call i32 @_Heap_Node_size(%struct.Heap_Node* %76)
	%78 = icmp ne i32 %77, 0
	br i1 %78, label %79, label %208

;loop body dijkstra loopDepth 1 iterCount 1
79:
	%80 = load %struct.Heap_Node*, %struct.Heap_Node** %7, align 4
	%81 = call %struct.Node* @_Heap_Node_pop(%struct.Heap_Node* %80)
	store %struct.Node* %81, %struct.Node** %9, align 4
	%82 = load %struct.Node*, %struct.Node** %9, align 4
	%83 = getelementptr %struct.Node, %struct.Node* %82, i32 0, i32 0
	%84 = load i32, i32* %83, align 4
	store i32 %84, i32* %10, align 4
	%85 = load i32*, i32** %4, align 4
	%86 = load i32, i32* %10, align 4
	%87 = mul i32 %86, 4
	%88 = add i32 %87, 4
	%89 = bitcast i32* %85 to i8*
	%90 = getelementptr i8, i8* %89, i32 %88
	%91 = bitcast i8* %90 to i32*
	%92 = load i32, i32* %91, align 4
	%93 = icmp eq i32 %92, 1
	br i1 %93, label %94, label %95

;True block in dijkstra selectCount 0
94:
	br label %75

;Converge block in dijkstra selectCount 0
95:
	%96 = load i32*, i32** %4, align 4
	%97 = load i32, i32* %10, align 4
	%98 = mul i32 %97, 4
	%99 = add i32 %98, 4
	%100 = bitcast i32* %96 to i8*
	%101 = getelementptr i8, i8* %100, i32 %99
	%102 = bitcast i8* %101 to i32*
	%103 = load i32, i32* %102, align 4
	store i32 1, i32* %102, align 4
	%104 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%105 = getelementptr %struct.EdgeList, %struct.EdgeList* %104, i32 0, i32 2
	%106 = load i32*, i32** %105, align 4
	%107 = load i32, i32* %10, align 4
	%108 = mul i32 %107, 4
	%109 = add i32 %108, 4
	%110 = bitcast i32* %106 to i8*
	%111 = getelementptr i8, i8* %110, i32 %109
	%112 = bitcast i8* %111 to i32*
	%113 = load i32, i32* %112, align 4
	%114 = load i32, i32* %11, align 4
	store i32 %113, i32* %11, align 4
	br label %115

;loop check block dijkstra loopDepth 2 iterCount 1
115:
	%116 = load i32, i32* %11, align 4
	%117 = sub i32 0, 1
	%118 = icmp ne i32 %116, %117
	br i1 %118, label %119, label %207

;loop body dijkstra loopDepth 2 iterCount 1
119:
	%120 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%121 = getelementptr %struct.EdgeList, %struct.EdgeList* %120, i32 0, i32 0
	%122 = load %struct.Edge**, %struct.Edge*** %121, align 4
	%123 = load i32, i32* %11, align 4
	%124 = mul i32 %123, 4
	%125 = add i32 %124, 4
	%126 = bitcast %struct.Edge** %122 to i8*
	%127 = getelementptr i8, i8* %126, i32 %125
	%128 = bitcast i8* %127 to %struct.Edge**
	%129 = load %struct.Edge*, %struct.Edge** %128, align 4
	%130 = getelementptr %struct.Edge, %struct.Edge* %129, i32 0, i32 1
	%131 = load i32, i32* %130, align 4
	store i32 %131, i32* %12, align 4
	%132 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%133 = getelementptr %struct.EdgeList, %struct.EdgeList* %132, i32 0, i32 0
	%134 = load %struct.Edge**, %struct.Edge*** %133, align 4
	%135 = load i32, i32* %11, align 4
	%136 = mul i32 %135, 4
	%137 = add i32 %136, 4
	%138 = bitcast %struct.Edge** %134 to i8*
	%139 = getelementptr i8, i8* %138, i32 %137
	%140 = bitcast i8* %139 to %struct.Edge**
	%141 = load %struct.Edge*, %struct.Edge** %140, align 4
	%142 = getelementptr %struct.Edge, %struct.Edge* %141, i32 0, i32 2
	%143 = load i32, i32* %142, align 4
	store i32 %143, i32* %13, align 4
	%144 = load i32*, i32** %5, align 4
	%145 = load i32, i32* %10, align 4
	%146 = mul i32 %145, 4
	%147 = add i32 %146, 4
	%148 = bitcast i32* %144 to i8*
	%149 = getelementptr i8, i8* %148, i32 %147
	%150 = bitcast i8* %149 to i32*
	%151 = load i32, i32* %150, align 4
	%152 = load i32, i32* %13, align 4
	%153 = add i32 %151, %152
	store i32 %153, i32* %14, align 4
	%154 = load i32, i32* %14, align 4
	%155 = load i32*, i32** %5, align 4
	%156 = load i32, i32* %12, align 4
	%157 = mul i32 %156, 4
	%158 = add i32 %157, 4
	%159 = bitcast i32* %155 to i8*
	%160 = getelementptr i8, i8* %159, i32 %158
	%161 = bitcast i8* %160 to i32*
	%162 = load i32, i32* %161, align 4
	%163 = icmp sge i32 %154, %162
	br i1 %163, label %164, label %165

;True block in dijkstra selectCount 1
164:
	br label %195

;Converge block in dijkstra selectCount 1
165:
	%166 = load i32, i32* %14, align 4
	%167 = load i32*, i32** %5, align 4
	%168 = load i32, i32* %12, align 4
	%169 = mul i32 %168, 4
	%170 = add i32 %169, 4
	%171 = bitcast i32* %167 to i8*
	%172 = getelementptr i8, i8* %171, i32 %170
	%173 = bitcast i8* %172 to i32*
	%174 = load i32, i32* %173, align 4
	store i32 %166, i32* %173, align 4
	%175 = call i8* @myNew(i32 8)
	%176 = bitcast i8* %175 to %struct.Node*
	%177 = load %struct.Node*, %struct.Node** %9, align 4
	store %struct.Node* %176, %struct.Node** %9, align 4
	%178 = load i32, i32* %12, align 4
	%179 = load %struct.Node*, %struct.Node** %9, align 4
	%180 = getelementptr %struct.Node, %struct.Node* %179, i32 0, i32 0
	%181 = load i32, i32* %180, align 4
	store i32 %178, i32* %180, align 4
	%182 = load i32*, i32** %5, align 4
	%183 = load i32, i32* %12, align 4
	%184 = mul i32 %183, 4
	%185 = add i32 %184, 4
	%186 = bitcast i32* %182 to i8*
	%187 = getelementptr i8, i8* %186, i32 %185
	%188 = bitcast i8* %187 to i32*
	%189 = load i32, i32* %188, align 4
	%190 = load %struct.Node*, %struct.Node** %9, align 4
	%191 = getelementptr %struct.Node, %struct.Node* %190, i32 0, i32 1
	%192 = load i32, i32* %191, align 4
	store i32 %189, i32* %191, align 4
	%193 = load %struct.Heap_Node*, %struct.Heap_Node** %7, align 4
	%194 = load %struct.Node*, %struct.Node** %9, align 4
	call void @_Heap_Node_push(%struct.Heap_Node* %193, %struct.Node* %194)
	br label %195

;loop increase block dijkstra loopDepth 2 iterCount 1
195:
	%196 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%197 = getelementptr %struct.EdgeList, %struct.EdgeList* %196, i32 0, i32 1
	%198 = load i32*, i32** %197, align 4
	%199 = load i32, i32* %11, align 4
	%200 = mul i32 %199, 4
	%201 = add i32 %200, 4
	%202 = bitcast i32* %198 to i8*
	%203 = getelementptr i8, i8* %202, i32 %201
	%204 = bitcast i8* %203 to i32*
	%205 = load i32, i32* %204, align 4
	%206 = load i32, i32* %11, align 4
	store i32 %205, i32* %11, align 4
	br label %115

;loop exit block dijkstra loopDepth 2 iterCount 1
207:
	br label %75

;loop exit block dijkstra loopDepth 1 iterCount 1
208:
	%209 = load i32*, i32** %5, align 4
	store i32* %209, i32** %2, align 4
	br label %210

210:
	%211 = load i32*, i32** %2, align 4
	ret i32* %211
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32*, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	call void @init()
	%5 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %6

;loop check block main loopDepth 1 iterCount 0
6:
	%7 = load i32, i32* %2, align 4
	%8 = load i32, i32* @n, align 4
	%9 = icmp slt i32 %7, %8
	br i1 %9, label %10, label %53

;loop body main loopDepth 1 iterCount 0
10:
	%11 = load i32, i32* %2, align 4
	%12 = call i32* @dijkstra(i32 %11)
	store i32* %12, i32** %4, align 4
	%13 = load i32, i32* %3, align 4
	store i32 0, i32* %3, align 4
	br label %14

;loop check block main loopDepth 2 iterCount 0
14:
	%15 = load i32, i32* %3, align 4
	%16 = load i32, i32* @n, align 4
	%17 = icmp slt i32 %15, %16
	br i1 %17, label %18, label %48

;loop body main loopDepth 2 iterCount 0
18:
	%19 = load i32*, i32** %4, align 4
	%20 = load i32, i32* %3, align 4
	%21 = mul i32 %20, 4
	%22 = add i32 %21, 4
	%23 = bitcast i32* %19 to i8*
	%24 = getelementptr i8, i8* %23, i32 %22
	%25 = bitcast i8* %24 to i32*
	%26 = load i32, i32* %25, align 4
	%27 = load i32, i32* @INF, align 4
	%28 = icmp eq i32 %26, %27
	br i1 %28, label %29, label %31

;True block in main selectCount 0
29:
	%30 = bitcast [3 x i8]* @.libro.str to i8*
	call void @print(i8* %30)
	br label %43

;False block in main selectCount 0
31:
	%32 = load i32*, i32** %4, align 4
	%33 = load i32, i32* %3, align 4
	%34 = mul i32 %33, 4
	%35 = add i32 %34, 4
	%36 = bitcast i32* %32 to i8*
	%37 = getelementptr i8, i8* %36, i32 %35
	%38 = bitcast i8* %37 to i32*
	%39 = load i32, i32* %38, align 4
	%40 = call %struct.string* @toString(i32 %39)
	%41 = getelementptr %struct.string, %struct.string* %40, i32 0, i32 1
	%42 = load i8*, i8** %41, align 4
	call void @print(i8* %42)
	br label %43

;Converge block in main selectCount 0
43:
	%44 = bitcast [2 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %44)
	br label %45

;loop increase block main loopDepth 2 iterCount 0
45:
	%46 = load i32, i32* %3, align 4
	%47 = add i32 %46, 1
	store i32 %47, i32* %3, align 4
	br label %14

;loop exit block main loopDepth 2 iterCount 0
48:
	%49 = bitcast [1 x i8]* @.libro.str.2 to i8*
	call void @println(i8* %49)
	br label %50

;loop increase block main loopDepth 1 iterCount 0
50:
	%51 = load i32, i32* %2, align 4
	%52 = add i32 %51, 1
	store i32 %52, i32* %2, align 4
	br label %6

;loop exit block main loopDepth 1 iterCount 0
53:
	store i32 0, i32* %1, align 4
	br label %54

54:
	%55 = load i32, i32* %1, align 4
	ret i32 %55
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
declare i8* @myNew(i32)

