%struct.string = type { i32, i8* }

define i32 @get200(){

0:
;0 0
	br label %1

1:
;1 0
	ret i32 200
}

define i32 @get233(){

0:
;0 0
	br label %1

1:
;1 0
	ret i32 233
}

define i32 @get666(){

0:
;0 0
	%1 = call i32 @get233()
	%2 = call i32 @get233()
	%3 = add i32 %1, %2
	%4 = call i32 @get200()
	%5 = add i32 %3, %4
	br label %6

6:
;6 0
	ret i32 %5
}

define i32 @get666233(){

0:
;0 0
	br label %1

;loop check block get666233 loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 1, %0 ], [ %9, %8 ]
	%3 = phi i32 [ 0, %0 ], [ %7, %8 ]
	%4 = icmp sle i32 %2, 1000
	br i1 %4, label %5, label %10

;loop body get666233 loopDepth 1 iterCount 0
5:
;5 1
	%6 = call i32 @get666()
	%7 = add i32 %3, %6
	br label %8

;loop increase block get666233 loopDepth 1 iterCount 0
8:
;8 5
	%9 = add i32 %2, 1
	br label %1

;loop exit block get666233 loopDepth 1 iterCount 0
10:
;10 1
	%11 = call i32 @get233()
	%12 = add i32 %3, %11
	br label %13

13:
;13 10
	ret i32 %12
}

define i32 @main(){

0:
;0 0
	br label %1

;loop check block main loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 1, %0 ], [ %14, %13 ]
	%3 = phi i32 [ 0, %0 ], [ %12, %13 ]
	%4 = icmp sle i32 %2, 100
	br i1 %4, label %5, label %39

;loop body main loopDepth 1 iterCount 0
5:
;5 1
	%6 = srem i32 %2, 4
	%7 = icmp eq i32 %6, 0
	br i1 %7, label %8, label %15

;True block in main selectCount 0
8:
;8 5
	%9 = call i32 @get200()
	%10 = add i32 %3, %9
	br label %11

;Converge block in main selectCount 0
11:
;11 5
	%12 = phi i32 [ %22, %21 ], [ %10, %8 ]
	br label %13

;loop increase block main loopDepth 1 iterCount 0
13:
;13 11
	%14 = add i32 %2, 1
	br label %1

;False block in main selectCount 0
15:
;15 5
	%16 = srem i32 %2, 4
	%17 = icmp eq i32 %16, 1
	br i1 %17, label %18, label %23

;True block in main selectCount 0
18:
;18 15
	%19 = call i32 @get233()
	%20 = add i32 %3, %19
	br label %21

;Converge block in main selectCount 0
21:
;21 15
	%22 = phi i32 [ %30, %29 ], [ %20, %18 ]
	br label %11

;False block in main selectCount 0
23:
;23 15
	%24 = srem i32 %2, 4
	%25 = icmp eq i32 %24, 2
	br i1 %25, label %26, label %31

;True block in main selectCount 0
26:
;26 23
	%27 = call i32 @get666()
	%28 = add i32 %3, %27
	br label %29

;Converge block in main selectCount 0
29:
;29 23
	%30 = phi i32 [ %28, %26 ], [ %38, %37 ]
	br label %21

;False block in main selectCount 0
31:
;31 23
	%32 = srem i32 %2, 4
	%33 = icmp eq i32 %32, 3
	br i1 %33, label %34, label %37

;True block in main selectCount 0
34:
;34 31
	%35 = call i32 @get666233()
	%36 = add i32 %3, %35
	br label %37

;Converge block in main selectCount 0
37:
;37 31
	%38 = phi i32 [ %3, %31 ], [ %36, %34 ]
	br label %29

;loop exit block main loopDepth 1 iterCount 0
39:
;39 1
	br label %40

40:
;40 39
	ret i32 %3
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

