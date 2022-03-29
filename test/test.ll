%struct.string = type { i32, i8* }
%struct.A = type { i32 }

@.libro.str = constant [18 x i8] c"thisisastring//\5C\0A\00", align 1

define void @_A_A(%struct.A* %0){
	%2 = alloca %struct.A*, align 4
;1 4
	store %struct.A* %0, %struct.A** %2, align 4
	br label %3

3:
;3 4
	ret void
}

define i32 @B(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
;0 10
	store i32 0, i32* %1, align 4
	%5 = load i32, i32* %4, align 4
	%6 = add i32 %5, 1
	%7 = load i32, i32* %2, align 4
	store i32 %7, i32* %1, align 4
	br label %8

8:
;8 10
	%9 = load i32, i32* %1, align 4
	ret i32 %9
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i8**, align 4
	%4 = alloca %struct.string*, align 4
;0 35
	store i32 0, i32* %1, align 4
	%5 = call i8* @myNew(i32 16)
	%6 = bitcast i8* %5 to i32*
	store i32 3, i32* %6, align 4
	store i8** %5, i8*** %3, align 4
	%7 = load i8**, i8*** %3, align 4
	store i8** null, i8*** %3, align 4
	%8 = call i32 @getInt()
	%9 = call %struct.string* @toString(i32 %8)
	store %struct.string* %9, %struct.string** %4, align 4
	%10 = load i32, i32* %2, align 4
	store i32 1, i32* %2, align 4
	br label %11

;loop check block main loopDepth 1 iterCount 0
11:
;11 35
	%12 = load i32, i32* %2, align 4
	%13 = load %struct.string*, %struct.string** %4, align 4
	%14 = call i8* @myNew(i32 12)
	%15 = bitcast i8* %14 to %struct.string*
	%16 = getelementptr %struct.string, %struct.string* %15, i32 0, i32 0
	store i32 17, i32* %16, align 4
	%17 = bitcast [18 x i8]* @.libro.str to i8*
	%18 = getelementptr %struct.string, %struct.string* %15, i32 0, i32 1
	store i8* %17, i8** %18, align 4
	%19 = call %struct.string* @_string_stringAppend(%struct.string* %13, %struct.string* %15)
	%20 = call %struct.string* @_string_substring(%struct.string* %19, i32 1, i32 3)
	%21 = call i32 @_string_ord(%struct.string* %20, i32 0)
	%22 = icmp slt i32 %12, %21
	br i1 %22, label %23, label %32

;loop body main loopDepth 1 iterCount 0
23:
;23 35
	br label %24

;loop increase block main loopDepth 1 iterCount 0
24:
;24 35
	%25 = load i32, i32* %2, align 4
	%26 = load i8**, i8*** %3, align 4
	%27 = bitcast i8** %26 to i32*
	%28 = getelementptr i32, i32* %27, i32 0
	%29 = load i32, i32* %28, align 4
	%30 = add i32 %25, %29
	%31 = load i32, i32* %2, align 4
	store i32 %30, i32* %2, align 4
	br label %11

;loop exit block main loopDepth 1 iterCount 0
32:
;32 35
	store i32 0, i32* %1, align 4
	br label %33

33:
;33 35
	%34 = load i32, i32* %1, align 4
	ret i32 %34
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

