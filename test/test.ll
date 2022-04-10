%struct.string = type { i32, i8* }
%struct.Node = type { %struct.Node*, %struct.Node**, i32, i32 }

@root = global %struct.Node* null, align 4
@MAX = global i32 128, align 4
@MaxRandInt = global i32 0, align 4
@seed = global i32 0, align 4

@.libro.str = constant [3 x i8] c": \00", align 1

define void @_global_var_init.2(){

0:
;0 0
	store i32 2147483647, i32* @MaxRandInt, align 4
	ret void
}

define void @_GLOBAL_(){

0:
;0 0
	br label %1

;begin inline expansion _global_var_init.2
1:
;1 3
	store i32 2147483647, i32* @MaxRandInt, align 4
	br label %2

;end inline expansion _global_var_init.2
2:
;2 3
	ret void
}

define i32 @randOp(i32 %0){

1:
;1 1
	br label %2

;begin inline expansion randInt31
2:
;2 19
	%3 = load i32, i32* @seed, align 4
	%4 = shl i32 %3, 13
	%5 = xor i32 %3, %4
	%6 = and i32 %5, 2147483647
	%7 = ashr i32 %6, 17
	%8 = xor i32 %6, %7
	%9 = shl i32 %8, 5
	%10 = xor i32 %8, %9
	%11 = and i32 %10, 2147483647
	store i32 %11, i32* @seed, align 4
	br label %12

12:
;12 19
	br label %13

;end inline expansion randInt31
13:
;13 19
	%14 = icmp slt i32 %11, %0
	br i1 %14, label %18, label %15

;Converge block in randOp selectCount 0
15:
;15 1
	br label %16

16:
;16 1
	%17 = phi i32 [ 2, %15 ], [ 1, %18 ]
	ret i32 %17

;True block in randOp selectCount 0
18:
;18 1
	br label %16
}

define i32 @erase(i32 %0){

1:
;1 1
	%2 = load %struct.Node*, %struct.Node** @root, align 4
	%3 = icmp eq %struct.Node* %2, null
	br i1 %3, label %9, label %4

;Converge block in erase selectCount 0
4:
;4 1
	%5 = load %struct.Node*, %struct.Node** @root, align 4
	%6 = call i32 @eraseImpl(%struct.Node* %5, %struct.Node* null, i32 -1, i32 %0)
	br label %7

7:
;7 1
	%8 = phi i32 [ %6, %4 ], [ 0, %9 ]
	ret i32 %8

;True block in erase selectCount 0
9:
;9 1
	br label %7
}

