%struct.string = type { i32, i8* }
%struct.AAA = type { %struct.string* }
%struct.BBB = type { %struct.AAA* }

@.libro.str = constant [6 x i8] c"abcde\00", align 1
@.libro.str.1 = constant [11 x i8] c"1234567890\00", align 1
@.libro.str.2 = constant [2 x i8] c"a\00", align 1
@.libro.str.3 = constant [2 x i8] c"b\00", align 1

define void @_AAA_AAAprint(%struct.AAA* %0){
;1 1
	%2 = getelementptr %struct.AAA, %struct.AAA* %0, i32 0, i32 0
	%3 = load %struct.string*, %struct.string** %2, align 4
	%4 = getelementptr %struct.string, %struct.string* %3, i32 0, i32 1
	%5 = load i8*, i8** %4, align 4
	call void @print(i8* %5)
	%6 = getelementptr %struct.AAA, %struct.AAA* %0, i32 0, i32 0
	%7 = load %struct.string*, %struct.string** %6, align 4
	%8 = call i32 @_string_length(%struct.string* %7)
	%9 = call %struct.string* @toString(i32 %8)
	%10 = getelementptr %struct.string, %struct.string* %9, i32 0, i32 1
	%11 = load i8*, i8** %10, align 4
	call void @print(i8* %11)
	br label %12

12:
;12 1
	ret void
}

define void @_AAA_AAA(%struct.AAA* %0){
;1 1
	%2 = getelementptr %struct.AAA, %struct.AAA* %0, i32 0, i32 0
	%3 = load %struct.string*, %struct.string** %2, align 4
	%4 = call i8* @myNew(i32 12)
	%5 = bitcast i8* %4 to %struct.string*
	%6 = getelementptr %struct.string, %struct.string* %5, i32 0, i32 0
	store i32 5, i32* %6, align 4
	%7 = bitcast [6 x i8]* @.libro.str to i8*
	%8 = getelementptr %struct.string, %struct.string* %5, i32 0, i32 1
	store i8* %7, i8** %8, align 4
	store %struct.string* %5, %struct.string** %2, align 4
	br label %9

9:
;9 1
	ret void
}

define void @_BBB_BBB(%struct.BBB* %0){
;1 1
	%2 = getelementptr %struct.BBB, %struct.BBB* %0, i32 0, i32 0
	%3 = load %struct.AAA*, %struct.AAA** %2, align 4
	%4 = getelementptr %struct.AAA, %struct.AAA* %3, i32 0, i32 0
	%5 = load %struct.string*, %struct.string** %4, align 4
	%6 = add i32 %5, @.libro.str.1
	%7 = getelementptr %struct.BBB, %struct.BBB* %0, i32 0, i32 0
	%8 = load %struct.AAA*, %struct.AAA** %7, align 4
	%9 = getelementptr %struct.AAA, %struct.AAA* %8, i32 0, i32 0
	%10 = load %struct.string*, %struct.string** %9, align 4
	store %struct.string* %6, %struct.string** %9, align 4
	br label %11

11:
;11 1
	ret void
}

define i32 @main(){
;0 0
	%1 = call i8* @myNew(i32 44)
	%2 = bitcast i8* %1 to i32*
	store i32 10, i32* %2, align 4
	%3 = bitcast i8* %1 to %struct.BBB***
	br label %4

;loop created by new check block main loopDepth 1 iterCount 0
4:
;4 0
	%5 = phi i32 [ 4, %0 ], [ %6, %8 ]
	%6 = add i32 %5, 4
	%7 = icmp slt i32 %5, 44
	br i1 %7, label %8, label %14

;loop created by new body main loopDepth 1 iterCount 0
8:
;8 4
	%9 = getelementptr i8, i8* %1, i32 %5
	%10 = call i8* @myNew(i32 44)
	%11 = bitcast i8* %10 to i32*
	store i32 10, i32* %11, align 4
	%12 = bitcast i8* %10 to %struct.BBB**
	%13 = bitcast i8* %9 to %struct.BBB***
	store %struct.BBB** %12, %struct.BBB*** %13, align 4
	br label %4

;loop created by new exit block main loopDepth 1 iterCount 0
14:
;14 4
	br label %15

;loop check block main loopDepth 1 iterCount 1
15:
;15 14
	%16 = phi i32 [ 1, %14 ], [ %25, %24 ]
	%17 = icmp sle i32 %16, 10
	br i1 %17, label %18, label %28

;loop body main loopDepth 1 iterCount 1
18:
;18 15
	%19 = sext i1 0 to i8
	%20 = trunc i8 %19 to i1
	br i1 %20, label %21, label %26

;True block in main selectCount 0
21:
;21 18
	%22 = bitcast [2 x i8]* @.libro.str.2 to i8*
	call void @print(i8* %22)
	br label %23

;Converge block in main selectCount 0
23:
;23 18
	br label %24

;loop increase block main loopDepth 1 iterCount 1
24:
;24 23
	%25 = add i32 %16, 1
	br label %15

;False block in main selectCount 0
26:
;26 18
	%27 = bitcast [2 x i8]* @.libro.str.3 to i8*
	call void @println(i8* %27)
	br label %23

;loop exit block main loopDepth 1 iterCount 1
28:
;28 15
	%29 = bitcast %struct.BBB*** %3 to i8*
	%30 = getelementptr i8, i8* %29, i32 24
	%31 = bitcast i8* %30 to %struct.BBB***
	%32 = load %struct.BBB**, %struct.BBB*** %31, align 4
	%33 = bitcast %struct.BBB** %32 to i8*
	%34 = getelementptr i8, i8* %33, i32 24
	%35 = bitcast i8* %34 to %struct.BBB**
	%36 = load %struct.BBB*, %struct.BBB** %35, align 4
	%37 = getelementptr %struct.BBB, %struct.BBB* %36, i32 0, i32 0
	%38 = load %struct.AAA*, %struct.AAA** %37, align 4
	call void @_AAA_AAAprint(%struct.AAA* %38)
	br label %39

39:
;39 28
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

