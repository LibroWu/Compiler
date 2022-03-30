%struct.string = type { i32, i8* }

@INF = global i32 10000000, align 4
@n = global i32 0, align 4
@m = global i32 0, align 4
@a = global i32** null, align 4

@.libro.str = constant [3 x i8] c"-1\00", align 1
@.libro.str.1 = constant [2 x i8] c" \00", align 1
@.libro.str.2 = constant [1 x i8] c"\00", align 1

define void @init(){
;0 0
	%1 = call i32 @getInt()
	%2 = load i32, i32* @n, align 4
	store i32 %1, i32* @n, align 4
	%3 = call i32 @getInt()
	%4 = load i32, i32* @m, align 4
	store i32 %3, i32* @m, align 4
	%5 = load i32, i32* @n, align 4
	%6 = mul i32 %5, 4
	%7 = add i32 %6, 4
	%8 = call i8* @myNew(i32 %7)
	%9 = bitcast i8* %8 to i32*
	store i32 %5, i32* %9, align 4
	%10 = bitcast i8* %8 to i32**
	br label %11

;loop created by new check block init loopDepth 1 iterCount 0
11:
;11 0
	%12 = phi i32 [ 4, %0 ], [ %13, %15 ]
	%13 = add i32 %12, 4
	%14 = icmp slt i32 %12, %7
	br i1 %14, label %15, label %24

;loop created by new body init loopDepth 1 iterCount 0
15:
;15 11
	%16 = getelementptr i8, i8* %8, i32 %12
	%17 = load i32, i32* @n, align 4
	%18 = mul i32 %17, 4
	%19 = add i32 %18, 4
	%20 = call i8* @myNew(i32 %19)
	%21 = bitcast i8* %20 to i32*
	store i32 %17, i32* %21, align 4
	%22 = bitcast i8* %20 to i32*
	%23 = bitcast i8* %16 to i32**
	store i32* %22, i32** %23, align 4
	br label %11

;loop created by new exit block init loopDepth 1 iterCount 0
24:
;24 11
	%25 = load i32**, i32*** @a, align 4
	store i32** %10, i32*** @a, align 4
	br label %26

;loop check block init loopDepth 1 iterCount 1
26:
;26 24
	%27 = phi i32 [ 0, %24 ], [ %33, %54 ]
	%28 = phi i32 [ 0, %24 ], [ %55, %54 ]
	%29 = load i32, i32* @n, align 4
	%30 = icmp slt i32 %28, %29
	br i1 %30, label %31, label %56

;loop body init loopDepth 1 iterCount 1
31:
;31 26
	br label %32

;loop check block init loopDepth 2 iterCount 1
32:
;32 31
	%33 = phi i32 [ 0, %31 ], [ %52, %51 ]
	%34 = load i32, i32* @n, align 4
	%35 = icmp slt i32 %33, %34
	br i1 %35, label %36, label %53

;loop body init loopDepth 2 iterCount 1
36:
;36 32
	%37 = load i32, i32* @INF, align 4
	%38 = load i32**, i32*** @a, align 4
	%39 = mul i32 %28, 4
	%40 = add i32 %39, 4
	%41 = bitcast i32** %38 to i8*
	%42 = getelementptr i8, i8* %41, i32 %40
	%43 = bitcast i8* %42 to i32**
	%44 = load i32*, i32** %43, align 4
	%45 = mul i32 %33, 4
	%46 = add i32 %45, 4
	%47 = bitcast i32* %44 to i8*
	%48 = getelementptr i8, i8* %47, i32 %46
	%49 = bitcast i8* %48 to i32*
	%50 = load i32, i32* %49, align 4
	store i32 %37, i32* %49, align 4
	br label %51

;loop increase block init loopDepth 2 iterCount 1
51:
;51 36
	%52 = add i32 %33, 1
	br label %32

;loop exit block init loopDepth 2 iterCount 1
53:
;53 32
	br label %54

;loop increase block init loopDepth 1 iterCount 1
54:
;54 53
	%55 = add i32 %28, 1
	br label %26

;loop exit block init loopDepth 1 iterCount 1
56:
;56 26
	br label %57

;loop check block init loopDepth 1 iterCount 3
57:
;57 56
	%58 = phi i32 [ 0, %56 ], [ %76, %75 ]
	%59 = load i32, i32* @n, align 4
	%60 = icmp slt i32 %58, %59
	br i1 %60, label %61, label %77

;loop body init loopDepth 1 iterCount 3
61:
;61 57
	%62 = load i32**, i32*** @a, align 4
	%63 = mul i32 %58, 4
	%64 = add i32 %63, 4
	%65 = bitcast i32** %62 to i8*
	%66 = getelementptr i8, i8* %65, i32 %64
	%67 = bitcast i8* %66 to i32**
	%68 = load i32*, i32** %67, align 4
	%69 = mul i32 %58, 4
	%70 = add i32 %69, 4
	%71 = bitcast i32* %68 to i8*
	%72 = getelementptr i8, i8* %71, i32 %70
	%73 = bitcast i8* %72 to i32*
	%74 = load i32, i32* %73, align 4
	store i32 0, i32* %73, align 4
	br label %75

;loop increase block init loopDepth 1 iterCount 3
75:
;75 61
	%76 = add i32 %58, 1
	br label %57

;loop exit block init loopDepth 1 iterCount 3
77:
;77 57
	br label %78

;loop check block init loopDepth 1 iterCount 4
78:
;78 77
	%79 = phi i32 [ 0, %77 ], [ %100, %99 ]
	%80 = load i32, i32* @m, align 4
	%81 = icmp slt i32 %79, %80
	br i1 %81, label %82, label %101

;loop body init loopDepth 1 iterCount 4
82:
;82 78
	%83 = call i32 @getInt()
	%84 = call i32 @getInt()
	%85 = call i32 @getInt()
	%86 = load i32**, i32*** @a, align 4
	%87 = mul i32 %83, 4
	%88 = add i32 %87, 4
	%89 = bitcast i32** %86 to i8*
	%90 = getelementptr i8, i8* %89, i32 %88
	%91 = bitcast i8* %90 to i32**
	%92 = load i32*, i32** %91, align 4
	%93 = mul i32 %84, 4
	%94 = add i32 %93, 4
	%95 = bitcast i32* %92 to i8*
	%96 = getelementptr i8, i8* %95, i32 %94
	%97 = bitcast i8* %96 to i32*
	%98 = load i32, i32* %97, align 4
	store i32 %85, i32* %97, align 4
	br label %99

;loop increase block init loopDepth 1 iterCount 4
99:
;99 82
	%100 = add i32 %79, 1
	br label %78

;loop exit block init loopDepth 1 iterCount 4
101:
;101 78
	br label %102

102:
;102 101
	ret void
}