define i32 @insert(i32 %0){

1:
;1 1
	%2 = load %struct.Node*, %struct.Node** @root, align 4
	%3 = icmp ne %struct.Node* %2, null
	br i1 %3, label %34, label %4

;Converge block in insert selectCount 0
4:
;4 1
	br label %5

;begin inline expansion constructNode
5:
;5 165
	%6 = call i8* @myNew(i32 16)
	%7 = bitcast i8* %6 to %struct.Node*
	%8 = call i8* @myNew(i32 12)
	%9 = bitcast i8* %8 to i32*
	store i32 2, i32* %9, align 4
	%10 = bitcast i8* %8 to %struct.Node**
	%11 = getelementptr %struct.Node, %struct.Node* %7, i32 0, i32 1
	store %struct.Node** %10, %struct.Node*** %11, align 4
	%12 = getelementptr %struct.Node, %struct.Node* %7, i32 0, i32 2
	%13 = load i32, i32* %12, align 4
	store i32 %0, i32* %12, align 4
	%14 = getelementptr %struct.Node, %struct.Node* %7, i32 0, i32 3
	%15 = load i32, i32* %14, align 4
	store i32 1, i32* %14, align 4
	%16 = getelementptr %struct.Node, %struct.Node* %7, i32 0, i32 0
	%17 = load %struct.Node*, %struct.Node** %16, align 4
	store %struct.Node* null, %struct.Node** %16, align 4
	%18 = getelementptr %struct.Node, %struct.Node* %7, i32 0, i32 1
	%19 = load %struct.Node**, %struct.Node*** %18, align 4
	%20 = bitcast %struct.Node** %19 to i8*
	%21 = getelementptr i8, i8* %20, i32 4
	%22 = bitcast i8* %21 to %struct.Node**
	%23 = load %struct.Node*, %struct.Node** %22, align 4
	store %struct.Node* null, %struct.Node** %22, align 4
	%24 = getelementptr %struct.Node, %struct.Node* %7, i32 0, i32 1
	%25 = load %struct.Node**, %struct.Node*** %24, align 4
	%26 = bitcast %struct.Node** %25 to i8*
	%27 = getelementptr i8, i8* %26, i32 8
	%28 = bitcast i8* %27 to %struct.Node**
	%29 = load %struct.Node*, %struct.Node** %28, align 4
	store %struct.Node* null, %struct.Node** %28, align 4
	br label %30

30:
;30 165
	br label %31

;end inline expansion constructNode
31:
;31 165
	store %struct.Node* %7, %struct.Node** @root, align 4
	br label %32

32:
;32 1
	%33 = phi i32 [ 0, %31 ], [ %48, %49 ]
	ret i32 %33

;True block in insert selectCount 0
34:
;34 1
	%35 = load %struct.Node*, %struct.Node** @root, align 4
	br label %36

;begin inline expansion insertImpl
36:
;36 165
	%37 = icmp eq %struct.Node* %35, null
	br i1 %37, label %130, label %38

38:
;38 165
	%39 = getelementptr %struct.Node, %struct.Node* %35, i32 0, i32 2
	%40 = load i32, i32* %39, align 4
	%41 = icmp eq i32 %40, %0
	br i1 %41, label %42, label %50

42:
;42 165
	%43 = getelementptr %struct.Node, %struct.Node* %35, i32 0, i32 3
	%44 = load i32, i32* %43, align 4
	%45 = add i32 %44, 1
	store i32 %45, i32* %43, align 4
	br label %46

46:
;46 165
	%47 = phi %struct.Node* [ %133, %157 ], [ %35, %42 ], [ %35, %104 ]
	%48 = phi i32 [ 0, %157 ], [ 1, %42 ], [ %103, %104 ]
	br label %49

;end inline expansion insertImpl
49:
;49 165
	br label %32

50:
;50 165
	%51 = getelementptr %struct.Node, %struct.Node* %35, i32 0, i32 2
	%52 = load i32, i32* %51, align 4
	%53 = icmp slt i32 %52, %0
	br i1 %53, label %129, label %54

54:
;54 165
	%55 = phi i32 [ 0, %50 ], [ 1, %129 ]
	%56 = getelementptr %struct.Node, %struct.Node* %35, i32 0, i32 1
	%57 = load %struct.Node**, %struct.Node*** %56, align 4
	%58 = mul i32 %55, 4
	%59 = add i32 %58, 4
	%60 = bitcast %struct.Node** %57 to i8*
	%61 = getelementptr i8, i8* %60, i32 %59
	%62 = bitcast i8* %61 to %struct.Node**
	%63 = load %struct.Node*, %struct.Node** %62, align 4
	br label %64

;begin inline expansion insertImpl
64:
;64 165
	%65 = icmp eq %struct.Node* %63, null
	br i1 %65, label %66, label %105

66:
;66 165
	br label %67

67:
;67 165
	%68 = call i8* @myNew(i32 16)
	%69 = bitcast i8* %68 to %struct.Node*
	%70 = call i8* @myNew(i32 12)
	%71 = bitcast i8* %70 to i32*
	store i32 2, i32* %71, align 4
	%72 = bitcast i8* %70 to %struct.Node**
	%73 = getelementptr %struct.Node, %struct.Node* %69, i32 0, i32 1
	store %struct.Node** %72, %struct.Node*** %73, align 4
	%74 = getelementptr %struct.Node, %struct.Node* %69, i32 0, i32 2
	%75 = load i32, i32* %74, align 4
	store i32 %0, i32* %74, align 4
	%76 = getelementptr %struct.Node, %struct.Node* %69, i32 0, i32 3
	%77 = load i32, i32* %76, align 4
	store i32 1, i32* %76, align 4
	%78 = getelementptr %struct.Node, %struct.Node* %69, i32 0, i32 0
	%79 = load %struct.Node*, %struct.Node** %78, align 4
	store %struct.Node* %35, %struct.Node** %78, align 4
	%80 = getelementptr %struct.Node, %struct.Node* %69, i32 0, i32 1
	%81 = load %struct.Node**, %struct.Node*** %80, align 4
	%82 = bitcast %struct.Node** %81 to i8*
	%83 = getelementptr i8, i8* %82, i32 4
	%84 = bitcast i8* %83 to %struct.Node**
	%85 = load %struct.Node*, %struct.Node** %84, align 4
	store %struct.Node* null, %struct.Node** %84, align 4
	%86 = getelementptr %struct.Node, %struct.Node* %69, i32 0, i32 1
	%87 = load %struct.Node**, %struct.Node*** %86, align 4
	%88 = bitcast %struct.Node** %87 to i8*
	%89 = getelementptr i8, i8* %88, i32 8
	%90 = bitcast i8* %89 to %struct.Node**
	%91 = load %struct.Node*, %struct.Node** %90, align 4
	store %struct.Node* null, %struct.Node** %90, align 4
	br label %92

92:
;92 165
	br label %93

93:
;93 165
	%94 = getelementptr %struct.Node, %struct.Node* %35, i32 0, i32 1
	%95 = load %struct.Node**, %struct.Node*** %94, align 4
	%96 = mul i32 %55, 4
	%97 = add i32 %96, 4
	%98 = bitcast %struct.Node** %95 to i8*
	%99 = getelementptr i8, i8* %98, i32 %97
	%100 = bitcast i8* %99 to %struct.Node**
	store %struct.Node* %69, %struct.Node** %100, align 4
	br label %101

101:
;101 165
	%102 = phi %struct.Node* [ %69, %93 ], [ %63, %125 ], [ %63, %114 ]
	%103 = phi i32 [ 0, %93 ], [ 1, %125 ], [ %124, %114 ]
	br label %104

;end inline expansion insertImpl
104:
;104 165
	br label %46

105:
;105 165
	%106 = getelementptr %struct.Node, %struct.Node* %63, i32 0, i32 2
	%107 = load i32, i32* %106, align 4
	%108 = icmp eq i32 %107, %0
	br i1 %108, label %125, label %109

109:
;109 165
	%110 = getelementptr %struct.Node, %struct.Node* %63, i32 0, i32 2
	%111 = load i32, i32* %110, align 4
	%112 = icmp slt i32 %111, %0
	br i1 %112, label %113, label %114

113:
;113 165
	br label %114

114:
;114 165
	%115 = phi i32 [ 0, %109 ], [ 1, %113 ]
	%116 = getelementptr %struct.Node, %struct.Node* %63, i32 0, i32 1
	%117 = load %struct.Node**, %struct.Node*** %116, align 4
	%118 = mul i32 %115, 4
	%119 = add i32 %118, 4
	%120 = bitcast %struct.Node** %117 to i8*
	%121 = getelementptr i8, i8* %120, i32 %119
	%122 = bitcast i8* %121 to %struct.Node**
	%123 = load %struct.Node*, %struct.Node** %122, align 4
	%124 = call i32 @insertImpl(%struct.Node* %123, %struct.Node* %63, i32 %115, i32 %0)
	br label %101

125:
;125 165
	%126 = getelementptr %struct.Node, %struct.Node* %63, i32 0, i32 3
	%127 = load i32, i32* %126, align 4
	%128 = add i32 %127, 1
	store i32 %128, i32* %126, align 4
	br label %101

129:
;129 165
	br label %54

130:
;130 165
	br label %131

;begin inline expansion constructNode
131:
;131 165
	%132 = call i8* @myNew(i32 16)
	%133 = bitcast i8* %132 to %struct.Node*
	%134 = call i8* @myNew(i32 12)
	%135 = bitcast i8* %134 to i32*
	store i32 2, i32* %135, align 4
	%136 = bitcast i8* %134 to %struct.Node**
	%137 = getelementptr %struct.Node, %struct.Node* %133, i32 0, i32 1
	store %struct.Node** %136, %struct.Node*** %137, align 4
	%138 = getelementptr %struct.Node, %struct.Node* %133, i32 0, i32 2
	%139 = load i32, i32* %138, align 4
	store i32 %0, i32* %138, align 4
	%140 = getelementptr %struct.Node, %struct.Node* %133, i32 0, i32 3
	%141 = load i32, i32* %140, align 4
	store i32 1, i32* %140, align 4
	%142 = getelementptr %struct.Node, %struct.Node* %133, i32 0, i32 0
	%143 = load %struct.Node*, %struct.Node** %142, align 4
	store %struct.Node* null, %struct.Node** %142, align 4
	%144 = getelementptr %struct.Node, %struct.Node* %133, i32 0, i32 1
	%145 = load %struct.Node**, %struct.Node*** %144, align 4
	%146 = bitcast %struct.Node** %145 to i8*
	%147 = getelementptr i8, i8* %146, i32 4
	%148 = bitcast i8* %147 to %struct.Node**
	%149 = load %struct.Node*, %struct.Node** %148, align 4
	store %struct.Node* null, %struct.Node** %148, align 4
	%150 = getelementptr %struct.Node, %struct.Node* %133, i32 0, i32 1
	%151 = load %struct.Node**, %struct.Node*** %150, align 4
	%152 = bitcast %struct.Node** %151 to i8*
	%153 = getelementptr i8, i8* %152, i32 8
	%154 = bitcast i8* %153 to %struct.Node**
	%155 = load %struct.Node*, %struct.Node** %154, align 4
	store %struct.Node* null, %struct.Node** %154, align 4
	br label %156

156:
;156 165
	br label %157

;end inline expansion constructNode
157:
;157 165
	%158 = getelementptr %struct.Node, %struct.Node* %166, i32 0, i32 1
	%159 = load %struct.Node**, %struct.Node*** %158, align 4
	%160 = mul i32 -1, 4
	%161 = add i32 %160, 4
	%162 = bitcast %struct.Node** %159 to i8*
	%163 = getelementptr i8, i8* %162, i32 %161
	%164 = bitcast i8* %163 to %struct.Node**
	store %struct.Node* %133, %struct.Node** %164, align 4
	br label %46
}

define i32 @randInt31(){

0:
;0 0
	%1 = load i32, i32* @seed, align 4
	%2 = shl i32 %1, 13
	%3 = xor i32 %1, %2
	%4 = and i32 %3, 2147483647
	%5 = ashr i32 %4, 17
	%6 = xor i32 %4, %5
	%7 = shl i32 %6, 5
	%8 = xor i32 %6, %7
	%9 = and i32 %8, 2147483647
	store i32 %9, i32* @seed, align 4
	br label %10

10:
;10 0
	ret i32 %9
}

