%struct.string = type { i32, i8* }

@INF = global i32 10000000, align 4
@n = global i32 0, align 4
@m = global i32 0, align 4
@a = global i32** null, align 4

@.libro.str = constant [6 x i8] c"begin\00", align 1

define void @init(){
	%1 = alloca i32, align 4;for new loop
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = call i32 @getInt()
	%5 = load i32, i32* @n, align 4
	store i32 %4, i32* @n, align 4
	%6 = load i32, i32* @n, align 4
	call void @printlnInt(i32 %6)
	%7 = call i32 @getInt()
	%8 = load i32, i32* @m, align 4
	store i32 %7, i32* @m, align 4
	%9 = load i32, i32* @m, align 4
	call void @printlnInt(i32 %9)
	%10 = load i32, i32* @n, align 4
	%11 = mul i32 %10, 4
	%12 = add i32 %11, 4
	%13 = call i8* @myNew(i32 %12)
	%14 = bitcast i8* %13 to i32*
	store i32 %10, i32* %14, align 4
	%15 = bitcast i8* %13 to i32**
	store i32 0, i32* %1, align 4
	br label %16

16:
	%17 = load i32, i32* %1, align 4
	%18 = add i32 %17, 4
	store i32 %18, i32* %1, align 4
	%19 = icmp slt i32 %17, %12
	br i1 %19, label %20, label %29

20:
	%21 = getelementptr i8, i8* %13, i32 %17
	%22 = load i32, i32* @n, align 4
	%23 = mul i32 %22, 4
	%24 = add i32 %23, 4
	%25 = call i8* @myNew(i32 %24)
	%26 = bitcast i8* %25 to i32*
	store i32 %22, i32* %26, align 4
	%27 = bitcast i8* %25 to i32*
	%28 = bitcast i8* %21 to i32**
	store i32* %27, i32** %28, align 4
	br label %16

29:
	%30 = load i32**, i32*** @a, align 4
	store i32** %15, i32*** @a, align 4
	call void @printlnInt(i32 0)
	%31 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %32

32:
	%33 = load i32, i32* %2, align 4
	%34 = icmp slt i32 %33, 100
	br i1 %34, label %35, label %64

35:
	%36 = load i32, i32* %3, align 4
	store i32 0, i32* %3, align 4
	br label %37

37:
	%38 = load i32, i32* %3, align 4
	%39 = icmp slt i32 %38, 100
	br i1 %39, label %40, label %60

40:
	call void @printlnInt(i32 2)
	%41 = load i32, i32* @INF, align 4
	%42 = load i32**, i32*** @a, align 4
	%43 = load i32, i32* %2, align 4
	%44 = mul i32 %43, 4
	%45 = add i32 %44, 4
	%46 = bitcast i32** %42 to i8*
	%47 = getelementptr i8, i8* %46, i32 %45
	%48 = bitcast i8* %47 to i32**
	%49 = load i32*, i32** %48, align 4
	%50 = load i32, i32* %3, align 4
	%51 = mul i32 %50, 4
	%52 = add i32 %51, 4
	%53 = bitcast i32* %49 to i8*
	%54 = getelementptr i8, i8* %53, i32 %52
	%55 = bitcast i8* %54 to i32*
	%56 = load i32, i32* %55, align 4
	store i32 %41, i32* %55, align 4
	br label %57

57:
	%58 = load i32, i32* %3, align 4
	%59 = add i32 %58, 1
	store i32 %59, i32* %3, align 4
	br label %37

60:
	br label %61

61:
	%62 = load i32, i32* %2, align 4
	%63 = add i32 %62, 1
	store i32 %63, i32* %2, align 4
	br label %32

64:
	br label %65

65:
	ret void
}

define i32 @main(){
	%1 = alloca i32, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%2 = bitcast [6 x i8]* @.libro.str to i8*
	call void @println(i8* %2)
	call void @init()
	store i32 0, i32* %1, align 4
	br label %3

3:
	%4 = load i32, i32* %1, align 4
	ret i32 %4
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

