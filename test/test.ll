%struct.string = type { i32, i8* }

@N = global i32 15000, align 4
@b = global i8* null, align 4
@resultCount = global i32 0, align 4

@.libro.str = constant [2 x i8] c" \00", align 1
@.libro.str.1 = constant [8 x i8] c"Total: \00", align 1

define void @_global_var_init.1(){
	%1 = call i8* @myNew(i32 15005)
	%2 = bitcast i8* %1 to i32*
	store i32 15001, i32* %2, align 4
	store i8* %1, i8** @b, align 4
	ret void
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%4 = load i32, i32* %2, align 4
	store i32 1, i32* %2, align 4
	br label %5

5:
	%6 = load i32, i32* %2, align 4
	%7 = load i32, i32* @N, align 4
	%8 = icmp sle i32 %6, %7
	br i1 %8, label %9, label %21

9:
	%10 = load i8*, i8** @b, align 4
	%11 = load i32, i32* %2, align 4
	%12 = mul i32 %11, 1
	%13 = add i32 %12, 4
	%14 = getelementptr i8, i8* %10, i32 %13
	%15 = bitcast i8* %14 to i8*
	%16 = load i8, i8* %15, align 1
	%17 = sext i1 1 to i8
	store i8 %17, i8* %15, align 1
	br label %18

18:
	%19 = load i32, i32* %2, align 4
	%20 = add i32 %19, 1
	store i32 %20, i32* %2, align 4
	br label %5

21:
	%22 = load i32, i32* %2, align 4
	store i32 2, i32* %2, align 4
	br label %23

23:
	%24 = load i32, i32* %2, align 4
	%25 = load i32, i32* @N, align 4
	%26 = icmp sle i32 %24, %25
	br i1 %26, label %27, label %93

27:
	%28 = load i8*, i8** @b, align 4
	%29 = load i32, i32* %2, align 4
	%30 = mul i32 %29, 1
	%31 = add i32 %30, 4
	%32 = getelementptr i8, i8* %28, i32 %31
	%33 = bitcast i8* %32 to i8*
	%34 = load i8, i8* %33, align 1
	%35 = trunc i8 %34 to i1
	br i1 %35, label %36, label %89

36:
	store i32 2, i32* %3, align 4
	%37 = load i32, i32* %2, align 4
	%38 = icmp sgt i32 %37, 3
	br i1 %38, label %39, label %49

39:
	%40 = load i8*, i8** @b, align 4
	%41 = load i32, i32* %2, align 4
	%42 = sub i32 %41, 2
	%43 = mul i32 %42, 1
	%44 = add i32 %43, 4
	%45 = getelementptr i8, i8* %40, i32 %44
	%46 = bitcast i8* %45 to i8*
	%47 = load i8, i8* %46, align 1
	%48 = trunc i8 %47 to i1
	br label %49

49:
	%50 = phi i1 [ 0, %36 ], [ %48, %39 ]
	br i1 %50, label %51, label %68

51:
	%52 = load i32, i32* @resultCount, align 4
	%53 = add i32 %52, 1
	store i32 %53, i32* @resultCount, align 4
	%54 = load i32, i32* %2, align 4
	%55 = sub i32 %54, 2
	%56 = call %struct.string* @toString(i32 %55)
	%57 = call i8* @myNew(i32 12)
	%58 = bitcast i8* %57 to %struct.string*
	%59 = getelementptr %struct.string, %struct.string* %58, i32 0, i32 0
	store i32 1, i32* %59, align 4
	%60 = bitcast [2 x i8]* @.libro.str to i8*
	%61 = getelementptr %struct.string, %struct.string* %58, i32 0, i32 1
	store i8* %60, i8** %61, align 4
	%62 = call %struct.string* @_string_stringAppend(%struct.string* %56, %struct.string* %58)
	%63 = load i32, i32* %2, align 4
	%64 = call %struct.string* @toString(i32 %63)
	%65 = call %struct.string* @_string_stringAppend(%struct.string* %62, %struct.string* %64)
	%66 = getelementptr %struct.string, %struct.string* %65, i32 0, i32 1
	%67 = load i8*, i8** %66, align 4
	call void @println(i8* %67)
	br label %68

68:
	br label %69

69:
	%70 = load i32, i32* %2, align 4
	%71 = load i32, i32* %3, align 4
	%72 = mul i32 %70, %71
	%73 = load i32, i32* @N, align 4
	%74 = icmp sle i32 %72, %73
	br i1 %74, label %75, label %88

75:
	%76 = load i8*, i8** @b, align 4
	%77 = load i32, i32* %2, align 4
	%78 = load i32, i32* %3, align 4
	%79 = mul i32 %77, %78
	%80 = mul i32 %79, 1
	%81 = add i32 %80, 4
	%82 = getelementptr i8, i8* %76, i32 %81
	%83 = bitcast i8* %82 to i8*
	%84 = load i8, i8* %83, align 1
	%85 = sext i1 0 to i8
	store i8 %85, i8* %83, align 1
	%86 = load i32, i32* %3, align 4
	%87 = add i32 %86, 1
	store i32 %87, i32* %3, align 4
	br label %69

88:
	br label %89

89:
	br label %90

90:
	%91 = load i32, i32* %2, align 4
	%92 = add i32 %91, 1
	store i32 %92, i32* %2, align 4
	br label %23

93:
	%94 = call i8* @myNew(i32 12)
	%95 = bitcast i8* %94 to %struct.string*
	%96 = getelementptr %struct.string, %struct.string* %95, i32 0, i32 0
	store i32 7, i32* %96, align 4
	%97 = bitcast [8 x i8]* @.libro.str.1 to i8*
	%98 = getelementptr %struct.string, %struct.string* %95, i32 0, i32 1
	store i8* %97, i8** %98, align 4
	%99 = load i32, i32* @resultCount, align 4
	%100 = call %struct.string* @toString(i32 %99)
	%101 = call %struct.string* @_string_stringAppend(%struct.string* %95, %struct.string* %100)
	%102 = getelementptr %struct.string, %struct.string* %101, i32 0, i32 1
	%103 = load i8*, i8** %102, align 4
	call void @println(i8* %103)
	store i32 0, i32* %1, align 4
	br label %104

104:
	%105 = load i32, i32* %1, align 4
	ret i32 %105
}

define void @_GLOBAL_(){
	call void @_global_var_init.1()
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

