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
	br i1 %8, label %9, label %22

9:
	%10 = load i8*, i8** @b, align 4
	%11 = load i32, i32* %2, align 4
	%12 = sext i32 %11 to i32
	%13 = mul i32 %12, 1
	%14 = add i32 %13, 4
	%15 = getelementptr i8, i8* %10, i32 %14
	%16 = bitcast i8* %15 to i8*
	%17 = load i8, i8* %16, align 1
	%18 = sext i1 1 to i8
	store i8 %18, i8* %16, align 1
	br label %19

19:
	%20 = load i32, i32* %2, align 4
	%21 = add i32 %20, 1
	store i32 %21, i32* %2, align 4
	br label %5

22:
	%23 = load i32, i32* %2, align 4
	store i32 2, i32* %2, align 4
	br label %24

24:
	%25 = load i32, i32* %2, align 4
	%26 = load i32, i32* @N, align 4
	%27 = icmp sle i32 %25, %26
	br i1 %27, label %28, label %97

28:
	%29 = load i8*, i8** @b, align 4
	%30 = load i32, i32* %2, align 4
	%31 = sext i32 %30 to i32
	%32 = mul i32 %31, 1
	%33 = add i32 %32, 4
	%34 = getelementptr i8, i8* %29, i32 %33
	%35 = bitcast i8* %34 to i8*
	%36 = load i8, i8* %35, align 1
	%37 = trunc i8 %36 to i1
	br i1 %37, label %38, label %93

38:
	store i32 2, i32* %3, align 4
	%39 = load i32, i32* %2, align 4
	%40 = icmp sgt i32 %39, 3
	br i1 %40, label %41, label %52

41:
	%42 = load i8*, i8** @b, align 4
	%43 = load i32, i32* %2, align 4
	%44 = sub i32 %43, 2
	%45 = sext i32 %44 to i32
	%46 = mul i32 %45, 1
	%47 = add i32 %46, 4
	%48 = getelementptr i8, i8* %42, i32 %47
	%49 = bitcast i8* %48 to i8*
	%50 = load i8, i8* %49, align 1
	%51 = trunc i8 %50 to i1
	br label %52

52:
	%53 = phi i1 [ 0, %38 ], [ %51, %41 ]
	br i1 %53, label %54, label %71

54:
	%55 = load i32, i32* @resultCount, align 4
	%56 = add i32 %55, 1
	store i32 %56, i32* @resultCount, align 4
	%57 = load i32, i32* %2, align 4
	%58 = sub i32 %57, 2
	%59 = call %struct.string* @toString(i32 %58)
	%60 = call i8* @myNew(i32 12)
	%61 = bitcast i8* %60 to %struct.string*
	%62 = getelementptr %struct.string, %struct.string* %61, i32 0, i32 0
	store i32 1, i32* %62, align 4
	%63 = bitcast [2 x i8]* @.libro.str to i8*
	%64 = getelementptr %struct.string, %struct.string* %61, i32 0, i32 1
	store i8* %63, i8** %64, align 4
	%65 = call %struct.string* @_string_stringAppend(%struct.string* %59, %struct.string* %61)
	%66 = load i32, i32* %2, align 4
	%67 = call %struct.string* @toString(i32 %66)
	%68 = call %struct.string* @_string_stringAppend(%struct.string* %65, %struct.string* %67)
	%69 = getelementptr %struct.string, %struct.string* %68, i32 0, i32 1
	%70 = load i8*, i8** %69, align 4
	call void @println(i8* %70)
	br label %71

71:
	br label %72

72:
	%73 = load i32, i32* %2, align 4
	%74 = load i32, i32* %3, align 4
	%75 = mul i32 %73, %74
	%76 = load i32, i32* @N, align 4
	%77 = icmp sle i32 %75, %76
	br i1 %77, label %78, label %92

78:
	%79 = load i8*, i8** @b, align 4
	%80 = load i32, i32* %2, align 4
	%81 = load i32, i32* %3, align 4
	%82 = mul i32 %80, %81
	%83 = sext i32 %82 to i32
	%84 = mul i32 %83, 1
	%85 = add i32 %84, 4
	%86 = getelementptr i8, i8* %79, i32 %85
	%87 = bitcast i8* %86 to i8*
	%88 = load i8, i8* %87, align 1
	%89 = sext i1 0 to i8
	store i8 %89, i8* %87, align 1
	%90 = load i32, i32* %3, align 4
	%91 = add i32 %90, 1
	store i32 %91, i32* %3, align 4
	br label %72

92:
	br label %93

93:
	br label %94

94:
	%95 = load i32, i32* %2, align 4
	%96 = add i32 %95, 1
	store i32 %96, i32* %2, align 4
	br label %24

97:
	%98 = call i8* @myNew(i32 12)
	%99 = bitcast i8* %98 to %struct.string*
	%100 = getelementptr %struct.string, %struct.string* %99, i32 0, i32 0
	store i32 7, i32* %100, align 4
	%101 = bitcast [8 x i8]* @.libro.str.1 to i8*
	%102 = getelementptr %struct.string, %struct.string* %99, i32 0, i32 1
	store i8* %101, i8** %102, align 4
	%103 = load i32, i32* @resultCount, align 4
	%104 = call %struct.string* @toString(i32 %103)
	%105 = call %struct.string* @_string_stringAppend(%struct.string* %99, %struct.string* %104)
	%106 = getelementptr %struct.string, %struct.string* %105, i32 0, i32 1
	%107 = load i8*, i8** %106, align 4
	call void @println(i8* %107)
	store i32 0, i32* %1, align 4
	br label %108

108:
	%109 = load i32, i32* %1, align 4
	ret i32 %109
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

