%struct.string = type { i32, i8* }

define i32 @main(){
;0 0
	br label %1

1:
;1 0
	br label %2

;False block in main selectCount 0
2:
;2 1
	br label %3

;Converge block in main selectCount 0
3:
;3 1
	br label %4

4:
;4 3
	br label %5

;True block in main selectCount 1
5:
;5 4
	br label %6

;Converge block in main selectCount 1
6:
;6 4
	br label %7

7:
;7 6
	ret i32 30
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

