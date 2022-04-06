%struct.string = type { i32, i8* }

define i32 @main(){
;0 0
	br label %1

1:
;1 0
	%2 = sext i1 0 to i8
	%3 = trunc i8 %2 to i1
	br i1 %3, label %4, label %16

;True block in main selectCount 0
4:
;4 1
	br label %5

;Converge block in main selectCount 0
5:
;5 1
	%6 = phi i32 [ 10, %4 ], [ 20, %16 ]
	%7 = icmp eq i32 %6, 10
	br i1 %7, label %8, label %9

8:
;8 5
	br label %9

9:
;9 5
	%10 = sext i1 1 to i8
	%11 = trunc i8 %10 to i1
	br i1 %11, label %15, label %12

;Converge block in main selectCount 1
12:
;12 9
	%13 = phi i32 [ %6, %9 ], [ 30, %15 ]
	br label %14

14:
;14 12
	ret i32 %13

;True block in main selectCount 1
15:
;15 9
	br label %12

;False block in main selectCount 0
16:
;16 1
	br label %5
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

