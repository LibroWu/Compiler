%struct.string = type { i32, i8* }

define i32 @test(){
;0 0
	br label %1

;loop check block test loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 0, %0 ], [ %8, %9 ]
	%3 = phi i32 [ 0, %0 ], [ %10, %9 ]
	%4 = icmp slt i32 %3, 200
	br i1 %4, label %6, label %5

5:
;5 11
	ret i32 %2

;True block in test selectCount 0
6:
;6 12
	%7 = add i32 %3, 1
	%8 = add i32 %2, 1
	br label %9

;loop increase block test loopDepth 1 iterCount 0
9:
;9 13
	%10 = add i32 %7, 1
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

