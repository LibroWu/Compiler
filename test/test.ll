%struct.string = type { i32, i8* }

@n = global i32 0, align 4
@a = global i32* null, align 8
@i = global i32 0, align 4

@.libro.str = constant [4 x i8] c"abc\00", align 1

define void @_global_var_init.0(){
	%1 = call i8* @myNew(i64 84)
	%2 = bitcast i8* %1 to i32*
	store i32 20, i32* %2, align 4
	%3 = bitcast i8* %1 to i32*
	store i32* %3, i32** @a, align 8
	ret void
}

define i32 @main(){
	%1 = alloca i32, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%2 = or i1 true, false
	br i1 %2, label %3, label %5

3:
	%4 = bitcast [4 x i8]* @.libro.str to i8*
	call void @println(i8* %4)
	br label %5

5:
	store i32 0, i32* %1, align 4
	br label %6

6:
	%7 = load i32, i32* %1, align 4
	ret i32 %7
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
declare i8* @getString()
declare i8* @myNew(i64)

