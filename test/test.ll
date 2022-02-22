%struct.string = type { i32, i8* }

@p = global i32 0, align 4
@q = global i32 0, align 4
@r = global i32 0, align 4
@x = global i32 0, align 4
@y = global i32 0, align 4
@z = global i32 0, align 4
@n = global i32 0, align 4
@i = global i32 0, align 4

@.libro.str = constant [4 x i8] c"YES\00", align 1
@.libro.str.1 = constant [3 x i8] c"NO\00", align 1

define i32 @main(){
	%1 = alloca i32, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%2 = call i32 @getInt()
	%3 = load i32, i32* @n, align 4
	store i32 %2, i32* @n, align 4
	%4 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %5

;loop check block main loopDepth 1 iterCount 0
5:
	%6 = load i32, i32* @i, align 4
	%7 = load i32, i32* @n, align 4
	%8 = icmp slt i32 %6, %7
	br i1 %8, label %9, label %31

;loop body main loopDepth 1 iterCount 0
9:
	%10 = call i32 @getInt()
	%11 = load i32, i32* @p, align 4
	store i32 %10, i32* @p, align 4
	%12 = call i32 @getInt()
	%13 = load i32, i32* @q, align 4
	store i32 %12, i32* @q, align 4
	%14 = call i32 @getInt()
	%15 = load i32, i32* @r, align 4
	store i32 %14, i32* @r, align 4
	%16 = load i32, i32* @x, align 4
	%17 = load i32, i32* @p, align 4
	%18 = add i32 %16, %17
	%19 = load i32, i32* @x, align 4
	store i32 %18, i32* @x, align 4
	%20 = load i32, i32* @y, align 4
	%21 = load i32, i32* @q, align 4
	%22 = add i32 %20, %21
	%23 = load i32, i32* @y, align 4
	store i32 %22, i32* @y, align 4
	%24 = load i32, i32* @z, align 4
	%25 = load i32, i32* @r, align 4
	%26 = add i32 %24, %25
	%27 = load i32, i32* @z, align 4
	store i32 %26, i32* @z, align 4
	br label %28

;loop increase block main loopDepth 1 iterCount 0
28:
	%29 = load i32, i32* @i, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* @i, align 4
	br label %5

;loop exit block main loopDepth 1 iterCount 0
31:
	%32 = load i32, i32* @x, align 4
	%33 = icmp eq i32 %32, 0
	br i1 %33, label %34, label %40

34:
	%35 = load i32, i32* @y, align 4
	%36 = icmp eq i32 %35, 0
	br i1 %36, label %37, label %40

37:
	%38 = load i32, i32* @z, align 4
	%39 = icmp eq i32 %38, 0
	br label %40

40:
	%41 = phi i1 [ 0, %31 ], [ 0, %34 ], [ %39, %37 ]
	br i1 %41, label %42, label %44

;True block in main selectCount 0
42:
	%43 = bitcast [4 x i8]* @.libro.str to i8*
	call void @print(i8* %43)
	br label %46

;False block in main selectCount 0
44:
	%45 = bitcast [3 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %45)
	br label %46

;Converge block in main selectCount 0
46:
	store i32 0, i32* %1, align 4
	br label %47

47:
	%48 = load i32, i32* %1, align 4
	ret i32 %48
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

