%struct.string = type { i32, i8* }

@n = global i32 0, align 4
@p = global i32 0, align 4
@k = global i32 0, align 4
@i = global i32 0, align 4

@.libro.str = constant [4 x i8] c"<< \00", align 1
@.libro.str.1 = constant [2 x i8] c"(\00", align 1
@.libro.str.2 = constant [3 x i8] c") \00", align 1
@.libro.str.3 = constant [2 x i8] c" \00", align 1
@.libro.str.4 = constant [4 x i8] c">> \00", align 1

define i32 @main(){

0:
;0 0
	%1 = call i32 @getInt()
	store i32 %1, i32* @n, align 4
	%2 = call i32 @getInt()
	store i32 %2, i32* @p, align 4
	%3 = call i32 @getInt()
	store i32 %3, i32* @k, align 4
	%4 = load i32, i32* @p, align 4
	%5 = load i32, i32* @k, align 4
	%6 = sub i32 %4, %5
	%7 = icmp sgt i32 %6, 1
	br i1 %7, label %8, label %10

;True block in main selectCount 0
8:
;8 0
	%9 = bitcast [4 x i8]* @.libro.str to i8*
	call void @print(i8* %9)
	br label %10

;Converge block in main selectCount 0
10:
;10 0
	%11 = load i32, i32* @p, align 4
	%12 = load i32, i32* @k, align 4
	%13 = sub i32 %11, %12
	store i32 %13, i32* @i, align 4
	br label %14

;loop check block main loopDepth 1 iterCount 0
14:
;14 10
	%15 = load i32, i32* @i, align 4
	%16 = load i32, i32* @p, align 4
	%17 = load i32, i32* @k, align 4
	%18 = add i32 %16, %17
	%19 = icmp sle i32 %15, %18
	br i1 %19, label %20, label %46

;loop body main loopDepth 1 iterCount 0
20:
;20 14
	%21 = load i32, i32* @i, align 4
	%22 = icmp sle i32 1, %21
	br i1 %22, label %23, label %27

23:
;23 20
	%24 = load i32, i32* @i, align 4
	%25 = load i32, i32* @n, align 4
	%26 = icmp sle i32 %24, %25
	br label %27

27:
;27 20
	%28 = phi i1 [ 0, %20 ], [ %26, %23 ]
	br i1 %28, label %29, label %40

;True block in main selectCount 1
29:
;29 27
	%30 = load i32, i32* @i, align 4
	%31 = load i32, i32* @p, align 4
	%32 = icmp eq i32 %30, %31
	br i1 %32, label %33, label %43

;True block in main selectCount 1
33:
;33 29
	%34 = bitcast [2 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %34)
	%35 = load i32, i32* @i, align 4
	%36 = call %struct.string* @toString(i32 %35)
	%37 = getelementptr %struct.string, %struct.string* %36, i32 0, i32 1
	%38 = load i8*, i8** %37, align 4
	call void @print(i8* %38)
	%39 = bitcast [3 x i8]* @.libro.str.2 to i8*
	call void @print(i8* %39)
	br label %40

;loop increase block main loopDepth 1 iterCount 0
40:
;40 27
	%41 = load i32, i32* @i, align 4
	%42 = add i32 %41, 1
	store i32 %42, i32* @i, align 4
	br label %14

;False block in main selectCount 1
43:
;43 29
	%44 = load i32, i32* @i, align 4
	call void @printInt(i32 %44)
	%45 = bitcast [2 x i8]* @.libro.str.3 to i8*
	call void @print(i8* %45)
	br label %40

;loop exit block main loopDepth 1 iterCount 0
46:
;46 14
	%47 = load i32, i32* @p, align 4
	%48 = load i32, i32* @k, align 4
	%49 = add i32 %47, %48
	%50 = load i32, i32* @n, align 4
	%51 = icmp slt i32 %49, %50
	br i1 %51, label %52, label %54

;True block in main selectCount 3
52:
;52 46
	%53 = bitcast [4 x i8]* @.libro.str.4 to i8*
	call void @print(i8* %53)
	br label %54

54:
;54 46
	ret i32 0
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

