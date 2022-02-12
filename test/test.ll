%struct.string = type { i32, i8* }

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%5 = load i32, i32* %2, align 4
	store i32 1, i32* %2, align 4
	%6 = load i32, i32* %2, align 4
	%7 = load i32, i32* %2, align 4
	%8 = add i32 %6, %7
	%9 = load i32, i32* %2, align 4
	%10 = add i32 %8, %9
	%11 = load i32, i32* %2, align 4
	store i32 %10, i32* %2, align 4
	%12 = load i32, i32* %2, align 4
	store i32 %12, i32* %1, align 4
	br label %13

13:
	%14 = load i32, i32* %1, align 4
	ret i32 %14
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