define i32 @main(){
;0 0
	call void @_GLOBAL_()
	call void @init()
	br label %1

;loop check block main loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 0, %0 ], [ %109, %108 ]
	%3 = phi i32 [ 0, %0 ], [ %9, %108 ]
	%4 = phi i32 [ 0, %0 ], [ %10, %108 ]
	%5 = load i32, i32* @n, align 4
	%6 = icmp slt i32 %2, %5
	br i1 %6, label %7, label %110

;loop body main loopDepth 1 iterCount 0
7:
;7 1
	br label %8

;loop check block main loopDepth 2 iterCount 0
8:
;8 7
	%9 = phi i32 [ %3, %7 ], [ %15, %105 ]
	%10 = phi i32 [ 0, %7 ], [ %106, %105 ]
	%11 = load i32, i32* @n, align 4
	%12 = icmp slt i32 %10, %11
	br i1 %12, label %13, label %107

;loop body main loopDepth 2 iterCount 0
13:
;13 8
	br label %14

;loop check block main loopDepth 3 iterCount 0
14:
;14 13
	%15 = phi i32 [ 0, %13 ], [ %103, %102 ]
	%16 = load i32, i32* @n, align 4
	%17 = icmp slt i32 %15, %16
	br i1 %17, label %18, label %104

