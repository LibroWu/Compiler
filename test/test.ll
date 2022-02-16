%struct.string = type { i32, i8* }
%struct.Edge = type { i32, i32, i32 }

@n = global i32 0, align 4
@m = global i32 0, align 4
@ans = global i32 0, align 4
@fa = global i32* null, align 4
@rk = global i32* null, align 4
@e = global %struct.Edge** null, align 4

define void @qsort(%struct.Edge** %0,i32 %1,i32 %2){
	%4 = alloca %struct.Edge**, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	%8 = alloca i32, align 4
	%9 = alloca %struct.Edge*, align 4
	store %struct.Edge** %0, %struct.Edge*** %4, align 4
	store i32 %1, i32* %5, align 4
	store i32 %2, i32* %6, align 4
	%10 = load i32, i32* %5, align 4
	%11 = load i32, i32* %6, align 4
	%12 = icmp slt i32 %10, %11
	br i1 %12, label %13, label %143

;True block in qsort selectCount 0
13:
	%14 = load i32, i32* %5, align 4
	store i32 %14, i32* %7, align 4
	%15 = load i32, i32* %6, align 4
	store i32 %15, i32* %8, align 4
	%16 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%17 = load i32, i32* %5, align 4
	%18 = mul i32 %17, 4
	%19 = add i32 %18, 4
	%20 = bitcast %struct.Edge** %16 to i8*
	%21 = getelementptr i8, i8* %20, i32 %19
	%22 = bitcast i8* %21 to %struct.Edge**
	%23 = load %struct.Edge*, %struct.Edge** %22, align 4
	store %struct.Edge* %23, %struct.Edge** %9, align 4
	br label %24

;loop check block qsort loopDepth 1 iterCount 0
24:
	%25 = load i32, i32* %7, align 4
	%26 = load i32, i32* %8, align 4
	%27 = icmp slt i32 %25, %26
	br i1 %27, label %28, label %125

;loop body qsort loopDepth 1 iterCount 0
28:
	br label %29

;loop check block qsort loopDepth 2 iterCount 0
29:
	%30 = load i32, i32* %7, align 4
	%31 = load i32, i32* %8, align 4
	%32 = icmp slt i32 %30, %31
	br i1 %32, label %33, label %48

33:
	%34 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%35 = load i32, i32* %8, align 4
	%36 = mul i32 %35, 4
	%37 = add i32 %36, 4
	%38 = bitcast %struct.Edge** %34 to i8*
	%39 = getelementptr i8, i8* %38, i32 %37
	%40 = bitcast i8* %39 to %struct.Edge**
	%41 = load %struct.Edge*, %struct.Edge** %40, align 4
	%42 = getelementptr %struct.Edge, %struct.Edge* %41, i32 0, i32 2
	%43 = load i32, i32* %42, align 4
	%44 = load %struct.Edge*, %struct.Edge** %9, align 4
	%45 = getelementptr %struct.Edge, %struct.Edge* %44, i32 0, i32 2
	%46 = load i32, i32* %45, align 4
	%47 = icmp sge i32 %43, %46
	br label %48

48:
	%49 = phi i1 [ 0, %29 ], [ %47, %33 ]
	br i1 %49, label %50, label %53

;loop body qsort loopDepth 2 iterCount 0
50:
	%51 = load i32, i32* %8, align 4
	%52 = sub i32 %51, 1
	store i32 %52, i32* %8, align 4
	br label %29

;loop exit block qsort loopDepth 2 iterCount 0
53:
	%54 = load i32, i32* %7, align 4
	%55 = load i32, i32* %8, align 4
	%56 = icmp slt i32 %54, %55
	br i1 %56, label %57, label %76

;True block in qsort selectCount 0
57:
	%58 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%59 = load i32, i32* %8, align 4
	%60 = mul i32 %59, 4
	%61 = add i32 %60, 4
	%62 = bitcast %struct.Edge** %58 to i8*
	%63 = getelementptr i8, i8* %62, i32 %61
	%64 = bitcast i8* %63 to %struct.Edge**
	%65 = load %struct.Edge*, %struct.Edge** %64, align 4
	%66 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%67 = load i32, i32* %7, align 4
	%68 = mul i32 %67, 4
	%69 = add i32 %68, 4
	%70 = bitcast %struct.Edge** %66 to i8*
	%71 = getelementptr i8, i8* %70, i32 %69
	%72 = bitcast i8* %71 to %struct.Edge**
	%73 = load %struct.Edge*, %struct.Edge** %72, align 4
	store %struct.Edge* %65, %struct.Edge** %72, align 4
	%74 = load i32, i32* %7, align 4
	%75 = add i32 %74, 1
	store i32 %75, i32* %7, align 4
	br label %76

;Converge block in qsort selectCount 0
76:
	br label %77

;loop check block qsort loopDepth 2 iterCount 1
77:
	%78 = load i32, i32* %7, align 4
	%79 = load i32, i32* %8, align 4
	%80 = icmp slt i32 %78, %79
	br i1 %80, label %81, label %96

81:
	%82 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%83 = load i32, i32* %7, align 4
	%84 = mul i32 %83, 4
	%85 = add i32 %84, 4
	%86 = bitcast %struct.Edge** %82 to i8*
	%87 = getelementptr i8, i8* %86, i32 %85
	%88 = bitcast i8* %87 to %struct.Edge**
	%89 = load %struct.Edge*, %struct.Edge** %88, align 4
	%90 = getelementptr %struct.Edge, %struct.Edge* %89, i32 0, i32 2
	%91 = load i32, i32* %90, align 4
	%92 = load %struct.Edge*, %struct.Edge** %9, align 4
	%93 = getelementptr %struct.Edge, %struct.Edge* %92, i32 0, i32 2
	%94 = load i32, i32* %93, align 4
	%95 = icmp slt i32 %91, %94
	br label %96

96:
	%97 = phi i1 [ 0, %77 ], [ %95, %81 ]
	br i1 %97, label %98, label %101

;loop body qsort loopDepth 2 iterCount 1
98:
	%99 = load i32, i32* %7, align 4
	%100 = add i32 %99, 1
	store i32 %100, i32* %7, align 4
	br label %77

;loop exit block qsort loopDepth 2 iterCount 1
101:
	%102 = load i32, i32* %7, align 4
	%103 = load i32, i32* %8, align 4
	%104 = icmp slt i32 %102, %103
	br i1 %104, label %105, label %124

;True block in qsort selectCount 1
105:
	%106 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%107 = load i32, i32* %7, align 4
	%108 = mul i32 %107, 4
	%109 = add i32 %108, 4
	%110 = bitcast %struct.Edge** %106 to i8*
	%111 = getelementptr i8, i8* %110, i32 %109
	%112 = bitcast i8* %111 to %struct.Edge**
	%113 = load %struct.Edge*, %struct.Edge** %112, align 4
	%114 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%115 = load i32, i32* %8, align 4
	%116 = mul i32 %115, 4
	%117 = add i32 %116, 4
	%118 = bitcast %struct.Edge** %114 to i8*
	%119 = getelementptr i8, i8* %118, i32 %117
	%120 = bitcast i8* %119 to %struct.Edge**
	%121 = load %struct.Edge*, %struct.Edge** %120, align 4
	store %struct.Edge* %113, %struct.Edge** %120, align 4
	%122 = load i32, i32* %8, align 4
	%123 = sub i32 %122, 1
	store i32 %123, i32* %8, align 4
	br label %124

;Converge block in qsort selectCount 1
124:
	br label %24

;loop exit block qsort loopDepth 1 iterCount 0
125:
	%126 = load %struct.Edge*, %struct.Edge** %9, align 4
	%127 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%128 = load i32, i32* %7, align 4
	%129 = mul i32 %128, 4
	%130 = add i32 %129, 4
	%131 = bitcast %struct.Edge** %127 to i8*
	%132 = getelementptr i8, i8* %131, i32 %130
	%133 = bitcast i8* %132 to %struct.Edge**
	%134 = load %struct.Edge*, %struct.Edge** %133, align 4
	store %struct.Edge* %126, %struct.Edge** %133, align 4
	%135 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%136 = load i32, i32* %5, align 4
	%137 = load i32, i32* %7, align 4
	%138 = sub i32 %137, 1
	call void @qsort(%struct.Edge** %135, i32 %136, i32 %138)
	%139 = load %struct.Edge**, %struct.Edge*** %4, align 4
	%140 = load i32, i32* %7, align 4
	%141 = add i32 %140, 1
	%142 = load i32, i32* %6, align 4
	call void @qsort(%struct.Edge** %139, i32 %141, i32 %142)
	br label %143

;Converge block in qsort selectCount 0
143:
	br label %144

144:
	ret void
}

