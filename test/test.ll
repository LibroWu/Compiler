%struct.string = type { i32, i8* }

@w = global i32 0, align 4

@.libro.str = constant [4 x i8] c"YES\00", align 1
@.libro.str.1 = constant [3 x i8] c"NO\00", align 1

define i32 @main(){
;0 0
	%1 = call i32 @getInt()
	%2 = load i32, i32* @w, align 4
	store i32 %1, i32* @w, align 4
	%3 = load i32, i32* @w, align 4
	%4 = srem i32 %3, 2
	%5 = icmp eq i32 %4, 0
	br i1 %5, label %6, label %9

6:
;6 0
	%7 = load i32, i32* @w, align 4
	%8 = icmp sgt i32 %7, 2
	br label %9

9:
;9 0
	%10 = phi i1 [ 0, %0 ], [ %8, %6 ]
	br i1 %10, label %11, label %15

;True block in main selectCount 0
11:
;11 9
	%12 = bitcast [4 x i8]* @.libro.str to i8*
	call void @print(i8* %12)
	br label %13

;Converge block in main selectCount 0
13:
;13 9
	br label %14

14:
;14 13
	ret i32 0

;False block in main selectCount 0
15:
;15 9
	%16 = bitcast [3 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %16)
	br label %13
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

