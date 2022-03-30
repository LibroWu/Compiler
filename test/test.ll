%struct.string = type { i32, i8* }

@N = global i32 0, align 4
@M = global i32 0, align 4
@i = global i32 0, align 4
@j = global i32 0, align 4
@primeCount = global i32 0, align 4
@resultCount = global i32 0, align 4
@b = global i32* null, align 4
@prime = global i32* null, align 4
@gps = global i32* null, align 4
@tmp = global i32* null, align 4
@result = global i32** null, align 4

@.libro.str = constant [2 x i8] c" \00", align 1
@.libro.str.1 = constant [2 x i8] c"\0A\00", align 1
@.libro.str.2 = constant [8 x i8] c"Total: \00", align 1

define void @_global_var_init.0(){
;0 0
	%1 = call i8* @myNew(i32 4008)
	%2 = bitcast i8* %1 to i32*
	store i32 1001, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @b, align 4
	ret void
}

define void @_global_var_init.1(){
;0 0
	%1 = call i8* @myNew(i32 684)
	%2 = bitcast i8* %1 to i32*
	store i32 170, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @prime, align 4
	ret void
}

define void @_global_var_init.2(){
;0 0
	%1 = call i8* @myNew(i32 4008)
	%2 = bitcast i8* %1 to i32*
	store i32 1001, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @gps, align 4
	ret void
}

define void @_global_var_init.3(){
;0 0
	%1 = call i8* @myNew(i32 8)
	%2 = bitcast i8* %1 to i32*
	store i32 1, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @tmp, align 4
	ret void
}

define void @origin(i32 %0){
;1 1
	%2 = mul i32 %0, 4
	%3 = add i32 %2, 4
	%4 = call i8* @myNew(i32 %3)
	%5 = bitcast i8* %4 to i32*
	store i32 %0, i32* %5, align 4
	%6 = bitcast i8* %4 to i32**
	%7 = load i32**, i32*** @result, align 4
	store i32** %6, i32*** @result, align 4
	%8 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %9

;loop check block origin loopDepth 1 iterCount 0
9:
;9 1
	%10 = load i32, i32* @i, align 4
	%11 = icmp slt i32 %10, %0
	br i1 %11, label %12, label %53

;loop body origin loopDepth 1 iterCount 0
12:
;12 9
	%13 = mul i32 %0, 4
	%14 = add i32 %13, 4
	%15 = call i8* @myNew(i32 %14)
	%16 = bitcast i8* %15 to i32*
	store i32 %0, i32* %16, align 4
	%17 = bitcast i8* %15 to i32*
	%18 = load i32**, i32*** @result, align 4
	%19 = load i32, i32* @i, align 4
	%20 = mul i32 %19, 4
	%21 = add i32 %20, 4
	%22 = bitcast i32** %18 to i8*
	%23 = getelementptr i8, i8* %22, i32 %21
	%24 = bitcast i8* %23 to i32**
	%25 = load i32*, i32** %24, align 4
	store i32* %17, i32** %24, align 4
	%26 = load i32, i32* @j, align 4
	store i32 0, i32* @j, align 4
	br label %27

;loop check block origin loopDepth 2 iterCount 0
27:
;27 12
	%28 = load i32, i32* @j, align 4
	%29 = icmp slt i32 %28, %0
	br i1 %29, label %30, label %49

;loop body origin loopDepth 2 iterCount 0
30:
;30 27
	%31 = load i32**, i32*** @result, align 4
	%32 = load i32, i32* @i, align 4
	%33 = mul i32 %32, 4
	%34 = add i32 %33, 4
	%35 = bitcast i32** %31 to i8*
	%36 = getelementptr i8, i8* %35, i32 %34
	%37 = bitcast i8* %36 to i32**
	%38 = load i32*, i32** %37, align 4
	%39 = load i32, i32* @j, align 4
	%40 = mul i32 %39, 4
	%41 = add i32 %40, 4
	%42 = bitcast i32* %38 to i8*
	%43 = getelementptr i8, i8* %42, i32 %41
	%44 = bitcast i8* %43 to i32*
	%45 = load i32, i32* %44, align 4
	store i32 0, i32* %44, align 4
	br label %46

;loop increase block origin loopDepth 2 iterCount 0
46:
;46 30
	%47 = load i32, i32* @j, align 4
	%48 = add i32 %47, 1
	store i32 %48, i32* @j, align 4
	br label %27

;loop exit block origin loopDepth 2 iterCount 0
49:
;49 27
	br label %50

;loop increase block origin loopDepth 1 iterCount 0
50:
;50 49
	%51 = load i32, i32* @i, align 4
	%52 = add i32 %51, 1
	store i32 %52, i32* @i, align 4
	br label %9

;loop exit block origin loopDepth 1 iterCount 0
53:
;53 9
	br label %54

54:
;54 53
	ret void
}

