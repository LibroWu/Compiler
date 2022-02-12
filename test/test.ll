%struct.string = type { i32, i8* }

@n = global i32 0, align 4
@p = global i32 0, align 4
@k = global i32 0, align 4
@i = global i32 0, align 4

@.libro.str = constant [4 x i8] c"<< \00", align 1
@.libro.str.1 = constant [2 x i8] c"(\00", align 1
@.libro.str.2 = constant [3 x i8] c") \00", align 1
@.libro.str.3 = constant [2 x i8] c" \00", align 1
@.libro.str.4 = constant [4 x i8] c">> \00", align 1

define i32 @main(){
	%1 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%2 = call i32 @getInt()
	%3 = load i32, i32* @n, align 4
	store i32 %2, i32* @n, align 4
	%4 = call i32 @getInt()
	%5 = load i32, i32* @p, align 4
	store i32 %4, i32* @p, align 4
	%6 = call i32 @getInt()
	%7 = load i32, i32* @k, align 4
	store i32 %6, i32* @k, align 4
	%8 = load i32, i32* @p, align 4
	%9 = load i32, i32* @k, align 4
	%10 = sub i32 %8, %9
	%11 = icmp sgt i32 %10, 1
	br i1 %11, label %12, label %14

12:
	%13 = bitcast [4 x i8]* @.libro.str to i8*
	call void @print(i8* %13)
	br label %14

14:
	%15 = load i32, i32* @p, align 4
	%16 = load i32, i32* @k, align 4
	%17 = sub i32 %15, %16
	%18 = load i32, i32* @i, align 4
	store i32 %17, i32* @i, align 4
	br label %19

19:
	%20 = load i32, i32* @i, align 4
	%21 = load i32, i32* @p, align 4
	%22 = load i32, i32* @k, align 4
	%23 = add i32 %21, %22
	%24 = icmp sle i32 %20, %23
	br i1 %24, label %25, label %53

25:
	%26 = load i32, i32* @i, align 4
	%27 = icmp sle i32 1, %26
	br i1 %27, label %28, label %32

28:
	%29 = load i32, i32* @i, align 4
	%30 = load i32, i32* @n, align 4
	%31 = icmp sle i32 %29, %30
	br label %32

32:
	%33 = phi i1 [ 0, %25 ], [ %31, %28 ]
	br i1 %33, label %34, label %49

34:
	%35 = load i32, i32* @i, align 4
	%36 = load i32, i32* @p, align 4
	%37 = icmp eq i32 %35, %36
	br i1 %37, label %38, label %45

38:
	%39 = bitcast [2 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %39)
	%40 = load i32, i32* @i, align 4
	%41 = call %struct.string* @toString(i32 %40)
	%42 = getelementptr %struct.string, %struct.string* %41, i32 0, i32 1
	%43 = load i8*, i8** %42, align 4
	call void @print(i8* %43)
	%44 = bitcast [3 x i8]* @.libro.str.2 to i8*
	call void @print(i8* %44)
	br label %48

45:
	%46 = load i32, i32* @i, align 4
	call void @printInt(i32 %46)
	%47 = bitcast [2 x i8]* @.libro.str.3 to i8*
	call void @print(i8* %47)
	br label %48

48:
	br label %49

49:
	br label %50

50:
	%51 = load i32, i32* @i, align 4
	%52 = add i32 %51, 1
	store i32 %52, i32* @i, align 4
	br label %19

53:
	%54 = load i32, i32* @p, align 4
	%55 = load i32, i32* @k, align 4
	%56 = add i32 %54, %55
	%57 = load i32, i32* @n, align 4
	%58 = icmp slt i32 %56, %57
	br i1 %58, label %59, label %61

59:
	%60 = bitcast [4 x i8]* @.libro.str.4 to i8*
	call void @print(i8* %60)
	br label %61

61:
	store i32 0, i32* %1, align 4
	br label %62

62:
	%63 = load i32, i32* %1, align 4
	ret i32 %63
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

