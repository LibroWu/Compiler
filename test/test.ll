%struct.string = type { i32, i8* }

@n = global i32 0, align 4

@.libro.str = constant [2 x i8] c"2\00", align 1
@.libro.str.1 = constant [2 x i8] c" \00", align 1
@.libro.str.2 = constant [2 x i8] c"1\00", align 1
@.libro.str.3 = constant [2 x i8] c"3\00", align 1
@.libro.str.4 = constant [2 x i8] c" \00", align 1
@.libro.str.5 = constant [2 x i8] c" \00", align 1

define void @init(){
;0 0
	%1 = call i32 @getInt()
	%2 = load i32, i32* @n, align 4
	store i32 %1, i32* @n, align 4
	br label %3

3:
;3 0
	ret void
}

define i8 @is_prime(i32 %0){
;1 1
	%2 = icmp eq i32 %0, 1
	br i1 %2, label %3, label %6

3:
;3 1
	%4 = phi i32 [ 0, %1 ], [ %7, %6 ], [ %7, %10 ]
	%5 = phi i8 [ 0, %1 ], [ 1, %6 ], [ 0, %10 ]
	ret i8 %5

;loop check block is_prime loopDepth 1 iterCount 0
6:
;6 15
	%7 = phi i32 [ 2, %1 ], [ %14, %13 ]
	%8 = mul i32 %7, %7
	%9 = icmp sle i32 %8, %0
	br i1 %9, label %10, label %3

;loop body is_prime loopDepth 1 iterCount 0
10:
;10 6
	%11 = srem i32 %0, %7
	%12 = icmp eq i32 %11, 0
	br i1 %12, label %3, label %13

;loop increase block is_prime loopDepth 1 iterCount 0
13:
;13 16
	%14 = add i32 %7, 1
	br label %6
}

