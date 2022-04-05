%struct.string = type { i32, i8* }
%struct.Mo = type { i32, i32, %struct.string* }
%struct.RedBoy = type { i32 }

@age = global i32 1000000, align 4
@eng = global %struct.string* null, align 4

@.libro.str = constant [31 x i8] c"Four score and seven years ago\00", align 1
@.libro.str.1 = constant [9 x i8] c"HongKong\00", align 1
@.libro.str.2 = constant [8 x i8] c"naive!\0A\00", align 1
@.libro.str.3 = constant [7 x i8] c"fast!\0A\00", align 1
@.libro.str.4 = constant [22 x i8] c"too young\5Ctoo simple.\00", align 1
@.libro.str.5 = constant [14 x i8] c"wukefengggao\0A\00", align 1
@.libro.str.6 = constant [34 x i8] c"Four score and seven years ago\0A\5C\22\00", align 1
@.libro.str.7 = constant [8 x i8] c"naive!\0A\00", align 1
@.libro.str.8 = constant [8 x i8] c"naive!\0A\00", align 1
@.libro.str.9 = constant [12 x i8] c"too young!\5C\00", align 1
@.libro.str.10 = constant [5 x i8] c"test\00", align 1

define void @_global_var_init.1(){
;0 0
	%1 = call i8* @myNew(i32 12)
	%2 = bitcast i8* %1 to %struct.string*
	%3 = getelementptr %struct.string, %struct.string* %2, i32 0, i32 0
	store i32 30, i32* %3, align 4
	%4 = bitcast [31 x i8]* @.libro.str to i8*
	%5 = getelementptr %struct.string, %struct.string* %2, i32 0, i32 1
	store i8* %4, i8** %5, align 4
	store %struct.string* %2, %struct.string** @eng, align 4
	ret void
}

define i32 @travel(){
;0 0
	br label %1

1:
;1 0
	ret i32 10000000
}

define void @journalists(%struct.string* %0){
;1 1
	%2 = call i8* @myNew(i32 12)
	%3 = bitcast i8* %2 to %struct.string*
	%4 = getelementptr %struct.string, %struct.string* %3, i32 0, i32 0
	store i32 8, i32* %4, align 4
	%5 = bitcast [9 x i8]* @.libro.str.1 to i8*
	%6 = getelementptr %struct.string, %struct.string* %3, i32 0, i32 1
	store i8* %5, i8** %6, align 4
	%7 = call i32 @_string_getStrcmp(%struct.string* %0, %struct.string* %3)
	%8 = icmp eq i32 %7, 0
	br i1 %8, label %11, label %9

;Converge block in journalists selectCount 0
9:
;9 1
	br label %10

10:
;10 9
	ret void

;True block in journalists selectCount 0
11:
;11 1
	%12 = bitcast [8 x i8]* @.libro.str.2 to i8*
	call void @print(i8* %12)
	%13 = bitcast [7 x i8]* @.libro.str.3 to i8*
	call void @print(i8* %13)
	%14 = bitcast [22 x i8]* @.libro.str.4 to i8*
	call void @println(i8* %14)
	br label %9
}

define %struct.Mo* @xu(%struct.Mo* %0,%struct.RedBoy* %1){
;2 2
	br label %3

;loop check block xu loopDepth 1 iterCount 0
3:
;3 2
	%4 = phi i32 [ 0, %2 ], [ %13, %12 ]
	%5 = getelementptr %struct.RedBoy, %struct.RedBoy* %1, i32 0, i32 0
	%6 = load i32, i32* %5, align 4
	%7 = icmp slt i32 %4, %6
	br i1 %7, label %8, label %14

;loop body xu loopDepth 1 iterCount 0
8:
;8 3
	%9 = getelementptr %struct.Mo, %struct.Mo* %0, i32 0, i32 1
	%10 = load i32, i32* %9, align 4
	%11 = add i32 %10, 1
	store i32 %11, i32* %9, align 4
	br label %12

;loop increase block xu loopDepth 1 iterCount 0
12:
;12 8
	%13 = add i32 %4, 1
	br label %3

;loop exit block xu loopDepth 1 iterCount 0
14:
;14 3
	br label %15

15:
;15 14
	ret %struct.Mo* %0
}