define void @generateOperations(i32 %0,i32 %1){

2:
;2 2
	br label %3

;loop check block generateOperations loopDepth 1 iterCount 0
3:
;3 2
	%4 = phi i32 [ 0, %2 ], [ %52, %51 ]
	%5 = icmp slt i32 %4, %1
	br i1 %5, label %7, label %6

6:
;6 221
	ret void

;loop body generateOperations loopDepth 1 iterCount 0
7:
;7 3
	br label %8

;begin inline expansion randInt31
8:
;8 222
	%9 = load i32, i32* @seed, align 4
	%10 = shl i32 %9, 13
	%11 = xor i32 %9, %10
	%12 = and i32 %11, 2147483647
	%13 = ashr i32 %12, 17
	%14 = xor i32 %12, %13
	%15 = shl i32 %14, 5
	%16 = xor i32 %14, %15
	%17 = and i32 %16, 2147483647
	store i32 %17, i32* @seed, align 4
	br label %18

18:
;18 222
	br label %19

;end inline expansion randInt31
19:
;19 222
	%20 = load i32, i32* @MAX, align 4
	%21 = srem i32 %17, %20
	br label %22

;begin inline expansion randOp
22:
;22 222
	br label %23

23:
;23 222
	%24 = load i32, i32* @seed, align 4
	%25 = shl i32 %24, 13
	%26 = xor i32 %24, %25
	%27 = and i32 %26, 2147483647
	%28 = ashr i32 %27, 17
	%29 = xor i32 %27, %28
	%30 = shl i32 %29, 5
	%31 = xor i32 %29, %30
	%32 = and i32 %31, 2147483647
	store i32 %32, i32* @seed, align 4
	br label %33

33:
;33 222
	br label %34

34:
;34 222
	%35 = icmp slt i32 %32, %0
	br i1 %35, label %220, label %36

36:
;36 222
	br label %37

37:
;37 222
	%38 = phi i32 [ 2, %36 ], [ 1, %220 ]
	br label %39

;end inline expansion randOp
39:
;39 222
	%40 = icmp eq i32 %38, 1
	br i1 %40, label %54, label %41

;False block in generateOperations selectCount 0
41:
;41 7
	br label %42

;begin inline expansion erase
42:
;42 222
	%43 = load %struct.Node*, %struct.Node** @root, align 4
	%44 = icmp eq %struct.Node* %43, null
	br i1 %44, label %53, label %45

45:
;45 222
	%46 = load %struct.Node*, %struct.Node** @root, align 4
	%47 = call i32 @eraseImpl(%struct.Node* %46, %struct.Node* null, i32 -1, i32 %21)
	br label %48

48:
;48 222
	%49 = phi i32 [ %47, %45 ], [ 0, %53 ]
	br label %50

;end inline expansion erase
50:
;50 222
	br label %51

;loop increase block generateOperations loopDepth 1 iterCount 0
51:
;51 223
	%52 = add i32 %4, 1
	br label %3

53:
;53 222
	br label %48

;True block in generateOperations selectCount 0
54:
;54 7
	br label %55

;begin inline expansion insert
55:
;55 222
	%56 = load %struct.Node*, %struct.Node** @root, align 4
	%57 = icmp ne %struct.Node* %56, null
	br i1 %57, label %58, label %192

58:
;58 222
	%59 = load %struct.Node*, %struct.Node** @root, align 4
	br label %60

60:
;60 222
	%61 = icmp eq %struct.Node* %59, null
	br i1 %61, label %62, label %104

62:
;62 222
	br label %63

;begin inline expansion constructNode
63:
;63 222
	%64 = call i8* @myNew(i32 16)
	%65 = bitcast i8* %64 to %struct.Node*
	%66 = call i8* @myNew(i32 12)
	%67 = bitcast i8* %66 to i32*
	store i32 2, i32* %67, align 4
	%68 = bitcast i8* %66 to %struct.Node**
	%69 = getelementptr %struct.Node, %struct.Node* %65, i32 0, i32 1
	store %struct.Node** %68, %struct.Node*** %69, align 4
	%70 = getelementptr %struct.Node, %struct.Node* %65, i32 0, i32 2
	%71 = load i32, i32* %70, align 4
	store i32 %21, i32* %70, align 4
	%72 = getelementptr %struct.Node, %struct.Node* %65, i32 0, i32 3
	%73 = load i32, i32* %72, align 4
	store i32 1, i32* %72, align 4
	%74 = getelementptr %struct.Node, %struct.Node* %65, i32 0, i32 0
	%75 = load %struct.Node*, %struct.Node** %74, align 4
	store %struct.Node* null, %struct.Node** %74, align 4
	%76 = getelementptr %struct.Node, %struct.Node* %65, i32 0, i32 1
	%77 = load %struct.Node**, %struct.Node*** %76, align 4
	%78 = bitcast %struct.Node** %77 to i8*
	%79 = getelementptr i8, i8* %78, i32 4
	%80 = bitcast i8* %79 to %struct.Node**
	%81 = load %struct.Node*, %struct.Node** %80, align 4
	store %struct.Node* null, %struct.Node** %80, align 4
	%82 = getelementptr %struct.Node, %struct.Node* %65, i32 0, i32 1
	%83 = load %struct.Node**, %struct.Node*** %82, align 4
	%84 = bitcast %struct.Node** %83 to i8*
	%85 = getelementptr i8, i8* %84, i32 8
	%86 = bitcast i8* %85 to %struct.Node**
	%87 = load %struct.Node*, %struct.Node** %86, align 4
	store %struct.Node* null, %struct.Node** %86, align 4
	br label %88

88:
;88 222
	br label %89

;end inline expansion constructNode
89:
;89 222
	%90 = getelementptr %struct.Node, %struct.Node* %224, i32 0, i32 1
	%91 = load %struct.Node**, %struct.Node*** %90, align 4
	%92 = mul i32 -1, 4
	%93 = add i32 %92, 4
	%94 = bitcast %struct.Node** %91 to i8*
	%95 = getelementptr i8, i8* %94, i32 %93
	%96 = bitcast i8* %95 to %struct.Node**
	store %struct.Node* %65, %struct.Node** %96, align 4
	br label %97

97:
;97 222
	%98 = phi %struct.Node* [ %65, %89 ], [ %59, %108 ], [ %59, %166 ]
	%99 = phi i32 [ 0, %89 ], [ 1, %108 ], [ %165, %166 ]
	br label %100

100:
;100 222
	br label %101

101:
;101 222
	%102 = phi i32 [ 0, %219 ], [ %99, %100 ]
	br label %103

;end inline expansion insert
103:
;103 222
	br label %51

104:
;104 222
	%105 = getelementptr %struct.Node, %struct.Node* %59, i32 0, i32 2
	%106 = load i32, i32* %105, align 4
	%107 = icmp eq i32 %106, %21
	br i1 %107, label %108, label %112

108:
;108 222
	%109 = getelementptr %struct.Node, %struct.Node* %59, i32 0, i32 3
	%110 = load i32, i32* %109, align 4
	%111 = add i32 %110, 1
	store i32 %111, i32* %109, align 4
	br label %97

112:
;112 222
	%113 = getelementptr %struct.Node, %struct.Node* %59, i32 0, i32 2
	%114 = load i32, i32* %113, align 4
	%115 = icmp slt i32 %114, %21
	br i1 %115, label %191, label %116

116:
;116 222
	%117 = phi i32 [ 0, %112 ], [ 1, %191 ]
	%118 = getelementptr %struct.Node, %struct.Node* %59, i32 0, i32 1
	%119 = load %struct.Node**, %struct.Node*** %118, align 4
	%120 = mul i32 %117, 4
	%121 = add i32 %120, 4
	%122 = bitcast %struct.Node** %119 to i8*
	%123 = getelementptr i8, i8* %122, i32 %121
	%124 = bitcast i8* %123 to %struct.Node**
	%125 = load %struct.Node*, %struct.Node** %124, align 4
	br label %126

;begin inline expansion insertImpl
126:
;126 222
	%127 = icmp eq %struct.Node* %125, null
	br i1 %127, label %128, label %167

128:
;128 222
	br label %129

129:
;129 222
	%130 = call i8* @myNew(i32 16)
	%131 = bitcast i8* %130 to %struct.Node*
	%132 = call i8* @myNew(i32 12)
	%133 = bitcast i8* %132 to i32*
	store i32 2, i32* %133, align 4
	%134 = bitcast i8* %132 to %struct.Node**
	%135 = getelementptr %struct.Node, %struct.Node* %131, i32 0, i32 1
	store %struct.Node** %134, %struct.Node*** %135, align 4
	%136 = getelementptr %struct.Node, %struct.Node* %131, i32 0, i32 2
	%137 = load i32, i32* %136, align 4
	store i32 %21, i32* %136, align 4
	%138 = getelementptr %struct.Node, %struct.Node* %131, i32 0, i32 3
	%139 = load i32, i32* %138, align 4
	store i32 1, i32* %138, align 4
	%140 = getelementptr %struct.Node, %struct.Node* %131, i32 0, i32 0
	%141 = load %struct.Node*, %struct.Node** %140, align 4
	store %struct.Node* %59, %struct.Node** %140, align 4
	%142 = getelementptr %struct.Node, %struct.Node* %131, i32 0, i32 1
	%143 = load %struct.Node**, %struct.Node*** %142, align 4
	%144 = bitcast %struct.Node** %143 to i8*
	%145 = getelementptr i8, i8* %144, i32 4
	%146 = bitcast i8* %145 to %struct.Node**
	%147 = load %struct.Node*, %struct.Node** %146, align 4
	store %struct.Node* null, %struct.Node** %146, align 4
	%148 = getelementptr %struct.Node, %struct.Node* %131, i32 0, i32 1
	%149 = load %struct.Node**, %struct.Node*** %148, align 4
	%150 = bitcast %struct.Node** %149 to i8*
	%151 = getelementptr i8, i8* %150, i32 8
	%152 = bitcast i8* %151 to %struct.Node**
	%153 = load %struct.Node*, %struct.Node** %152, align 4
	store %struct.Node* null, %struct.Node** %152, align 4
	br label %154

154:
;154 222
	br label %155

155:
;155 222
	%156 = getelementptr %struct.Node, %struct.Node* %59, i32 0, i32 1
	%157 = load %struct.Node**, %struct.Node*** %156, align 4
	%158 = mul i32 %117, 4
	%159 = add i32 %158, 4
	%160 = bitcast %struct.Node** %157 to i8*
	%161 = getelementptr i8, i8* %160, i32 %159
	%162 = bitcast i8* %161 to %struct.Node**
	store %struct.Node* %131, %struct.Node** %162, align 4
	br label %163

163:
;163 222
	%164 = phi %struct.Node* [ %131, %155 ], [ %125, %171 ], [ %125, %179 ]
	%165 = phi i32 [ 0, %155 ], [ 1, %171 ], [ %189, %179 ]
	br label %166

;end inline expansion insertImpl
166:
;166 222
	br label %97

167:
;167 222
	%168 = getelementptr %struct.Node, %struct.Node* %125, i32 0, i32 2
	%169 = load i32, i32* %168, align 4
	%170 = icmp eq i32 %169, %21
	br i1 %170, label %171, label %175

171:
;171 222
	%172 = getelementptr %struct.Node, %struct.Node* %125, i32 0, i32 3
	%173 = load i32, i32* %172, align 4
	%174 = add i32 %173, 1
	store i32 %174, i32* %172, align 4
	br label %163

175:
;175 222
	%176 = getelementptr %struct.Node, %struct.Node* %125, i32 0, i32 2
	%177 = load i32, i32* %176, align 4
	%178 = icmp slt i32 %177, %21
	br i1 %178, label %190, label %179

179:
;179 222
	%180 = phi i32 [ 0, %175 ], [ 1, %190 ]
	%181 = getelementptr %struct.Node, %struct.Node* %125, i32 0, i32 1
	%182 = load %struct.Node**, %struct.Node*** %181, align 4
	%183 = mul i32 %180, 4
	%184 = add i32 %183, 4
	%185 = bitcast %struct.Node** %182 to i8*
	%186 = getelementptr i8, i8* %185, i32 %184
	%187 = bitcast i8* %186 to %struct.Node**
	%188 = load %struct.Node*, %struct.Node** %187, align 4
	%189 = call i32 @insertImpl(%struct.Node* %188, %struct.Node* %125, i32 %180, i32 %21)
	br label %163

190:
;190 222
	br label %179

191:
;191 222
	br label %116

192:
;192 222
	br label %193

193:
;193 222
	%194 = call i8* @myNew(i32 16)
	%195 = bitcast i8* %194 to %struct.Node*
	%196 = call i8* @myNew(i32 12)
	%197 = bitcast i8* %196 to i32*
	store i32 2, i32* %197, align 4
	%198 = bitcast i8* %196 to %struct.Node**
	%199 = getelementptr %struct.Node, %struct.Node* %195, i32 0, i32 1
	store %struct.Node** %198, %struct.Node*** %199, align 4
	%200 = getelementptr %struct.Node, %struct.Node* %195, i32 0, i32 2
	%201 = load i32, i32* %200, align 4
	store i32 %21, i32* %200, align 4
	%202 = getelementptr %struct.Node, %struct.Node* %195, i32 0, i32 3
	%203 = load i32, i32* %202, align 4
	store i32 1, i32* %202, align 4
	%204 = getelementptr %struct.Node, %struct.Node* %195, i32 0, i32 0
	%205 = load %struct.Node*, %struct.Node** %204, align 4
	store %struct.Node* null, %struct.Node** %204, align 4
	%206 = getelementptr %struct.Node, %struct.Node* %195, i32 0, i32 1
	%207 = load %struct.Node**, %struct.Node*** %206, align 4
	%208 = bitcast %struct.Node** %207 to i8*
	%209 = getelementptr i8, i8* %208, i32 4
	%210 = bitcast i8* %209 to %struct.Node**
	%211 = load %struct.Node*, %struct.Node** %210, align 4
	store %struct.Node* null, %struct.Node** %210, align 4
	%212 = getelementptr %struct.Node, %struct.Node* %195, i32 0, i32 1
	%213 = load %struct.Node**, %struct.Node*** %212, align 4
	%214 = bitcast %struct.Node** %213 to i8*
	%215 = getelementptr i8, i8* %214, i32 8
	%216 = bitcast i8* %215 to %struct.Node**
	%217 = load %struct.Node*, %struct.Node** %216, align 4
	store %struct.Node* null, %struct.Node** %216, align 4
	br label %218

218:
;218 222
	br label %219

219:
;219 222
	store %struct.Node* %195, %struct.Node** @root, align 4
	br label %101

220:
;220 222
	br label %37
}

