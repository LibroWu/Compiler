%struct.string = type { i32, i8* }

@n = global i32 0, align 4
@a = global i32* null, align 4
@i = global i32 0, align 4

define void @_global_var_init.0(){
;0 0
	%1 = call i8* @myNew(i32 84)
	%2 = bitcast i8* %1 to i32*
	store i32 20, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @a, align 4
	ret void
}

define i32 @jud(i32 %0){
;1 1
	br label %2

;loop check block jud loopDepth 1 iterCount 0
2:
;2 1
	%3 = phi i8 [ 0, %1 ], [ %12, %52 ]
	%4 = phi i32 [ 0, %1 ], [ %13, %52 ]
	%5 = phi i32 [ 0, %1 ], [ %53, %52 ]
	%6 = load i32, i32* @n, align 4
	%7 = sdiv i32 %6, %0
	%8 = icmp slt i32 %5, %7
	br i1 %8, label %9, label %54

;loop body jud loopDepth 1 iterCount 0
9:
;9 2
	%10 = sext i1 0 to i8
	br label %11

;loop check block jud loopDepth 2 iterCount 0
11:
;11 9
	%12 = phi i8 [ %10, %9 ], [ %40, %41 ]
	%13 = phi i32 [ 0, %9 ], [ %42, %41 ]
	%14 = sub i32 %0, 1
	%15 = icmp slt i32 %13, %14
	br i1 %15, label %16, label %43

;loop body jud loopDepth 2 iterCount 0
16:
;16 11
	%17 = load i32*, i32** @a, align 4
	%18 = mul i32 %5, %0
	%19 = add i32 %18, %13
	%20 = mul i32 %19, 4
	%21 = add i32 %20, 4
	%22 = bitcast i32* %17 to i8*
	%23 = getelementptr i8, i8* %22, i32 %21
	%24 = bitcast i8* %23 to i32*
	%25 = load i32, i32* %24, align 4
	%26 = load i32*, i32** @a, align 4
	%27 = mul i32 %5, %0
	%28 = add i32 %27, %13
	%29 = add i32 %28, 1
	%30 = mul i32 %29, 4
	%31 = add i32 %30, 4
	%32 = bitcast i32* %26 to i8*
	%33 = getelementptr i8, i8* %32, i32 %31
	%34 = bitcast i8* %33 to i32*
	%35 = load i32, i32* %34, align 4
	%36 = icmp sgt i32 %25, %35
	br i1 %36, label %37, label %39

;True block in jud selectCount 0
37:
;37 16
	%38 = sext i1 1 to i8
	br label %39

;Converge block in jud selectCount 0
39:
;39 16
	%40 = phi i8 [ %12, %16 ], [ %38, %37 ]
	br label %41

;loop increase block jud loopDepth 2 iterCount 0
41:
;41 39
	%42 = add i32 %13, 1
	br label %11

;loop exit block jud loopDepth 2 iterCount 0
43:
;43 11
	%44 = trunc i8 %12 to i1
	%45 = xor i1 %44, 1
	br i1 %45, label %46, label %51

;True block in jud selectCount 1
46:
;46 43
	br label %47

47:
;47 2
	%48 = phi i8 [ %12, %46 ], [ %3, %54 ]
	%49 = phi i32 [ %13, %46 ], [ %4, %54 ]
	%50 = phi i32 [ 1, %46 ], [ 0, %54 ]
	ret i32 %50

;Converge block in jud selectCount 1
51:
;51 43
	br label %52

;loop increase block jud loopDepth 1 iterCount 0
52:
;52 51
	%53 = add i32 %5, 1
	br label %2

;loop exit block jud loopDepth 1 iterCount 0
54:
;54 2
	br label %47
}

define i32 @main(){
;0 0
	call void @_GLOBAL_()
	%1 = call i32 @getInt()
	%2 = load i32, i32* @n, align 4
	store i32 %1, i32* @n, align 4
	%3 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %4

;loop check block main loopDepth 1 iterCount 0
4:
;4 0
	%5 = load i32, i32* @i, align 4
	%6 = load i32, i32* @n, align 4
	%7 = icmp slt i32 %5, %6
	br i1 %7, label %8, label %21

;loop body main loopDepth 1 iterCount 0
8:
;8 4
	%9 = call i32 @getInt()
	%10 = load i32*, i32** @a, align 4
	%11 = load i32, i32* @i, align 4
	%12 = mul i32 %11, 4
	%13 = add i32 %12, 4
	%14 = bitcast i32* %10 to i8*
	%15 = getelementptr i8, i8* %14, i32 %13
	%16 = bitcast i8* %15 to i32*
	%17 = load i32, i32* %16, align 4
	store i32 %9, i32* %16, align 4
	br label %18

;loop increase block main loopDepth 1 iterCount 0
18:
;18 8
	%19 = load i32, i32* @i, align 4
	%20 = add i32 %19, 1
	store i32 %20, i32* @i, align 4
	br label %4

;loop exit block main loopDepth 1 iterCount 0
21:
;21 4
	%22 = load i32, i32* @n, align 4
	%23 = load i32, i32* @i, align 4
	store i32 %22, i32* @i, align 4
	br label %24

;loop check block main loopDepth 1 iterCount 1
24:
;24 21
	%25 = load i32, i32* @i, align 4
	%26 = icmp sgt i32 %25, 0
	br i1 %26, label %27, label %43

;loop body main loopDepth 1 iterCount 1
27:
;27 24
	%28 = load i32, i32* @i, align 4
	%29 = call i32 @jud(i32 %28)
	%30 = icmp sgt i32 %29, 0
	br i1 %30, label %31, label %38

;True block in main selectCount 0
31:
;31 27
	%32 = load i32, i32* @i, align 4
	%33 = call %struct.string* @toString(i32 %32)
	%34 = getelementptr %struct.string, %struct.string* %33, i32 0, i32 1
	%35 = load i8*, i8** %34, align 4
	call void @print(i8* %35)
	br label %36

36:
;36 24
	%37 = phi i32 [ 0, %31 ], [ 0, %43 ]
	ret i32 %37

;Converge block in main selectCount 0
38:
;38 27
	br label %39

;loop increase block main loopDepth 1 iterCount 1
39:
;39 38
	%40 = load i32, i32* @i, align 4
	%41 = sdiv i32 %40, 2
	%42 = load i32, i32* @i, align 4
	store i32 %41, i32* @i, align 4
	br label %24

;loop exit block main loopDepth 1 iterCount 1
43:
;43 24
	br label %36
}

define void @_GLOBAL_(){
;0 0
	call void @_global_var_init.0()
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