define i32 @main(){
;0 0
	call void @_GLOBAL_()
	%1 = call i8* @myNew(i32 12)
	%2 = bitcast i8* %1 to %struct.string*
	%3 = getelementptr %struct.string, %struct.string* %2, i32 0, i32 0
	store i32 13, i32* %3, align 4
	%4 = bitcast [14 x i8]* @.libro.str.5 to i8*
	%5 = getelementptr %struct.string, %struct.string* %2, i32 0, i32 1
	store i8* %4, i8** %5, align 4
	%6 = sext i1 1 to i8
	%7 = sext i1 0 to i8
	%8 = call i8* @myNew(i32 4)
	%9 = bitcast i8* %8 to %struct.RedBoy*
	%10 = call i8* @myNew(i32 16)
	%11 = bitcast i8* %10 to i32*
	store i32 3, i32* %11, align 4
	%12 = bitcast i8* %10 to %struct.RedBoy**
	%13 = call i8* @myNew(i32 8)
	%14 = bitcast i8* %13 to i32*
	store i32 1, i32* %14, align 4
	%15 = bitcast i8* %13 to %struct.RedBoy****
	br label %16

;loop created by new check block main loopDepth 1 iterCount 0
16:
;16 0
	%17 = phi i32 [ 0, %0 ], [ %104, %112 ]
	%18 = phi i32 [ 4, %0 ], [ %19, %112 ]
	%19 = add i32 %18, 4
	%20 = icmp slt i32 %18, 8
	br i1 %20, label %97, label %21

;loop created by new exit block main loopDepth 1 iterCount 0
21:
;21 16
	%22 = call i8* @myNew(i32 12)
	%23 = bitcast i8* %22 to %struct.Mo*
	%24 = trunc i8 0 to i1
	br i1 %24, label %95, label %25

25:
;25 21
	%26 = phi i1 [ 0, %21 ], [ %96, %95 ]
	%27 = trunc i8 0 to i1
	br i1 %27, label %30, label %28

28:
;28 25
	%29 = trunc i8 0 to i1
	br label %30

30:
;30 25
	%31 = phi i1 [ 1, %25 ], [ %29, %28 ]
	%32 = trunc i8 0 to i1
	%33 = xor i1 %32, 1
	%34 = getelementptr %struct.RedBoy, %struct.RedBoy* %9, i32 0, i32 0
	%35 = load i32, i32* %34, align 4
	%36 = bitcast %struct.RedBoy** %12 to i8*
	%37 = getelementptr i8, i8* %36, i32 12
	%38 = bitcast i8* %37 to %struct.RedBoy**
	%39 = load %struct.RedBoy*, %struct.RedBoy** %38, align 4
	%40 = getelementptr %struct.RedBoy, %struct.RedBoy* %39, i32 0, i32 0
	%41 = load i32, i32* %40, align 4
	%42 = bitcast %struct.RedBoy**** %15 to i8*
	%43 = getelementptr i8, i8* %42, i32 8
	%44 = bitcast i8* %43 to %struct.RedBoy****
	%45 = load %struct.RedBoy***, %struct.RedBoy**** %44, align 4
	%46 = bitcast %struct.RedBoy*** %45 to i8*
	%47 = getelementptr i8, i8* %46, i32 12
	%48 = bitcast i8* %47 to %struct.RedBoy***
	%49 = load %struct.RedBoy**, %struct.RedBoy*** %48, align 4
	%50 = bitcast %struct.RedBoy** %49 to i8*
	%51 = getelementptr i8, i8* %50, i32 16
	%52 = bitcast i8* %51 to %struct.RedBoy**
	%53 = load %struct.RedBoy*, %struct.RedBoy** %52, align 4
	%54 = getelementptr %struct.RedBoy, %struct.RedBoy* %53, i32 0, i32 0
	%55 = load i32, i32* %54, align 4
	%56 = call i8* @myNew(i32 12)
	%57 = bitcast i8* %56 to %struct.Mo*
	%58 = call %struct.Mo* @xu(%struct.Mo* %57, %struct.RedBoy* null)
	br label %59

;loop check block main loopDepth 1 iterCount 2
59:
;59 30
	%60 = phi i32 [ 0, %30 ], [ %94, %93 ]
	%61 = icmp slt i32 %60, 3
	br i1 %61, label %85, label %62

;loop exit block main loopDepth 1 iterCount 2
62:
;62 59
	br label %63

;loop check block main loopDepth 1 iterCount 3
63:
;63 62
	%64 = phi i32 [ 0, %62 ], [ %75, %74 ]
	%65 = icmp slt i32 %64, 3
	br i1 %65, label %66, label %76

;loop body main loopDepth 1 iterCount 3
66:
;66 63
	%67 = mul i32 %64, 4
	%68 = add i32 %67, 4
	%69 = bitcast %struct.RedBoy** %12 to i8*
	%70 = getelementptr i8, i8* %69, i32 %68
	%71 = bitcast i8* %70 to %struct.RedBoy**
	%72 = load %struct.RedBoy*, %struct.RedBoy** %71, align 4
	%73 = call %struct.Mo* @xu(%struct.Mo* %23, %struct.RedBoy* %72)
	br label %74

;loop increase block main loopDepth 1 iterCount 3
74:
;74 66
	%75 = add i32 %64, 1
	br label %63

;loop exit block main loopDepth 1 iterCount 3
76:
;76 63
	br label %77

;loop check block main loopDepth 1 iterCount 4
77:
;77 76
	br label %84

;loop exit block main loopDepth 1 iterCount 4
78:
;78 77
	br label %79

;loop check block main loopDepth 1 iterCount 5
79:
;79 78
	br label %80

;loop body main loopDepth 1 iterCount 5
80:
;80 79
	%81 = call %struct.string* @toString(i32 0)
	%82 = getelementptr %struct.string, %struct.string* %81, i32 0, i32 1
	%83 = load i8*, i8** %82, align 4
	call void @print(i8* %83)
	br label %79

;loop body main loopDepth 1 iterCount 4
84:
;84 77
	br label %77

;loop body main loopDepth 1 iterCount 2
85:
;85 59
	%86 = mul i32 %60, 4
	%87 = add i32 %86, 4
	%88 = bitcast %struct.RedBoy** %12 to i8*
	%89 = getelementptr i8, i8* %88, i32 %87
	%90 = bitcast i8* %89 to %struct.RedBoy**
	%91 = load %struct.RedBoy*, %struct.RedBoy** %90, align 4
	%92 = call %struct.Mo* @xu(%struct.Mo* %23, %struct.RedBoy* %91)
	br label %93

;loop increase block main loopDepth 1 iterCount 2
93:
;93 85
	%94 = add i32 %60, 1
	br label %59

95:
;95 21
	%96 = trunc i8 0 to i1
	br label %25

;loop created by new body main loopDepth 1 iterCount 0
97:
;97 16
	%98 = getelementptr i8, i8* %13, i32 %18
	%99 = call i8* @myNew(i32 12)
	%100 = bitcast i8* %99 to i32*
	store i32 2, i32* %100, align 4
	%101 = bitcast i8* %99 to %struct.RedBoy***
	br label %102

;loop created by new check block main loopDepth 2 iterCount 1
102:
;102 97
	%103 = phi i32 [ 4, %97 ], [ %104, %106 ]
	%104 = add i32 %103, 4
	%105 = icmp slt i32 %103, 12
	br i1 %105, label %106, label %112

;loop created by new body main loopDepth 2 iterCount 1
106:
;106 102
	%107 = getelementptr i8, i8* %99, i32 %103
	%108 = call i8* @myNew(i32 16)
	%109 = bitcast i8* %108 to i32*
	store i32 3, i32* %109, align 4
	%110 = bitcast i8* %108 to %struct.RedBoy**
	%111 = bitcast i8* %107 to %struct.RedBoy***
	store %struct.RedBoy** %110, %struct.RedBoy*** %111, align 4
	br label %102

;loop created by new exit block main loopDepth 2 iterCount 1
112:
;112 102
	%113 = bitcast i8* %98 to %struct.RedBoy****
	store %struct.RedBoy*** %101, %struct.RedBoy**** %113, align 4
	br label %16
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

