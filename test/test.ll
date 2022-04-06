%struct.string = type { i32, i8* }

define i32 @test(){
;0 0
	br label %1

;loop check block test loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 0, %0 ], [ %13, %15 ]
	%3 = phi i32 [ 0, %0 ], [ %16, %15 ]
	%4 = icmp slt i32 %3, 200
	br i1 %4, label %7, label %5

;loop exit block test loopDepth 1 iterCount 0
5:
;5 1
	br label %6

6:
;6 5
	ret i32 %2

;loop body test loopDepth 1 iterCount 0
7:
;7 1
	br label %8

8:
;8 7
	br label %9

9:
;9 8
	br label %10

10:
;10 7
	br label %11

;True block in test selectCount 0
11:
;11 10
	%12 = add i32 %3, 1
	%13 = add i32 %2, 1
	br label %14

;Converge block in test selectCount 0
14:
;14 10
	br label %15

;loop increase block test loopDepth 1 iterCount 0
15:
;15 14
	%16 = add i32 %12, 1
	br label %1
}

define i32 @main(){
;0 0
	%1 = call i32 @test()
	%2 = sub i32 %1, 100
	br label %3

3:
;3 0
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