define %struct.Node* @findLargest(%struct.Node* %0){

1:
;1 1
	%2 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%3 = load %struct.Node**, %struct.Node*** %2, align 4
	%4 = bitcast %struct.Node** %3 to i8*
	%5 = getelementptr i8, i8* %4, i32 8
	%6 = bitcast i8* %5 to %struct.Node**
	%7 = load %struct.Node*, %struct.Node** %6, align 4
	%8 = icmp eq %struct.Node* %7, null
	br i1 %8, label %19, label %9

;Converge block in findLargest selectCount 0
9:
;9 1
	%10 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%11 = load %struct.Node**, %struct.Node*** %10, align 4
	%12 = bitcast %struct.Node** %11 to i8*
	%13 = getelementptr i8, i8* %12, i32 8
	%14 = bitcast i8* %13 to %struct.Node**
	%15 = load %struct.Node*, %struct.Node** %14, align 4
	%16 = call %struct.Node* @findLargest(%struct.Node* %15)
	br label %17

17:
;17 1
	%18 = phi %struct.Node* [ %16, %9 ], [ %0, %19 ]
	ret %struct.Node* %18

;True block in findLargest selectCount 0
19:
;19 1
	br label %17
}

define i32 @main(){

0:
;0 0
	br label %1

;begin inline expansion _GLOBAL_
1:
;1 113
	br label %2

2:
;2 113
	store i32 2147483647, i32* @MaxRandInt, align 4
	br label %3

3:
;3 113
	br label %4

;end inline expansion _GLOBAL_
4:
;4 113
	%5 = call i32 @getInt()
	store i32 %5, i32* @seed, align 4
	%6 = load i32, i32* @MaxRandInt, align 4
	%7 = sdiv i32 %6, 10
	%8 = mul i32 8, %7
	call void @generateOperations(i32 %8, i32 50000)
	%9 = load i32, i32* @MaxRandInt, align 4
	%10 = sdiv i32 %9, 10
	%11 = mul i32 2, %10
	call void @generateOperations(i32 %11, i32 100000)
	%12 = load i32, i32* @MaxRandInt, align 4
	%13 = sdiv i32 %12, 10
	%14 = mul i32 4, %13
	call void @generateOperations(i32 %14, i32 50000)
	%15 = load %struct.Node*, %struct.Node** @root, align 4
	br label %16

;begin inline expansion printTree
16:
;16 113
	%17 = icmp eq %struct.Node* %15, null
	br i1 %17, label %18, label %21

18:
;18 113
	br label %19

;end inline expansion printTree
19:
;19 113
	br label %20

20:
;20 0
	ret i32 0

21:
;21 113
	%22 = getelementptr %struct.Node, %struct.Node* %15, i32 0, i32 1
	%23 = load %struct.Node**, %struct.Node*** %22, align 4
	%24 = bitcast %struct.Node** %23 to i8*
	%25 = getelementptr i8, i8* %24, i32 4
	%26 = bitcast i8* %25 to %struct.Node**
	%27 = load %struct.Node*, %struct.Node** %26, align 4
	br label %28

;begin inline expansion printTree
28:
;28 113
	%29 = icmp eq %struct.Node* %27, null
	br i1 %29, label %58, label %30

30:
;30 113
	%31 = getelementptr %struct.Node, %struct.Node* %27, i32 0, i32 1
	%32 = load %struct.Node**, %struct.Node*** %31, align 4
	%33 = bitcast %struct.Node** %32 to i8*
	%34 = getelementptr i8, i8* %33, i32 4
	%35 = bitcast i8* %34 to %struct.Node**
	%36 = load %struct.Node*, %struct.Node** %35, align 4
	call void @printTree(%struct.Node* %36)
	%37 = getelementptr %struct.Node, %struct.Node* %27, i32 0, i32 2
	%38 = load i32, i32* %37, align 4
	%39 = call %struct.string* @toString(i32 %38)
	%40 = call i8* @myNew(i32 12)
	%41 = bitcast i8* %40 to %struct.string*
	%42 = getelementptr %struct.string, %struct.string* %41, i32 0, i32 0
	store i32 2, i32* %42, align 4
	%43 = bitcast [3 x i8]* @.libro.str to i8*
	%44 = getelementptr %struct.string, %struct.string* %41, i32 0, i32 1
	store i8* %43, i8** %44, align 4
	%45 = call %struct.string* @_string_stringAppend(%struct.string* %39, %struct.string* %41)
	%46 = getelementptr %struct.Node, %struct.Node* %27, i32 0, i32 3
	%47 = load i32, i32* %46, align 4
	%48 = call %struct.string* @toString(i32 %47)
	%49 = call %struct.string* @_string_stringAppend(%struct.string* %45, %struct.string* %48)
	%50 = getelementptr %struct.string, %struct.string* %49, i32 0, i32 1
	%51 = load i8*, i8** %50, align 4
	call void @println(i8* %51)
	%52 = getelementptr %struct.Node, %struct.Node* %27, i32 0, i32 1
	%53 = load %struct.Node**, %struct.Node*** %52, align 4
	%54 = bitcast %struct.Node** %53 to i8*
	%55 = getelementptr i8, i8* %54, i32 8
	%56 = bitcast i8* %55 to %struct.Node**
	%57 = load %struct.Node*, %struct.Node** %56, align 4
	call void @printTree(%struct.Node* %57)
	br label %58

58:
;58 113
	br label %59

;end inline expansion printTree
59:
;59 113
	%60 = getelementptr %struct.Node, %struct.Node* %15, i32 0, i32 2
	%61 = load i32, i32* %60, align 4
	%62 = call %struct.string* @toString(i32 %61)
	%63 = call i8* @myNew(i32 12)
	%64 = bitcast i8* %63 to %struct.string*
	%65 = getelementptr %struct.string, %struct.string* %64, i32 0, i32 0
	store i32 2, i32* %65, align 4
	%66 = bitcast [3 x i8]* @.libro.str to i8*
	%67 = getelementptr %struct.string, %struct.string* %64, i32 0, i32 1
	store i8* %66, i8** %67, align 4
	%68 = call %struct.string* @_string_stringAppend(%struct.string* %62, %struct.string* %64)
	%69 = getelementptr %struct.Node, %struct.Node* %15, i32 0, i32 3
	%70 = load i32, i32* %69, align 4
	%71 = call %struct.string* @toString(i32 %70)
	%72 = call %struct.string* @_string_stringAppend(%struct.string* %68, %struct.string* %71)
	%73 = getelementptr %struct.string, %struct.string* %72, i32 0, i32 1
	%74 = load i8*, i8** %73, align 4
	call void @println(i8* %74)
	%75 = getelementptr %struct.Node, %struct.Node* %15, i32 0, i32 1
	%76 = load %struct.Node**, %struct.Node*** %75, align 4
	%77 = bitcast %struct.Node** %76 to i8*
	%78 = getelementptr i8, i8* %77, i32 8
	%79 = bitcast i8* %78 to %struct.Node**
	%80 = load %struct.Node*, %struct.Node** %79, align 4
	br label %81

;begin inline expansion printTree
81:
;81 113
	%82 = icmp eq %struct.Node* %80, null
	br i1 %82, label %83, label %85

83:
;83 113
	br label %84

;end inline expansion printTree
84:
;84 113
	br label %18

85:
;85 113
	%86 = getelementptr %struct.Node, %struct.Node* %80, i32 0, i32 1
	%87 = load %struct.Node**, %struct.Node*** %86, align 4
	%88 = bitcast %struct.Node** %87 to i8*
	%89 = getelementptr i8, i8* %88, i32 4
	%90 = bitcast i8* %89 to %struct.Node**
	%91 = load %struct.Node*, %struct.Node** %90, align 4
	call void @printTree(%struct.Node* %91)
	%92 = getelementptr %struct.Node, %struct.Node* %80, i32 0, i32 2
	%93 = load i32, i32* %92, align 4
	%94 = call %struct.string* @toString(i32 %93)
	%95 = call i8* @myNew(i32 12)
	%96 = bitcast i8* %95 to %struct.string*
	%97 = getelementptr %struct.string, %struct.string* %96, i32 0, i32 0
	store i32 2, i32* %97, align 4
	%98 = bitcast [3 x i8]* @.libro.str to i8*
	%99 = getelementptr %struct.string, %struct.string* %96, i32 0, i32 1
	store i8* %98, i8** %99, align 4
	%100 = call %struct.string* @_string_stringAppend(%struct.string* %94, %struct.string* %96)
	%101 = getelementptr %struct.Node, %struct.Node* %80, i32 0, i32 3
	%102 = load i32, i32* %101, align 4
	%103 = call %struct.string* @toString(i32 %102)
	%104 = call %struct.string* @_string_stringAppend(%struct.string* %100, %struct.string* %103)
	%105 = getelementptr %struct.string, %struct.string* %104, i32 0, i32 1
	%106 = load i8*, i8** %105, align 4
	call void @println(i8* %106)
	%107 = getelementptr %struct.Node, %struct.Node* %80, i32 0, i32 1
	%108 = load %struct.Node**, %struct.Node*** %107, align 4
	%109 = bitcast %struct.Node** %108 to i8*
	%110 = getelementptr i8, i8* %109, i32 8
	%111 = bitcast i8* %110 to %struct.Node**
	%112 = load %struct.Node*, %struct.Node** %111, align 4
	call void @printTree(%struct.Node* %112)
	br label %83
}