define void @find(i32 %0,i32 %1){
;2 2
	%3 = call i8 @is_prime(i32 %0)
	%4 = trunc i8 %3 to i1
	br i1 %4, label %5, label %28

;True block in find selectCount 0
5:
;5 2
	%6 = icmp sgt i32 %1, 0
	br i1 %6, label %7, label %23

;True block in find selectCount 0
7:
;7 5
	%8 = bitcast [2 x i8]* @.libro.str to i8*
	call void @println(i8* %8)
	%9 = call %struct.string* @toString(i32 %1)
	%10 = call i8* @myNew(i32 12)
	%11 = bitcast i8* %10 to %struct.string*
	%12 = getelementptr %struct.string, %struct.string* %11, i32 0, i32 0
	store i32 1, i32* %12, align 4
	%13 = bitcast [2 x i8]* @.libro.str.1 to i8*
	%14 = getelementptr %struct.string, %struct.string* %11, i32 0, i32 1
	store i8* %13, i8** %14, align 4
	%15 = call %struct.string* @_string_stringAppend(%struct.string* %9, %struct.string* %11)
	%16 = call %struct.string* @toString(i32 %0)
	%17 = call %struct.string* @_string_stringAppend(%struct.string* %15, %struct.string* %16)
	%18 = getelementptr %struct.string, %struct.string* %17, i32 0, i32 1
	%19 = load i8*, i8** %18, align 4
	call void @println(i8* %19)
	br label %20

20:
;20 2
	%21 = phi i32 [ 0, %7 ], [ %78, %79 ], [ %33, %37 ], [ 0, %56 ]
	%22 = phi i32 [ 0, %7 ], [ %80, %79 ], [ 5, %37 ], [ %44, %56 ]
	ret void

;False block in find selectCount 0
23:
;23 5
	%24 = bitcast [2 x i8]* @.libro.str.2 to i8*
	call void @println(i8* %24)
	%25 = call %struct.string* @toString(i32 %0)
	%26 = getelementptr %struct.string, %struct.string* %25, i32 0, i32 1
	%27 = load i8*, i8** %26, align 4
	call void @println(i8* %27)
	br label %20

;Converge block in find selectCount 0
28:
;28 2
	%29 = icmp eq i32 %1, -1
	br i1 %29, label %30, label %41

;True block in find selectCount 2
30:
;30 28
	%31 = sub i32 %0, 2
	br label %32

;loop check block find loopDepth 1 iterCount 0
32:
;32 30
	%33 = phi i32 [ %31, %30 ], [ %40, %39 ]
	br label %34

;loop body find loopDepth 1 iterCount 0
34:
;34 32
	%35 = call i8 @is_prime(i32 %33)
	%36 = trunc i8 %35 to i1
	br i1 %36, label %37, label %39

;True block in find selectCount 2
37:
;37 34
	%38 = sub i32 %0, %33
	call void @find(i32 %38, i32 %33)
	br label %20

;loop increase block find loopDepth 1 iterCount 0
39:
;39 81
	%40 = sub i32 %33, 1
	br label %32

;False block in find selectCount 2
41:
;41 28
	%42 = sub i32 %0, 1
	br label %43

;loop check block find loopDepth 1 iterCount 1
43:
;43 41
	%44 = phi i32 [ %42, %41 ], [ %55, %54 ]
	br label %45

;loop body find loopDepth 1 iterCount 1
45:
;45 43
	%46 = call i8 @is_prime(i32 %44)
	%47 = trunc i8 %46 to i1
	br i1 %47, label %48, label %52

48:
;48 45
	%49 = sub i32 %0, %44
	%50 = call i8 @is_prime(i32 %49)
	%51 = trunc i8 %50 to i1
	br label %52

52:
;52 45
	%53 = phi i1 [ 0, %45 ], [ %51, %48 ]
	br i1 %53, label %56, label %54

;loop increase block find loopDepth 1 iterCount 1
54:
;54 82
	%55 = sub i32 %44, 1
	br label %43

;True block in find selectCount 3
56:
;56 52
	%57 = bitcast [2 x i8]* @.libro.str.3 to i8*
	call void @println(i8* %57)
	%58 = call %struct.string* @toString(i32 %1)
	%59 = call i8* @myNew(i32 12)
	%60 = bitcast i8* %59 to %struct.string*
	%61 = getelementptr %struct.string, %struct.string* %60, i32 0, i32 0
	store i32 1, i32* %61, align 4
	%62 = bitcast [2 x i8]* @.libro.str.4 to i8*
	%63 = getelementptr %struct.string, %struct.string* %60, i32 0, i32 1
	store i8* %62, i8** %63, align 4
	%64 = call %struct.string* @_string_stringAppend(%struct.string* %58, %struct.string* %60)
	%65 = call %struct.string* @toString(i32 %44)
	%66 = call %struct.string* @_string_stringAppend(%struct.string* %64, %struct.string* %65)
	%67 = call i8* @myNew(i32 12)
	%68 = bitcast i8* %67 to %struct.string*
	%69 = getelementptr %struct.string, %struct.string* %68, i32 0, i32 0
	store i32 1, i32* %69, align 4
	%70 = bitcast [2 x i8]* @.libro.str.5 to i8*
	%71 = getelementptr %struct.string, %struct.string* %68, i32 0, i32 1
	store i8* %70, i8** %71, align 4
	%72 = call %struct.string* @_string_stringAppend(%struct.string* %66, %struct.string* %68)
	%73 = sub i32 %0, %44
	%74 = call %struct.string* @toString(i32 %73)
	%75 = call %struct.string* @_string_stringAppend(%struct.string* %72, %struct.string* %74)
	%76 = getelementptr %struct.string, %struct.string* %75, i32 0, i32 1
	%77 = load i8*, i8** %76, align 4
	call void @println(i8* %77)
	br label %20
}

define void @work(){
;0 0
	%1 = load i32, i32* @n, align 4
	call void @find(i32 %1, i32 -1)
	br label %2

2:
;2 0
	ret void
}

define i32 @main(){
;0 0
	call void @init()
	call void @work()
	br label %1

1:
;1 0
	ret i32 0
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

