%struct.string = type { i32, i8* }

define i32 @main(){

0:
;0 0
	br label %1

;begin inline expansion test
1:
;1 15
	br label %2

2:
;2 15
	%3 = phi i32 [ 0, %1 ], [ %8, %9 ]
	%4 = phi i32 [ 0, %1 ], [ %10, %9 ]
	%5 = icmp slt i32 %4, 200
	br i1 %5, label %6, label %11

6:
;6 15
	%7 = add i32 %4, 1
	%8 = add i32 %3, 1
	br label %9

9:
;9 15
	%10 = add i32 %7, 1
	br label %2

11:
;11 15
	br label %12

;end inline expansion test
12:
;12 15
	%13 = sub i32 %3, 100
	br label %14

14:
;14 0
	ret i32 %13
}

define i32 @test(){

0:
;0 0
	br label %1

;loop check block test loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 0, %0 ], [ %7, %8 ]
	%3 = phi i32 [ 0, %0 ], [ %9, %8 ]
	%4 = icmp slt i32 %3, 200
	br i1 %4, label %5, label %10

;True block in test selectCount 0
5:
;5 11
	%6 = add i32 %3, 1
	%7 = add i32 %2, 1
	br label %8

;loop increase block test loopDepth 1 iterCount 0
8:
;8 12
	%9 = add i32 %6, 1
	br label %1

10:
;10 13
	ret i32 %2
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