define %struct.Node* @constructNode(i32 %0,%struct.Node* %1,%struct.Node* %2,%struct.Node* %3){

4:
;4 4
	%5 = call i8* @myNew(i32 16)
	%6 = bitcast i8* %5 to %struct.Node*
	%7 = call i8* @myNew(i32 12)
	%8 = bitcast i8* %7 to i32*
	store i32 2, i32* %8, align 4
	%9 = bitcast i8* %7 to %struct.Node**
	%10 = getelementptr %struct.Node, %struct.Node* %6, i32 0, i32 1
	store %struct.Node** %9, %struct.Node*** %10, align 4
	%11 = getelementptr %struct.Node, %struct.Node* %6, i32 0, i32 2
	%12 = load i32, i32* %11, align 4
	store i32 %0, i32* %11, align 4
	%13 = getelementptr %struct.Node, %struct.Node* %6, i32 0, i32 3
	%14 = load i32, i32* %13, align 4
	store i32 1, i32* %13, align 4
	%15 = getelementptr %struct.Node, %struct.Node* %6, i32 0, i32 0
	%16 = load %struct.Node*, %struct.Node** %15, align 4
	store %struct.Node* %1, %struct.Node** %15, align 4
	%17 = getelementptr %struct.Node, %struct.Node* %6, i32 0, i32 1
	%18 = load %struct.Node**, %struct.Node*** %17, align 4
	%19 = bitcast %struct.Node** %18 to i8*
	%20 = getelementptr i8, i8* %19, i32 4
	%21 = bitcast i8* %20 to %struct.Node**
	%22 = load %struct.Node*, %struct.Node** %21, align 4
	store %struct.Node* %2, %struct.Node** %21, align 4
	%23 = getelementptr %struct.Node, %struct.Node* %6, i32 0, i32 1
	%24 = load %struct.Node**, %struct.Node*** %23, align 4
	%25 = bitcast %struct.Node** %24 to i8*
	%26 = getelementptr i8, i8* %25, i32 8
	%27 = bitcast i8* %26 to %struct.Node**
	%28 = load %struct.Node*, %struct.Node** %27, align 4
	store %struct.Node* %3, %struct.Node** %27, align 4
	br label %29

29:
;29 4
	ret %struct.Node* %6
}

