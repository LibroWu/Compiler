%struct.string = type { i32, i8* }

@c = global i32** null, align 4
@ans = global i32 0, align 4
@visit = global i32* null, align 4
@pre = global i32* null, align 4
@f = global i32* null, align 4
@i = global i32 0, align 4
@j = global i32 0, align 4
@open = global i32 0, align 4
@closed = global i32 0, align 4

define void @_global_var_init.1(){
;0 0
	%1 = call i8* @myNew(i32 444)
	%2 = bitcast i8* %1 to i32*
	store i32 110, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @visit, align 4
	ret void
}

define void @_global_var_init.2(){
;0 0
	%1 = call i8* @myNew(i32 444)
	%2 = bitcast i8* %1 to i32*
	store i32 110, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @pre, align 4
	ret void
}

define void @_global_var_init.3(){
;0 0
	%1 = call i8* @myNew(i32 444)
	%2 = bitcast i8* %1 to i32*
	store i32 110, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @f, align 4
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
	%7 = load i32**, i32*** @c, align 4
	store i32** %6, i32*** @c, align 4
	%8 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %9

;loop check block origin loopDepth 1 iterCount 0
9:
;9 1
	%10 = load i32, i32* @i, align 4
	%11 = icmp slt i32 %10, %0
	br i1 %11, label %12, label %52

;loop body origin loopDepth 1 iterCount 0
12:
;12 9
	%13 = mul i32 %0, 4
	%14 = add i32 %13, 4
	%15 = call i8* @myNew(i32 %14)
	%16 = bitcast i8* %15 to i32*
	store i32 %0, i32* %16, align 4
	%17 = bitcast i8* %15 to i32*
	%18 = load i32**, i32*** @c, align 4
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
	%31 = load i32**, i32*** @c, align 4
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

;loop increase block origin loopDepth 1 iterCount 0
49:
;49 53
	%50 = load i32, i32* @i, align 4
	%51 = add i32 %50, 1
	store i32 %51, i32* @i, align 4
	br label %9

52:
;52 54
	ret void
}

define i32 @build(i32 %0,i32 %1){
;2 2
	%3 = load i32, i32* @i, align 4
	store i32 1, i32* @i, align 4
	br label %4

;loop check block build loopDepth 1 iterCount 0
4:
;4 2
	%5 = load i32, i32* @i, align 4
	%6 = icmp sle i32 %5, 49
	br i1 %6, label %7, label %37

;loop body build loopDepth 1 iterCount 0
7:
;7 4
	%8 = load i32, i32* @j, align 4
	store i32 50, i32* @j, align 4
	br label %9

;loop check block build loopDepth 2 iterCount 0
9:
;9 7
	%10 = load i32, i32* @j, align 4
	%11 = load i32, i32* @i, align 4
	%12 = sub i32 98, %11
	%13 = add i32 %12, 1
	%14 = icmp sle i32 %10, %13
	br i1 %14, label %15, label %34

;loop body build loopDepth 2 iterCount 0
15:
;15 9
	%16 = load i32**, i32*** @c, align 4
	%17 = load i32, i32* @i, align 4
	%18 = mul i32 %17, 4
	%19 = add i32 %18, 4
	%20 = bitcast i32** %16 to i8*
	%21 = getelementptr i8, i8* %20, i32 %19
	%22 = bitcast i8* %21 to i32**
	%23 = load i32*, i32** %22, align 4
	%24 = load i32, i32* @j, align 4
	%25 = mul i32 %24, 4
	%26 = add i32 %25, 4
	%27 = bitcast i32* %23 to i8*
	%28 = getelementptr i8, i8* %27, i32 %26
	%29 = bitcast i8* %28 to i32*
	%30 = load i32, i32* %29, align 4
	store i32 1, i32* %29, align 4
	br label %31

;loop increase block build loopDepth 2 iterCount 0
31:
;31 15
	%32 = load i32, i32* @j, align 4
	%33 = add i32 %32, 1
	store i32 %33, i32* @j, align 4
	br label %9

;loop increase block build loopDepth 1 iterCount 0
34:
;34 84
	%35 = load i32, i32* @i, align 4
	%36 = add i32 %35, 1
	store i32 %36, i32* @i, align 4
	br label %4

;loop exit block build loopDepth 1 iterCount 0
37:
;37 4
	%38 = load i32, i32* @i, align 4
	store i32 1, i32* @i, align 4
	br label %39

;loop check block build loopDepth 1 iterCount 2
39:
;39 37
	%40 = load i32, i32* @i, align 4
	%41 = icmp sle i32 %40, 49
	br i1 %41, label %42, label %60

;loop body build loopDepth 1 iterCount 2
42:
;42 39
	%43 = load i32**, i32*** @c, align 4
	%44 = mul i32 %0, 4
	%45 = add i32 %44, 4
	%46 = bitcast i32** %43 to i8*
	%47 = getelementptr i8, i8* %46, i32 %45
	%48 = bitcast i8* %47 to i32**
	%49 = load i32*, i32** %48, align 4
	%50 = load i32, i32* @i, align 4
	%51 = mul i32 %50, 4
	%52 = add i32 %51, 4
	%53 = bitcast i32* %49 to i8*
	%54 = getelementptr i8, i8* %53, i32 %52
	%55 = bitcast i8* %54 to i32*
	%56 = load i32, i32* %55, align 4
	store i32 1, i32* %55, align 4
	br label %57

;loop increase block build loopDepth 1 iterCount 2
57:
;57 42
	%58 = load i32, i32* @i, align 4
	%59 = add i32 %58, 1
	store i32 %59, i32* @i, align 4
	br label %39

;loop exit block build loopDepth 1 iterCount 2
60:
;60 39
	%61 = load i32, i32* @i, align 4
	store i32 50, i32* @i, align 4
	br label %62

;loop check block build loopDepth 1 iterCount 3
62:
;62 60
	%63 = load i32, i32* @i, align 4
	%64 = icmp sle i32 %63, 98
	br i1 %64, label %65, label %83

;loop body build loopDepth 1 iterCount 3
65:
;65 62
	%66 = load i32**, i32*** @c, align 4
	%67 = load i32, i32* @i, align 4
	%68 = mul i32 %67, 4
	%69 = add i32 %68, 4
	%70 = bitcast i32** %66 to i8*
	%71 = getelementptr i8, i8* %70, i32 %69
	%72 = bitcast i8* %71 to i32**
	%73 = load i32*, i32** %72, align 4
	%74 = mul i32 %1, 4
	%75 = add i32 %74, 4
	%76 = bitcast i32* %73 to i8*
	%77 = getelementptr i8, i8* %76, i32 %75
	%78 = bitcast i8* %77 to i32*
	%79 = load i32, i32* %78, align 4
	store i32 1, i32* %78, align 4
	br label %80

;loop increase block build loopDepth 1 iterCount 3
80:
;80 65
	%81 = load i32, i32* @i, align 4
	%82 = add i32 %81, 1
	store i32 %82, i32* @i, align 4
	br label %62

83:
;83 85
	ret i32 0
}

