%struct.string = type { i32, i8* }

@.libro.str = constant [12 x i8] c"hello world\00", align 1
@.libro.str.1 = constant [2 x i8] c"!\00", align 1
@.libro.str.2 = constant [4 x i8] c"%c\0A\00", align 1
@.libro.str.3 = constant [4 x i8] c"123\00", align 1
@.libro.str.4 = constant [2 x i8] c"a\00", align 1
@.libro.str.5 = constant [2 x i8] c"b\00", align 1

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca %struct.string*, align 8
	%3 = alloca %struct.string*, align 8
	store i32 0, i32* %1, align 4
	%4 = call i8* @myNew(i64 12)
	%5 = bitcast i8* %4 to %struct.string*
	%6 = getelementptr %struct.string, %struct.string* %5, i64 0, i32 0
	store i32 11, i32* %6, align 4
	%7 = bitcast [12 x i8]* @.libro.str to i8*
	%8 = getelementptr %struct.string, %struct.string* %5, i64 0, i32 1
	store i8* %7, i8** %8, align 8
	%9 = call i8* @myNew(i64 12)
	%10 = bitcast i8* %9 to %struct.string*
	%11 = getelementptr %struct.string, %struct.string* %10, i64 0, i32 0
	store i32 1, i32* %11, align 4
	%12 = bitcast [2 x i8]* @.libro.str.1 to i8*
	%13 = getelementptr %struct.string, %struct.string* %10, i64 0, i32 1
	store i8* %12, i8** %13, align 8
	%14 = call %struct.string* @_string_stringAppend(%struct.string* %5, %struct.string* %10)
	%15 = load %struct.string*, %struct.string** %2, align 8
	store %struct.string* %14, %struct.string** %2, align 8
	%16 = load %struct.string*, %struct.string** %2, align 8
	%17 = load %struct.string*, %struct.string** %2, align 8
	%18 = call %struct.string* @_string_stringAppend(%struct.string* %16, %struct.string* %17)
	%19 = load %struct.string*, %struct.string** %3, align 8
	store %struct.string* %18, %struct.string** %3, align 8
	%20 = load %struct.string*, %struct.string** %3, align 8
	%21 = call i32 @_string_length(%struct.string* %20)
	call void @printInt(i32 %21)
	%22 = bitcast [4 x i8]* @.libro.str.2 to i8*
	call void @println(i8* %22)
	%23 = load %struct.string*, %struct.string** %3, align 8
	%24 = getelementptr %struct.string, %struct.string* %23, i64 0, i32 1
	%25 = load i8*, i8** %24, align 8
	call void @println(i8* %25)
	%26 = load %struct.string*, %struct.string** %3, align 8
	%27 = call i32 @_string_ord(%struct.string* %26, i32 4)
	call void @printlnInt(i32 %27)
	%28 = call i8* @myNew(i64 12)
	%29 = bitcast i8* %28 to %struct.string*
	%30 = getelementptr %struct.string, %struct.string* %29, i64 0, i32 0
	store i32 3, i32* %30, align 4
	%31 = bitcast [4 x i8]* @.libro.str.3 to i8*
	%32 = getelementptr %struct.string, %struct.string* %29, i64 0, i32 1
	store i8* %31, i8** %32, align 8
	%33 = load %struct.string*, %struct.string** %3, align 8
	%34 = call %struct.string* @_string_stringAppend(%struct.string* %29, %struct.string* %33)
	%35 = load %struct.string*, %struct.string** %3, align 8
	store %struct.string* %34, %struct.string** %3, align 8
	%36 = load %struct.string*, %struct.string** %3, align 8
	%37 = call i32 @_string_parseInt(%struct.string* %36)
	call void @printlnInt(i32 %37)
	%38 = call i8* @myNew(i64 12)
	%39 = bitcast i8* %38 to %struct.string*
	%40 = getelementptr %struct.string, %struct.string* %39, i64 0, i32 0
	store i32 1, i32* %40, align 4
	%41 = bitcast [2 x i8]* @.libro.str.4 to i8*
	%42 = getelementptr %struct.string, %struct.string* %39, i64 0, i32 1
	store i8* %41, i8** %42, align 8
	%43 = call i8* @myNew(i64 12)
	%44 = bitcast i8* %43 to %struct.string*
	%45 = getelementptr %struct.string, %struct.string* %44, i64 0, i32 0
	store i32 1, i32* %45, align 4
	%46 = bitcast [2 x i8]* @.libro.str.5 to i8*
	%47 = getelementptr %struct.string, %struct.string* %44, i64 0, i32 1
	store i8* %46, i8** %47, align 8
	%48 = call i32 @_string_getStrcmp(%struct.string* %39, %struct.string* %44)
	%49 = icmp sge i32 %48, 0
	br i1 %49, label %50, label %51

50:
	store i32 10, i32* %1, align 4
	br label %52

51:
	store i32 0, i32* %1, align 4
	br label %52

52:
	%53 = load i32, i32* %1, align 8
	ret i32 %53
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