define void @printTree(%struct.Node* %0){

1:
;1 1
	%2 = icmp eq %struct.Node* %0, null
	br i1 %2, label %31, label %3

;Converge block in printTree selectCount 0
3:
;3 1
	%4 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%5 = load %struct.Node**, %struct.Node*** %4, align 4
	%6 = bitcast %struct.Node** %5 to i8*
	%7 = getelementptr i8, i8* %6, i32 4
	%8 = bitcast i8* %7 to %struct.Node**
	%9 = load %struct.Node*, %struct.Node** %8, align 4
	call void @printTree(%struct.Node* %9)
	%10 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 2
	%11 = load i32, i32* %10, align 4
	%12 = call %struct.string* @toString(i32 %11)
	%13 = call i8* @myNew(i32 12)
	%14 = bitcast i8* %13 to %struct.string*
	%15 = getelementptr %struct.string, %struct.string* %14, i32 0, i32 0
	store i32 2, i32* %15, align 4
	%16 = bitcast [3 x i8]* @.libro.str to i8*
	%17 = getelementptr %struct.string, %struct.string* %14, i32 0, i32 1
	store i8* %16, i8** %17, align 4
	%18 = call %struct.string* @_string_stringAppend(%struct.string* %12, %struct.string* %14)
	%19 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 3
	%20 = load i32, i32* %19, align 4
	%21 = call %struct.string* @toString(i32 %20)
	%22 = call %struct.string* @_string_stringAppend(%struct.string* %18, %struct.string* %21)
	%23 = getelementptr %struct.string, %struct.string* %22, i32 0, i32 1
	%24 = load i8*, i8** %23, align 4
	call void @println(i8* %24)
	%25 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%26 = load %struct.Node**, %struct.Node*** %25, align 4
	%27 = bitcast %struct.Node** %26 to i8*
	%28 = getelementptr i8, i8* %27, i32 8
	%29 = bitcast i8* %28 to %struct.Node**
	%30 = load %struct.Node*, %struct.Node** %29, align 4
	call void @printTree(%struct.Node* %30)
	br label %31

31:
;31 1
	ret void
}

define i32 @insertImpl(%struct.Node* %0,%struct.Node* %1,i32 %2,i32 %3){

4:
;4 4
	%5 = icmp eq %struct.Node* %0, null
	br i1 %5, label %6, label %44

;True block in insertImpl selectCount 0
6:
;6 4
	br label %7

;begin inline expansion constructNode
7:
;7 68
	%8 = call i8* @myNew(i32 16)
	%9 = bitcast i8* %8 to %struct.Node*
	%10 = call i8* @myNew(i32 12)
	%11 = bitcast i8* %10 to i32*
	store i32 2, i32* %11, align 4
	%12 = bitcast i8* %10 to %struct.Node**
	%13 = getelementptr %struct.Node, %struct.Node* %9, i32 0, i32 1
	store %struct.Node** %12, %struct.Node*** %13, align 4
	%14 = getelementptr %struct.Node, %struct.Node* %9, i32 0, i32 2
	%15 = load i32, i32* %14, align 4
	store i32 %3, i32* %14, align 4
	%16 = getelementptr %struct.Node, %struct.Node* %9, i32 0, i32 3
	%17 = load i32, i32* %16, align 4
	store i32 1, i32* %16, align 4
	%18 = getelementptr %struct.Node, %struct.Node* %9, i32 0, i32 0
	%19 = load %struct.Node*, %struct.Node** %18, align 4
	store %struct.Node* %1, %struct.Node** %18, align 4
	%20 = getelementptr %struct.Node, %struct.Node* %9, i32 0, i32 1
	%21 = load %struct.Node**, %struct.Node*** %20, align 4
	%22 = bitcast %struct.Node** %21 to i8*
	%23 = getelementptr i8, i8* %22, i32 4
	%24 = bitcast i8* %23 to %struct.Node**
	%25 = load %struct.Node*, %struct.Node** %24, align 4
	store %struct.Node* null, %struct.Node** %24, align 4
	%26 = getelementptr %struct.Node, %struct.Node* %9, i32 0, i32 1
	%27 = load %struct.Node**, %struct.Node*** %26, align 4
	%28 = bitcast %struct.Node** %27 to i8*
	%29 = getelementptr i8, i8* %28, i32 8
	%30 = bitcast i8* %29 to %struct.Node**
	%31 = load %struct.Node*, %struct.Node** %30, align 4
	store %struct.Node* null, %struct.Node** %30, align 4
	br label %32

32:
;32 68
	br label %33

;end inline expansion constructNode
33:
;33 68
	%34 = getelementptr %struct.Node, %struct.Node* %1, i32 0, i32 1
	%35 = load %struct.Node**, %struct.Node*** %34, align 4
	%36 = mul i32 %2, 4
	%37 = add i32 %36, 4
	%38 = bitcast %struct.Node** %35 to i8*
	%39 = getelementptr i8, i8* %38, i32 %37
	%40 = bitcast i8* %39 to %struct.Node**
	store %struct.Node* %9, %struct.Node** %40, align 4
	br label %41

41:
;41 4
	%42 = phi %struct.Node* [ %9, %33 ], [ %0, %48 ], [ %0, %57 ]
	%43 = phi i32 [ 0, %33 ], [ 1, %48 ], [ %67, %57 ]
	ret i32 %43

;Converge block in insertImpl selectCount 0
44:
;44 4
	%45 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 2
	%46 = load i32, i32* %45, align 4
	%47 = icmp eq i32 %46, %3
	br i1 %47, label %48, label %52

;True block in insertImpl selectCount 1
48:
;48 44
	%49 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 3
	%50 = load i32, i32* %49, align 4
	%51 = add i32 %50, 1
	store i32 %51, i32* %49, align 4
	br label %41

;Converge block in insertImpl selectCount 1
52:
;52 44
	%53 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 2
	%54 = load i32, i32* %53, align 4
	%55 = icmp slt i32 %54, %3
	br i1 %55, label %56, label %57

;True block in insertImpl selectCount 2
56:
;56 52
	br label %57

;Converge block in insertImpl selectCount 2
57:
;57 52
	%58 = phi i32 [ 0, %52 ], [ 1, %56 ]
	%59 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%60 = load %struct.Node**, %struct.Node*** %59, align 4
	%61 = mul i32 %58, 4
	%62 = add i32 %61, 4
	%63 = bitcast %struct.Node** %60 to i8*
	%64 = getelementptr i8, i8* %63, i32 %62
	%65 = bitcast i8* %64 to %struct.Node**
	%66 = load %struct.Node*, %struct.Node** %65, align 4
	%67 = call i32 @insertImpl(%struct.Node* %66, %struct.Node* %0, i32 %58, i32 %3)
	br label %41
}