define void @getPrime(i32 %0){
;1 1
	br label %2

;loop check block getPrime loopDepth 1 iterCount 0
2:
;2 1
	%3 = phi i32 [ 2, %1 ], [ %76, %75 ]
	%4 = phi i32 [ 2, %1 ], [ 2, %75 ]
	%5 = icmp sle i32 %3, %0
	br i1 %5, label %6, label %77

;loop body getPrime loopDepth 1 iterCount 0
6:
;6 2
	%7 = load i32*, i32** @b, align 4
	%8 = mul i32 %3, 4
	%9 = add i32 %8, 4
	%10 = bitcast i32* %7 to i8*
	%11 = getelementptr i8, i8* %10, i32 %9
	%12 = bitcast i8* %11 to i32*
	%13 = load i32, i32* %12, align 4
	%14 = icmp eq i32 %13, 1
	br i1 %14, label %15, label %59

;True block in getPrime selectCount 0
15:
;15 6
	%16 = load i32*, i32** @tmp, align 4
	%17 = mul i32 0, 4
	%18 = add i32 %17, 4
	%19 = bitcast i32* %16 to i8*
	%20 = getelementptr i8, i8* %19, i32 %18
	%21 = bitcast i8* %20 to i32*
	%22 = load i32, i32* %21, align 4
	%23 = add i32 %22, 1
	%24 = load i32*, i32** @tmp, align 4
	%25 = mul i32 0, 4
	%26 = add i32 %25, 4
	%27 = bitcast i32* %24 to i8*
	%28 = getelementptr i8, i8* %27, i32 %26
	%29 = bitcast i8* %28 to i32*
	%30 = load i32, i32* %29, align 4
	store i32 %23, i32* %29, align 4
	%31 = load i32*, i32** @prime, align 4
	%32 = load i32*, i32** @tmp, align 4
	%33 = mul i32 0, 4
	%34 = add i32 %33, 4
	%35 = bitcast i32* %32 to i8*
	%36 = getelementptr i8, i8* %35, i32 %34
	%37 = bitcast i8* %36 to i32*
	%38 = load i32, i32* %37, align 4
	%39 = mul i32 %38, 4
	%40 = add i32 %39, 4
	%41 = bitcast i32* %31 to i8*
	%42 = getelementptr i8, i8* %41, i32 %40
	%43 = bitcast i8* %42 to i32*
	%44 = load i32, i32* %43, align 4
	store i32 %3, i32* %43, align 4
	%45 = load i32*, i32** @tmp, align 4
	%46 = mul i32 0, 4
	%47 = add i32 %46, 4
	%48 = bitcast i32* %45 to i8*
	%49 = getelementptr i8, i8* %48, i32 %47
	%50 = bitcast i8* %49 to i32*
	%51 = load i32, i32* %50, align 4
	%52 = load i32*, i32** @gps, align 4
	%53 = mul i32 %3, 4
	%54 = add i32 %53, 4
	%55 = bitcast i32* %52 to i8*
	%56 = getelementptr i8, i8* %55, i32 %54
	%57 = bitcast i8* %56 to i32*
	%58 = load i32, i32* %57, align 4
	store i32 %51, i32* %57, align 4
	br label %59

;Converge block in getPrime selectCount 0
59:
;59 6
	br label %60

;loop check block getPrime loopDepth 2 iterCount 0
60:
;60 59
	%61 = phi i32 [ %4, %59 ], [ %73, %64 ]
	%62 = mul i32 %3, %61
	%63 = icmp sle i32 %62, %0
	br i1 %63, label %64, label %74

;loop body getPrime loopDepth 2 iterCount 0
64:
;64 60
	%65 = load i32*, i32** @b, align 4
	%66 = mul i32 %3, %61
	%67 = mul i32 %66, 4
	%68 = add i32 %67, 4
	%69 = bitcast i32* %65 to i8*
	%70 = getelementptr i8, i8* %69, i32 %68
	%71 = bitcast i8* %70 to i32*
	%72 = load i32, i32* %71, align 4
	store i32 0, i32* %71, align 4
	%73 = add i32 %61, 1
	br label %60

;loop exit block getPrime loopDepth 2 iterCount 0
74:
;74 60
	br label %75

;loop increase block getPrime loopDepth 1 iterCount 0
75:
;75 74
	%76 = add i32 %3, 1
	br label %2

;loop exit block getPrime loopDepth 1 iterCount 0
77:
;77 2
	br label %78

78:
;78 77
	ret void
}

