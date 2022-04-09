%struct.string = type { i32, i8* }

@a = global i32** null, align 4
@str = global %struct.string** null, align 4

@.libro.str = constant [5 x i8] c"str1\00", align 1
@.libro.str.1 = constant [5 x i8] c"str2\00", align 1
@.libro.str.2 = constant [5 x i8] c"str3\00", align 1
@.libro.str.3 = constant [5 x i8] c"str4\00", align 1
@.libro.str.4 = constant [5 x i8] c"str5\00", align 1
@.libro.str.5 = constant [5 x i8] c"str6\00", align 1
@.libro.str.6 = constant [5 x i8] c"str7\00", align 1
@.libro.str.7 = constant [5 x i8] c"str8\00", align 1
@.libro.str.8 = constant [5 x i8] c"str9\00", align 1
@.libro.str.9 = constant [6 x i8] c"str10\00", align 1

define void @_global_var_init.0(){
	%1 = alloca i32, align 4;for new loop
;0 16
	%2 = call i8* @myNew(i32 124)
	%3 = bitcast i8* %2 to i32*
	store i32 30, i32* %3, align 4
	%4 = bitcast i8* %2 to i32**
	store i32 4, i32* %1, align 4
	br label %5

;loop created by new check block _global_var_init.0 loopDepth 1 iterCount 0
5:
;5 16
	%6 = load i32, i32* %1, align 4
	%7 = add i32 %6, 4
	store i32 %7, i32* %1, align 4
	%8 = icmp slt i32 %6, 124
	br i1 %8, label %9, label %15

;loop created by new body _global_var_init.0 loopDepth 1 iterCount 0
9:
;9 16
	%10 = getelementptr i8, i8* %2, i32 %6
	%11 = call i8* @myNew(i32 124)
	%12 = bitcast i8* %11 to i32*
	store i32 30, i32* %12, align 4
	%13 = bitcast i8* %11 to i32*
	%14 = bitcast i8* %10 to i32**
	store i32* %13, i32** %14, align 4
	br label %5

;loop created by new exit block _global_var_init.0 loopDepth 1 iterCount 0
15:
;15 16
	store i32** %4, i32*** @a, align 4
	ret void
}