define i32 @eraseImpl(%struct.Node* %0,%struct.Node* %1,i32 %2,i32 %3){

4:
;4 4
	%5 = icmp eq %struct.Node* %0, null
	br i1 %5, label %6, label %9

;True block in eraseImpl selectCount 0
6:
;6 4
	br label %7

7:
;7 4
	%8 = phi i32 [ 0, %6 ], [ %20, %13 ], [ %32, %25 ], [ 1, %40 ], [ 1, %86 ], [ 1, %236 ]
	ret i32 %8

;Converge block in eraseImpl selectCount 0
9:
;9 4
	%10 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 2
	%11 = load i32, i32* %10, align 4
	%12 = icmp sgt i32 %11, %3
	br i1 %12, label %13, label %21

;True block in eraseImpl selectCount 1
13:
;13 9
	%14 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%15 = load %struct.Node**, %struct.Node*** %14, align 4
	%16 = bitcast %struct.Node** %15 to i8*
	%17 = getelementptr i8, i8* %16, i32 4
	%18 = bitcast i8* %17 to %struct.Node**
	%19 = load %struct.Node*, %struct.Node** %18, align 4
	%20 = call i32 @eraseImpl(%struct.Node* %19, %struct.Node* %0, i32 0, i32 %3)
	br label %7

;Converge block in eraseImpl selectCount 1
21:
;21 9
	%22 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 2
	%23 = load i32, i32* %22, align 4
	%24 = icmp slt i32 %23, %3
	br i1 %24, label %25, label %33

;True block in eraseImpl selectCount 2
25:
;25 21
	%26 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%27 = load %struct.Node**, %struct.Node*** %26, align 4
	%28 = bitcast %struct.Node** %27 to i8*
	%29 = getelementptr i8, i8* %28, i32 8
	%30 = bitcast i8* %29 to %struct.Node**
	%31 = load %struct.Node*, %struct.Node** %30, align 4
	%32 = call i32 @eraseImpl(%struct.Node* %31, %struct.Node* %0, i32 1, i32 %3)
	br label %7

;Converge block in eraseImpl selectCount 2
33:
;33 21
	%34 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 3
	%35 = load i32, i32* %34, align 4
	%36 = sub i32 %35, 1
	store i32 %36, i32* %34, align 4
	%37 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 3
	%38 = load i32, i32* %37, align 4
	%39 = icmp sgt i32 %38, 0
	br i1 %39, label %40, label %41

;True block in eraseImpl selectCount 3
40:
;40 33
	br label %7

;Converge block in eraseImpl selectCount 3
41:
;41 33
	%42 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%43 = load %struct.Node**, %struct.Node*** %42, align 4
	%44 = bitcast %struct.Node** %43 to i8*
	%45 = getelementptr i8, i8* %44, i32 4
	%46 = bitcast i8* %45 to %struct.Node**
	%47 = load %struct.Node*, %struct.Node** %46, align 4
	%48 = icmp eq %struct.Node* %47, null
	br i1 %48, label %49, label %94

;True block in eraseImpl selectCount 4
49:
;49 41
	%50 = icmp ne %struct.Node* %1, null
	br i1 %50, label %51, label %65

;True block in eraseImpl selectCount 4
51:
;51 49
	%52 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%53 = load %struct.Node**, %struct.Node*** %52, align 4
	%54 = bitcast %struct.Node** %53 to i8*
	%55 = getelementptr i8, i8* %54, i32 8
	%56 = bitcast i8* %55 to %struct.Node**
	%57 = load %struct.Node*, %struct.Node** %56, align 4
	%58 = getelementptr %struct.Node, %struct.Node* %1, i32 0, i32 1
	%59 = load %struct.Node**, %struct.Node*** %58, align 4
	%60 = mul i32 %2, 4
	%61 = add i32 %60, 4
	%62 = bitcast %struct.Node** %59 to i8*
	%63 = getelementptr i8, i8* %62, i32 %61
	%64 = bitcast i8* %63 to %struct.Node**
	store %struct.Node* %57, %struct.Node** %64, align 4
	br label %65

;Converge block in eraseImpl selectCount 4
65:
;65 49
	%66 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%67 = load %struct.Node**, %struct.Node*** %66, align 4
	%68 = bitcast %struct.Node** %67 to i8*
	%69 = getelementptr i8, i8* %68, i32 8
	%70 = bitcast i8* %69 to %struct.Node**
	%71 = load %struct.Node*, %struct.Node** %70, align 4
	%72 = icmp ne %struct.Node* %71, null
	br i1 %72, label %73, label %81

;True block in eraseImpl selectCount 5
73:
;73 65
	%74 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%75 = load %struct.Node**, %struct.Node*** %74, align 4
	%76 = bitcast %struct.Node** %75 to i8*
	%77 = getelementptr i8, i8* %76, i32 8
	%78 = bitcast i8* %77 to %struct.Node**
	%79 = load %struct.Node*, %struct.Node** %78, align 4
	%80 = getelementptr %struct.Node, %struct.Node* %79, i32 0, i32 0
	store %struct.Node* %1, %struct.Node** %80, align 4
	br label %81

;Converge block in eraseImpl selectCount 5
81:
;81 65
	%82 = load %struct.Node*, %struct.Node** @root, align 4
	%83 = getelementptr %struct.Node, %struct.Node* %82, i32 0, i32 2
	%84 = load i32, i32* %83, align 4
	%85 = icmp eq i32 %3, %84
	br i1 %85, label %87, label %86

;Converge block in eraseImpl selectCount 6
86:
;86 81
	br label %7

;True block in eraseImpl selectCount 6
87:
;87 81
	%88 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%89 = load %struct.Node**, %struct.Node*** %88, align 4
	%90 = bitcast %struct.Node** %89 to i8*
	%91 = getelementptr i8, i8* %90, i32 8
	%92 = bitcast i8* %91 to %struct.Node**
	%93 = load %struct.Node*, %struct.Node** %92, align 4
	store %struct.Node* %93, %struct.Node** @root, align 4
	br label %86

;Converge block in eraseImpl selectCount 4
94:
;94 41
	%95 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%96 = load %struct.Node**, %struct.Node*** %95, align 4
	%97 = bitcast %struct.Node** %96 to i8*
	%98 = getelementptr i8, i8* %97, i32 4
	%99 = bitcast i8* %98 to %struct.Node**
	%100 = load %struct.Node*, %struct.Node** %99, align 4
	br label %101

;begin inline expansion findLargest
101:
;101 260
	%102 = getelementptr %struct.Node, %struct.Node* %100, i32 0, i32 1
	%103 = load %struct.Node**, %struct.Node*** %102, align 4
	%104 = bitcast %struct.Node** %103 to i8*
	%105 = getelementptr i8, i8* %104, i32 8
	%106 = bitcast i8* %105 to %struct.Node**
	%107 = load %struct.Node*, %struct.Node** %106, align 4
	%108 = icmp eq %struct.Node* %107, null
	br i1 %108, label %259, label %109

109:
;109 260
	%110 = getelementptr %struct.Node, %struct.Node* %100, i32 0, i32 1
	%111 = load %struct.Node**, %struct.Node*** %110, align 4
	%112 = bitcast %struct.Node** %111 to i8*
	%113 = getelementptr i8, i8* %112, i32 8
	%114 = bitcast i8* %113 to %struct.Node**
	%115 = load %struct.Node*, %struct.Node** %114, align 4
	br label %116

;begin inline expansion findLargest
116:
;116 260
	%117 = getelementptr %struct.Node, %struct.Node* %115, i32 0, i32 1
	%118 = load %struct.Node**, %struct.Node*** %117, align 4
	%119 = bitcast %struct.Node** %118 to i8*
	%120 = getelementptr i8, i8* %119, i32 8
	%121 = bitcast i8* %120 to %struct.Node**
	%122 = load %struct.Node*, %struct.Node** %121, align 4
	%123 = icmp eq %struct.Node* %122, null
	br i1 %123, label %258, label %124

124:
;124 260
	%125 = getelementptr %struct.Node, %struct.Node* %115, i32 0, i32 1
	%126 = load %struct.Node**, %struct.Node*** %125, align 4
	%127 = bitcast %struct.Node** %126 to i8*
	%128 = getelementptr i8, i8* %127, i32 8
	%129 = bitcast i8* %128 to %struct.Node**
	%130 = load %struct.Node*, %struct.Node** %129, align 4
	%131 = call %struct.Node* @findLargest(%struct.Node* %130)
	br label %132

132:
;132 260
	%133 = phi %struct.Node* [ %131, %124 ], [ %115, %258 ]
	br label %134

;end inline expansion findLargest
134:
;134 260
	br label %135

135:
;135 260
	%136 = phi %struct.Node* [ %133, %134 ], [ %100, %259 ]
	br label %137

;end inline expansion findLargest
137:
;137 260
	%138 = load %struct.Node*, %struct.Node** @root, align 4
	%139 = getelementptr %struct.Node, %struct.Node* %138, i32 0, i32 2
	%140 = load i32, i32* %139, align 4
	%141 = icmp eq i32 %3, %140
	br i1 %141, label %257, label %142

;Converge block in eraseImpl selectCount 8
142:
;142 94
	%143 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 2
	%144 = load i32, i32* %143, align 4
	%145 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%146 = load %struct.Node**, %struct.Node*** %145, align 4
	%147 = bitcast %struct.Node** %146 to i8*
	%148 = getelementptr i8, i8* %147, i32 4
	%149 = bitcast i8* %148 to %struct.Node**
	%150 = load %struct.Node*, %struct.Node** %149, align 4
	%151 = getelementptr %struct.Node, %struct.Node* %150, i32 0, i32 2
	%152 = load i32, i32* %151, align 4
	%153 = icmp ne i32 %144, %152
	br i1 %153, label %154, label %185

;True block in eraseImpl selectCount 9
154:
;154 142
	%155 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 1
	%156 = load %struct.Node**, %struct.Node*** %155, align 4
	%157 = bitcast %struct.Node** %156 to i8*
	%158 = getelementptr i8, i8* %157, i32 4
	%159 = bitcast i8* %158 to %struct.Node**
	%160 = load %struct.Node*, %struct.Node** %159, align 4
	%161 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 0
	%162 = load %struct.Node*, %struct.Node** %161, align 4
	%163 = getelementptr %struct.Node, %struct.Node* %162, i32 0, i32 1
	%164 = load %struct.Node**, %struct.Node*** %163, align 4
	%165 = bitcast %struct.Node** %164 to i8*
	%166 = getelementptr i8, i8* %165, i32 8
	%167 = bitcast i8* %166 to %struct.Node**
	store %struct.Node* %160, %struct.Node** %167, align 4
	%168 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 1
	%169 = load %struct.Node**, %struct.Node*** %168, align 4
	%170 = bitcast %struct.Node** %169 to i8*
	%171 = getelementptr i8, i8* %170, i32 4
	%172 = bitcast i8* %171 to %struct.Node**
	%173 = load %struct.Node*, %struct.Node** %172, align 4
	%174 = icmp ne %struct.Node* %173, null
	br i1 %174, label %175, label %185

;True block in eraseImpl selectCount 9
175:
;175 154
	%176 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 0
	%177 = load %struct.Node*, %struct.Node** %176, align 4
	%178 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 1
	%179 = load %struct.Node**, %struct.Node*** %178, align 4
	%180 = bitcast %struct.Node** %179 to i8*
	%181 = getelementptr i8, i8* %180, i32 4
	%182 = bitcast i8* %181 to %struct.Node**
	%183 = load %struct.Node*, %struct.Node** %182, align 4
	%184 = getelementptr %struct.Node, %struct.Node* %183, i32 0, i32 0
	store %struct.Node* %177, %struct.Node** %184, align 4
	br label %185

;Converge block in eraseImpl selectCount 9
185:
;185 142
	%186 = icmp ne %struct.Node* %1, null
	br i1 %186, label %187, label %195

;True block in eraseImpl selectCount 11
187:
;187 185
	%188 = getelementptr %struct.Node, %struct.Node* %1, i32 0, i32 1
	%189 = load %struct.Node**, %struct.Node*** %188, align 4
	%190 = mul i32 %2, 4
	%191 = add i32 %190, 4
	%192 = bitcast %struct.Node** %189 to i8*
	%193 = getelementptr i8, i8* %192, i32 %191
	%194 = bitcast i8* %193 to %struct.Node**
	store %struct.Node* %136, %struct.Node** %194, align 4
	br label %195

;Converge block in eraseImpl selectCount 11
195:
;195 185
	%196 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 0
	store %struct.Node* %1, %struct.Node** %196, align 4
	%197 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%198 = load %struct.Node**, %struct.Node*** %197, align 4
	%199 = bitcast %struct.Node** %198 to i8*
	%200 = getelementptr i8, i8* %199, i32 8
	%201 = bitcast i8* %200 to %struct.Node**
	%202 = load %struct.Node*, %struct.Node** %201, align 4
	%203 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 1
	%204 = load %struct.Node**, %struct.Node*** %203, align 4
	%205 = bitcast %struct.Node** %204 to i8*
	%206 = getelementptr i8, i8* %205, i32 8
	%207 = bitcast i8* %206 to %struct.Node**
	%208 = load %struct.Node*, %struct.Node** %207, align 4
	store %struct.Node* %202, %struct.Node** %207, align 4
	%209 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%210 = load %struct.Node**, %struct.Node*** %209, align 4
	%211 = bitcast %struct.Node** %210 to i8*
	%212 = getelementptr i8, i8* %211, i32 8
	%213 = bitcast i8* %212 to %struct.Node**
	%214 = load %struct.Node*, %struct.Node** %213, align 4
	%215 = icmp ne %struct.Node* %214, null
	br i1 %215, label %216, label %224

;True block in eraseImpl selectCount 12
216:
;216 195
	%217 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%218 = load %struct.Node**, %struct.Node*** %217, align 4
	%219 = bitcast %struct.Node** %218 to i8*
	%220 = getelementptr i8, i8* %219, i32 8
	%221 = bitcast i8* %220 to %struct.Node**
	%222 = load %struct.Node*, %struct.Node** %221, align 4
	%223 = getelementptr %struct.Node, %struct.Node* %222, i32 0, i32 0
	store %struct.Node* %136, %struct.Node** %223, align 4
	br label %224

;Converge block in eraseImpl selectCount 12
224:
;224 195
	%225 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 2
	%226 = load i32, i32* %225, align 4
	%227 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%228 = load %struct.Node**, %struct.Node*** %227, align 4
	%229 = bitcast %struct.Node** %228 to i8*
	%230 = getelementptr i8, i8* %229, i32 4
	%231 = bitcast i8* %230 to %struct.Node**
	%232 = load %struct.Node*, %struct.Node** %231, align 4
	%233 = getelementptr %struct.Node, %struct.Node* %232, i32 0, i32 2
	%234 = load i32, i32* %233, align 4
	%235 = icmp ne i32 %226, %234
	br i1 %235, label %237, label %236

;Converge block in eraseImpl selectCount 13
236:
;236 224
	br label %7

;True block in eraseImpl selectCount 13
237:
;237 224
	%238 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%239 = load %struct.Node**, %struct.Node*** %238, align 4
	%240 = bitcast %struct.Node** %239 to i8*
	%241 = getelementptr i8, i8* %240, i32 4
	%242 = bitcast i8* %241 to %struct.Node**
	%243 = load %struct.Node*, %struct.Node** %242, align 4
	%244 = getelementptr %struct.Node, %struct.Node* %136, i32 0, i32 1
	%245 = load %struct.Node**, %struct.Node*** %244, align 4
	%246 = bitcast %struct.Node** %245 to i8*
	%247 = getelementptr i8, i8* %246, i32 4
	%248 = bitcast i8* %247 to %struct.Node**
	store %struct.Node* %243, %struct.Node** %248, align 4
	%249 = getelementptr %struct.Node, %struct.Node* %0, i32 0, i32 1
	%250 = load %struct.Node**, %struct.Node*** %249, align 4
	%251 = bitcast %struct.Node** %250 to i8*
	%252 = getelementptr i8, i8* %251, i32 4
	%253 = bitcast i8* %252 to %struct.Node**
	%254 = load %struct.Node*, %struct.Node** %253, align 4
	%255 = getelementptr %struct.Node, %struct.Node* %254, i32 0, i32 0
	%256 = load %struct.Node*, %struct.Node** %255, align 4
	store %struct.Node* %136, %struct.Node** %255, align 4
	br label %236

;True block in eraseImpl selectCount 8
257:
;257 94
	store %struct.Node* %136, %struct.Node** @root, align 4
	br label %142

258:
;258 260
	br label %132

259:
;259 260
	br label %135
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