define i32 @getResult(i32 %0,i32 %1,i32 %2){
;3 3
	%4 = load i32**, i32*** @result, align 4
	%5 = mul i32 %1, 4
	%6 = add i32 %5, 4
	%7 = bitcast i32** %4 to i8*
	%8 = getelementptr i8, i8* %7, i32 %6
	%9 = bitcast i8* %8 to i32**
	%10 = load i32*, i32** %9, align 4
	%11 = mul i32 %2, 4
	%12 = add i32 %11, 4
	%13 = bitcast i32* %10 to i8*
	%14 = getelementptr i8, i8* %13, i32 %12
	%15 = bitcast i8* %14 to i32*
	%16 = load i32, i32* %15, align 4
	%17 = sub i32 0, 1
	%18 = icmp eq i32 %16, %17
	br i1 %18, label %19, label %103

;True block in getResult selectCount 0
19:
;19 3
	%20 = load i32*, i32** @prime, align 4
	%21 = mul i32 %2, 4
	%22 = add i32 %21, 4
	%23 = bitcast i32* %20 to i8*
	%24 = getelementptr i8, i8* %23, i32 %22
	%25 = bitcast i8* %24 to i32*
	%26 = load i32, i32* %25, align 4
	%27 = mul i32 %26, 2
	%28 = load i32*, i32** @prime, align 4
	%29 = mul i32 %1, 4
	%30 = add i32 %29, 4
	%31 = bitcast i32* %28 to i8*
	%32 = getelementptr i8, i8* %31, i32 %30
	%33 = bitcast i8* %32 to i32*
	%34 = load i32, i32* %33, align 4
	%35 = sub i32 %27, %34
	%36 = icmp sle i32 %35, %0
	br i1 %36, label %37, label %102

;True block in getResult selectCount 0
37:
;37 19
	%38 = load i32*, i32** @b, align 4
	%39 = load i32*, i32** @prime, align 4
	%40 = mul i32 %2, 4
	%41 = add i32 %40, 4
	%42 = bitcast i32* %39 to i8*
	%43 = getelementptr i8, i8* %42, i32 %41
	%44 = bitcast i8* %43 to i32*
	%45 = load i32, i32* %44, align 4
	%46 = mul i32 %45, 2
	%47 = load i32*, i32** @prime, align 4
	%48 = mul i32 %1, 4
	%49 = add i32 %48, 4
	%50 = bitcast i32* %47 to i8*
	%51 = getelementptr i8, i8* %50, i32 %49
	%52 = bitcast i8* %51 to i32*
	%53 = load i32, i32* %52, align 4
	%54 = sub i32 %46, %53
	%55 = mul i32 %54, 4
	%56 = add i32 %55, 4
	%57 = bitcast i32* %38 to i8*
	%58 = getelementptr i8, i8* %57, i32 %56
	%59 = bitcast i8* %58 to i32*
	%60 = load i32, i32* %59, align 4
	%61 = icmp ne i32 %60, 0
	br i1 %61, label %62, label %101

;True block in getResult selectCount 0
62:
;62 37
	%63 = load i32*, i32** @gps, align 4
	%64 = load i32*, i32** @prime, align 4
	%65 = mul i32 %2, 4
	%66 = add i32 %65, 4
	%67 = bitcast i32* %64 to i8*
	%68 = getelementptr i8, i8* %67, i32 %66
	%69 = bitcast i8* %68 to i32*
	%70 = load i32, i32* %69, align 4
	%71 = mul i32 %70, 2
	%72 = load i32*, i32** @prime, align 4
	%73 = mul i32 %1, 4
	%74 = add i32 %73, 4
	%75 = bitcast i32* %72 to i8*
	%76 = getelementptr i8, i8* %75, i32 %74
	%77 = bitcast i8* %76 to i32*
	%78 = load i32, i32* %77, align 4
	%79 = sub i32 %71, %78
	%80 = mul i32 %79, 4
	%81 = add i32 %80, 4
	%82 = bitcast i32* %63 to i8*
	%83 = getelementptr i8, i8* %82, i32 %81
	%84 = bitcast i8* %83 to i32*
	%85 = load i32, i32* %84, align 4
	%86 = call i32 @getResult(i32 %0, i32 %2, i32 %85)
	%87 = add i32 %86, 1
	%88 = load i32**, i32*** @result, align 4
	%89 = mul i32 %1, 4
	%90 = add i32 %89, 4
	%91 = bitcast i32** %88 to i8*
	%92 = getelementptr i8, i8* %91, i32 %90
	%93 = bitcast i8* %92 to i32**
	%94 = load i32*, i32** %93, align 4
	%95 = mul i32 %2, 4
	%96 = add i32 %95, 4
	%97 = bitcast i32* %94 to i8*
	%98 = getelementptr i8, i8* %97, i32 %96
	%99 = bitcast i8* %98 to i32*
	%100 = load i32, i32* %99, align 4
	store i32 %87, i32* %99, align 4
	br label %101

;Converge block in getResult selectCount 0
101:
;101 37
	br label %102

;Converge block in getResult selectCount 0
102:
;102 19
	br label %103

;Converge block in getResult selectCount 0
103:
;103 3
	%104 = load i32**, i32*** @result, align 4
	%105 = mul i32 %1, 4
	%106 = add i32 %105, 4
	%107 = bitcast i32** %104 to i8*
	%108 = getelementptr i8, i8* %107, i32 %106
	%109 = bitcast i8* %108 to i32**
	%110 = load i32*, i32** %109, align 4
	%111 = mul i32 %2, 4
	%112 = add i32 %111, 4
	%113 = bitcast i32* %110 to i8*
	%114 = getelementptr i8, i8* %113, i32 %112
	%115 = bitcast i8* %114 to i32*
	%116 = load i32, i32* %115, align 4
	%117 = sub i32 0, 1
	%118 = icmp eq i32 %116, %117
	br i1 %118, label %119, label %133

;True block in getResult selectCount 3
119:
;119 103
	%120 = load i32**, i32*** @result, align 4
	%121 = mul i32 %1, 4
	%122 = add i32 %121, 4
	%123 = bitcast i32** %120 to i8*
	%124 = getelementptr i8, i8* %123, i32 %122
	%125 = bitcast i8* %124 to i32**
	%126 = load i32*, i32** %125, align 4
	%127 = mul i32 %2, 4
	%128 = add i32 %127, 4
	%129 = bitcast i32* %126 to i8*
	%130 = getelementptr i8, i8* %129, i32 %128
	%131 = bitcast i8* %130 to i32*
	%132 = load i32, i32* %131, align 4
	store i32 1, i32* %131, align 4
	br label %133

;Converge block in getResult selectCount 3
133:
;133 103
	%134 = load i32**, i32*** @result, align 4
	%135 = mul i32 %1, 4
	%136 = add i32 %135, 4
	%137 = bitcast i32** %134 to i8*
	%138 = getelementptr i8, i8* %137, i32 %136
	%139 = bitcast i8* %138 to i32**
	%140 = load i32*, i32** %139, align 4
	%141 = mul i32 %2, 4
	%142 = add i32 %141, 4
	%143 = bitcast i32* %140 to i8*
	%144 = getelementptr i8, i8* %143, i32 %142
	%145 = bitcast i8* %144 to i32*
	%146 = load i32, i32* %145, align 4
	br label %147

147:
;147 133
	ret i32 %146
}

