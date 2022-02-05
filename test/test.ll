%struct.string = type { i32, i8* }

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i8, align 1
	%3 = alloca i8, align 1
	%4 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%5 = sext i1 0 to i8
	store i8 %5, i8* %2, align 1
	%6 = sext i1 0 to i8
	store i8 %6, i8* %3, align 1
	%7 = load i8, i8* %2, align 1
	%8 = sext i1 1 to i8
	store i8 %8, i8* %2, align 1
	br label %9

9:
	%10 = phi i1 [ 1, %0 ]
	%11 = load i8, i8* %2, align 1
	%12 = trunc i8 %11 to i1
	br i1 %12, label %13, label %14

13:
	call void @printlnInt(i32 1)
	br label %14

14:
	%15 = load i8, i8* %3, align 1
	%16 = trunc i8 %15 to i1
	br i1 %16, label %17, label %18

17:
	call void @printlnInt(i32 2)
	br label %18

18:
	store i32 2048, i32* %4, align 4
	store i32 0, i32* %1, align 4
	br label %19

19:
	%20 = load i32, i32* %1, align 4
	ret i32 %20
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

