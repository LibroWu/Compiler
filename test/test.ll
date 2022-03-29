%struct.string = type { i32, i8* }
%struct.A = type { }
%struct.B = type { }
%struct.C = type { }

define void @_B_B(%struct.B* %0){
	%2 = alloca %struct.B*, align 4
;1 4
	store %struct.B* %0, %struct.B** %2, align 4
	br label %3

3:
;3 4
	ret void
}

define i32 @_C_func(%struct.C* %0){
	%2 = alloca %struct.C*, align 4
	%3 = alloca i32, align 4
;1 6
	store %struct.C* %0, %struct.C** %2, align 4
	store i32 0, i32* %3, align 4
	store i32 93, i32* %3, align 4
	br label %4

4:
;4 6
	%5 = load i32, i32* %3, align 4
	ret i32 %5
}

define i32 @main(){
	%1 = alloca i32, align 4
;0 4
	store i32 0, i32* %1, align 4
	store i32 0, i32* %1, align 4
	br label %2

2:
;2 4
	%3 = load i32, i32* %1, align 4
	ret i32 %3
}

define void @func(){
;0 10
	br label %1

;False block in func selectCount 0
1:
;1 10
	br label %2

;Converge block in func selectCount 0
2:
;2 10
	br label %3

;loop check block func loopDepth 1 iterCount 0
3:
;3 10
	br label %4

;loop body func loopDepth 1 iterCount 0
4:
;4 10
	br label %3

;loop exit block func loopDepth 1 iterCount 0
5:
;5 10
	br label %6

;loop check block func loopDepth 1 iterCount 1
6:
;6 10
	br label %7

;loop body func loopDepth 1 iterCount 1
7:
;7 10
	br label %6

;loop exit block func loopDepth 1 iterCount 1
8:
;8 10
	br label %9

9:
;9 10
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

%struct.string = type { i32, i8* }
%struct.A = type { }
%struct.B = type { }
%struct.C = type { }

define void @_B_B(%struct.B* %0){
;1 1
	br label %2

2:
;2 1
	ret void
}

define i32 @_C_func(%struct.C* %0){
;1 1
	br label %2

2:
;2 1
	ret i32 93
}

define i32 @main(){
;0 0
	br label %1

1:
;1 0
	ret i32 0
}

define void @func(){
;0 0
	br label %1

;False block in func selectCount 0
1:
;1 0
	br label %2

;Converge block in func selectCount 0
2:
;2 1
	br label %3

;loop check block func loopDepth 1 iterCount 0
3:
;3 2
	br label %4

;loop body func loopDepth 1 iterCount 0
4:
;4 3
	br label %3

;loop exit block func loopDepth 1 iterCount 0
5:
;5 3
	br label %6

;loop check block func loopDepth 1 iterCount 1
6:
;6 5
	br label %7

;loop body func loopDepth 1 iterCount 1
7:
;7 6
	br label %6

;loop exit block func loopDepth 1 iterCount 1
8:
;8 6
	br label %9

9:
;9 8
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