define void @printF(i32 %0,i32 %1,i32 %2){
;3 3
	%4 = call %struct.string* @toString(i32 %0)
	%5 = getelementptr %struct.string, %struct.string* %4, i32 0, i32 1
	%6 = load i8*, i8** %5, align 4
	call void @print(i8* %6)
	br label %7

;loop check block printF loopDepth 1 iterCount 0
7:
;7 3
	%8 = phi i32 [ %2, %3 ], [ %21, %12 ]
	%9 = phi i32 [ %1, %3 ], [ %18, %12 ]
	%10 = phi i32 [ %0, %3 ], [ %20, %12 ]
	%11 = icmp sgt i32 %8, 0
	br i1 %11, label %12, label %22

;loop body printF loopDepth 1 iterCount 0
12:
;12 7
	%13 = bitcast [2 x i8]* @.libro.str to i8*
	call void @print(i8* %13)
	%14 = call %struct.string* @toString(i32 %9)
	%15 = getelementptr %struct.string, %struct.string* %14, i32 0, i32 1
	%16 = load i8*, i8** %15, align 4
	call void @print(i8* %16)
	%17 = mul i32 %9, 2
	%18 = sub i32 %17, %10
	%19 = add i32 %10, %18
	%20 = sdiv i32 %19, 2
	%21 = sub i32 %8, 1
	br label %7

;loop exit block printF loopDepth 1 iterCount 0
22:
;22 7
	%23 = bitcast [2 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %23)
	br label %24

24:
;24 22
	ret void
}

