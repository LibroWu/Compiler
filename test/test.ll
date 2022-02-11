%struct.string = type { i32, i8* }

define i32 @tak(i32 %0,i32 %1,i32 %2){
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	store i32 0, i32* %4, align 4
	store i32 %0, i32* %5, align 4
	store i32 %1, i32* %6, align 4
	store i32 %2, i32* %7, align 4
	%8 = load i32, i32* %6, align 4
	%9 = load i32, i32* %5, align 4
	%10 = icmp slt i32 %8, %9
	br i1 %10, label %11, label %29

11:
	%12 = load i32, i32* %5, align 4
	%13 = sub i32 %12, 1
	%14 = load i32, i32* %6, align 4
	%15 = load i32, i32* %7, align 4
	%16 = call i32 @tak(i32 %13, i32 %14, i32 %15)
	%17 = load i32, i32* %6, align 4
	%18 = sub i32 %17, 1
	%19 = load i32, i32* %7, align 4
	%20 = load i32, i32* %5, align 4
	%21 = call i32 @tak(i32 %18, i32 %19, i32 %20)
	%22 = load i32, i32* %7, align 4
	%23 = sub i32 %22, 1
	%24 = load i32, i32* %5, align 4
	%25 = load i32, i32* %6, align 4
	%26 = call i32 @tak(i32 %23, i32 %24, i32 %25)
	%27 = call i32 @tak(i32 %16, i32 %21, i32 %26)
	%28 = add i32 1, %27
	store i32 %28, i32* %4, align 4
	br label %32

29:
	%30 = load i32, i32* %7, align 4
	store i32 %30, i32* %4, align 4
	br label %32

31:
	store i32 0, i32* %4, align 4
	br label %32

32:
	%33 = load i32, i32* %4, align 4
	ret i32 %33
}

define i32 @main(){
	%1 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%2 = call i32 @tak(i32 18, i32 12, i32 6)
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