;loop body main loopDepth 3 iterCount 0
18:
;18 14
	%19 = load i32**, i32*** @a, align 4
	%20 = mul i32 %10, 4
	%21 = add i32 %20, 4
	%22 = bitcast i32** %19 to i8*
	%23 = getelementptr i8, i8* %22, i32 %21
	%24 = bitcast i8* %23 to i32**
	%25 = load i32*, i32** %24, align 4
	%26 = mul i32 %15, 4
	%27 = add i32 %26, 4
	%28 = bitcast i32* %25 to i8*
	%29 = getelementptr i8, i8* %28, i32 %27
	%30 = bitcast i8* %29 to i32*
	%31 = load i32, i32* %30, align 4
	%32 = load i32**, i32*** @a, align 4
	%33 = mul i32 %10, 4
	%34 = add i32 %33, 4
	%35 = bitcast i32** %32 to i8*
	%36 = getelementptr i8, i8* %35, i32 %34
	%37 = bitcast i8* %36 to i32**
	%38 = load i32*, i32** %37, align 4
	%39 = mul i32 %2, 4
	%40 = add i32 %39, 4
	%41 = bitcast i32* %38 to i8*
	%42 = getelementptr i8, i8* %41, i32 %40
	%43 = bitcast i8* %42 to i32*
	%44 = load i32, i32* %43, align 4
	%45 = load i32**, i32*** @a, align 4
	%46 = mul i32 %2, 4
	%47 = add i32 %46, 4
	%48 = bitcast i32** %45 to i8*
	%49 = getelementptr i8, i8* %48, i32 %47
	%50 = bitcast i8* %49 to i32**
	%51 = load i32*, i32** %50, align 4
	%52 = mul i32 %15, 4
	%53 = add i32 %52, 4
	%54 = bitcast i32* %51 to i8*
	%55 = getelementptr i8, i8* %54, i32 %53
	%56 = bitcast i8* %55 to i32*
	%57 = load i32, i32* %56, align 4
	%58 = add i32 %44, %57
	%59 = icmp sgt i32 %31, %58
	br i1 %59, label %60, label %101

;True block in main selectCount 0
60:
;60 18
	%61 = load i32**, i32*** @a, align 4
	%62 = mul i32 %10, 4
	%63 = add i32 %62, 4
	%64 = bitcast i32** %61 to i8*
	%65 = getelementptr i8, i8* %64, i32 %63
	%66 = bitcast i8* %65 to i32**
	%67 = load i32*, i32** %66, align 4
	%68 = mul i32 %2, 4
	%69 = add i32 %68, 4
	%70 = bitcast i32* %67 to i8*
	%71 = getelementptr i8, i8* %70, i32 %69
	%72 = bitcast i8* %71 to i32*
	%73 = load i32, i32* %72, align 4
	%74 = load i32**, i32*** @a, align 4
	%75 = mul i32 %2, 4
	%76 = add i32 %75, 4
	%77 = bitcast i32** %74 to i8*
	%78 = getelementptr i8, i8* %77, i32 %76
	%79 = bitcast i8* %78 to i32**
	%80 = load i32*, i32** %79, align 4
	%81 = mul i32 %15, 4
	%82 = add i32 %81, 4
	%83 = bitcast i32* %80 to i8*
	%84 = getelementptr i8, i8* %83, i32 %82
	%85 = bitcast i8* %84 to i32*
	%86 = load i32, i32* %85, align 4
	%87 = add i32 %73, %86
	%88 = load i32**, i32*** @a, align 4
	%89 = mul i32 %10, 4
	%90 = add i32 %89, 4
	%91 = bitcast i32** %88 to i8*
	%92 = getelementptr i8, i8* %91, i32 %90
	%93 = bitcast i8* %92 to i32**
	%94 = load i32*, i32** %93, align 4
	%95 = mul i32 %15, 4
	%96 = add i32 %95, 4
	%97 = bitcast i32* %94 to i8*
	%98 = getelementptr i8, i8* %97, i32 %96
	%99 = bitcast i8* %98 to i32*
	%100 = load i32, i32* %99, align 4
	store i32 %87, i32* %99, align 4
	br label %101

;Converge block in main selectCount 0
101:
;101 18
	br label %102