define i32 @main(){
;0 0
	call void @_GLOBAL_()
	call void @origin(i32 170)
	%1 = load i32, i32* @N, align 4
	store i32 1000, i32* @N, align 4
	%2 = call i32 @getInt()
	%3 = load i32, i32* @M, align 4
	store i32 %2, i32* @M, align 4
	%4 = load i32, i32* @primeCount, align 4
	store i32 0, i32* @primeCount, align 4
	%5 = load i32, i32* @resultCount, align 4
	store i32 0, i32* @resultCount, align 4
	%6 = load i32*, i32** @tmp, align 4
	%7 = mul i32 0, 4
	%8 = add i32 %7, 4
	%9 = bitcast i32* %6 to i8*
	%10 = getelementptr i8, i8* %9, i32 %8
	%11 = bitcast i8* %10 to i32*
	%12 = load i32, i32* %11, align 4
	store i32 0, i32* %11, align 4
	%13 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %14

;loop check block main loopDepth 1 iterCount 0
14:
;14 0
	%15 = load i32, i32* @i, align 4
	%16 = load i32, i32* @N, align 4
	%17 = add i32 %16, 1
	%18 = icmp slt i32 %15, %17
	br i1 %18, label %19, label %40

;loop body main loopDepth 1 iterCount 0
19:
;19 14
	%20 = load i32*, i32** @b, align 4
	%21 = load i32, i32* @i, align 4
	%22 = mul i32 %21, 4
	%23 = add i32 %22, 4
	%24 = bitcast i32* %20 to i8*
	%25 = getelementptr i8, i8* %24, i32 %23
	%26 = bitcast i8* %25 to i32*
	%27 = load i32, i32* %26, align 4
	store i32 1, i32* %26, align 4
	%28 = load i32*, i32** @gps, align 4
	%29 = load i32, i32* @i, align 4
	%30 = mul i32 %29, 4
	%31 = add i32 %30, 4
	%32 = bitcast i32* %28 to i8*
	%33 = getelementptr i8, i8* %32, i32 %31
	%34 = bitcast i8* %33 to i32*
	%35 = load i32, i32* %34, align 4
	store i32 0, i32* %34, align 4
	br label %36

;loop increase block main loopDepth 1 iterCount 0
36:
;36 19
	%37 = load i32, i32* @i, align 4
	%38 = add i32 %37, 1
	%39 = load i32, i32* @i, align 4
	store i32 %38, i32* @i, align 4
	br label %14

;loop exit block main loopDepth 1 iterCount 0
40:
;40 14
	%41 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %42

;loop check block main loopDepth 1 iterCount 1
42:
;42 40
	%43 = load i32, i32* @i, align 4
	%44 = load i32, i32* @M, align 4
	%45 = add i32 %44, 1
	%46 = icmp slt i32 %43, %45
	br i1 %46, label %47, label %60

;loop body main loopDepth 1 iterCount 1
47:
;47 42
	%48 = load i32*, i32** @prime, align 4
	%49 = load i32, i32* @i, align 4
	%50 = mul i32 %49, 4
	%51 = add i32 %50, 4
	%52 = bitcast i32* %48 to i8*
	%53 = getelementptr i8, i8* %52, i32 %51
	%54 = bitcast i8* %53 to i32*
	%55 = load i32, i32* %54, align 4
	store i32 0, i32* %54, align 4
	br label %56

;loop increase block main loopDepth 1 iterCount 1
56:
;56 47
	%57 = load i32, i32* @i, align 4
	%58 = add i32 %57, 1
	%59 = load i32, i32* @i, align 4
	store i32 %58, i32* @i, align 4
	br label %42

;loop exit block main loopDepth 1 iterCount 1
60:
;60 42
	%61 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %62

;loop check block main loopDepth 1 iterCount 2
62:
;62 60
	%63 = load i32, i32* @i, align 4
	%64 = load i32, i32* @M, align 4
	%65 = icmp sle i32 %63, %64
	br i1 %65, label %66, label %98

;loop body main loopDepth 1 iterCount 2
66:
;66 62
	%67 = load i32, i32* @j, align 4
	store i32 0, i32* @j, align 4
	br label %68

;loop check block main loopDepth 2 iterCount 2
68:
;68 66
	%69 = load i32, i32* @j, align 4
	%70 = load i32, i32* @M, align 4
	%71 = icmp sle i32 %69, %70
	br i1 %71, label %72, label %93

;loop body main loopDepth 2 iterCount 2
72:
;72 68
	%73 = sub i32 0, 1
	%74 = load i32**, i32*** @result, align 4
	%75 = load i32, i32* @i, align 4
	%76 = mul i32 %75, 4
	%77 = add i32 %76, 4
	%78 = bitcast i32** %74 to i8*
	%79 = getelementptr i8, i8* %78, i32 %77
	%80 = bitcast i8* %79 to i32**
	%81 = load i32*, i32** %80, align 4
	%82 = load i32, i32* @j, align 4
	%83 = mul i32 %82, 4
	%84 = add i32 %83, 4
	%85 = bitcast i32* %81 to i8*
	%86 = getelementptr i8, i8* %85, i32 %84
	%87 = bitcast i8* %86 to i32*
	%88 = load i32, i32* %87, align 4
	store i32 %73, i32* %87, align 4
	br label %89

;loop increase block main loopDepth 2 iterCount 2
89:
;89 72
	%90 = load i32, i32* @j, align 4
	%91 = add i32 %90, 1
	%92 = load i32, i32* @j, align 4
	store i32 %91, i32* @j, align 4
	br label %68

;loop exit block main loopDepth 2 iterCount 2
93:
;93 68
	br label %94

;loop increase block main loopDepth 1 iterCount 2
94:
;94 93
	%95 = load i32, i32* @i, align 4
	%96 = add i32 %95, 1
	%97 = load i32, i32* @i, align 4
	store i32 %96, i32* @i, align 4
	br label %62

;loop exit block main loopDepth 1 iterCount 2
98:
;98 62
	%99 = load i32, i32* @N, align 4
	call void @getPrime(i32 %99)
	%100 = load i32*, i32** @tmp, align 4
	%101 = mul i32 0, 4
	%102 = add i32 %101, 4
	%103 = bitcast i32* %100 to i8*
	%104 = getelementptr i8, i8* %103, i32 %102
	%105 = bitcast i8* %104 to i32*
	%106 = load i32, i32* %105, align 4
	%107 = load i32, i32* @primeCount, align 4
	store i32 %106, i32* @primeCount, align 4
	%108 = load i32, i32* @i, align 4
	store i32 1, i32* @i, align 4
	br label %109

;loop check block main loopDepth 1 iterCount 4
109:
;109 98
	%110 = load i32, i32* @i, align 4
	%111 = load i32, i32* @primeCount, align 4
	%112 = icmp slt i32 %110, %111
	br i1 %112, label %113, label %221

;loop body main loopDepth 1 iterCount 4
113:
;113 109
	%114 = load i32, i32* @i, align 4
	%115 = add i32 %114, 1
	%116 = load i32, i32* @j, align 4
	store i32 %115, i32* @j, align 4
	br label %117

;loop check block main loopDepth 2 iterCount 4
117:
;117 113
	%118 = load i32, i32* @j, align 4
	%119 = load i32, i32* @primeCount, align 4
	%120 = icmp sle i32 %118, %119
	br i1 %120, label %121, label %216

;loop body main loopDepth 2 iterCount 4
121:
;121 117
	%122 = load i32**, i32*** @result, align 4
	%123 = load i32, i32* @i, align 4
	%124 = mul i32 %123, 4
	%125 = add i32 %124, 4
	%126 = bitcast i32** %122 to i8*
	%127 = getelementptr i8, i8* %126, i32 %125
	%128 = bitcast i8* %127 to i32**
	%129 = load i32*, i32** %128, align 4
	%130 = load i32, i32* @j, align 4
	%131 = mul i32 %130, 4
	%132 = add i32 %131, 4
	%133 = bitcast i32* %129 to i8*
	%134 = getelementptr i8, i8* %133, i32 %132
	%135 = bitcast i8* %134 to i32*
	%136 = load i32, i32* %135, align 4
	%137 = sub i32 0, 1
	%138 = icmp eq i32 %136, %137
	br i1 %138, label %139, label %211

;True block in main selectCount 0
139:
;139 121
	%140 = load i32, i32* @N, align 4
	%141 = load i32, i32* @i, align 4
	%142 = load i32, i32* @j, align 4
	%143 = call i32 @getResult(i32 %140, i32 %141, i32 %142)
	%144 = load i32**, i32*** @result, align 4
	%145 = load i32, i32* @i, align 4
	%146 = mul i32 %145, 4
	%147 = add i32 %146, 4
	%148 = bitcast i32** %144 to i8*
	%149 = getelementptr i8, i8* %148, i32 %147
	%150 = bitcast i8* %149 to i32**
	%151 = load i32*, i32** %150, align 4
	%152 = load i32, i32* @j, align 4
	%153 = mul i32 %152, 4
	%154 = add i32 %153, 4
	%155 = bitcast i32* %151 to i8*
	%156 = getelementptr i8, i8* %155, i32 %154
	%157 = bitcast i8* %156 to i32*
	%158 = load i32, i32* %157, align 4
	store i32 %143, i32* %157, align 4
	%159 = load i32**, i32*** @result, align 4
	%160 = load i32, i32* @i, align 4
	%161 = mul i32 %160, 4
	%162 = add i32 %161, 4
	%163 = bitcast i32** %159 to i8*
	%164 = getelementptr i8, i8* %163, i32 %162
	%165 = bitcast i8* %164 to i32**
	%166 = load i32*, i32** %165, align 4
	%167 = load i32, i32* @j, align 4
	%168 = mul i32 %167, 4
	%169 = add i32 %168, 4
	%170 = bitcast i32* %166 to i8*
	%171 = getelementptr i8, i8* %170, i32 %169
	%172 = bitcast i8* %171 to i32*
	%173 = load i32, i32* %172, align 4
	%174 = icmp sgt i32 %173, 1
	br i1 %174, label %175, label %210

;True block in main selectCount 0
175:
;175 139
	%176 = load i32*, i32** @prime, align 4
	%177 = load i32, i32* @i, align 4
	%178 = mul i32 %177, 4
	%179 = add i32 %178, 4
	%180 = bitcast i32* %176 to i8*
	%181 = getelementptr i8, i8* %180, i32 %179
	%182 = bitcast i8* %181 to i32*
	%183 = load i32, i32* %182, align 4
	%184 = load i32*, i32** @prime, align 4
	%185 = load i32, i32* @j, align 4
	%186 = mul i32 %185, 4
	%187 = add i32 %186, 4
	%188 = bitcast i32* %184 to i8*
	%189 = getelementptr i8, i8* %188, i32 %187
	%190 = bitcast i8* %189 to i32*
	%191 = load i32, i32* %190, align 4
	%192 = load i32**, i32*** @result, align 4
	%193 = load i32, i32* @i, align 4
	%194 = mul i32 %193, 4
	%195 = add i32 %194, 4
	%196 = bitcast i32** %192 to i8*
	%197 = getelementptr i8, i8* %196, i32 %195
	%198 = bitcast i8* %197 to i32**
	%199 = load i32*, i32** %198, align 4
	%200 = load i32, i32* @j, align 4
	%201 = mul i32 %200, 4
	%202 = add i32 %201, 4
	%203 = bitcast i32* %199 to i8*
	%204 = getelementptr i8, i8* %203, i32 %202
	%205 = bitcast i8* %204 to i32*
	%206 = load i32, i32* %205, align 4
	call void @printF(i32 %183, i32 %191, i32 %206)
	%207 = load i32, i32* @resultCount, align 4
	%208 = add i32 %207, 1
	%209 = load i32, i32* @resultCount, align 4
	store i32 %208, i32* @resultCount, align 4
	br label %210

;Converge block in main selectCount 0
210:
;210 139
	br label %211

;Converge block in main selectCount 0
211:
;211 121
	br label %212

;loop increase block main loopDepth 2 iterCount 4
212:
;212 211
	%213 = load i32, i32* @j, align 4
	%214 = add i32 %213, 1
	%215 = load i32, i32* @j, align 4
	store i32 %214, i32* @j, align 4
	br label %117

;loop exit block main loopDepth 2 iterCount 4
216:
;216 117
	br label %217

;loop increase block main loopDepth 1 iterCount 4
217:
;217 216
	%218 = load i32, i32* @i, align 4
	%219 = add i32 %218, 1
	%220 = load i32, i32* @i, align 4
	store i32 %219, i32* @i, align 4
	br label %109

;loop exit block main loopDepth 1 iterCount 4
221:
;221 109
	%222 = bitcast [8 x i8]* @.libro.str.2 to i8*
	call void @print(i8* %222)
	%223 = load i32, i32* @resultCount, align 4
	%224 = call %struct.string* @toString(i32 %223)
	%225 = getelementptr %struct.string, %struct.string* %224, i32 0, i32 1
	%226 = load i8*, i8** %225, align 4
	call void @println(i8* %226)
	br label %227

227:
;227 221
	ret i32 0
}

define void @_GLOBAL_(){
;0 0
	call void @_global_var_init.0()
	call void @_global_var_init.1()
	call void @_global_var_init.2()
	call void @_global_var_init.3()
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

