%struct.string = type { i32, i8* }

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	store i32 10, i32* %2, align 4
	store i32 0, i32* %3, align 4
	store i32 1, i32* %4, align 4
	%7 = load i32, i32* %6, align 4
	store i32 1, i32* %6, align 4
	br label %8

8:
	%9 = load i32, i32* %6, align 4
	%10 = load i32, i32* %2, align 4
	%11 = icmp slt i32 %9, %10
	br i1 %11, label %12, label %24

12:
	%13 = load i32, i32* %3, align 4
	%14 = load i32, i32* %4, align 4
	%15 = add i32 %13, %14
	%16 = load i32, i32* %5, align 4
	store i32 %15, i32* %5, align 4
	%17 = load i32, i32* %4, align 4
	%18 = load i32, i32* %3, align 4
	store i32 %17, i32* %3, align 4
	%19 = load i32, i32* %5, align 4
	%20 = load i32, i32* %4, align 4
	store i32 %19, i32* %4, align 4
	br label %21

21:
	%22 = load i32, i32* %6, align 4
	%23 = add i32 %22, 1
	store i32 %23, i32* %6, align 4
	br label %8

24:
	%25 = load i32, i32* %5, align 4
	store i32 %25, i32* %1, align 4
	br label %26

26:
	%27 = load i32, i32* %1, align 4
	ret i32 %27
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

