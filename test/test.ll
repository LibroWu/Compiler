%struct.string = type { i32, i8* }

define i32 @qpow(i32 %0,i32 %1,i32 %2){
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	%8 = alloca i32, align 4
	%9 = alloca i32, align 4
	store i32 0, i32* %4, align 4
	store i32 %0, i32* %5, align 4
	store i32 %1, i32* %6, align 4
	store i32 %2, i32* %7, align 4
	store i32 1, i32* %8, align 4
	%10 = load i32, i32* %5, align 4
	store i32 %10, i32* %9, align 4
	br label %11

;loop check block qpow loopDepth 1 iterCount 0
11:
	%12 = load i32, i32* %6, align 4
	%13 = icmp sgt i32 %12, 0
	br i1 %13, label %14, label %35

;loop body qpow loopDepth 1 iterCount 0
14:
	%15 = load i32, i32* %6, align 4
	%16 = and i32 %15, 1
	%17 = icmp eq i32 %16, 1
	br i1 %17, label %18, label %25

;True block in qpow selectCount 0
18:
	%19 = load i32, i32* %8, align 4
	%20 = load i32, i32* %9, align 4
	%21 = mul i32 %19, %20
	%22 = load i32, i32* %7, align 4
	%23 = srem i32 %21, %22
	%24 = load i32, i32* %8, align 4
	store i32 %23, i32* %8, align 4
	br label %25

;Converge block in qpow selectCount 0
25:
	%26 = load i32, i32* %9, align 4
	%27 = load i32, i32* %9, align 4
	%28 = mul i32 %26, %27
	%29 = load i32, i32* %7, align 4
	%30 = srem i32 %28, %29
	%31 = load i32, i32* %9, align 4
	store i32 %30, i32* %9, align 4
	%32 = load i32, i32* %6, align 4
	%33 = sdiv i32 %32, 2
	%34 = load i32, i32* %6, align 4
	store i32 %33, i32* %6, align 4
	br label %11

;loop exit block qpow loopDepth 1 iterCount 0
35:
	%36 = load i32, i32* %8, align 4
	store i32 %36, i32* %4, align 4
	br label %37

37:
	%38 = load i32, i32* %4, align 4
	ret i32 %38
}

define i32 @main(){
	%1 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%2 = call i32 @qpow(i32 2, i32 10, i32 10000)
	%3 = call %struct.string* @toString(i32 %2)
	%4 = getelementptr %struct.string, %struct.string* %3, i32 0, i32 1
	%5 = load i8*, i8** %4, align 4
	call void @println(i8* %5)
	store i32 0, i32* %1, align 4
	br label %6

6:
	%7 = load i32, i32* %1, align 4
	ret i32 %7
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