define i32 @find(i32 %0,i32 %1,i32 %2){
;3 3
	%4 = load i32, i32* @open, align 4
	store i32 0, i32* @open, align 4
	%5 = load i32, i32* @closed, align 4
	store i32 1, i32* @closed, align 4
	%6 = load i32, i32* @i, align 4
	store i32 1, i32* @i, align 4
	br label %7

;loop check block find loopDepth 1 iterCount 0
7:
;7 3
	%8 = load i32, i32* @i, align 4
	%9 = icmp sle i32 %8, %0
	br i1 %9, label %10, label %22

;loop body find loopDepth 1 iterCount 0
10:
;10 7
	%11 = load i32*, i32** @visit, align 4
	%12 = load i32, i32* @i, align 4
	%13 = mul i32 %12, 4
	%14 = add i32 %13, 4
	%15 = bitcast i32* %11 to i8*
	%16 = getelementptr i8, i8* %15, i32 %14
	%17 = bitcast i8* %16 to i32*
	%18 = load i32, i32* %17, align 4
	store i32 0, i32* %17, align 4
	br label %19

;loop increase block find loopDepth 1 iterCount 0
19:
;19 10
	%20 = load i32, i32* @i, align 4
	%21 = add i32 %20, 1
	store i32 %21, i32* @i, align 4
	br label %7

;loop exit block find loopDepth 1 iterCount 0
22:
;22 7
	%23 = load i32*, i32** @f, align 4
	%24 = bitcast i32* %23 to i8*
	%25 = getelementptr i8, i8* %24, i32 8
	%26 = bitcast i8* %25 to i32*
	%27 = load i32, i32* %26, align 4
	store i32 %1, i32* %26, align 4
	%28 = load i32*, i32** @visit, align 4
	%29 = mul i32 %1, 4
	%30 = add i32 %29, 4
	%31 = bitcast i32* %28 to i8*
	%32 = getelementptr i8, i8* %31, i32 %30
	%33 = bitcast i8* %32 to i32*
	%34 = load i32, i32* %33, align 4
	store i32 1, i32* %33, align 4
	%35 = load i32*, i32** @pre, align 4
	%36 = mul i32 %1, 4
	%37 = add i32 %36, 4
	%38 = bitcast i32* %35 to i8*
	%39 = getelementptr i8, i8* %38, i32 %37
	%40 = bitcast i8* %39 to i32*
	%41 = load i32, i32* %40, align 4
	store i32 0, i32* %40, align 4
	br label %42

;loop check block find loopDepth 1 iterCount 1
42:
;42 22
	%43 = phi i32 [ 0, %22 ], [ %66, %65 ]
	%44 = load i32, i32* @open, align 4
	%45 = load i32, i32* @closed, align 4
	%46 = icmp slt i32 %44, %45
	br i1 %46, label %47, label %49

47:
;47 42
	%48 = icmp eq i32 %43, 0
	br label %49

49:
;49 42
	%50 = phi i1 [ 0, %42 ], [ %48, %47 ]
	br i1 %50, label %52, label %51

51:
;51 136
	ret i32 %43

;loop body find loopDepth 1 iterCount 1
52:
;52 49
	%53 = load i32, i32* @open, align 4
	%54 = add i32 %53, 1
	store i32 %54, i32* @open, align 4
	%55 = load i32*, i32** @f, align 4
	%56 = load i32, i32* @open, align 4
	%57 = mul i32 %56, 4
	%58 = add i32 %57, 4
	%59 = bitcast i32* %55 to i8*
	%60 = getelementptr i8, i8* %59, i32 %58
	%61 = bitcast i8* %60 to i32*
	%62 = load i32, i32* %61, align 4
	%63 = load i32, i32* @i, align 4
	store i32 %62, i32* @i, align 4
	%64 = load i32, i32* @j, align 4
	store i32 1, i32* @j, align 4
	br label %65

;loop check block find loopDepth 2 iterCount 1
65:
;65 52
	%66 = phi i32 [ %43, %52 ], [ %122, %123 ]
	%67 = load i32, i32* @j, align 4
	%68 = icmp sle i32 %67, %0
	br i1 %68, label %69, label %42

;loop body find loopDepth 2 iterCount 1
69:
;69 65
	%70 = load i32**, i32*** @c, align 4
	%71 = load i32, i32* @i, align 4
	%72 = mul i32 %71, 4
	%73 = add i32 %72, 4
	%74 = bitcast i32** %70 to i8*
	%75 = getelementptr i8, i8* %74, i32 %73
	%76 = bitcast i8* %75 to i32**
	%77 = load i32*, i32** %76, align 4
	%78 = load i32, i32* @j, align 4
	%79 = mul i32 %78, 4
	%80 = add i32 %79, 4
	%81 = bitcast i32* %77 to i8*
	%82 = getelementptr i8, i8* %81, i32 %80
	%83 = bitcast i8* %82 to i32*
	%84 = load i32, i32* %83, align 4
	%85 = icmp sgt i32 %84, 0
	br i1 %85, label %126, label %86

86:
;86 69
	%87 = phi i1 [ 0, %69 ], [ %135, %126 ]
	br i1 %87, label %88, label %121

;True block in find selectCount 0
88:
;88 86
	%89 = load i32*, i32** @visit, align 4
	%90 = load i32, i32* @j, align 4
	%91 = mul i32 %90, 4
	%92 = add i32 %91, 4
	%93 = bitcast i32* %89 to i8*
	%94 = getelementptr i8, i8* %93, i32 %92
	%95 = bitcast i8* %94 to i32*
	%96 = load i32, i32* %95, align 4
	store i32 1, i32* %95, align 4
	%97 = load i32, i32* @closed, align 4
	%98 = add i32 %97, 1
	store i32 %98, i32* @closed, align 4
	%99 = load i32, i32* @j, align 4
	%100 = load i32*, i32** @f, align 4
	%101 = load i32, i32* @closed, align 4
	%102 = mul i32 %101, 4
	%103 = add i32 %102, 4
	%104 = bitcast i32* %100 to i8*
	%105 = getelementptr i8, i8* %104, i32 %103
	%106 = bitcast i8* %105 to i32*
	%107 = load i32, i32* %106, align 4
	store i32 %99, i32* %106, align 4
	%108 = load i32, i32* @i, align 4
	%109 = load i32*, i32** @pre, align 4
	%110 = load i32, i32* @j, align 4
	%111 = mul i32 %110, 4
	%112 = add i32 %111, 4
	%113 = bitcast i32* %109 to i8*
	%114 = getelementptr i8, i8* %113, i32 %112
	%115 = bitcast i8* %114 to i32*
	%116 = load i32, i32* %115, align 4
	store i32 %108, i32* %115, align 4
	%117 = load i32, i32* @closed, align 4
	%118 = icmp eq i32 %117, %0
	br label %119

;Converge block in find selectCount 0
119:
;119 88
	%120 = phi i32 [ %118, %88 ]
	br label %121

;Converge block in find selectCount 0
121:
;121 86
	%122 = phi i32 [ %66, %86 ], [ %120, %119 ]
	br label %123

;loop increase block find loopDepth 2 iterCount 1
123:
;123 121
	%124 = load i32, i32* @j, align 4
	%125 = add i32 %124, 1
	store i32 %125, i32* @j, align 4
	br label %65

126:
;126 69
	%127 = load i32*, i32** @visit, align 4
	%128 = load i32, i32* @j, align 4
	%129 = mul i32 %128, 4
	%130 = add i32 %129, 4
	%131 = bitcast i32* %127 to i8*
	%132 = getelementptr i8, i8* %131, i32 %130
	%133 = bitcast i8* %132 to i32*
	%134 = load i32, i32* %133, align 4
	%135 = icmp eq i32 %134, 0
	br label %86
}

