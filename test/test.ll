%struct.string = type { i32, i8* }

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32*, align 8
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%5 = call i8* @myNew(i64 24)
	%6 = bitcast i8* %5 to i32*
	store i32 5, i32* %6, align 4
	%7 = bitcast i8* %5 to i32*
	store i32* %7, i32** %2, align 8
	store i32 0, i32* %3, align 4
	br label %8

8:
	%9 = load i32, i32* %3, align 4
	%10 = icmp slt i32 %9, 5
	br i1 %10, label %11, label %25

11:
	%12 = load i32, i32* %3, align 4
	%13 = load i32*, i32** %2, align 8
	%14 = load i32, i32* %3, align 4
	%15 = sext i32 %14 to i64
	%16 = mul i64 %15, 4
	%17 = add i64 %16, 4
	%18 = bitcast i32* %13 to i8*
	%19 = getelementptr i8, i8* %18, i64 %17
	%20 = bitcast i8* %19 to i32*
	%21 = load i32, i32* %20, align 4
	store i32 %12, i32* %20, align 4
	br label %22

22:
	%23 = load i32, i32* %3, align 4
	%24 = add i32 %23, 1
	store i32 %24, i32* %3, align 4
	br label %8

25:
	store i32 0, i32* %4, align 4
	br label %26

26:
	%27 = load i32, i32* %4, align 4
	%28 = icmp slt i32 %27, 5
	br i1 %28, label %29, label %43

29:
	%30 = load i32*, i32** %2, align 8
	%31 = load i32, i32* %4, align 4
	%32 = sub i32 4, %31
	%33 = sext i32 %32 to i64
	%34 = mul i64 %33, 4
	%35 = add i64 %34, 4
	%36 = bitcast i32* %30 to i8*
	%37 = getelementptr i8, i8* %36, i64 %35
	%38 = bitcast i8* %37 to i32*
	%39 = load i32, i32* %38, align 4
	call void @printlnInt(i32 %39)
	br label %40

40:
	%41 = load i32, i32* %4, align 4
	%42 = add i32 %41, 1
	store i32 %42, i32* %4, align 4
	br label %26

43:
	%44 = load i32*, i32** %2, align 8
	%45 = bitcast i32* %44 to i32*
	%46 = getelementptr i32, i32* %45, i64 0
	%47 = load i32, i32* %46, align 4
	call void @printlnInt(i32 %47)
	store i32 0, i32* %1, align 4
	br label %48

48:
	%49 = load i32, i32* %1, align 4
	ret i32 %49
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
declare i8* @getString()
declare i8* @myNew(i64)

