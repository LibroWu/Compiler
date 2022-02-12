%struct.string = type { i32, i8* }

define i32 @f(i32 %0,i32 %1,i32 %2,i32 %3,i32 %4,i32 %5,i32 %6,i32 %7,i32 %8){
	%10 = alloca i32, align 4
	%11 = alloca i32, align 4
	%12 = alloca i32, align 4
	%13 = alloca i32, align 4
	%14 = alloca i32, align 4
	%15 = alloca i32, align 4
	%16 = alloca i32, align 4
	%17 = alloca i32, align 4
	%18 = alloca i32, align 4
	%19 = alloca i32, align 4
	store i32 0, i32* %10, align 4
	store i32 %0, i32* %11, align 4
	store i32 %1, i32* %12, align 4
	store i32 %2, i32* %13, align 4
	store i32 %3, i32* %14, align 4
	store i32 %4, i32* %15, align 4
	store i32 %5, i32* %16, align 4
	store i32 %6, i32* %17, align 4
	store i32 %7, i32* %18, align 4
	store i32 %8, i32* %19, align 4
	%20 = load i32, i32* %11, align 4
	%21 = load i32, i32* %12, align 4
	%22 = add i32 %20, %21
	%23 = load i32, i32* %13, align 4
	%24 = add i32 %22, %23
	%25 = load i32, i32* %14, align 4
	%26 = add i32 %24, %25
	%27 = load i32, i32* %15, align 4
	%28 = add i32 %26, %27
	%29 = load i32, i32* %16, align 4
	%30 = add i32 %28, %29
	%31 = load i32, i32* %17, align 4
	%32 = add i32 %30, %31
	%33 = load i32, i32* %18, align 4
	%34 = add i32 %32, %33
	%35 = load i32, i32* %19, align 4
	%36 = add i32 %34, %35
	store i32 %36, i32* %10, align 4
	br label %37

37:
	%38 = load i32, i32* %10, align 4
	ret i32 %38
}

define i32 @main(){
	%1 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%2 = call i32 @f(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9)
	store i32 %2, i32* %1, align 4
	br label %3

3:
	%4 = load i32, i32* %1, align 4
	ret i32 %4
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