define void @init(){
	%1 = alloca i32, align 4
	%2 = load i32, i32* @n, align 4
	%3 = add i32 %2, 1
	%4 = mul i32 %3, 4
	%5 = add i32 %4, 4
	%6 = call i8* @myNew(i32 %5)
	%7 = bitcast i8* %6 to i32*
	store i32 %3, i32* %7, align 4
	%8 = bitcast i8* %6 to i32*
	%9 = load i32*, i32** @fa, align 4
	store i32* %8, i32** @fa, align 4
	%10 = load i32, i32* @n, align 4
	%11 = add i32 %10, 1
	%12 = mul i32 %11, 4
	%13 = add i32 %12, 4
	%14 = call i8* @myNew(i32 %13)
	%15 = bitcast i8* %14 to i32*
	store i32 %11, i32* %15, align 4
	%16 = bitcast i8* %14 to i32*
	%17 = load i32*, i32** @rk, align 4
	store i32* %16, i32** @rk, align 4
	%18 = load i32, i32* %1, align 4
	store i32 1, i32* %1, align 4
	br label %19

;loop check block init loopDepth 1 iterCount 0
19:
	%20 = load i32, i32* %1, align 4
	%21 = load i32, i32* @n, align 4
	%22 = icmp sle i32 %20, %21
	br i1 %22, label %23, label %44

;loop body init loopDepth 1 iterCount 0
23:
	%24 = load i32, i32* %1, align 4
	%25 = load i32*, i32** @fa, align 4
	%26 = load i32, i32* %1, align 4
	%27 = mul i32 %26, 4
	%28 = add i32 %27, 4
	%29 = bitcast i32* %25 to i8*
	%30 = getelementptr i8, i8* %29, i32 %28
	%31 = bitcast i8* %30 to i32*
	%32 = load i32, i32* %31, align 4
	store i32 %24, i32* %31, align 4
	%33 = load i32*, i32** @rk, align 4
	%34 = load i32, i32* %1, align 4
	%35 = mul i32 %34, 4
	%36 = add i32 %35, 4
	%37 = bitcast i32* %33 to i8*
	%38 = getelementptr i8, i8* %37, i32 %36
	%39 = bitcast i8* %38 to i32*
	%40 = load i32, i32* %39, align 4
	store i32 1, i32* %39, align 4
	br label %41

;loop increase block init loopDepth 1 iterCount 0
41:
	%42 = load i32, i32* %1, align 4
	%43 = add i32 %42, 1
	store i32 %43, i32* %1, align 4
	br label %19

;loop exit block init loopDepth 1 iterCount 0
44:
	br label %45

45:
	ret void
}

