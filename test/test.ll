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

define void @_GLOBAL_(){

0:
;0 0
	ret void
}

define i32 @_Array_Node_size(%struct.Array_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%3 = load i32, i32* %2, align 4
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @_Heap_Node_lchild(%struct.Heap_Node* %0,i32 %1){

2:
;2 2
	%3 = mul i32 %1, 2
	%4 = add i32 %3, 1
	br label %5

5:
;5 2
	ret i32 %4
}

define i32 @_Heap_Node_rchild(%struct.Heap_Node* %0,i32 %1){

2:
;2 2
	%3 = mul i32 %1, 2
	%4 = add i32 %3, 2
	br label %5

5:
;5 2
	ret i32 %4
}

define i32 @_Heap_Node_pnt(%struct.Heap_Node* %0,i32 %1){

2:
;2 2
	%3 = sub i32 %1, 1
	%4 = sdiv i32 %3, 2
	br label %5

5:
;5 2
	ret i32 %4
}

define %struct.Node* @_Heap_Node_top(%struct.Heap_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%3 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	br label %4

;begin inline expansion _Array_Node_front
4:
;4 14
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %3, i32 0, i32 0
	%6 = load %struct.Node**, %struct.Node*** %5, align 4
	%7 = bitcast %struct.Node** %6 to i8*
	%8 = getelementptr i8, i8* %7, i32 4
	%9 = bitcast i8* %8 to %struct.Node**
	%10 = load %struct.Node*, %struct.Node** %9, align 4
	br label %11

11:
;11 14
	br label %12

;end inline expansion _Array_Node_front
12:
;12 14
	br label %13

13:
;13 1
	ret %struct.Node* %10
}

define i32 @_Heap_Node_size(%struct.Heap_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%3 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	br label %4

;begin inline expansion _Array_Node_size
4:
;4 10
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %3, i32 0, i32 1
	%6 = load i32, i32* %5, align 4
	br label %7

7:
;7 10
	br label %8

;end inline expansion _Array_Node_size
8:
;8 10
	br label %9

9:
;9 1
	ret i32 %6
}

define i32 @_Node_key_(%struct.Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%3 = load i32, i32* %2, align 4
	%4 = sub i32 0, %3
	br label %5

5:
;5 1
	ret i32 %4
}

define i32 @_EdgeList_nVertices(%struct.EdgeList* %0){

1:
;1 1
	%2 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 2
	%3 = load i32*, i32** %2, align 4
	%4 = bitcast i32* %3 to i32*
	%5 = getelementptr i32, i32* %4, i32 0
	%6 = load i32, i32* %5, align 4
	br label %7

7:
;7 1
	ret i32 %6
}

define i32 @_EdgeList_nEdges(%struct.EdgeList* %0){

1:
;1 1
	%2 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 0
	%3 = load %struct.Edge**, %struct.Edge*** %2, align 4
	%4 = bitcast %struct.Edge** %3 to i32*
	%5 = getelementptr i32, i32* %4, i32 0
	%6 = load i32, i32* %5, align 4
	br label %7

7:
;7 1
	ret i32 %6
}

define void @_Heap_Node_Heap_Node(%struct.Heap_Node* %0){

1:
;1 1
	%2 = call i8* @myNew(i32 8)
	%3 = bitcast i8* %2 to %struct.Array_Node*
	br label %4

;begin inline expansion _Array_Node_Array_Node
4:
;4 15
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %3, i32 0, i32 1
	store i32 0, i32* %5, align 4
	%6 = call i8* @myNew(i32 68)
	%7 = bitcast i8* %6 to i32*
	store i32 16, i32* %7, align 4
	%8 = bitcast i8* %6 to %struct.Node**
	%9 = getelementptr %struct.Array_Node, %struct.Array_Node* %3, i32 0, i32 0
	%10 = load %struct.Node**, %struct.Node*** %9, align 4
	store %struct.Node** %8, %struct.Node*** %9, align 4
	br label %11

11:
;11 15
	br label %12

;end inline expansion _Array_Node_Array_Node
12:
;12 15
	%13 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	store %struct.Array_Node* %3, %struct.Array_Node** %13, align 4
	br label %14

14:
;14 1
	ret void
}

define %struct.Node* @_Array_Node_front(%struct.Array_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%3 = load %struct.Node**, %struct.Node*** %2, align 4
	%4 = bitcast %struct.Node** %3 to i8*
	%5 = getelementptr i8, i8* %4, i32 4
	%6 = bitcast i8* %5 to %struct.Node**
	%7 = load %struct.Node*, %struct.Node** %6, align 4
	br label %8

8:
;8 1
	ret %struct.Node* %7
}

define %struct.Node* @_Array_Node_get(%struct.Array_Node* %0,i32 %1){

2:
;2 2
	%3 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%4 = load %struct.Node**, %struct.Node*** %3, align 4
	%5 = mul i32 %1, 4
	%6 = add i32 %5, 4
	%7 = bitcast %struct.Node** %4 to i8*
	%8 = getelementptr i8, i8* %7, i32 %6
	%9 = bitcast i8* %8 to %struct.Node**
	%10 = load %struct.Node*, %struct.Node** %9, align 4
	br label %11

11:
;11 2
	ret %struct.Node* %10
}

define void @_Array_Node_set(%struct.Array_Node* %0,i32 %1,%struct.Node* %2){

3:
;3 3
	%4 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%5 = load %struct.Node**, %struct.Node*** %4, align 4
	%6 = mul i32 %1, 4
	%7 = add i32 %6, 4
	%8 = bitcast %struct.Node** %5 to i8*
	%9 = getelementptr i8, i8* %8, i32 %7
	%10 = bitcast i8* %9 to %struct.Node**
	store %struct.Node* %2, %struct.Node** %10, align 4
	br label %11

11:
;11 3
	ret void
}

define void @_Array_Node_Array_Node(%struct.Array_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	store i32 0, i32* %2, align 4
	%3 = call i8* @myNew(i32 68)
	%4 = bitcast i8* %3 to i32*
	store i32 16, i32* %4, align 4
	%5 = bitcast i8* %3 to %struct.Node**
	%6 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%7 = load %struct.Node**, %struct.Node*** %6, align 4
	store %struct.Node** %5, %struct.Node*** %6, align 4
	br label %8

8:
;8 1
	ret void
}

define %struct.Node* @_Array_Node_back(%struct.Array_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%3 = load %struct.Node**, %struct.Node*** %2, align 4
	%4 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%5 = load i32, i32* %4, align 4
	%6 = sub i32 %5, 1
	%7 = mul i32 %6, 4
	%8 = add i32 %7, 4
	%9 = bitcast %struct.Node** %3 to i8*
	%10 = getelementptr i8, i8* %9, i32 %8
	%11 = bitcast i8* %10 to %struct.Node**
	%12 = load %struct.Node*, %struct.Node** %11, align 4
	br label %13

13:
;13 1
	ret %struct.Node* %12
}

define void @_Array_Node_resize(%struct.Array_Node* %0,i32 %1){

2:
;2 2
	br label %3

;loop check block _Array_Node_resize loopDepth 1 iterCount 0
3:
;3 2
	%4 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%5 = load %struct.Node**, %struct.Node*** %4, align 4
	%6 = bitcast %struct.Node** %5 to i32*
	%7 = getelementptr i32, i32* %6, i32 0
	%8 = load i32, i32* %7, align 4
	%9 = icmp slt i32 %8, %1
	br i1 %9, label %10, label %56

;loop body _Array_Node_resize loopDepth 1 iterCount 0
10:
;10 3
	br label %11

;begin inline expansion _Array_Node_doubleStorage
11:
;11 59
	%12 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%13 = load %struct.Node**, %struct.Node*** %12, align 4
	%14 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%15 = load i32, i32* %14, align 4
	%16 = bitcast %struct.Node** %13 to i32*
	%17 = getelementptr i32, i32* %16, i32 0
	%18 = load i32, i32* %17, align 4
	%19 = mul i32 %18, 2
	%20 = mul i32 %19, 4
	%21 = add i32 %20, 4
	%22 = call i8* @myNew(i32 %21)
	%23 = bitcast i8* %22 to i32*
	store i32 %19, i32* %23, align 4
	%24 = bitcast i8* %22 to %struct.Node**
	%25 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	store %struct.Node** %24, %struct.Node*** %25, align 4
	%26 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%27 = load i32, i32* %26, align 4
	store i32 0, i32* %26, align 4
	br label %28

28:
;28 59
	%29 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%30 = load i32, i32* %29, align 4
	%31 = icmp ne i32 %30, %15
	br i1 %31, label %34, label %32

32:
;32 59
	br label %33

;end inline expansion _Array_Node_doubleStorage
33:
;33 59
	br label %3

34:
;34 59
	%35 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%36 = load i32, i32* %35, align 4
	%37 = mul i32 %36, 4
	%38 = add i32 %37, 4
	%39 = bitcast %struct.Node** %13 to i8*
	%40 = getelementptr i8, i8* %39, i32 %38
	%41 = bitcast i8* %40 to %struct.Node**
	%42 = load %struct.Node*, %struct.Node** %41, align 4
	%43 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%44 = load %struct.Node**, %struct.Node*** %43, align 4
	%45 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%46 = load i32, i32* %45, align 4
	%47 = mul i32 %46, 4
	%48 = add i32 %47, 4
	%49 = bitcast %struct.Node** %44 to i8*
	%50 = getelementptr i8, i8* %49, i32 %48
	%51 = bitcast i8* %50 to %struct.Node**
	store %struct.Node* %42, %struct.Node** %51, align 4
	br label %52

52:
;52 59
	%53 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%54 = load i32, i32* %53, align 4
	%55 = add i32 %54, 1
	store i32 %55, i32* %53, align 4
	br label %28

;loop exit block _Array_Node_resize loopDepth 1 iterCount 0
56:
;56 3
	%57 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	store i32 %1, i32* %57, align 4
	br label %58

58:
;58 56
	ret void
}

define %struct.Node* @_Heap_Node_pop(%struct.Heap_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%3 = load %struct.Array_Node*, %struct.Array_Node** %2, align 4
	br label %4

;begin inline expansion _Array_Node_front
4:
;4 242
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %3, i32 0, i32 0
	%6 = load %struct.Node**, %struct.Node*** %5, align 4
	%7 = bitcast %struct.Node** %6 to i8*
	%8 = getelementptr i8, i8* %7, i32 4
	%9 = bitcast i8* %8 to %struct.Node**
	%10 = load %struct.Node*, %struct.Node** %9, align 4
	br label %11

11:
;11 242
	br label %12

;end inline expansion _Array_Node_front
12:
;12 242
	%13 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%14 = load %struct.Array_Node*, %struct.Array_Node** %13, align 4
	br label %15

;begin inline expansion _Heap_Node_size
15:
;15 242
	%16 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%17 = load %struct.Array_Node*, %struct.Array_Node** %16, align 4
	br label %18

18:
;18 242
	%19 = getelementptr %struct.Array_Node, %struct.Array_Node* %17, i32 0, i32 1
	%20 = load i32, i32* %19, align 4
	br label %21

21:
;21 242
	br label %22

22:
;22 242
	br label %23

23:
;23 242
	br label %24

;end inline expansion _Heap_Node_size
24:
;24 242
	%25 = sub i32 %20, 1
	br label %26

;begin inline expansion _Array_Node_swap
26:
;26 242
	%27 = getelementptr %struct.Array_Node, %struct.Array_Node* %14, i32 0, i32 0
	%28 = load %struct.Node**, %struct.Node*** %27, align 4
	%29 = mul i32 0, 4
	%30 = add i32 %29, 4
	%31 = bitcast %struct.Node** %28 to i8*
	%32 = getelementptr i8, i8* %31, i32 %30
	%33 = bitcast i8* %32 to %struct.Node**
	%34 = load %struct.Node*, %struct.Node** %33, align 4
	%35 = getelementptr %struct.Array_Node, %struct.Array_Node* %14, i32 0, i32 0
	%36 = load %struct.Node**, %struct.Node*** %35, align 4
	%37 = mul i32 %25, 4
	%38 = add i32 %37, 4
	%39 = bitcast %struct.Node** %36 to i8*
	%40 = getelementptr i8, i8* %39, i32 %38
	%41 = bitcast i8* %40 to %struct.Node**
	%42 = load %struct.Node*, %struct.Node** %41, align 4
	%43 = getelementptr %struct.Array_Node, %struct.Array_Node* %14, i32 0, i32 0
	%44 = load %struct.Node**, %struct.Node*** %43, align 4
	%45 = mul i32 0, 4
	%46 = add i32 %45, 4
	%47 = bitcast %struct.Node** %44 to i8*
	%48 = getelementptr i8, i8* %47, i32 %46
	%49 = bitcast i8* %48 to %struct.Node**
	store %struct.Node* %42, %struct.Node** %49, align 4
	%50 = getelementptr %struct.Array_Node, %struct.Array_Node* %14, i32 0, i32 0
	%51 = load %struct.Node**, %struct.Node*** %50, align 4
	%52 = mul i32 %25, 4
	%53 = add i32 %52, 4
	%54 = bitcast %struct.Node** %51 to i8*
	%55 = getelementptr i8, i8* %54, i32 %53
	%56 = bitcast i8* %55 to %struct.Node**
	%57 = load %struct.Node*, %struct.Node** %56, align 4
	store %struct.Node* %34, %struct.Node** %56, align 4
	br label %58

58:
;58 242
	br label %59

;end inline expansion _Array_Node_swap
59:
;59 242
	%60 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%61 = load %struct.Array_Node*, %struct.Array_Node** %60, align 4
	br label %62

;begin inline expansion _Array_Node_pop_back
62:
;62 242
	%63 = getelementptr %struct.Array_Node, %struct.Array_Node* %61, i32 0, i32 1
	%64 = load i32, i32* %63, align 4
	%65 = sub i32 %64, 1
	store i32 %65, i32* %63, align 4
	%66 = getelementptr %struct.Array_Node, %struct.Array_Node* %61, i32 0, i32 0
	%67 = load %struct.Node**, %struct.Node*** %66, align 4
	%68 = getelementptr %struct.Array_Node, %struct.Array_Node* %61, i32 0, i32 1
	%69 = load i32, i32* %68, align 4
	%70 = mul i32 %69, 4
	%71 = add i32 %70, 4
	%72 = bitcast %struct.Node** %67 to i8*
	%73 = getelementptr i8, i8* %72, i32 %71
	%74 = bitcast i8* %73 to %struct.Node**
	%75 = load %struct.Node*, %struct.Node** %74, align 4
	br label %76

76:
;76 242
	br label %77

;end inline expansion _Array_Node_pop_back
77:
;77 242
	br label %78

;begin inline expansion _Heap_Node_maxHeapify
78:
;78 242
	br label %79

;begin inline expansion _Heap_Node_lchild
79:
;79 242
	%80 = mul i32 0, 2
	%81 = add i32 %80, 1
	br label %82

82:
;82 242
	br label %83

;end inline expansion _Heap_Node_lchild
83:
;83 242
	br label %84

;begin inline expansion _Heap_Node_rchild
84:
;84 242
	%85 = mul i32 0, 2
	%86 = add i32 %85, 2
	br label %87

87:
;87 242
	br label %88

;end inline expansion _Heap_Node_rchild
88:
;88 242
	br label %89

;begin inline expansion _Heap_Node_size
89:
;89 242
	%90 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%91 = load %struct.Array_Node*, %struct.Array_Node** %90, align 4
	br label %92

92:
;92 242
	%93 = getelementptr %struct.Array_Node, %struct.Array_Node* %91, i32 0, i32 1
	%94 = load i32, i32* %93, align 4
	br label %95

95:
;95 242
	br label %96

96:
;96 242
	br label %97

97:
;97 242
	br label %98

;end inline expansion _Heap_Node_size
98:
;98 242
	%99 = icmp slt i32 %81, %94
	br i1 %99, label %100, label %140

100:
;100 242
	%101 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%102 = load %struct.Array_Node*, %struct.Array_Node** %101, align 4
	br label %103

;begin inline expansion _Array_Node_get
103:
;103 242
	%104 = getelementptr %struct.Array_Node, %struct.Array_Node* %102, i32 0, i32 0
	%105 = load %struct.Node**, %struct.Node*** %104, align 4
	%106 = mul i32 %81, 4
	%107 = add i32 %106, 4
	%108 = bitcast %struct.Node** %105 to i8*
	%109 = getelementptr i8, i8* %108, i32 %107
	%110 = bitcast i8* %109 to %struct.Node**
	%111 = load %struct.Node*, %struct.Node** %110, align 4
	br label %112

112:
;112 242
	br label %113

;end inline expansion _Array_Node_get
113:
;113 242
	br label %114

;begin inline expansion _Node_key_
114:
;114 242
	%115 = getelementptr %struct.Node, %struct.Node* %111, i32 0, i32 1
	%116 = load i32, i32* %115, align 4
	%117 = sub i32 0, %116
	br label %118

118:
;118 242
	br label %119

;end inline expansion _Node_key_
119:
;119 242
	%120 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%121 = load %struct.Array_Node*, %struct.Array_Node** %120, align 4
	br label %122

;begin inline expansion _Array_Node_get
122:
;122 242
	%123 = getelementptr %struct.Array_Node, %struct.Array_Node* %121, i32 0, i32 0
	%124 = load %struct.Node**, %struct.Node*** %123, align 4
	%125 = mul i32 0, 4
	%126 = add i32 %125, 4
	%127 = bitcast %struct.Node** %124 to i8*
	%128 = getelementptr i8, i8* %127, i32 %126
	%129 = bitcast i8* %128 to %struct.Node**
	%130 = load %struct.Node*, %struct.Node** %129, align 4
	br label %131

131:
;131 242
	br label %132

;end inline expansion _Array_Node_get
132:
;132 242
	br label %133

;begin inline expansion _Node_key_
133:
;133 242
	%134 = getelementptr %struct.Node, %struct.Node* %130, i32 0, i32 1
	%135 = load i32, i32* %134, align 4
	%136 = sub i32 0, %135
	br label %137

137:
;137 242
	br label %138

;end inline expansion _Node_key_
138:
;138 242
	%139 = icmp sgt i32 %117, %136
	br label %140

140:
;140 242
	%141 = phi i1 [ 0, %98 ], [ %139, %138 ]
	br i1 %141, label %241, label %142

142:
;142 242
	%143 = phi i32 [ 0, %140 ], [ %81, %241 ]
	br label %144

;begin inline expansion _Heap_Node_size
144:
;144 242
	%145 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%146 = load %struct.Array_Node*, %struct.Array_Node** %145, align 4
	br label %147

147:
;147 242
	%148 = getelementptr %struct.Array_Node, %struct.Array_Node* %146, i32 0, i32 1
	%149 = load i32, i32* %148, align 4
	br label %150

150:
;150 242
	br label %151

151:
;151 242
	br label %152

152:
;152 242
	br label %153

;end inline expansion _Heap_Node_size
153:
;153 242
	%154 = icmp slt i32 %86, %149
	br i1 %154, label %155, label %195

155:
;155 242
	%156 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%157 = load %struct.Array_Node*, %struct.Array_Node** %156, align 4
	br label %158

;begin inline expansion _Array_Node_get
158:
;158 242
	%159 = getelementptr %struct.Array_Node, %struct.Array_Node* %157, i32 0, i32 0
	%160 = load %struct.Node**, %struct.Node*** %159, align 4
	%161 = mul i32 %86, 4
	%162 = add i32 %161, 4
	%163 = bitcast %struct.Node** %160 to i8*
	%164 = getelementptr i8, i8* %163, i32 %162
	%165 = bitcast i8* %164 to %struct.Node**
	%166 = load %struct.Node*, %struct.Node** %165, align 4
	br label %167

167:
;167 242
	br label %168

;end inline expansion _Array_Node_get
168:
;168 242
	br label %169

;begin inline expansion _Node_key_
169:
;169 242
	%170 = getelementptr %struct.Node, %struct.Node* %166, i32 0, i32 1
	%171 = load i32, i32* %170, align 4
	%172 = sub i32 0, %171
	br label %173

173:
;173 242
	br label %174

;end inline expansion _Node_key_
174:
;174 242
	%175 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%176 = load %struct.Array_Node*, %struct.Array_Node** %175, align 4
	br label %177

;begin inline expansion _Array_Node_get
177:
;177 242
	%178 = getelementptr %struct.Array_Node, %struct.Array_Node* %176, i32 0, i32 0
	%179 = load %struct.Node**, %struct.Node*** %178, align 4
	%180 = mul i32 %143, 4
	%181 = add i32 %180, 4
	%182 = bitcast %struct.Node** %179 to i8*
	%183 = getelementptr i8, i8* %182, i32 %181
	%184 = bitcast i8* %183 to %struct.Node**
	%185 = load %struct.Node*, %struct.Node** %184, align 4
	br label %186

186:
;186 242
	br label %187

;end inline expansion _Array_Node_get
187:
;187 242
	br label %188

;begin inline expansion _Node_key_
188:
;188 242
	%189 = getelementptr %struct.Node, %struct.Node* %185, i32 0, i32 1
	%190 = load i32, i32* %189, align 4
	%191 = sub i32 0, %190
	br label %192

192:
;192 242
	br label %193

;end inline expansion _Node_key_
193:
;193 242
	%194 = icmp sgt i32 %172, %191
	br label %195

195:
;195 242
	%196 = phi i1 [ 0, %153 ], [ %194, %193 ]
	br i1 %196, label %197, label %198

197:
;197 242
	br label %198

198:
;198 242
	%199 = phi i32 [ %143, %195 ], [ %86, %197 ]
	%200 = icmp eq i32 %199, 0
	br i1 %200, label %238, label %201

201:
;201 242
	%202 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%203 = load %struct.Array_Node*, %struct.Array_Node** %202, align 4
	br label %204

;begin inline expansion _Array_Node_swap
204:
;204 242
	%205 = getelementptr %struct.Array_Node, %struct.Array_Node* %203, i32 0, i32 0
	%206 = load %struct.Node**, %struct.Node*** %205, align 4
	%207 = mul i32 0, 4
	%208 = add i32 %207, 4
	%209 = bitcast %struct.Node** %206 to i8*
	%210 = getelementptr i8, i8* %209, i32 %208
	%211 = bitcast i8* %210 to %struct.Node**
	%212 = load %struct.Node*, %struct.Node** %211, align 4
	%213 = getelementptr %struct.Array_Node, %struct.Array_Node* %203, i32 0, i32 0
	%214 = load %struct.Node**, %struct.Node*** %213, align 4
	%215 = mul i32 %199, 4
	%216 = add i32 %215, 4
	%217 = bitcast %struct.Node** %214 to i8*
	%218 = getelementptr i8, i8* %217, i32 %216
	%219 = bitcast i8* %218 to %struct.Node**
	%220 = load %struct.Node*, %struct.Node** %219, align 4
	%221 = getelementptr %struct.Array_Node, %struct.Array_Node* %203, i32 0, i32 0
	%222 = load %struct.Node**, %struct.Node*** %221, align 4
	%223 = mul i32 0, 4
	%224 = add i32 %223, 4
	%225 = bitcast %struct.Node** %222 to i8*
	%226 = getelementptr i8, i8* %225, i32 %224
	%227 = bitcast i8* %226 to %struct.Node**
	store %struct.Node* %220, %struct.Node** %227, align 4
	%228 = getelementptr %struct.Array_Node, %struct.Array_Node* %203, i32 0, i32 0
	%229 = load %struct.Node**, %struct.Node*** %228, align 4
	%230 = mul i32 %199, 4
	%231 = add i32 %230, 4
	%232 = bitcast %struct.Node** %229 to i8*
	%233 = getelementptr i8, i8* %232, i32 %231
	%234 = bitcast i8* %233 to %struct.Node**
	%235 = load %struct.Node*, %struct.Node** %234, align 4
	store %struct.Node* %212, %struct.Node** %234, align 4
	br label %236

236:
;236 242
	br label %237

;end inline expansion _Array_Node_swap
237:
;237 242
	call void @_Heap_Node_maxHeapify(%struct.Heap_Node* %0, i32 %199)
	br label %238

238:
;238 242
	br label %239

;end inline expansion _Heap_Node_maxHeapify
239:
;239 242
	br label %240

240:
;240 1
	ret %struct.Node* %10

241:
;241 242
	br label %142
}

define %struct.Node* @_Array_Node_pop_back(%struct.Array_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%3 = load i32, i32* %2, align 4
	%4 = sub i32 %3, 1
	store i32 %4, i32* %2, align 4
	%5 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%6 = load %struct.Node**, %struct.Node*** %5, align 4
	%7 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%8 = load i32, i32* %7, align 4
	%9 = mul i32 %8, 4
	%10 = add i32 %9, 4
	%11 = bitcast %struct.Node** %6 to i8*
	%12 = getelementptr i8, i8* %11, i32 %10
	%13 = bitcast i8* %12 to %struct.Node**
	%14 = load %struct.Node*, %struct.Node** %13, align 4
	br label %15

15:
;15 1
	ret %struct.Node* %14
}

define void @_Heap_Node_push(%struct.Heap_Node* %0,%struct.Node* %1){

2:
;2 2
	%3 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%4 = load %struct.Array_Node*, %struct.Array_Node** %3, align 4
	br label %5

;begin inline expansion _Array_Node_push_back
5:
;5 175
	br label %6

;begin inline expansion _Array_Node_size
6:
;6 175
	%7 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%8 = load i32, i32* %7, align 4
	br label %9

9:
;9 175
	br label %10

;end inline expansion _Array_Node_size
10:
;10 175
	%11 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 0
	%12 = load %struct.Node**, %struct.Node*** %11, align 4
	%13 = bitcast %struct.Node** %12 to i32*
	%14 = getelementptr i32, i32* %13, i32 0
	%15 = load i32, i32* %14, align 4
	%16 = icmp eq i32 %8, %15
	br i1 %16, label %129, label %17

17:
;17 175
	%18 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 0
	%19 = load %struct.Node**, %struct.Node*** %18, align 4
	%20 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%21 = load i32, i32* %20, align 4
	%22 = mul i32 %21, 4
	%23 = add i32 %22, 4
	%24 = bitcast %struct.Node** %19 to i8*
	%25 = getelementptr i8, i8* %24, i32 %23
	%26 = bitcast i8* %25 to %struct.Node**
	store %struct.Node* %1, %struct.Node** %26, align 4
	%27 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%28 = load i32, i32* %27, align 4
	%29 = add i32 %28, 1
	store i32 %29, i32* %27, align 4
	br label %30

30:
;30 175
	br label %31

;end inline expansion _Array_Node_push_back
31:
;31 175
	br label %32

;begin inline expansion _Heap_Node_size
32:
;32 175
	%33 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%34 = load %struct.Array_Node*, %struct.Array_Node** %33, align 4
	br label %35

35:
;35 175
	%36 = getelementptr %struct.Array_Node, %struct.Array_Node* %34, i32 0, i32 1
	%37 = load i32, i32* %36, align 4
	br label %38

38:
;38 175
	br label %39

39:
;39 175
	br label %40

40:
;40 175
	br label %41

;end inline expansion _Heap_Node_size
41:
;41 175
	%42 = sub i32 %37, 1
	br label %43

;loop check block _Heap_Node_push loopDepth 1 iterCount 0
43:
;43 2
	%44 = phi i32 [ %42, %41 ], [ %49, %127 ]
	%45 = icmp sgt i32 %44, 0
	br i1 %45, label %46, label %128

;loop body _Heap_Node_push loopDepth 1 iterCount 0
46:
;46 43
	br label %47

;begin inline expansion _Heap_Node_pnt
47:
;47 175
	%48 = sub i32 %44, 1
	%49 = sdiv i32 %48, 2
	br label %50

50:
;50 175
	br label %51

;end inline expansion _Heap_Node_pnt
51:
;51 175
	%52 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%53 = load %struct.Array_Node*, %struct.Array_Node** %52, align 4
	br label %54

;begin inline expansion _Array_Node_get
54:
;54 175
	%55 = getelementptr %struct.Array_Node, %struct.Array_Node* %53, i32 0, i32 0
	%56 = load %struct.Node**, %struct.Node*** %55, align 4
	%57 = mul i32 %49, 4
	%58 = add i32 %57, 4
	%59 = bitcast %struct.Node** %56 to i8*
	%60 = getelementptr i8, i8* %59, i32 %58
	%61 = bitcast i8* %60 to %struct.Node**
	%62 = load %struct.Node*, %struct.Node** %61, align 4
	br label %63

63:
;63 175
	br label %64

;end inline expansion _Array_Node_get
64:
;64 175
	br label %65

;begin inline expansion _Node_key_
65:
;65 175
	%66 = getelementptr %struct.Node, %struct.Node* %62, i32 0, i32 1
	%67 = load i32, i32* %66, align 4
	%68 = sub i32 0, %67
	br label %69

69:
;69 175
	br label %70

;end inline expansion _Node_key_
70:
;70 175
	%71 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%72 = load %struct.Array_Node*, %struct.Array_Node** %71, align 4
	br label %73

;begin inline expansion _Array_Node_get
73:
;73 175
	%74 = getelementptr %struct.Array_Node, %struct.Array_Node* %72, i32 0, i32 0
	%75 = load %struct.Node**, %struct.Node*** %74, align 4
	%76 = mul i32 %44, 4
	%77 = add i32 %76, 4
	%78 = bitcast %struct.Node** %75 to i8*
	%79 = getelementptr i8, i8* %78, i32 %77
	%80 = bitcast i8* %79 to %struct.Node**
	%81 = load %struct.Node*, %struct.Node** %80, align 4
	br label %82

82:
;82 175
	br label %83

;end inline expansion _Array_Node_get
83:
;83 175
	br label %84

;begin inline expansion _Node_key_
84:
;84 175
	%85 = getelementptr %struct.Node, %struct.Node* %81, i32 0, i32 1
	%86 = load i32, i32* %85, align 4
	%87 = sub i32 0, %86
	br label %88

88:
;88 175
	br label %89

;end inline expansion _Node_key_
89:
;89 175
	%90 = icmp sge i32 %68, %87
	br i1 %90, label %128, label %91

;Converge block in _Heap_Node_push selectCount 0
91:
;91 46
	%92 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%93 = load %struct.Array_Node*, %struct.Array_Node** %92, align 4
	br label %94

;begin inline expansion _Array_Node_swap
94:
;94 175
	%95 = getelementptr %struct.Array_Node, %struct.Array_Node* %93, i32 0, i32 0
	%96 = load %struct.Node**, %struct.Node*** %95, align 4
	%97 = mul i32 %49, 4
	%98 = add i32 %97, 4
	%99 = bitcast %struct.Node** %96 to i8*
	%100 = getelementptr i8, i8* %99, i32 %98
	%101 = bitcast i8* %100 to %struct.Node**
	%102 = load %struct.Node*, %struct.Node** %101, align 4
	%103 = getelementptr %struct.Array_Node, %struct.Array_Node* %93, i32 0, i32 0
	%104 = load %struct.Node**, %struct.Node*** %103, align 4
	%105 = mul i32 %44, 4
	%106 = add i32 %105, 4
	%107 = bitcast %struct.Node** %104 to i8*
	%108 = getelementptr i8, i8* %107, i32 %106
	%109 = bitcast i8* %108 to %struct.Node**
	%110 = load %struct.Node*, %struct.Node** %109, align 4
	%111 = getelementptr %struct.Array_Node, %struct.Array_Node* %93, i32 0, i32 0
	%112 = load %struct.Node**, %struct.Node*** %111, align 4
	%113 = mul i32 %49, 4
	%114 = add i32 %113, 4
	%115 = bitcast %struct.Node** %112 to i8*
	%116 = getelementptr i8, i8* %115, i32 %114
	%117 = bitcast i8* %116 to %struct.Node**
	store %struct.Node* %110, %struct.Node** %117, align 4
	%118 = getelementptr %struct.Array_Node, %struct.Array_Node* %93, i32 0, i32 0
	%119 = load %struct.Node**, %struct.Node*** %118, align 4
	%120 = mul i32 %44, 4
	%121 = add i32 %120, 4
	%122 = bitcast %struct.Node** %119 to i8*
	%123 = getelementptr i8, i8* %122, i32 %121
	%124 = bitcast i8* %123 to %struct.Node**
	%125 = load %struct.Node*, %struct.Node** %124, align 4
	store %struct.Node* %102, %struct.Node** %124, align 4
	br label %126

126:
;126 175
	br label %127

;end inline expansion _Array_Node_swap
127:
;127 175
	br label %43

128:
;128 176
	ret void

129:
;129 175
	br label %130

;begin inline expansion _Array_Node_doubleStorage
130:
;130 175
	%131 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 0
	%132 = load %struct.Node**, %struct.Node*** %131, align 4
	%133 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%134 = load i32, i32* %133, align 4
	%135 = bitcast %struct.Node** %132 to i32*
	%136 = getelementptr i32, i32* %135, i32 0
	%137 = load i32, i32* %136, align 4
	%138 = mul i32 %137, 2
	%139 = mul i32 %138, 4
	%140 = add i32 %139, 4
	%141 = call i8* @myNew(i32 %140)
	%142 = bitcast i8* %141 to i32*
	store i32 %138, i32* %142, align 4
	%143 = bitcast i8* %141 to %struct.Node**
	%144 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 0
	store %struct.Node** %143, %struct.Node*** %144, align 4
	%145 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%146 = load i32, i32* %145, align 4
	store i32 0, i32* %145, align 4
	br label %147

147:
;147 175
	%148 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%149 = load i32, i32* %148, align 4
	%150 = icmp ne i32 %149, %134
	br i1 %150, label %153, label %151

151:
;151 175
	br label %152

;end inline expansion _Array_Node_doubleStorage
152:
;152 175
	br label %17

153:
;153 175
	%154 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%155 = load i32, i32* %154, align 4
	%156 = mul i32 %155, 4
	%157 = add i32 %156, 4
	%158 = bitcast %struct.Node** %132 to i8*
	%159 = getelementptr i8, i8* %158, i32 %157
	%160 = bitcast i8* %159 to %struct.Node**
	%161 = load %struct.Node*, %struct.Node** %160, align 4
	%162 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 0
	%163 = load %struct.Node**, %struct.Node*** %162, align 4
	%164 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%165 = load i32, i32* %164, align 4
	%166 = mul i32 %165, 4
	%167 = add i32 %166, 4
	%168 = bitcast %struct.Node** %163 to i8*
	%169 = getelementptr i8, i8* %168, i32 %167
	%170 = bitcast i8* %169 to %struct.Node**
	store %struct.Node* %161, %struct.Node** %170, align 4
	br label %171

171:
;171 175
	%172 = getelementptr %struct.Array_Node, %struct.Array_Node* %4, i32 0, i32 1
	%173 = load i32, i32* %172, align 4
	%174 = add i32 %173, 1
	store i32 %174, i32* %172, align 4
	br label %147
}

define void @_Array_Node_push_back(%struct.Array_Node* %0,%struct.Node* %1){

2:
;2 2
	br label %3

;begin inline expansion _Array_Node_size
3:
;3 74
	%4 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%5 = load i32, i32* %4, align 4
	br label %6

6:
;6 74
	br label %7

;end inline expansion _Array_Node_size
7:
;7 74
	%8 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%9 = load %struct.Node**, %struct.Node*** %8, align 4
	%10 = bitcast %struct.Node** %9 to i32*
	%11 = getelementptr i32, i32* %10, i32 0
	%12 = load i32, i32* %11, align 4
	%13 = icmp eq i32 %5, %12
	br i1 %13, label %14, label %38

;True block in _Array_Node_push_back selectCount 0
14:
;14 2
	br label %15

;begin inline expansion _Array_Node_doubleStorage
15:
;15 74
	%16 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%17 = load %struct.Node**, %struct.Node*** %16, align 4
	%18 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%19 = load i32, i32* %18, align 4
	%20 = bitcast %struct.Node** %17 to i32*
	%21 = getelementptr i32, i32* %20, i32 0
	%22 = load i32, i32* %21, align 4
	%23 = mul i32 %22, 2
	%24 = mul i32 %23, 4
	%25 = add i32 %24, 4
	%26 = call i8* @myNew(i32 %25)
	%27 = bitcast i8* %26 to i32*
	store i32 %23, i32* %27, align 4
	%28 = bitcast i8* %26 to %struct.Node**
	%29 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	store %struct.Node** %28, %struct.Node*** %29, align 4
	%30 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%31 = load i32, i32* %30, align 4
	store i32 0, i32* %30, align 4
	br label %32

32:
;32 74
	%33 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%34 = load i32, i32* %33, align 4
	%35 = icmp ne i32 %34, %19
	br i1 %35, label %52, label %36

36:
;36 74
	br label %37

;end inline expansion _Array_Node_doubleStorage
37:
;37 74
	br label %38

;Converge block in _Array_Node_push_back selectCount 0
38:
;38 2
	%39 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%40 = load %struct.Node**, %struct.Node*** %39, align 4
	%41 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%42 = load i32, i32* %41, align 4
	%43 = mul i32 %42, 4
	%44 = add i32 %43, 4
	%45 = bitcast %struct.Node** %40 to i8*
	%46 = getelementptr i8, i8* %45, i32 %44
	%47 = bitcast i8* %46 to %struct.Node**
	store %struct.Node* %1, %struct.Node** %47, align 4
	%48 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%49 = load i32, i32* %48, align 4
	%50 = add i32 %49, 1
	store i32 %50, i32* %48, align 4
	br label %51

51:
;51 38
	ret void

52:
;52 74
	%53 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%54 = load i32, i32* %53, align 4
	%55 = mul i32 %54, 4
	%56 = add i32 %55, 4
	%57 = bitcast %struct.Node** %17 to i8*
	%58 = getelementptr i8, i8* %57, i32 %56
	%59 = bitcast i8* %58 to %struct.Node**
	%60 = load %struct.Node*, %struct.Node** %59, align 4
	%61 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%62 = load %struct.Node**, %struct.Node*** %61, align 4
	%63 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%64 = load i32, i32* %63, align 4
	%65 = mul i32 %64, 4
	%66 = add i32 %65, 4
	%67 = bitcast %struct.Node** %62 to i8*
	%68 = getelementptr i8, i8* %67, i32 %66
	%69 = bitcast i8* %68 to %struct.Node**
	store %struct.Node* %60, %struct.Node** %69, align 4
	br label %70

70:
;70 74
	%71 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%72 = load i32, i32* %71, align 4
	%73 = add i32 %72, 1
	store i32 %73, i32* %71, align 4
	br label %32
}

define void @init(){

0:
;0 0
	%1 = call i32 @getInt()
	store i32 %1, i32* @n, align 4
	%2 = call i32 @getInt()
	%3 = load i32, i32* @m, align 4
	store i32 %2, i32* @m, align 4
	%4 = call i8* @myNew(i32 16)
	%5 = bitcast i8* %4 to %struct.EdgeList*
	%6 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	store %struct.EdgeList* %5, %struct.EdgeList** @g, align 4
	%7 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%8 = load i32, i32* @n, align 4
	%9 = load i32, i32* @m, align 4
	br label %10

;begin inline expansion _EdgeList_init
10:
;10 125
	%11 = mul i32 %9, 4
	%12 = add i32 %11, 4
	%13 = call i8* @myNew(i32 %12)
	%14 = bitcast i8* %13 to i32*
	store i32 %9, i32* %14, align 4
	%15 = bitcast i8* %13 to %struct.Edge**
	%16 = getelementptr %struct.EdgeList, %struct.EdgeList* %7, i32 0, i32 0
	store %struct.Edge** %15, %struct.Edge*** %16, align 4
	%17 = mul i32 %9, 4
	%18 = add i32 %17, 4
	%19 = call i8* @myNew(i32 %18)
	%20 = bitcast i8* %19 to i32*
	store i32 %9, i32* %20, align 4
	%21 = bitcast i8* %19 to i32*
	%22 = getelementptr %struct.EdgeList, %struct.EdgeList* %7, i32 0, i32 1
	%23 = load i32*, i32** %22, align 4
	store i32* %21, i32** %22, align 4
	%24 = mul i32 %8, 4
	%25 = add i32 %24, 4
	%26 = call i8* @myNew(i32 %25)
	%27 = bitcast i8* %26 to i32*
	store i32 %8, i32* %27, align 4
	%28 = bitcast i8* %26 to i32*
	%29 = getelementptr %struct.EdgeList, %struct.EdgeList* %7, i32 0, i32 2
	%30 = load i32*, i32** %29, align 4
	store i32* %28, i32** %29, align 4
	br label %31

31:
;31 125
	%32 = phi i32 [ 0, %10 ], [ %43, %42 ]
	%33 = icmp slt i32 %32, %9
	br i1 %33, label %34, label %44

34:
;34 125
	%35 = getelementptr %struct.EdgeList, %struct.EdgeList* %7, i32 0, i32 1
	%36 = load i32*, i32** %35, align 4
	%37 = mul i32 %32, 4
	%38 = add i32 %37, 4
	%39 = bitcast i32* %36 to i8*
	%40 = getelementptr i8, i8* %39, i32 %38
	%41 = bitcast i8* %40 to i32*
	store i32 -1, i32* %41, align 4
	br label %42

42:
;42 125
	%43 = add i32 %32, 1
	br label %31

44:
;44 125
	br label %45

45:
;45 125
	%46 = phi i32 [ 0, %44 ], [ %57, %56 ]
	%47 = icmp slt i32 %46, %8
	br i1 %47, label %48, label %58

48:
;48 125
	%49 = getelementptr %struct.EdgeList, %struct.EdgeList* %7, i32 0, i32 2
	%50 = load i32*, i32** %49, align 4
	%51 = mul i32 %46, 4
	%52 = add i32 %51, 4
	%53 = bitcast i32* %50 to i8*
	%54 = getelementptr i8, i8* %53, i32 %52
	%55 = bitcast i8* %54 to i32*
	store i32 -1, i32* %55, align 4
	br label %56

56:
;56 125
	%57 = add i32 %46, 1
	br label %45

58:
;58 125
	%59 = getelementptr %struct.EdgeList, %struct.EdgeList* %7, i32 0, i32 3
	store i32 0, i32* %59, align 4
	br label %60

60:
;60 125
	br label %61

;end inline expansion _EdgeList_init
61:
;61 125
	br label %62

;loop check block init loopDepth 1 iterCount 0
62:
;62 0
	%63 = phi i32 [ 0, %61 ], [ %124, %123 ]
	%64 = load i32, i32* @m, align 4
	%65 = icmp slt i32 %63, %64
	br i1 %65, label %67, label %66

66:
;66 126
	ret void

;loop body init loopDepth 1 iterCount 0
67:
;67 62
	%68 = call i32 @getInt()
	%69 = call i32 @getInt()
	%70 = call i32 @getInt()
	%71 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	br label %72

;begin inline expansion _EdgeList_addEdge
72:
;72 125
	%73 = call i8* @myNew(i32 12)
	%74 = bitcast i8* %73 to %struct.Edge*
	%75 = getelementptr %struct.Edge, %struct.Edge* %74, i32 0, i32 0
	store i32 %68, i32* %75, align 4
	%76 = getelementptr %struct.Edge, %struct.Edge* %74, i32 0, i32 1
	%77 = load i32, i32* %76, align 4
	store i32 %69, i32* %76, align 4
	%78 = getelementptr %struct.Edge, %struct.Edge* %74, i32 0, i32 2
	%79 = load i32, i32* %78, align 4
	store i32 %70, i32* %78, align 4
	%80 = getelementptr %struct.EdgeList, %struct.EdgeList* %71, i32 0, i32 0
	%81 = load %struct.Edge**, %struct.Edge*** %80, align 4
	%82 = getelementptr %struct.EdgeList, %struct.EdgeList* %71, i32 0, i32 3
	%83 = load i32, i32* %82, align 4
	%84 = mul i32 %83, 4
	%85 = add i32 %84, 4
	%86 = bitcast %struct.Edge** %81 to i8*
	%87 = getelementptr i8, i8* %86, i32 %85
	%88 = bitcast i8* %87 to %struct.Edge**
	%89 = load %struct.Edge*, %struct.Edge** %88, align 4
	store %struct.Edge* %74, %struct.Edge** %88, align 4
	%90 = getelementptr %struct.EdgeList, %struct.EdgeList* %71, i32 0, i32 2
	%91 = load i32*, i32** %90, align 4
	%92 = mul i32 %68, 4
	%93 = add i32 %92, 4
	%94 = bitcast i32* %91 to i8*
	%95 = getelementptr i8, i8* %94, i32 %93
	%96 = bitcast i8* %95 to i32*
	%97 = load i32, i32* %96, align 4
	%98 = getelementptr %struct.EdgeList, %struct.EdgeList* %71, i32 0, i32 1
	%99 = load i32*, i32** %98, align 4
	%100 = getelementptr %struct.EdgeList, %struct.EdgeList* %71, i32 0, i32 3
	%101 = load i32, i32* %100, align 4
	%102 = mul i32 %101, 4
	%103 = add i32 %102, 4
	%104 = bitcast i32* %99 to i8*
	%105 = getelementptr i8, i8* %104, i32 %103
	%106 = bitcast i8* %105 to i32*
	%107 = load i32, i32* %106, align 4
	store i32 %97, i32* %106, align 4
	%108 = getelementptr %struct.EdgeList, %struct.EdgeList* %71, i32 0, i32 3
	%109 = load i32, i32* %108, align 4
	%110 = getelementptr %struct.EdgeList, %struct.EdgeList* %71, i32 0, i32 2
	%111 = load i32*, i32** %110, align 4
	%112 = mul i32 %68, 4
	%113 = add i32 %112, 4
	%114 = bitcast i32* %111 to i8*
	%115 = getelementptr i8, i8* %114, i32 %113
	%116 = bitcast i8* %115 to i32*
	%117 = load i32, i32* %116, align 4
	store i32 %109, i32* %116, align 4
	%118 = getelementptr %struct.EdgeList, %struct.EdgeList* %71, i32 0, i32 3
	%119 = load i32, i32* %118, align 4
	%120 = add i32 %119, 1
	store i32 %120, i32* %118, align 4
	br label %121

121:
;121 125
	br label %122

;end inline expansion _EdgeList_addEdge
122:
;122 125
	br label %123

;loop increase block init loopDepth 1 iterCount 0
123:
;123 67
	%124 = add i32 %63, 1
	br label %62
}

define void @_Array_Node_swap(%struct.Array_Node* %0,i32 %1,i32 %2){

3:
;3 3
	%4 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%5 = load %struct.Node**, %struct.Node*** %4, align 4
	%6 = mul i32 %1, 4
	%7 = add i32 %6, 4
	%8 = bitcast %struct.Node** %5 to i8*
	%9 = getelementptr i8, i8* %8, i32 %7
	%10 = bitcast i8* %9 to %struct.Node**
	%11 = load %struct.Node*, %struct.Node** %10, align 4
	%12 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%13 = load %struct.Node**, %struct.Node*** %12, align 4
	%14 = mul i32 %2, 4
	%15 = add i32 %14, 4
	%16 = bitcast %struct.Node** %13 to i8*
	%17 = getelementptr i8, i8* %16, i32 %15
	%18 = bitcast i8* %17 to %struct.Node**
	%19 = load %struct.Node*, %struct.Node** %18, align 4
	%20 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%21 = load %struct.Node**, %struct.Node*** %20, align 4
	%22 = mul i32 %1, 4
	%23 = add i32 %22, 4
	%24 = bitcast %struct.Node** %21 to i8*
	%25 = getelementptr i8, i8* %24, i32 %23
	%26 = bitcast i8* %25 to %struct.Node**
	store %struct.Node* %19, %struct.Node** %26, align 4
	%27 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%28 = load %struct.Node**, %struct.Node*** %27, align 4
	%29 = mul i32 %2, 4
	%30 = add i32 %29, 4
	%31 = bitcast %struct.Node** %28 to i8*
	%32 = getelementptr i8, i8* %31, i32 %30
	%33 = bitcast i8* %32 to %struct.Node**
	%34 = load %struct.Node*, %struct.Node** %33, align 4
	store %struct.Node* %11, %struct.Node** %33, align 4
	br label %35

35:
;35 3
	ret void
}

define void @_Heap_Node_maxHeapify(%struct.Heap_Node* %0,i32 %1){

2:
;2 2
	br label %3

;begin inline expansion _Heap_Node_lchild
3:
;3 164
	%4 = mul i32 %1, 2
	%5 = add i32 %4, 1
	br label %6

6:
;6 164
	br label %7

;end inline expansion _Heap_Node_lchild
7:
;7 164
	br label %8

;begin inline expansion _Heap_Node_rchild
8:
;8 164
	%9 = mul i32 %1, 2
	%10 = add i32 %9, 2
	br label %11

11:
;11 164
	br label %12

;end inline expansion _Heap_Node_rchild
12:
;12 164
	br label %13

;begin inline expansion _Heap_Node_size
13:
;13 164
	%14 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%15 = load %struct.Array_Node*, %struct.Array_Node** %14, align 4
	br label %16

16:
;16 164
	%17 = getelementptr %struct.Array_Node, %struct.Array_Node* %15, i32 0, i32 1
	%18 = load i32, i32* %17, align 4
	br label %19

19:
;19 164
	br label %20

20:
;20 164
	br label %21

21:
;21 164
	br label %22

;end inline expansion _Heap_Node_size
22:
;22 164
	%23 = icmp slt i32 %5, %18
	br i1 %23, label %124, label %24

24:
;24 2
	%25 = phi i1 [ 0, %22 ], [ %163, %162 ]
	br i1 %25, label %123, label %26

;Converge block in _Heap_Node_maxHeapify selectCount 0
26:
;26 24
	%27 = phi i32 [ %1, %24 ], [ %5, %123 ]
	br label %28

;begin inline expansion _Heap_Node_size
28:
;28 164
	%29 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%30 = load %struct.Array_Node*, %struct.Array_Node** %29, align 4
	br label %31

31:
;31 164
	%32 = getelementptr %struct.Array_Node, %struct.Array_Node* %30, i32 0, i32 1
	%33 = load i32, i32* %32, align 4
	br label %34

34:
;34 164
	br label %35

35:
;35 164
	br label %36

36:
;36 164
	br label %37

;end inline expansion _Heap_Node_size
37:
;37 164
	%38 = icmp slt i32 %10, %33
	br i1 %38, label %83, label %39

39:
;39 26
	%40 = phi i1 [ 0, %37 ], [ %122, %121 ]
	br i1 %40, label %41, label %42

;True block in _Heap_Node_maxHeapify selectCount 1
41:
;41 39
	br label %42

;Converge block in _Heap_Node_maxHeapify selectCount 1
42:
;42 39
	%43 = phi i32 [ %27, %39 ], [ %10, %41 ]
	%44 = icmp eq i32 %43, %1
	br i1 %44, label %82, label %45

;Converge block in _Heap_Node_maxHeapify selectCount 2
45:
;45 42
	%46 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%47 = load %struct.Array_Node*, %struct.Array_Node** %46, align 4
	br label %48

;begin inline expansion _Array_Node_swap
48:
;48 164
	%49 = getelementptr %struct.Array_Node, %struct.Array_Node* %47, i32 0, i32 0
	%50 = load %struct.Node**, %struct.Node*** %49, align 4
	%51 = mul i32 %1, 4
	%52 = add i32 %51, 4
	%53 = bitcast %struct.Node** %50 to i8*
	%54 = getelementptr i8, i8* %53, i32 %52
	%55 = bitcast i8* %54 to %struct.Node**
	%56 = load %struct.Node*, %struct.Node** %55, align 4
	%57 = getelementptr %struct.Array_Node, %struct.Array_Node* %47, i32 0, i32 0
	%58 = load %struct.Node**, %struct.Node*** %57, align 4
	%59 = mul i32 %43, 4
	%60 = add i32 %59, 4
	%61 = bitcast %struct.Node** %58 to i8*
	%62 = getelementptr i8, i8* %61, i32 %60
	%63 = bitcast i8* %62 to %struct.Node**
	%64 = load %struct.Node*, %struct.Node** %63, align 4
	%65 = getelementptr %struct.Array_Node, %struct.Array_Node* %47, i32 0, i32 0
	%66 = load %struct.Node**, %struct.Node*** %65, align 4
	%67 = mul i32 %1, 4
	%68 = add i32 %67, 4
	%69 = bitcast %struct.Node** %66 to i8*
	%70 = getelementptr i8, i8* %69, i32 %68
	%71 = bitcast i8* %70 to %struct.Node**
	store %struct.Node* %64, %struct.Node** %71, align 4
	%72 = getelementptr %struct.Array_Node, %struct.Array_Node* %47, i32 0, i32 0
	%73 = load %struct.Node**, %struct.Node*** %72, align 4
	%74 = mul i32 %43, 4
	%75 = add i32 %74, 4
	%76 = bitcast %struct.Node** %73 to i8*
	%77 = getelementptr i8, i8* %76, i32 %75
	%78 = bitcast i8* %77 to %struct.Node**
	%79 = load %struct.Node*, %struct.Node** %78, align 4
	store %struct.Node* %56, %struct.Node** %78, align 4
	br label %80

80:
;80 164
	br label %81

;end inline expansion _Array_Node_swap
81:
;81 164
	call void @_Heap_Node_maxHeapify(%struct.Heap_Node* %0, i32 %43)
	br label %82

82:
;82 42
	ret void

83:
;83 26
	%84 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%85 = load %struct.Array_Node*, %struct.Array_Node** %84, align 4
	br label %86

;begin inline expansion _Array_Node_get
86:
;86 164
	%87 = getelementptr %struct.Array_Node, %struct.Array_Node* %85, i32 0, i32 0
	%88 = load %struct.Node**, %struct.Node*** %87, align 4
	%89 = mul i32 %10, 4
	%90 = add i32 %89, 4
	%91 = bitcast %struct.Node** %88 to i8*
	%92 = getelementptr i8, i8* %91, i32 %90
	%93 = bitcast i8* %92 to %struct.Node**
	%94 = load %struct.Node*, %struct.Node** %93, align 4
	br label %95

95:
;95 164
	br label %96

;end inline expansion _Array_Node_get
96:
;96 164
	br label %97

;begin inline expansion _Node_key_
97:
;97 164
	%98 = getelementptr %struct.Node, %struct.Node* %94, i32 0, i32 1
	%99 = load i32, i32* %98, align 4
	%100 = sub i32 0, %99
	br label %101

101:
;101 164
	br label %102

;end inline expansion _Node_key_
102:
;102 164
	%103 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%104 = load %struct.Array_Node*, %struct.Array_Node** %103, align 4
	br label %105

;begin inline expansion _Array_Node_get
105:
;105 164
	%106 = getelementptr %struct.Array_Node, %struct.Array_Node* %104, i32 0, i32 0
	%107 = load %struct.Node**, %struct.Node*** %106, align 4
	%108 = mul i32 %27, 4
	%109 = add i32 %108, 4
	%110 = bitcast %struct.Node** %107 to i8*
	%111 = getelementptr i8, i8* %110, i32 %109
	%112 = bitcast i8* %111 to %struct.Node**
	%113 = load %struct.Node*, %struct.Node** %112, align 4
	br label %114

114:
;114 164
	br label %115

;end inline expansion _Array_Node_get
115:
;115 164
	br label %116

;begin inline expansion _Node_key_
116:
;116 164
	%117 = getelementptr %struct.Node, %struct.Node* %113, i32 0, i32 1
	%118 = load i32, i32* %117, align 4
	%119 = sub i32 0, %118
	br label %120

120:
;120 164
	br label %121

;end inline expansion _Node_key_
121:
;121 164
	%122 = icmp sgt i32 %100, %119
	br label %39

;True block in _Heap_Node_maxHeapify selectCount 0
123:
;123 24
	br label %26

124:
;124 2
	%125 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%126 = load %struct.Array_Node*, %struct.Array_Node** %125, align 4
	br label %127

;begin inline expansion _Array_Node_get
127:
;127 164
	%128 = getelementptr %struct.Array_Node, %struct.Array_Node* %126, i32 0, i32 0
	%129 = load %struct.Node**, %struct.Node*** %128, align 4
	%130 = mul i32 %5, 4
	%131 = add i32 %130, 4
	%132 = bitcast %struct.Node** %129 to i8*
	%133 = getelementptr i8, i8* %132, i32 %131
	%134 = bitcast i8* %133 to %struct.Node**
	%135 = load %struct.Node*, %struct.Node** %134, align 4
	br label %136

136:
;136 164
	br label %137

;end inline expansion _Array_Node_get
137:
;137 164
	br label %138

;begin inline expansion _Node_key_
138:
;138 164
	%139 = getelementptr %struct.Node, %struct.Node* %135, i32 0, i32 1
	%140 = load i32, i32* %139, align 4
	%141 = sub i32 0, %140
	br label %142

142:
;142 164
	br label %143

;end inline expansion _Node_key_
143:
;143 164
	%144 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %0, i32 0, i32 0
	%145 = load %struct.Array_Node*, %struct.Array_Node** %144, align 4
	br label %146

;begin inline expansion _Array_Node_get
146:
;146 164
	%147 = getelementptr %struct.Array_Node, %struct.Array_Node* %145, i32 0, i32 0
	%148 = load %struct.Node**, %struct.Node*** %147, align 4
	%149 = mul i32 %1, 4
	%150 = add i32 %149, 4
	%151 = bitcast %struct.Node** %148 to i8*
	%152 = getelementptr i8, i8* %151, i32 %150
	%153 = bitcast i8* %152 to %struct.Node**
	%154 = load %struct.Node*, %struct.Node** %153, align 4
	br label %155

155:
;155 164
	br label %156

;end inline expansion _Array_Node_get
156:
;156 164
	br label %157

;begin inline expansion _Node_key_
157:
;157 164
	%158 = getelementptr %struct.Node, %struct.Node* %154, i32 0, i32 1
	%159 = load i32, i32* %158, align 4
	%160 = sub i32 0, %159
	br label %161

161:
;161 164
	br label %162

;end inline expansion _Node_key_
162:
;162 164
	%163 = icmp sgt i32 %141, %160
	br label %24
}

define i32 @main(){

0:
;0 0
	br label %1

;begin inline expansion _GLOBAL_
1:
;1 43
	br label %2

;end inline expansion _GLOBAL_
2:
;2 43
	call void @init()
	br label %3

;loop check block main loopDepth 1 iterCount 0
3:
;3 0
	%4 = phi i32 [ 0, %2 ], [ %41, %40 ]
	%5 = load i32, i32* @n, align 4
	%6 = icmp slt i32 %4, %5
	br i1 %6, label %7, label %42

;loop body main loopDepth 1 iterCount 0
7:
;7 3
	%8 = call i32* @dijkstra(i32 %4)
	br label %9

;loop check block main loopDepth 2 iterCount 0
9:
;9 7
	%10 = phi i32 [ 0, %7 ], [ %27, %26 ]
	%11 = load i32, i32* @n, align 4
	%12 = icmp slt i32 %10, %11
	br i1 %12, label %13, label %38

;loop body main loopDepth 2 iterCount 0
13:
;13 9
	%14 = mul i32 %10, 4
	%15 = add i32 %14, 4
	%16 = bitcast i32* %8 to i8*
	%17 = getelementptr i8, i8* %16, i32 %15
	%18 = bitcast i8* %17 to i32*
	%19 = load i32, i32* %18, align 4
	%20 = load i32, i32* @INF, align 4
	%21 = icmp eq i32 %19, %20
	br i1 %21, label %22, label %28

;True block in main selectCount 0
22:
;22 13
	%23 = bitcast [3 x i8]* @.libro.str to i8*
	call void @print(i8* %23)
	br label %24

;Converge block in main selectCount 0
24:
;24 13
	%25 = bitcast [2 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %25)
	br label %26

;loop increase block main loopDepth 2 iterCount 0
26:
;26 24
	%27 = add i32 %10, 1
	br label %9

;False block in main selectCount 0
28:
;28 13
	%29 = mul i32 %10, 4
	%30 = add i32 %29, 4
	%31 = bitcast i32* %8 to i8*
	%32 = getelementptr i8, i8* %31, i32 %30
	%33 = bitcast i8* %32 to i32*
	%34 = load i32, i32* %33, align 4
	%35 = call %struct.string* @toString(i32 %34)
	%36 = getelementptr %struct.string, %struct.string* %35, i32 0, i32 1
	%37 = load i8*, i8** %36, align 4
	call void @print(i8* %37)
	br label %24

;loop exit block main loopDepth 2 iterCount 0
38:
;38 9
	%39 = bitcast [1 x i8]* @.libro.str.2 to i8*
	call void @println(i8* %39)
	br label %40

;loop increase block main loopDepth 1 iterCount 0
40:
;40 38
	%41 = add i32 %4, 1
	br label %3

42:
;42 44
	ret i32 0
}

define void @_Array_Node_doubleStorage(%struct.Array_Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%3 = load %struct.Node**, %struct.Node*** %2, align 4
	%4 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%5 = load i32, i32* %4, align 4
	%6 = bitcast %struct.Node** %3 to i32*
	%7 = getelementptr i32, i32* %6, i32 0
	%8 = load i32, i32* %7, align 4
	%9 = mul i32 %8, 2
	%10 = mul i32 %9, 4
	%11 = add i32 %10, 4
	%12 = call i8* @myNew(i32 %11)
	%13 = bitcast i8* %12 to i32*
	store i32 %9, i32* %13, align 4
	%14 = bitcast i8* %12 to %struct.Node**
	%15 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	store %struct.Node** %14, %struct.Node*** %15, align 4
	%16 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%17 = load i32, i32* %16, align 4
	store i32 0, i32* %16, align 4
	br label %18

;loop check block _Array_Node_doubleStorage loopDepth 1 iterCount 0
18:
;18 1
	%19 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%20 = load i32, i32* %19, align 4
	%21 = icmp ne i32 %20, %5
	br i1 %21, label %23, label %22

22:
;22 45
	ret void

;loop body _Array_Node_doubleStorage loopDepth 1 iterCount 0
23:
;23 18
	%24 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%25 = load i32, i32* %24, align 4
	%26 = mul i32 %25, 4
	%27 = add i32 %26, 4
	%28 = bitcast %struct.Node** %3 to i8*
	%29 = getelementptr i8, i8* %28, i32 %27
	%30 = bitcast i8* %29 to %struct.Node**
	%31 = load %struct.Node*, %struct.Node** %30, align 4
	%32 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 0
	%33 = load %struct.Node**, %struct.Node*** %32, align 4
	%34 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%35 = load i32, i32* %34, align 4
	%36 = mul i32 %35, 4
	%37 = add i32 %36, 4
	%38 = bitcast %struct.Node** %33 to i8*
	%39 = getelementptr i8, i8* %38, i32 %37
	%40 = bitcast i8* %39 to %struct.Node**
	store %struct.Node* %31, %struct.Node** %40, align 4
	br label %41

;loop increase block _Array_Node_doubleStorage loopDepth 1 iterCount 0
41:
;41 23
	%42 = getelementptr %struct.Array_Node, %struct.Array_Node* %0, i32 0, i32 1
	%43 = load i32, i32* %42, align 4
	%44 = add i32 %43, 1
	store i32 %44, i32* %42, align 4
	br label %18
}

define void @_EdgeList_addEdge(%struct.EdgeList* %0,i32 %1,i32 %2,i32 %3){

4:
;4 4
	%5 = call i8* @myNew(i32 12)
	%6 = bitcast i8* %5 to %struct.Edge*
	%7 = getelementptr %struct.Edge, %struct.Edge* %6, i32 0, i32 0
	store i32 %1, i32* %7, align 4
	%8 = getelementptr %struct.Edge, %struct.Edge* %6, i32 0, i32 1
	%9 = load i32, i32* %8, align 4
	store i32 %2, i32* %8, align 4
	%10 = getelementptr %struct.Edge, %struct.Edge* %6, i32 0, i32 2
	%11 = load i32, i32* %10, align 4
	store i32 %3, i32* %10, align 4
	%12 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 0
	%13 = load %struct.Edge**, %struct.Edge*** %12, align 4
	%14 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 3
	%15 = load i32, i32* %14, align 4
	%16 = mul i32 %15, 4
	%17 = add i32 %16, 4
	%18 = bitcast %struct.Edge** %13 to i8*
	%19 = getelementptr i8, i8* %18, i32 %17
	%20 = bitcast i8* %19 to %struct.Edge**
	%21 = load %struct.Edge*, %struct.Edge** %20, align 4
	store %struct.Edge* %6, %struct.Edge** %20, align 4
	%22 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 2
	%23 = load i32*, i32** %22, align 4
	%24 = mul i32 %1, 4
	%25 = add i32 %24, 4
	%26 = bitcast i32* %23 to i8*
	%27 = getelementptr i8, i8* %26, i32 %25
	%28 = bitcast i8* %27 to i32*
	%29 = load i32, i32* %28, align 4
	%30 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 1
	%31 = load i32*, i32** %30, align 4
	%32 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 3
	%33 = load i32, i32* %32, align 4
	%34 = mul i32 %33, 4
	%35 = add i32 %34, 4
	%36 = bitcast i32* %31 to i8*
	%37 = getelementptr i8, i8* %36, i32 %35
	%38 = bitcast i8* %37 to i32*
	%39 = load i32, i32* %38, align 4
	store i32 %29, i32* %38, align 4
	%40 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 3
	%41 = load i32, i32* %40, align 4
	%42 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 2
	%43 = load i32*, i32** %42, align 4
	%44 = mul i32 %1, 4
	%45 = add i32 %44, 4
	%46 = bitcast i32* %43 to i8*
	%47 = getelementptr i8, i8* %46, i32 %45
	%48 = bitcast i8* %47 to i32*
	%49 = load i32, i32* %48, align 4
	store i32 %41, i32* %48, align 4
	%50 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 3
	%51 = load i32, i32* %50, align 4
	%52 = add i32 %51, 1
	store i32 %52, i32* %50, align 4
	br label %53

53:
;53 4
	ret void
}

define void @_EdgeList_init(%struct.EdgeList* %0,i32 %1,i32 %2){

3:
;3 3
	%4 = mul i32 %2, 4
	%5 = add i32 %4, 4
	%6 = call i8* @myNew(i32 %5)
	%7 = bitcast i8* %6 to i32*
	store i32 %2, i32* %7, align 4
	%8 = bitcast i8* %6 to %struct.Edge**
	%9 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 0
	store %struct.Edge** %8, %struct.Edge*** %9, align 4
	%10 = mul i32 %2, 4
	%11 = add i32 %10, 4
	%12 = call i8* @myNew(i32 %11)
	%13 = bitcast i8* %12 to i32*
	store i32 %2, i32* %13, align 4
	%14 = bitcast i8* %12 to i32*
	%15 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 1
	%16 = load i32*, i32** %15, align 4
	store i32* %14, i32** %15, align 4
	%17 = mul i32 %1, 4
	%18 = add i32 %17, 4
	%19 = call i8* @myNew(i32 %18)
	%20 = bitcast i8* %19 to i32*
	store i32 %1, i32* %20, align 4
	%21 = bitcast i8* %19 to i32*
	%22 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 2
	%23 = load i32*, i32** %22, align 4
	store i32* %21, i32** %22, align 4
	br label %24

;loop check block _EdgeList_init loopDepth 1 iterCount 0
24:
;24 3
	%25 = phi i32 [ 0, %3 ], [ %36, %35 ]
	%26 = icmp slt i32 %25, %2
	br i1 %26, label %27, label %37

;loop body _EdgeList_init loopDepth 1 iterCount 0
27:
;27 24
	%28 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 1
	%29 = load i32*, i32** %28, align 4
	%30 = mul i32 %25, 4
	%31 = add i32 %30, 4
	%32 = bitcast i32* %29 to i8*
	%33 = getelementptr i8, i8* %32, i32 %31
	%34 = bitcast i8* %33 to i32*
	store i32 -1, i32* %34, align 4
	br label %35

;loop increase block _EdgeList_init loopDepth 1 iterCount 0
35:
;35 27
	%36 = add i32 %25, 1
	br label %24

;loop exit block _EdgeList_init loopDepth 1 iterCount 0
37:
;37 24
	br label %38

;loop check block _EdgeList_init loopDepth 1 iterCount 1
38:
;38 37
	%39 = phi i32 [ 0, %37 ], [ %53, %52 ]
	%40 = icmp slt i32 %39, %1
	br i1 %40, label %44, label %41

;loop exit block _EdgeList_init loopDepth 1 iterCount 1
41:
;41 38
	%42 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 3
	store i32 0, i32* %42, align 4
	br label %43

43:
;43 41
	ret void

;loop body _EdgeList_init loopDepth 1 iterCount 1
44:
;44 38
	%45 = getelementptr %struct.EdgeList, %struct.EdgeList* %0, i32 0, i32 2
	%46 = load i32*, i32** %45, align 4
	%47 = mul i32 %39, 4
	%48 = add i32 %47, 4
	%49 = bitcast i32* %46 to i8*
	%50 = getelementptr i8, i8* %49, i32 %48
	%51 = bitcast i8* %50 to i32*
	store i32 -1, i32* %51, align 4
	br label %52

;loop increase block _EdgeList_init loopDepth 1 iterCount 1
52:
;52 44
	%53 = add i32 %39, 1
	br label %38
}

define i32* @dijkstra(i32 %0){

1:
;1 1
	%2 = load i32, i32* @n, align 4
	%3 = mul i32 %2, 4
	%4 = add i32 %3, 4
	%5 = call i8* @myNew(i32 %4)
	%6 = bitcast i8* %5 to i32*
	store i32 %2, i32* %6, align 4
	%7 = bitcast i8* %5 to i32*
	%8 = load i32, i32* @n, align 4
	%9 = mul i32 %8, 4
	%10 = add i32 %9, 4
	%11 = call i8* @myNew(i32 %10)
	%12 = bitcast i8* %11 to i32*
	store i32 %8, i32* %12, align 4
	%13 = bitcast i8* %11 to i32*
	br label %14

;loop check block dijkstra loopDepth 1 iterCount 0
14:
;14 1
	%15 = phi i32 [ 0, %1 ], [ %169, %168 ]
	%16 = load i32, i32* @n, align 4
	%17 = icmp slt i32 %15, %16
	br i1 %17, label %155, label %18

;loop exit block dijkstra loopDepth 1 iterCount 0
18:
;18 14
	%19 = mul i32 %0, 4
	%20 = add i32 %19, 4
	%21 = bitcast i32* %13 to i8*
	%22 = getelementptr i8, i8* %21, i32 %20
	%23 = bitcast i8* %22 to i32*
	store i32 0, i32* %23, align 4
	%24 = call i8* @myNew(i32 4)
	%25 = bitcast i8* %24 to %struct.Heap_Node*
	br label %26

;begin inline expansion _Heap_Node_Heap_Node
26:
;26 170
	%27 = call i8* @myNew(i32 8)
	%28 = bitcast i8* %27 to %struct.Array_Node*
	br label %29

29:
;29 170
	%30 = getelementptr %struct.Array_Node, %struct.Array_Node* %28, i32 0, i32 1
	store i32 0, i32* %30, align 4
	%31 = call i8* @myNew(i32 68)
	%32 = bitcast i8* %31 to i32*
	store i32 16, i32* %32, align 4
	%33 = bitcast i8* %31 to %struct.Node**
	%34 = getelementptr %struct.Array_Node, %struct.Array_Node* %28, i32 0, i32 0
	%35 = load %struct.Node**, %struct.Node*** %34, align 4
	store %struct.Node** %33, %struct.Node*** %34, align 4
	br label %36

36:
;36 170
	br label %37

37:
;37 170
	%38 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %25, i32 0, i32 0
	store %struct.Array_Node* %28, %struct.Array_Node** %38, align 4
	br label %39

39:
;39 170
	br label %40

;end inline expansion _Heap_Node_Heap_Node
40:
;40 170
	%41 = call i8* @myNew(i32 8)
	%42 = bitcast i8* %41 to %struct.Node*
	%43 = getelementptr %struct.Node, %struct.Node* %42, i32 0, i32 1
	%44 = load i32, i32* %43, align 4
	store i32 0, i32* %43, align 4
	%45 = getelementptr %struct.Node, %struct.Node* %42, i32 0, i32 0
	%46 = load i32, i32* %45, align 4
	store i32 %0, i32* %45, align 4
	call void @_Heap_Node_push(%struct.Heap_Node* %25, %struct.Node* %42)
	br label %47

;loop check block dijkstra loopDepth 1 iterCount 1
47:
;47 18
	%48 = phi %struct.Node* [ null, %40 ], [ %61, %60 ], [ %171, %86 ]
	br label %49

;begin inline expansion _Heap_Node_size
49:
;49 170
	%50 = getelementptr %struct.Heap_Node, %struct.Heap_Node* %25, i32 0, i32 0
	%51 = load %struct.Array_Node*, %struct.Array_Node** %50, align 4
	br label %52

52:
;52 170
	%53 = getelementptr %struct.Array_Node, %struct.Array_Node* %51, i32 0, i32 1
	%54 = load i32, i32* %53, align 4
	br label %55

55:
;55 170
	br label %56

56:
;56 170
	br label %57

57:
;57 170
	br label %58

;end inline expansion _Heap_Node_size
58:
;58 170
	%59 = icmp ne i32 %54, 0
	br i1 %59, label %60, label %154

;loop body dijkstra loopDepth 1 iterCount 1
60:
;60 47
	%61 = call %struct.Node* @_Heap_Node_pop(%struct.Heap_Node* %25)
	%62 = getelementptr %struct.Node, %struct.Node* %61, i32 0, i32 0
	%63 = load i32, i32* %62, align 4
	%64 = mul i32 %63, 4
	%65 = add i32 %64, 4
	%66 = bitcast i32* %7 to i8*
	%67 = getelementptr i8, i8* %66, i32 %65
	%68 = bitcast i8* %67 to i32*
	%69 = load i32, i32* %68, align 4
	%70 = icmp eq i32 %69, 1
	br i1 %70, label %47, label %71

;Converge block in dijkstra selectCount 0
71:
;71 60
	%72 = mul i32 %63, 4
	%73 = add i32 %72, 4
	%74 = bitcast i32* %7 to i8*
	%75 = getelementptr i8, i8* %74, i32 %73
	%76 = bitcast i8* %75 to i32*
	store i32 1, i32* %76, align 4
	%77 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%78 = getelementptr %struct.EdgeList, %struct.EdgeList* %77, i32 0, i32 2
	%79 = load i32*, i32** %78, align 4
	%80 = mul i32 %63, 4
	%81 = add i32 %80, 4
	%82 = bitcast i32* %79 to i8*
	%83 = getelementptr i8, i8* %82, i32 %81
	%84 = bitcast i8* %83 to i32*
	%85 = load i32, i32* %84, align 4
	br label %86

;loop check block dijkstra loopDepth 2 iterCount 1
86:
;86 71
	%87 = phi i32 [ %85, %71 ], [ %153, %144 ]
	%88 = icmp ne i32 %87, -1
	br i1 %88, label %89, label %47

;loop body dijkstra loopDepth 2 iterCount 1
89:
;89 86
	%90 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%91 = getelementptr %struct.EdgeList, %struct.EdgeList* %90, i32 0, i32 0
	%92 = load %struct.Edge**, %struct.Edge*** %91, align 4
	%93 = mul i32 %87, 4
	%94 = add i32 %93, 4
	%95 = bitcast %struct.Edge** %92 to i8*
	%96 = getelementptr i8, i8* %95, i32 %94
	%97 = bitcast i8* %96 to %struct.Edge**
	%98 = load %struct.Edge*, %struct.Edge** %97, align 4
	%99 = getelementptr %struct.Edge, %struct.Edge* %98, i32 0, i32 1
	%100 = load i32, i32* %99, align 4
	%101 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%102 = getelementptr %struct.EdgeList, %struct.EdgeList* %101, i32 0, i32 0
	%103 = load %struct.Edge**, %struct.Edge*** %102, align 4
	%104 = mul i32 %87, 4
	%105 = add i32 %104, 4
	%106 = bitcast %struct.Edge** %103 to i8*
	%107 = getelementptr i8, i8* %106, i32 %105
	%108 = bitcast i8* %107 to %struct.Edge**
	%109 = load %struct.Edge*, %struct.Edge** %108, align 4
	%110 = getelementptr %struct.Edge, %struct.Edge* %109, i32 0, i32 2
	%111 = load i32, i32* %110, align 4
	%112 = mul i32 %63, 4
	%113 = add i32 %112, 4
	%114 = bitcast i32* %13 to i8*
	%115 = getelementptr i8, i8* %114, i32 %113
	%116 = bitcast i8* %115 to i32*
	%117 = load i32, i32* %116, align 4
	%118 = add i32 %117, %111
	%119 = mul i32 %100, 4
	%120 = add i32 %119, 4
	%121 = bitcast i32* %13 to i8*
	%122 = getelementptr i8, i8* %121, i32 %120
	%123 = bitcast i8* %122 to i32*
	%124 = load i32, i32* %123, align 4
	%125 = icmp sge i32 %118, %124
	br i1 %125, label %144, label %126

;Converge block in dijkstra selectCount 1
126:
;126 89
	%127 = mul i32 %100, 4
	%128 = add i32 %127, 4
	%129 = bitcast i32* %13 to i8*
	%130 = getelementptr i8, i8* %129, i32 %128
	%131 = bitcast i8* %130 to i32*
	store i32 %118, i32* %131, align 4
	%132 = call i8* @myNew(i32 8)
	%133 = bitcast i8* %132 to %struct.Node*
	%134 = getelementptr %struct.Node, %struct.Node* %133, i32 0, i32 0
	%135 = load i32, i32* %134, align 4
	store i32 %100, i32* %134, align 4
	%136 = mul i32 %100, 4
	%137 = add i32 %136, 4
	%138 = bitcast i32* %13 to i8*
	%139 = getelementptr i8, i8* %138, i32 %137
	%140 = bitcast i8* %139 to i32*
	%141 = load i32, i32* %140, align 4
	%142 = getelementptr %struct.Node, %struct.Node* %133, i32 0, i32 1
	%143 = load i32, i32* %142, align 4
	store i32 %141, i32* %142, align 4
	call void @_Heap_Node_push(%struct.Heap_Node* %25, %struct.Node* %133)
	br label %144

;loop increase block dijkstra loopDepth 2 iterCount 1
144:
;144 89
	%145 = load %struct.EdgeList*, %struct.EdgeList** @g, align 4
	%146 = getelementptr %struct.EdgeList, %struct.EdgeList* %145, i32 0, i32 1
	%147 = load i32*, i32** %146, align 4
	%148 = mul i32 %87, 4
	%149 = add i32 %148, 4
	%150 = bitcast i32* %147 to i8*
	%151 = getelementptr i8, i8* %150, i32 %149
	%152 = bitcast i8* %151 to i32*
	%153 = load i32, i32* %152, align 4
	br label %86

154:
;154 172
	ret i32* %13

;loop body dijkstra loopDepth 1 iterCount 0
155:
;155 14
	%156 = load i32, i32* @INF, align 4
	%157 = mul i32 %15, 4
	%158 = add i32 %157, 4
	%159 = bitcast i32* %13 to i8*
	%160 = getelementptr i8, i8* %159, i32 %158
	%161 = bitcast i8* %160 to i32*
	store i32 %156, i32* %161, align 4
	%162 = mul i32 %15, 4
	%163 = add i32 %162, 4
	%164 = bitcast i32* %7 to i8*
	%165 = getelementptr i8, i8* %164, i32 %163
	%166 = bitcast i8* %165 to i32*
	%167 = load i32, i32* %166, align 4
	store i32 0, i32* %166, align 4
	br label %168

;loop increase block dijkstra loopDepth 1 iterCount 0
168:
;168 155
	%169 = add i32 %15, 1
	br label %14
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