;loop increase block main loopDepth 3 iterCount 0
102:
;102 101
	%103 = add i32 %15, 1
	br label %14

;loop exit block main loopDepth 3 iterCount 0
104:
;104 14
	br label %105

;loop increase block main loopDepth 2 iterCount 0
105:
;105 104
	%106 = add i32 %10, 1
	br label %8

;loop exit block main loopDepth 2 iterCount 0
107:
;107 8
	br label %108

;loop increase block main loopDepth 1 iterCount 0
108:
;108 107
	%109 = add i32 %2, 1
	br label %1

;loop exit block main loopDepth 1 iterCount 0
110:
;110 1
	br label %111

;loop check block main loopDepth 1 iterCount 3
111:
;111 110
	%112 = phi i32 [ %3, %110 ], [ %118, %162 ]
	%113 = phi i32 [ 0, %110 ], [ %163, %162 ]
	%114 = load i32, i32* @n, align 4
	%115 = icmp slt i32 %113, %114
	br i1 %115, label %116, label %164

;loop body main loopDepth 1 iterCount 3
116:
;116 111
	br label %117

;loop check block main loopDepth 2 iterCount 3
117:
;117 116
	%118 = phi i32 [ 0, %116 ], [ %142, %141 ]
	%119 = load i32, i32* @n, align 4
	%120 = icmp slt i32 %118, %119
	br i1 %120, label %121, label %160

;loop body main loopDepth 2 iterCount 3
121:
;121 117
	%122 = load i32**, i32*** @a, align 4
	%123 = mul i32 %113, 4
	%124 = add i32 %123, 4
	%125 = bitcast i32** %122 to i8*
	%126 = getelementptr i8, i8* %125, i32 %124
	%127 = bitcast i8* %126 to i32**
	%128 = load i32*, i32** %127, align 4
	%129 = mul i32 %118, 4
	%130 = add i32 %129, 4
	%131 = bitcast i32* %128 to i8*
	%132 = getelementptr i8, i8* %131, i32 %130
	%133 = bitcast i8* %132 to i32*
	%134 = load i32, i32* %133, align 4
	%135 = load i32, i32* @INF, align 4
	%136 = icmp eq i32 %134, %135
	br i1 %136, label %137, label %143

;True block in main selectCount 1
137:
;137 121
	%138 = bitcast [3 x i8]* @.libro.str to i8*
	call void @print(i8* %138)
	br label %139

;Converge block in main selectCount 1
139:
;139 121
	%140 = bitcast [2 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %140)
	br label %141

;loop increase block main loopDepth 2 iterCount 3
141:
;141 139
	%142 = add i32 %118, 1
	br label %117

;False block in main selectCount 1
143:
;143 121
	%144 = load i32**, i32*** @a, align 4
	%145 = mul i32 %113, 4
	%146 = add i32 %145, 4
	%147 = bitcast i32** %144 to i8*
	%148 = getelementptr i8, i8* %147, i32 %146
	%149 = bitcast i8* %148 to i32**
	%150 = load i32*, i32** %149, align 4
	%151 = mul i32 %118, 4
	%152 = add i32 %151, 4
	%153 = bitcast i32* %150 to i8*
	%154 = getelementptr i8, i8* %153, i32 %152
	%155 = bitcast i8* %154 to i32*
	%156 = load i32, i32* %155, align 4
	%157 = call %struct.string* @toString(i32 %156)
	%158 = getelementptr %struct.string, %struct.string* %157, i32 0, i32 1
	%159 = load i8*, i8** %158, align 4
	call void @print(i8* %159)
	br label %139

;loop exit block main loopDepth 2 iterCount 3
160:
;160 117
	%161 = bitcast [1 x i8]* @.libro.str.2 to i8*
	call void @println(i8* %161)
	br label %162

;loop increase block main loopDepth 1 iterCount 3
162:
;162 160
	%163 = add i32 %113, 1
	br label %111

;loop exit block main loopDepth 1 iterCount 3
164:
;164 111
	br label %165

165:
;165 164
	ret i32 0
}

define void @_GLOBAL_(){
;0 0
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