define i32 @find(i32 %0){
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	store i32 0, i32* %2, align 4
	store i32 %0, i32* %3, align 4
	%4 = load i32, i32* %3, align 4
	%5 = load i32*, i32** @fa, align 4
	%6 = load i32, i32* %3, align 4
	%7 = mul i32 %6, 4
	%8 = add i32 %7, 4
	%9 = bitcast i32* %5 to i8*
	%10 = getelementptr i8, i8* %9, i32 %8
	%11 = bitcast i8* %10 to i32*
	%12 = load i32, i32* %11, align 4
	%13 = icmp eq i32 %4, %12
	br i1 %13, label %14, label %16

;True block in find selectCount 0
14:
	%15 = load i32, i32* %3, align 4
	store i32 %15, i32* %2, align 4
	br label %35

;Converge block in find selectCount 0
16:
	%17 = load i32*, i32** @fa, align 4
	%18 = load i32, i32* %3, align 4
	%19 = mul i32 %18, 4
	%20 = add i32 %19, 4
	%21 = bitcast i32* %17 to i8*
	%22 = getelementptr i8, i8* %21, i32 %20
	%23 = bitcast i8* %22 to i32*
	%24 = load i32, i32* %23, align 4
	%25 = call i32 @find(i32 %24)
	%26 = load i32, i32* %3, align 4
	store i32 %25, i32* %3, align 4
	%27 = load i32*, i32** @fa, align 4
	%28 = load i32, i32* %3, align 4
	%29 = mul i32 %28, 4
	%30 = add i32 %29, 4
	%31 = bitcast i32* %27 to i8*
	%32 = getelementptr i8, i8* %31, i32 %30
	%33 = bitcast i8* %32 to i32*
	%34 = load i32, i32* %33, align 4
	store i32 %34, i32* %2, align 4
	br label %35

35:
	%36 = load i32, i32* %2, align 4
	ret i32 %36
}

