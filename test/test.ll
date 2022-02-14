%struct.string = type { i32, i8* }

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	store i32 0, i32* %2, align 4
	br label %3

3:
	%4 = load i32, i32* %2, align 4
	%5 = icmp slt i32 %4, 100
	br i1 %5, label %6, label %11

6:
	%7 = load i32, i32* %2, align 4
	call void @printlnInt(i32 %7)
	br label %8

8:
	%9 = load i32, i32* %2, align 4
	%10 = add i32 %9, 1
	store i32 %10, i32* %2, align 4
	br label %3

11:
	store i32 0, i32* %1, align 4
	br label %12

12:
	%13 = load i32, i32* %1, align 4
	ret i32 %13
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

