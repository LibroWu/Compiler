%struct.string = type { i32, i8* }

@n = global i32 0, align 4

define i32 @test(){
;0 0
	%1 = load i32, i32* @n, align 4
	br label %2

;loop check block test loopDepth 1 iterCount 0
2:
;2 0
	%3 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%4 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%5 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%6 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%7 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%8 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%9 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%10 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%11 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%12 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%13 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%14 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%15 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%16 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%17 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%18 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%19 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%20 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%21 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%22 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%23 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%24 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%25 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%26 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%27 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%28 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%29 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%30 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%31 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%32 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%33 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%34 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%35 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%36 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%37 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%38 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%39 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%40 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%41 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%42 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%43 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%44 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%45 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%46 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%47 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%48 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%49 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%50 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%51 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%52 = phi i32 [ 0, %0 ], [ %57, %62 ]
	%53 = phi i32 [ 0, %0 ], [ %61, %62 ]
	%54 = phi i32 [ 0, %0 ], [ %63, %62 ]
	%55 = icmp slt i32 %54, %1
	br i1 %55, label %56, label %64

;loop body test loopDepth 1 iterCount 0
56:
;56 2
	%57 = add i32 %54, 1
	%58 = icmp ne i32 %57, 0
	br i1 %58, label %59, label %60

;True block in test selectCount 0
59:
;59 56
	br label %60

;Converge block in test selectCount 0
60:
;60 56
	%61 = phi i32 [ %53, %56 ], [ %57, %59 ]
	br label %62

;loop increase block test loopDepth 1 iterCount 0
62:
;62 60
	%63 = add i32 %54, 1
	br label %2

;loop exit block test loopDepth 1 iterCount 0
64:
;64 2
	br label %65

65:
;65 64
	ret i32 %53
}

define i32 @main(){
;0 0
	%1 = load i32, i32* @n, align 4
	store i32 100, i32* @n, align 4
	%2 = call i32 @test()
	%3 = load i32, i32* @n, align 4
	store i32 200, i32* @n, align 4
	%4 = call i32 @test()
	%5 = add i32 %2, %4
	%6 = sub i32 %5, 300
	br label %7

7:
;7 0
	ret i32 %6
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

