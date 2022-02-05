%struct.string = type { i32, i8* }

@n = global i32 0, align 4
@a = global i32* null, align 4
@i = global i32 0, align 4

define void @_global_var_init.0(){
	%1 = call i8* @myNew(i32 84)
	%2 = bitcast i8* %1 to i32*
	store i32 20, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @a, align 4
	ret void
}

define i32 @jud(i32 %0){
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i8, align 1
	store i32 0, i32* %2, align 4
	store i32 %0, i32* %3, align 4
	%7 = load i32, i32* %4, align 4
	store i32 0, i32* %4, align 4
	br label %8

8:
	%9 = load i32, i32* %4, align 4
	%10 = load i32, i32* @n, align 4
	%11 = load i32, i32* %3, align 4
	%12 = sdiv i32 %10, %11
	%13 = icmp slt i32 %9, %12
	br i1 %13, label %14, label %67

14:
	%15 = sext i1 0 to i8
	store i8 %15, i8* %6, align 1
	%16 = load i32, i32* %5, align 4
	store i32 0, i32* %5, align 4
	br label %17

17:
	%18 = load i32, i32* %5, align 4
	%19 = load i32, i32* %3, align 4
	%20 = sub i32 %19, 1
	%21 = icmp slt i32 %18, %20
	br i1 %21, label %22, label %58

22:
	%23 = load i32*, i32** @a, align 4
	%24 = load i32, i32* %4, align 4
	%25 = load i32, i32* %3, align 4
	%26 = mul i32 %24, %25
	%27 = load i32, i32* %5, align 4
	%28 = add i32 %26, %27
	%29 = sext i32 %28 to i32
	%30 = mul i32 %29, 4
	%31 = add i32 %30, 4
	%32 = bitcast i32* %23 to i8*
	%33 = getelementptr i8, i8* %32, i32 %31
	%34 = bitcast i8* %33 to i32*
	%35 = load i32, i32* %34, align 4
	%36 = load i32*, i32** @a, align 4
	%37 = load i32, i32* %4, align 4
	%38 = load i32, i32* %3, align 4
	%39 = mul i32 %37, %38
	%40 = load i32, i32* %5, align 4
	%41 = add i32 %39, %40
	%42 = add i32 %41, 1
	%43 = sext i32 %42 to i32
	%44 = mul i32 %43, 4
	%45 = add i32 %44, 4
	%46 = bitcast i32* %36 to i8*
	%47 = getelementptr i8, i8* %46, i32 %45
	%48 = bitcast i8* %47 to i32*
	%49 = load i32, i32* %48, align 4
	%50 = icmp sgt i32 %35, %49
	br i1 %50, label %51, label %54

51:
	%52 = load i8, i8* %6, align 1
	%53 = sext i1 1 to i8
	store i8 %53, i8* %6, align 1
	br label %54

54:
	br label %55

55:
	%56 = load i32, i32* %5, align 4
	%57 = add i32 %56, 1
	store i32 %57, i32* %5, align 4
	br label %17

58:
	%59 = load i8, i8* %6, align 1
	%60 = trunc i8 %59 to i1
	%61 = xor i1 %60, 1
	br i1 %61, label %62, label %63

62:
	store i32 1, i32* %2, align 4
	br label %68

63:
	br label %64

64:
	%65 = load i32, i32* %4, align 4
	%66 = add i32 %65, 1
	store i32 %66, i32* %4, align 4
	br label %8

67:
	store i32 0, i32* %2, align 4
	br label %68

68:
	%69 = load i32, i32* %2, align 4
	ret i32 %69
}

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

5:
	%6 = load i32, i32* @i, align 4
	%7 = load i32, i32* @n, align 4
	%8 = icmp slt i32 %6, %7
	br i1 %8, label %9, label %23

9:
	%10 = call i32 @getInt()
	%11 = load i32*, i32** @a, align 4
	%12 = load i32, i32* @i, align 4
	%13 = sext i32 %12 to i32
	%14 = mul i32 %13, 4
	%15 = add i32 %14, 4
	%16 = bitcast i32* %11 to i8*
	%17 = getelementptr i8, i8* %16, i32 %15
	%18 = bitcast i8* %17 to i32*
	%19 = load i32, i32* %18, align 4
	store i32 %10, i32* %18, align 4
	br label %20

20:
	%21 = load i32, i32* @i, align 4
	%22 = add i32 %21, 1
	store i32 %22, i32* @i, align 4
	br label %5

23:
	%24 = load i32, i32* @n, align 4
	%25 = load i32, i32* @i, align 4
	store i32 %24, i32* @i, align 4
	br label %26

26:
	%27 = load i32, i32* @i, align 4
	%28 = icmp sgt i32 %27, 0
	br i1 %28, label %29, label %43

29:
	%30 = load i32, i32* @i, align 4
	%31 = call i32 @jud(i32 %30)
	%32 = icmp sgt i32 %31, 0
	br i1 %32, label %33, label %38

33:
	%34 = load i32, i32* @i, align 4
	%35 = call %struct.string* @toString(i32 %34)
	%36 = getelementptr %struct.string, %struct.string* %35, i32 0, i32 1
	%37 = load i8*, i8** %36, align 4
	call void @print(i8* %37)
	store i32 0, i32* %1, align 4
	br label %44

38:
	br label %39

39:
	%40 = load i32, i32* @i, align 4
	%41 = sdiv i32 %40, 2
	%42 = load i32, i32* @i, align 4
	store i32 %41, i32* @i, align 4
	br label %26

43:
	store i32 0, i32* %1, align 4
	br label %44

44:
	%45 = load i32, i32* %1, align 4
	ret i32 %45
}

define void @_GLOBAL_(){
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

