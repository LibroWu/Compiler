%struct.string = type { i32, i8* }

@n = global i32 0, align 4
@r = global i32 0, align 4
@c = global i32 0, align 4
@i = global i32 0, align 4
@j = global i32 0, align 4

define i32 @abs(i32 %0){
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	store i32 0, i32* %2, align 4
	store i32 %0, i32* %3, align 4
	%4 = load i32, i32* %3, align 4
	%5 = icmp sgt i32 %4, 0
	br i1 %5, label %6, label %8

;True block in abs selectCount 0
6:
	%7 = load i32, i32* %3, align 4
	store i32 %7, i32* %2, align 4
	br label %11

;Converge block in abs selectCount 0
8:
	%9 = load i32, i32* %3, align 4
	%10 = sub i32 0, %9
	store i32 %10, i32* %2, align 4
	br label %11

11:
	%12 = load i32, i32* %2, align 4
	ret i32 %12
}

define i32 @main(){
	%1 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%2 = load i32, i32* @i, align 4
	store i32 0, i32* @i, align 4
	br label %3

;loop check block main loopDepth 1 iterCount 0
3:
	%4 = load i32, i32* @i, align 4
	%5 = icmp slt i32 %4, 5
	br i1 %5, label %6, label %29

;loop body main loopDepth 1 iterCount 0
6:
	%7 = load i32, i32* @j, align 4
	store i32 0, i32* @j, align 4
	br label %8

;loop check block main loopDepth 2 iterCount 0
8:
	%9 = load i32, i32* @j, align 4
	%10 = icmp slt i32 %9, 5
	br i1 %10, label %11, label %25

;loop body main loopDepth 2 iterCount 0
11:
	%12 = call i32 @getInt()
	%13 = load i32, i32* @n, align 4
	store i32 %12, i32* @n, align 4
	%14 = load i32, i32* @n, align 4
	%15 = icmp eq i32 %14, 1
	br i1 %15, label %16, label %21

;True block in main selectCount 0
16:
	%17 = load i32, i32* @i, align 4
	%18 = load i32, i32* @r, align 4
	store i32 %17, i32* @r, align 4
	%19 = load i32, i32* @j, align 4
	%20 = load i32, i32* @c, align 4
	store i32 %19, i32* @c, align 4
	br label %21

;Converge block in main selectCount 0
21:
	br label %22

;loop increase block main loopDepth 2 iterCount 0
22:
	%23 = load i32, i32* @j, align 4
	%24 = add i32 %23, 1
	store i32 %24, i32* @j, align 4
	br label %8

;loop exit block main loopDepth 2 iterCount 0
25:
	br label %26

;loop increase block main loopDepth 1 iterCount 0
26:
	%27 = load i32, i32* @i, align 4
	%28 = add i32 %27, 1
	store i32 %28, i32* @i, align 4
	br label %3

;loop exit block main loopDepth 1 iterCount 0
29:
	%30 = load i32, i32* @r, align 4
	%31 = sub i32 2, %30
	%32 = call i32 @abs(i32 %31)
	%33 = load i32, i32* @c, align 4
	%34 = sub i32 2, %33
	%35 = call i32 @abs(i32 %34)
	%36 = add i32 %32, %35
	call void @printInt(i32 %36)
	store i32 0, i32* %1, align 4
	br label %37

37:
	%38 = load i32, i32* %1, align 4
	ret i32 %38
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