define i8 @union(i32 %0,i32 %1){
	%3 = alloca i8, align 1
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	store i8 0, i8* %3, align 1
	store i32 %0, i32* %4, align 4
	store i32 %1, i32* %5, align 4
	%6 = load i32, i32* %4, align 4
	%7 = call i32 @find(i32 %6)
	%8 = load i32, i32* %4, align 4
	store i32 %7, i32* %4, align 4
	%9 = load i32, i32* %5, align 4
	%10 = call i32 @find(i32 %9)
	%11 = load i32, i32* %5, align 4
	store i32 %10, i32* %5, align 4
	%12 = load i32, i32* %4, align 4
	%13 = load i32, i32* %5, align 4
	%14 = icmp eq i32 %12, %13
	br i1 %14, label %15, label %16

;True block in union selectCount 0
15:
	store i8 0, i8* %3, align 1
	br label %105

;Converge block in union selectCount 0
16:
	%17 = load i32*, i32** @rk, align 4
	%18 = load i32, i32* %4, align 4
	%19 = mul i32 %18, 4
	%20 = add i32 %19, 4
	%21 = bitcast i32* %17 to i8*
	%22 = getelementptr i8, i8* %21, i32 %20
	%23 = bitcast i8* %22 to i32*
	%24 = load i32, i32* %23, align 4
	%25 = load i32*, i32** @rk, align 4
	%26 = load i32, i32* %5, align 4
	%27 = mul i32 %26, 4
	%28 = add i32 %27, 4
	%29 = bitcast i32* %25 to i8*
	%30 = getelementptr i8, i8* %29, i32 %28
	%31 = bitcast i8* %30 to i32*
	%32 = load i32, i32* %31, align 4
	%33 = icmp sgt i32 %24, %32
	br i1 %33, label %34, label %69

;True block in union selectCount 1
34:
	%35 = load i32, i32* %4, align 4
	%36 = load i32*, i32** @fa, align 4
	%37 = load i32, i32* %5, align 4
	%38 = mul i32 %37, 4
	%39 = add i32 %38, 4
	%40 = bitcast i32* %36 to i8*
	%41 = getelementptr i8, i8* %40, i32 %39
	%42 = bitcast i8* %41 to i32*
	%43 = load i32, i32* %42, align 4
	store i32 %35, i32* %42, align 4
	%44 = load i32*, i32** @rk, align 4
	%45 = load i32, i32* %4, align 4
	%46 = mul i32 %45, 4
	%47 = add i32 %46, 4
	%48 = bitcast i32* %44 to i8*
	%49 = getelementptr i8, i8* %48, i32 %47
	%50 = bitcast i8* %49 to i32*
	%51 = load i32, i32* %50, align 4
	%52 = load i32*, i32** @rk, align 4
	%53 = load i32, i32* %5, align 4
	%54 = mul i32 %53, 4
	%55 = add i32 %54, 4
	%56 = bitcast i32* %52 to i8*
	%57 = getelementptr i8, i8* %56, i32 %55
	%58 = bitcast i8* %57 to i32*
	%59 = load i32, i32* %58, align 4
	%60 = add i32 %51, %59
	%61 = load i32*, i32** @rk, align 4
	%62 = load i32, i32* %4, align 4
	%63 = mul i32 %62, 4
	%64 = add i32 %63, 4
	%65 = bitcast i32* %61 to i8*
	%66 = getelementptr i8, i8* %65, i32 %64
	%67 = bitcast i8* %66 to i32*
	%68 = load i32, i32* %67, align 4
	store i32 %60, i32* %67, align 4
	br label %104

;False block in union selectCount 1
69:
	%70 = load i32, i32* %5, align 4
	%71 = load i32*, i32** @fa, align 4
	%72 = load i32, i32* %4, align 4
	%73 = mul i32 %72, 4
	%74 = add i32 %73, 4
	%75 = bitcast i32* %71 to i8*
	%76 = getelementptr i8, i8* %75, i32 %74
	%77 = bitcast i8* %76 to i32*
	%78 = load i32, i32* %77, align 4
	store i32 %70, i32* %77, align 4
	%79 = load i32*, i32** @rk, align 4
	%80 = load i32, i32* %5, align 4
	%81 = mul i32 %80, 4
	%82 = add i32 %81, 4
	%83 = bitcast i32* %79 to i8*
	%84 = getelementptr i8, i8* %83, i32 %82
	%85 = bitcast i8* %84 to i32*
	%86 = load i32, i32* %85, align 4
	%87 = load i32*, i32** @rk, align 4
	%88 = load i32, i32* %4, align 4
	%89 = mul i32 %88, 4
	%90 = add i32 %89, 4
	%91 = bitcast i32* %87 to i8*
	%92 = getelementptr i8, i8* %91, i32 %90
	%93 = bitcast i8* %92 to i32*
	%94 = load i32, i32* %93, align 4
	%95 = add i32 %86, %94
	%96 = load i32*, i32** @rk, align 4
	%97 = load i32, i32* %5, align 4
	%98 = mul i32 %97, 4
	%99 = add i32 %98, 4
	%100 = bitcast i32* %96 to i8*
	%101 = getelementptr i8, i8* %100, i32 %99
	%102 = bitcast i8* %101 to i32*
	%103 = load i32, i32* %102, align 4
	store i32 %95, i32* %102, align 4
	br label %104

;Converge block in union selectCount 1
104:
	store i8 1, i8* %3, align 1
	br label %105

105:
	%106 = load i8, i8* %3, align 1
	ret i8 %106
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca %struct.Edge*, align 4
	%4 = alloca i32, align 4
	%5 = alloca %struct.Edge*, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%6 = call i32 @getInt()
	%7 = load i32, i32* @n, align 4
	store i32 %6, i32* @n, align 4
	%8 = call i32 @getInt()
	%9 = load i32, i32* @m, align 4
	store i32 %8, i32* @m, align 4
	%10 = load i32, i32* @m, align 4
	%11 = mul i32 %10, 4
	%12 = add i32 %11, 4
	%13 = call i8* @myNew(i32 %12)
	%14 = bitcast i8* %13 to i32*
	store i32 %10, i32* %14, align 4
	%15 = bitcast i8* %13 to %struct.Edge**
	%16 = load %struct.Edge**, %struct.Edge*** @e, align 4
	store %struct.Edge** %15, %struct.Edge*** @e, align 4
	%17 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %18

;loop check block main loopDepth 1 iterCount 0
18:
	%19 = load i32, i32* %2, align 4
	%20 = load i32, i32* @m, align 4
	%21 = icmp slt i32 %19, %20
	br i1 %21, label %22, label %49

;loop body main loopDepth 1 iterCount 0
22:
	%23 = call i8* @myNew(i32 12)
	%24 = bitcast i8* %23 to %struct.Edge*
	store %struct.Edge* %24, %struct.Edge** %3, align 4
	%25 = call i32 @getInt()
	%26 = load %struct.Edge*, %struct.Edge** %3, align 4
	%27 = getelementptr %struct.Edge, %struct.Edge* %26, i32 0, i32 0
	%28 = load i32, i32* %27, align 4
	store i32 %25, i32* %27, align 4
	%29 = call i32 @getInt()
	%30 = load %struct.Edge*, %struct.Edge** %3, align 4
	%31 = getelementptr %struct.Edge, %struct.Edge* %30, i32 0, i32 1
	%32 = load i32, i32* %31, align 4
	store i32 %29, i32* %31, align 4
	%33 = call i32 @getInt()
	%34 = load %struct.Edge*, %struct.Edge** %3, align 4
	%35 = getelementptr %struct.Edge, %struct.Edge* %34, i32 0, i32 2
	%36 = load i32, i32* %35, align 4
	store i32 %33, i32* %35, align 4
	%37 = load %struct.Edge*, %struct.Edge** %3, align 4
	%38 = load %struct.Edge**, %struct.Edge*** @e, align 4
	%39 = load i32, i32* %2, align 4
	%40 = mul i32 %39, 4
	%41 = add i32 %40, 4
	%42 = bitcast %struct.Edge** %38 to i8*
	%43 = getelementptr i8, i8* %42, i32 %41
	%44 = bitcast i8* %43 to %struct.Edge**
	%45 = load %struct.Edge*, %struct.Edge** %44, align 4
	store %struct.Edge* %37, %struct.Edge** %44, align 4
	br label %46

;loop increase block main loopDepth 1 iterCount 0
46:
	%47 = load i32, i32* %2, align 4
	%48 = add i32 %47, 1
	store i32 %48, i32* %2, align 4
	br label %18

;loop exit block main loopDepth 1 iterCount 0
49:
	%50 = load %struct.Edge**, %struct.Edge*** @e, align 4
	%51 = load i32, i32* @m, align 4
	%52 = sub i32 %51, 1
	call void @qsort(%struct.Edge** %50, i32 0, i32 %52)
	call void @init()
	%53 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	store i32 0, i32* %4, align 4
	br label %54

;loop check block main loopDepth 1 iterCount 1
54:
	%55 = load i32, i32* %2, align 4
	%56 = load i32, i32* @n, align 4
	%57 = sub i32 %56, 1
	%58 = icmp slt i32 %55, %57
	br i1 %58, label %59, label %94

;loop body main loopDepth 1 iterCount 1
59:
	%60 = load i32, i32* %4, align 4
	%61 = load i32, i32* @m, align 4
	%62 = icmp sge i32 %60, %61
	br i1 %62, label %63, label %65

;True block in main selectCount 0
63:
	%64 = sub i32 0, 1
	call void @printInt(i32 %64)
	store i32 0, i32* %1, align 4
	br label %110

;Converge block in main selectCount 0
65:
	%66 = load %struct.Edge**, %struct.Edge*** @e, align 4
	%67 = load i32, i32* %4, align 4
	%68 = mul i32 %67, 4
	%69 = add i32 %68, 4
	%70 = bitcast %struct.Edge** %66 to i8*
	%71 = getelementptr i8, i8* %70, i32 %69
	%72 = bitcast i8* %71 to %struct.Edge**
	%73 = load %struct.Edge*, %struct.Edge** %72, align 4
	store %struct.Edge* %73, %struct.Edge** %5, align 4
	%74 = load i32, i32* %4, align 4
	%75 = add i32 %74, 1
	store i32 %75, i32* %4, align 4
	%76 = load %struct.Edge*, %struct.Edge** %5, align 4
	%77 = getelementptr %struct.Edge, %struct.Edge* %76, i32 0, i32 0
	%78 = load i32, i32* %77, align 4
	%79 = load %struct.Edge*, %struct.Edge** %5, align 4
	%80 = getelementptr %struct.Edge, %struct.Edge* %79, i32 0, i32 1
	%81 = load i32, i32* %80, align 4
	%82 = call i8 @union(i32 %78, i32 %81)
	%83 = trunc i8 %82 to i1
	br i1 %83, label %84, label %93

;True block in main selectCount 1
84:
	%85 = load i32, i32* %2, align 4
	%86 = add i32 %85, 1
	store i32 %86, i32* %2, align 4
	%87 = load i32, i32* @ans, align 4
	%88 = load %struct.Edge*, %struct.Edge** %5, align 4
	%89 = getelementptr %struct.Edge, %struct.Edge* %88, i32 0, i32 2
	%90 = load i32, i32* %89, align 4
	%91 = add i32 %87, %90
	%92 = load i32, i32* @ans, align 4
	store i32 %91, i32* @ans, align 4
	br label %93

;Converge block in main selectCount 1
93:
	br label %54

;loop exit block main loopDepth 1 iterCount 1
94:
	%95 = load i32*, i32** @rk, align 4
	%96 = call i32 @find(i32 1)
	%97 = mul i32 %96, 4
	%98 = add i32 %97, 4
	%99 = bitcast i32* %95 to i8*
	%100 = getelementptr i8, i8* %99, i32 %98
	%101 = bitcast i8* %100 to i32*
	%102 = load i32, i32* %101, align 4
	%103 = load i32, i32* @n, align 4
	%104 = icmp eq i32 %102, %103
	br i1 %104, label %105, label %107

;True block in main selectCount 2
105:
	%106 = load i32, i32* @ans, align 4
	call void @printInt(i32 %106)
	br label %109

;False block in main selectCount 2
107:
	%108 = sub i32 0, 1
	call void @printInt(i32 %108)
	br label %109

;Converge block in main selectCount 2
109:
	store i32 0, i32* %1, align 4
	br label %110

110:
	%111 = load i32, i32* %1, align 4
	ret i32 %111
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

