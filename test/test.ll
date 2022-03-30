%struct.string = type { i32, i8* }

@N = global i32 15000, align 4
@b = global i8* null, align 4
@resultCount = global i32 0, align 4

@.libro.str = constant [2 x i8] c" \00", align 1
@.libro.str.1 = constant [8 x i8] c"Total: \00", align 1

define void @_global_var_init.1(){
;0 0
	%1 = call i8* @myNew(i32 15005)
	%2 = bitcast i8* %1 to i32*
	store i32 15001, i32* %2, align 4
	store i8* %1, i8** @b, align 4
	ret void
}

define i32 @main(){
;0 0
	call void @_GLOBAL_()
	br label %1

;loop check block main loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 1, %0 ], [ %14, %13 ]
	%3 = load i32, i32* @N, align 4
	%4 = icmp sle i32 %2, %3
	br i1 %4, label %5, label %15

;loop body main loopDepth 1 iterCount 0
5:
;5 1
	%6 = load i8*, i8** @b, align 4
	%7 = mul i32 %2, 1
	%8 = add i32 %7, 4
	%9 = getelementptr i8, i8* %6, i32 %8
	%10 = bitcast i8* %9 to i8*
	%11 = load i8, i8* %10, align 1
	%12 = sext i1 1 to i8
	store i8 %12, i8* %10, align 1
	br label %13

;loop increase block main loopDepth 1 iterCount 0
13:
;13 5
	%14 = add i32 %2, 1
	br label %1

;loop exit block main loopDepth 1 iterCount 0
15:
;15 1
	br label %16

;loop check block main loopDepth 1 iterCount 1
16:
;16 15
	%17 = phi i32 [ 0, %15 ], [ %75, %76 ]
	%18 = phi i32 [ 2, %15 ], [ %77, %76 ]
	%19 = load i32, i32* @N, align 4
	%20 = icmp sle i32 %18, %19
	br i1 %20, label %21, label %78

;loop body main loopDepth 1 iterCount 1
21:
;21 16
	%22 = load i8*, i8** @b, align 4
	%23 = mul i32 %18, 1
	%24 = add i32 %23, 4
	%25 = getelementptr i8, i8* %22, i32 %24
	%26 = bitcast i8* %25 to i8*
	%27 = load i8, i8* %26, align 1
	%28 = trunc i8 %27 to i1
	br i1 %28, label %29, label %74

;True block in main selectCount 0
29:
;29 21
	%30 = icmp sgt i32 %18, 3
	br i1 %30, label %31, label %40

31:
;31 29
	%32 = load i8*, i8** @b, align 4
	%33 = sub i32 %18, 2
	%34 = mul i32 %33, 1
	%35 = add i32 %34, 4
	%36 = getelementptr i8, i8* %32, i32 %35
	%37 = bitcast i8* %36 to i8*
	%38 = load i8, i8* %37, align 1
	%39 = trunc i8 %38 to i1
	br label %40

40:
;40 29
	%41 = phi i1 [ 0, %29 ], [ %39, %31 ]
	br i1 %41, label %42, label %57

;True block in main selectCount 0
42:
;42 40
	%43 = load i32, i32* @resultCount, align 4
	%44 = add i32 %43, 1
	store i32 %44, i32* @resultCount, align 4
	%45 = sub i32 %18, 2
	%46 = call %struct.string* @toString(i32 %45)
	%47 = call i8* @myNew(i32 12)
	%48 = bitcast i8* %47 to %struct.string*
	%49 = getelementptr %struct.string, %struct.string* %48, i32 0, i32 0
	store i32 1, i32* %49, align 4
	%50 = bitcast [2 x i8]* @.libro.str to i8*
	%51 = getelementptr %struct.string, %struct.string* %48, i32 0, i32 1
	store i8* %50, i8** %51, align 4
	%52 = call %struct.string* @_string_stringAppend(%struct.string* %46, %struct.string* %48)
	%53 = call %struct.string* @toString(i32 %18)
	%54 = call %struct.string* @_string_stringAppend(%struct.string* %52, %struct.string* %53)
	%55 = getelementptr %struct.string, %struct.string* %54, i32 0, i32 1
	%56 = load i8*, i8** %55, align 4
	call void @println(i8* %56)
	br label %57

;Converge block in main selectCount 0
57:
;57 40
	br label %58

;loop check block main loopDepth 2 iterCount 1
58:
;58 57
	%59 = phi i32 [ 2, %57 ], [ %72, %63 ]
	%60 = mul i32 %18, %59
	%61 = load i32, i32* @N, align 4
	%62 = icmp sle i32 %60, %61
	br i1 %62, label %63, label %73

;loop body main loopDepth 2 iterCount 1
63:
;63 58
	%64 = load i8*, i8** @b, align 4
	%65 = mul i32 %18, %59
	%66 = mul i32 %65, 1
	%67 = add i32 %66, 4
	%68 = getelementptr i8, i8* %64, i32 %67
	%69 = bitcast i8* %68 to i8*
	%70 = load i8, i8* %69, align 1
	%71 = sext i1 0 to i8
	store i8 %71, i8* %69, align 1
	%72 = add i32 %59, 1
	br label %58

;loop exit block main loopDepth 2 iterCount 1
73:
;73 58
	br label %74

;Converge block in main selectCount 0
74:
;74 21
	%75 = phi i32 [ %17, %21 ], [ %59, %73 ]
	br label %76

;loop increase block main loopDepth 1 iterCount 1
76:
;76 74
	%77 = add i32 %18, 1
	br label %16

;loop exit block main loopDepth 1 iterCount 1
78:
;78 16
	%79 = call i8* @myNew(i32 12)
	%80 = bitcast i8* %79 to %struct.string*
	%81 = getelementptr %struct.string, %struct.string* %80, i32 0, i32 0
	store i32 7, i32* %81, align 4
	%82 = bitcast [8 x i8]* @.libro.str.1 to i8*
	%83 = getelementptr %struct.string, %struct.string* %80, i32 0, i32 1
	store i8* %82, i8** %83, align 4
	%84 = load i32, i32* @resultCount, align 4
	%85 = call %struct.string* @toString(i32 %84)
	%86 = call %struct.string* @_string_stringAppend(%struct.string* %80, %struct.string* %85)
	%87 = getelementptr %struct.string, %struct.string* %86, i32 0, i32 1
	%88 = load i8*, i8** %87, align 4
	call void @println(i8* %88)
	br label %89

89:
;89 78
	ret i32 0
}

define void @_GLOBAL_(){
;0 0
	call void @_global_var_init.1()
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
declare %struct.string* @getString()
declare i8* @myNew(i32)

