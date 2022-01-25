%struct.string = type { i32, i8* }

@n = global i32 0, align 4
@a = global i32* null, align 8
@i = global i32 0, align 4

@.libro.str = constant [6 x i8] c"hello\00", align 1
@.libro.str.1 = constant [15 x i8] c"error shortcut\00", align 1

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
	%2 = alloca i8, align 1
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	store i8 0, i8* %2, align 1
	br label %3

3:
	br label %4

4:
	br label %5

5:
	br label %6

6:
	br label %7

7:
	%8 = load i8, i8* %2, align 1
	%9 = sext i1 1 to i8
	store i8 %9, i8* %2, align 1
	br label %10

10:
	%11 = phi i1 [ 0, %4 ], [ 0, %5 ], [ 0, %6 ], [ 1, %7 ]
	br label %12

12:
	%13 = phi i1 [ 1, %0 ], [ 1, %3 ], [ 1, %10 ]
	br label %14

14:
	%15 = bitcast [6 x i8]* @.libro.str to i8*
	call void @println(i8* %15)
	br label %16

16:
	%17 = load i8, i8* %2, align 1
	%18 = trunc i8 %17 to i1
	br i1 %18, label %19, label %21

19:
	%20 = bitcast [15 x i8]* @.libro.str.1 to i8*
	call void @println(i8* %20)
	br label %21

21:
	store i32 0, i32* %1, align 4
	br label %22

22:
	%23 = load i32, i32* %1, align 4
	ret i32 %23
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