define void @_global_var_init.1(){
;0 4
	%1 = call i8* @myNew(i32 124)
	%2 = bitcast i8* %1 to i32*
	store i32 30, i32* %2, align 4
	%3 = bitcast i8* %1 to %struct.string**
	store %struct.string** %3, %struct.string*** @str, align 4
	ret void
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
;0 154
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%5 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %6

;loop check block main loopDepth 1 iterCount 0
6:
;6 154
	%7 = load i32, i32* %2, align 4
	%8 = icmp sle i32 %7, 29
	br i1 %8, label %9, label %151

;loop body main loopDepth 1 iterCount 0
9:
;9 154
	store i32 0, i32* %4, align 4
	%10 = load i32**, i32*** @a, align 4
	%11 = load i32, i32* %2, align 4
	%12 = mul i32 %11, 4
	%13 = add i32 %12, 4
	%14 = bitcast i32** %10 to i8*
	%15 = getelementptr i8, i8* %14, i32 %13
	%16 = bitcast i8* %15 to i32**
	%17 = load i32*, i32** %16, align 4
	%18 = mul i32 0, 4
	%19 = add i32 %18, 4
	%20 = bitcast i32* %17 to i8*
	%21 = getelementptr i8, i8* %20, i32 %19
	%22 = bitcast i8* %21 to i32*
	%23 = load i32, i32* %22, align 4
	%24 = call %struct.string* @toString(i32 %23)
	%25 = load %struct.string**, %struct.string*** @str, align 4
	%26 = load i32, i32* %2, align 4
	%27 = mul i32 %26, 4
	%28 = add i32 %27, 4
	%29 = bitcast %struct.string** %25 to i8*
	%30 = getelementptr i8, i8* %29, i32 %28
	%31 = bitcast i8* %30 to %struct.string**
	%32 = load %struct.string*, %struct.string** %31, align 4
	store %struct.string* %24, %struct.string** %31, align 4
	%33 = load i32, i32* %3, align 4
	store i32 0, i32* %3, align 4
	br label %34

;loop check block main loopDepth 2 iterCount 0
34:
;34 154
	%35 = load i32, i32* %3, align 4
	%36 = load i32, i32* %2, align 4
	%37 = icmp slt i32 %35, %36
	br i1 %37, label %38, label %86

;loop body main loopDepth 2 iterCount 0
38:
;38 154
	%39 = load i32, i32* %3, align 4
	%40 = and i32 %39, 1
	%41 = icmp eq i32 %40, 0
	br i1 %41, label %68, label %42

;Converge block in main selectCount 0
42:
;42 154
	%43 = load i32, i32* %3, align 4
	%44 = and i32 %43, 1
	%45 = icmp eq i32 %44, 1
	br i1 %45, label %46, label %64

;True block in main selectCount 1
46:
;46 154
	%47 = load i32, i32* %4, align 4
	%48 = load i32**, i32*** @a, align 4
	%49 = load i32, i32* %2, align 4
	%50 = mul i32 %49, 4
	%51 = add i32 %50, 4
	%52 = bitcast i32** %48 to i8*
	%53 = getelementptr i8, i8* %52, i32 %51
	%54 = bitcast i8* %53 to i32**
	%55 = load i32*, i32** %54, align 4
	%56 = mul i32 29, 4
	%57 = add i32 %56, 4
	%58 = bitcast i32* %55 to i8*
	%59 = getelementptr i8, i8* %58, i32 %57
	%60 = bitcast i8* %59 to i32*
	%61 = load i32, i32* %60, align 4
	%62 = add i32 %47, %61
	%63 = load i32, i32* %4, align 4
	store i32 %62, i32* %4, align 4
	br label %64

;Converge block in main selectCount 1
64:
;64 154
	br label %65

;loop increase block main loopDepth 2 iterCount 0
65:
;65 154
	%66 = load i32, i32* %3, align 4
	%67 = add i32 %66, 1
	store i32 %67, i32* %3, align 4
	br label %34

;True block in main selectCount 0
68:
;68 154
	%69 = load i32, i32* %4, align 4
	%70 = load i32**, i32*** @a, align 4
	%71 = load i32, i32* %2, align 4
	%72 = mul i32 %71, 4
	%73 = add i32 %72, 4
	%74 = bitcast i32** %70 to i8*
	%75 = getelementptr i8, i8* %74, i32 %73
	%76 = bitcast i8* %75 to i32**
	%77 = load i32*, i32** %76, align 4
	%78 = mul i32 0, 4
	%79 = add i32 %78, 4
	%80 = bitcast i32* %77 to i8*
	%81 = getelementptr i8, i8* %80, i32 %79
	%82 = bitcast i8* %81 to i32*
	%83 = load i32, i32* %82, align 4
	%84 = add i32 %69, %83
	%85 = load i32, i32* %4, align 4
	store i32 %84, i32* %4, align 4
	br label %42

;loop exit block main loopDepth 2 iterCount 0
86:
;86 154
	%87 = call i8* @myNew(i32 12)
	%88 = bitcast i8* %87 to %struct.string*
	%89 = getelementptr %struct.string, %struct.string* %88, i32 0, i32 0
	store i32 4, i32* %89, align 4
	%90 = bitcast [5 x i8]* @.libro.str to i8*
	%91 = getelementptr %struct.string, %struct.string* %88, i32 0, i32 1
	store i8* %90, i8** %91, align 4
	%92 = call i8* @myNew(i32 12)
	%93 = bitcast i8* %92 to %struct.string*
	%94 = getelementptr %struct.string, %struct.string* %93, i32 0, i32 0
	store i32 4, i32* %94, align 4
	%95 = bitcast [5 x i8]* @.libro.str.1 to i8*
	%96 = getelementptr %struct.string, %struct.string* %93, i32 0, i32 1
	store i8* %95, i8** %96, align 4
	%97 = call %struct.string* @_string_stringAppend(%struct.string* %88, %struct.string* %93)
	%98 = call i8* @myNew(i32 12)
	%99 = bitcast i8* %98 to %struct.string*
	%100 = getelementptr %struct.string, %struct.string* %99, i32 0, i32 0
	store i32 4, i32* %100, align 4
	%101 = bitcast [5 x i8]* @.libro.str.2 to i8*
	%102 = getelementptr %struct.string, %struct.string* %99, i32 0, i32 1
	store i8* %101, i8** %102, align 4
	%103 = call %struct.string* @_string_stringAppend(%struct.string* %97, %struct.string* %99)
	%104 = call i8* @myNew(i32 12)
	%105 = bitcast i8* %104 to %struct.string*
	%106 = getelementptr %struct.string, %struct.string* %105, i32 0, i32 0
	store i32 4, i32* %106, align 4
	%107 = bitcast [5 x i8]* @.libro.str.3 to i8*
	%108 = getelementptr %struct.string, %struct.string* %105, i32 0, i32 1
	store i8* %107, i8** %108, align 4
	%109 = call %struct.string* @_string_stringAppend(%struct.string* %103, %struct.string* %105)
	%110 = call i8* @myNew(i32 12)
	%111 = bitcast i8* %110 to %struct.string*
	%112 = getelementptr %struct.string, %struct.string* %111, i32 0, i32 0
	store i32 4, i32* %112, align 4
	%113 = bitcast [5 x i8]* @.libro.str.4 to i8*
	%114 = getelementptr %struct.string, %struct.string* %111, i32 0, i32 1
	store i8* %113, i8** %114, align 4
	%115 = call %struct.string* @_string_stringAppend(%struct.string* %109, %struct.string* %111)
	%116 = call i8* @myNew(i32 12)
	%117 = bitcast i8* %116 to %struct.string*
	%118 = getelementptr %struct.string, %struct.string* %117, i32 0, i32 0
	store i32 4, i32* %118, align 4
	%119 = bitcast [5 x i8]* @.libro.str.5 to i8*
	%120 = getelementptr %struct.string, %struct.string* %117, i32 0, i32 1
	store i8* %119, i8** %120, align 4
	%121 = call %struct.string* @_string_stringAppend(%struct.string* %115, %struct.string* %117)
	%122 = call i8* @myNew(i32 12)
	%123 = bitcast i8* %122 to %struct.string*
	%124 = getelementptr %struct.string, %struct.string* %123, i32 0, i32 0
	store i32 4, i32* %124, align 4
	%125 = bitcast [5 x i8]* @.libro.str.6 to i8*
	%126 = getelementptr %struct.string, %struct.string* %123, i32 0, i32 1
	store i8* %125, i8** %126, align 4
	%127 = call %struct.string* @_string_stringAppend(%struct.string* %121, %struct.string* %123)
	%128 = call i8* @myNew(i32 12)
	%129 = bitcast i8* %128 to %struct.string*
	%130 = getelementptr %struct.string, %struct.string* %129, i32 0, i32 0
	store i32 4, i32* %130, align 4
	%131 = bitcast [5 x i8]* @.libro.str.7 to i8*
	%132 = getelementptr %struct.string, %struct.string* %129, i32 0, i32 1
	store i8* %131, i8** %132, align 4
	%133 = call %struct.string* @_string_stringAppend(%struct.string* %127, %struct.string* %129)
	%134 = call i8* @myNew(i32 12)
	%135 = bitcast i8* %134 to %struct.string*
	%136 = getelementptr %struct.string, %struct.string* %135, i32 0, i32 0
	store i32 4, i32* %136, align 4
	%137 = bitcast [5 x i8]* @.libro.str.8 to i8*
	%138 = getelementptr %struct.string, %struct.string* %135, i32 0, i32 1
	store i8* %137, i8** %138, align 4
	%139 = call %struct.string* @_string_stringAppend(%struct.string* %133, %struct.string* %135)
	%140 = call i8* @myNew(i32 12)
	%141 = bitcast i8* %140 to %struct.string*
	%142 = getelementptr %struct.string, %struct.string* %141, i32 0, i32 0
	store i32 5, i32* %142, align 4
	%143 = bitcast [6 x i8]* @.libro.str.9 to i8*
	%144 = getelementptr %struct.string, %struct.string* %141, i32 0, i32 1
	store i8* %143, i8** %144, align 4
	%145 = call %struct.string* @_string_stringAppend(%struct.string* %139, %struct.string* %141)
	%146 = getelementptr %struct.string, %struct.string* %145, i32 0, i32 1
	%147 = load i8*, i8** %146, align 4
	call void @println(i8* %147)
	br label %148

;loop increase block main loopDepth 1 iterCount 0
148:
;148 154
	%149 = load i32, i32* %2, align 4
	%150 = add i32 %149, 1
	store i32 %150, i32* %2, align 4
	br label %6

;loop exit block main loopDepth 1 iterCount 0
151:
;151 154
	store i32 0, i32* %1, align 4
	br label %152

152:
;152 154
	%153 = load i32, i32* %1, align 4
	ret i32 %153
}

define void @_GLOBAL_(){
;0 1
	call void @_global_var_init.0()
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

