%struct.string = type { i32, i8* }

@N = global i32 80, align 4

define i32 @test(){
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

define i32 @naivedce(){

0:
;0 1
	ret i32 1919
}

define i32 @dceconst(){

0:
;0 1
	ret i32 114514
}

define i32 @main(){
;0 0
	call void @_GLOBAL_()
	%1 = call i32 @test()
	%2 = call i32 @naivedce()
	%3 = add i32 %1, %2
	%4 = call i32 @dceconst()
	%5 = add i32 %3, %4
	%6 = sub i32 %5, 50997
	br label %7

7:
;7 0
	ret i32 %6
}

define void @_GLOBAL_(){
;0 0
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