define i32 @improve(i32 %0){
;1 1
	%2 = load i32, i32* @i, align 4
	store i32 %0, i32* @i, align 4
	%3 = load i32, i32* @ans, align 4
	%4 = add i32 %3, 1
	store i32 %4, i32* @ans, align 4
	br label %5

;loop check block improve loopDepth 1 iterCount 0
5:
;5 1
	%6 = load i32*, i32** @pre, align 4
	%7 = load i32, i32* @i, align 4
	%8 = mul i32 %7, 4
	%9 = add i32 %8, 4
	%10 = bitcast i32* %6 to i8*
	%11 = getelementptr i8, i8* %10, i32 %9
	%12 = bitcast i8* %11 to i32*
	%13 = load i32, i32* %12, align 4
	%14 = icmp sgt i32 %13, 0
	br i1 %14, label %15, label %59

;loop body improve loopDepth 1 iterCount 0
15:
;15 5
	%16 = load i32*, i32** @pre, align 4
	%17 = load i32, i32* @i, align 4
	%18 = mul i32 %17, 4
	%19 = add i32 %18, 4
	%20 = bitcast i32* %16 to i8*
	%21 = getelementptr i8, i8* %20, i32 %19
	%22 = bitcast i8* %21 to i32*
	%23 = load i32, i32* %22, align 4
	%24 = load i32, i32* @j, align 4
	store i32 %23, i32* @j, align 4
	%25 = load i32**, i32*** @c, align 4
	%26 = load i32, i32* @j, align 4
	%27 = mul i32 %26, 4
	%28 = add i32 %27, 4
	%29 = bitcast i32** %25 to i8*
	%30 = getelementptr i8, i8* %29, i32 %28
	%31 = bitcast i8* %30 to i32**
	%32 = load i32*, i32** %31, align 4
	%33 = load i32, i32* @i, align 4
	%34 = mul i32 %33, 4
	%35 = add i32 %34, 4
	%36 = bitcast i32* %32 to i8*
	%37 = getelementptr i8, i8* %36, i32 %35
	%38 = bitcast i8* %37 to i32*
	%39 = load i32, i32* %38, align 4
	%40 = sub i32 %39, 1
	store i32 %40, i32* %38, align 4
	%41 = load i32**, i32*** @c, align 4
	%42 = load i32, i32* @i, align 4
	%43 = mul i32 %42, 4
	%44 = add i32 %43, 4
	%45 = bitcast i32** %41 to i8*
	%46 = getelementptr i8, i8* %45, i32 %44
	%47 = bitcast i8* %46 to i32**
	%48 = load i32*, i32** %47, align 4
	%49 = load i32, i32* @j, align 4
	%50 = mul i32 %49, 4
	%51 = add i32 %50, 4
	%52 = bitcast i32* %48 to i8*
	%53 = getelementptr i8, i8* %52, i32 %51
	%54 = bitcast i8* %53 to i32*
	%55 = load i32, i32* %54, align 4
	%56 = add i32 %55, 1
	store i32 %56, i32* %54, align 4
	%57 = load i32, i32* @j, align 4
	%58 = load i32, i32* @i, align 4
	store i32 %57, i32* @i, align 4
	br label %5

59:
;59 60
	ret i32 0
}

define i32 @main(){
;0 0
	call void @_GLOBAL_()
	call void @origin(i32 110)
	%1 = call i32 @build(i32 99, i32 100)
	br label %2

;loop check block main loopDepth 1 iterCount 0
2:
;2 0
	%3 = call i32 @find(i32 100, i32 99, i32 0)
	%4 = icmp sgt i32 %3, 0
	br i1 %4, label %5, label %7

;loop body main loopDepth 1 iterCount 0
5:
;5 2
	%6 = call i32 @improve(i32 100)
	br label %2

;loop exit block main loopDepth 1 iterCount 0
7:
;7 2
	%8 = load i32, i32* @ans, align 4
	%9 = call %struct.string* @toString(i32 %8)
	%10 = getelementptr %struct.string, %struct.string* %9, i32 0, i32 1
	%11 = load i8*, i8** %10, align 4
	call void @println(i8* %11)
	br label %12

12:
;12 7
	ret i32 0
}

define void @_GLOBAL_(){
;0 0
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

