%struct.string = type { i32, i8* }

@w = global i32 0, align 4
@N = global i32 1, align 4

define i32 @wpp(){
;0 0
	%1 = load i32, i32* @w, align 4
	%2 = add i32 %1, 1
	store i32 %2, i32* @w, align 4
	%3 = add i32 %2, 1
	store i32 %3, i32* @w, align 4
	br label %4

4:
;4 0
	ret i32 %3
}

define i32 @wppp(){
;0 0
	%1 = load i32, i32* @w, align 4
	%2 = add i32 %1, 1
	store i32 %2, i32* @w, align 4
	%3 = add i32 %2, 1
	store i32 %3, i32* @w, align 4
	%4 = add i32 %3, 1
	store i32 %4, i32* @w, align 4
	%5 = add i32 %4, 1
	store i32 %5, i32* @w, align 4
	%6 = add i32 %5, 1
	store i32 %6, i32* @w, align 4
	%7 = add i32 %6, 1
	store i32 %7, i32* @w, align 4
	%8 = add i32 %7, 1
	store i32 %8, i32* @w, align 4
	br label %9

9:
;9 0
	ret i32 %7
}

define i32 @wpppp(){
;0 0
	%1 = call i32 @wppp()
	%2 = call i32 @wppp()
	%3 = call i32 @wppp()
	%4 = call i32 @wppp()
	%5 = call i32 @wppp()
	%6 = call i32 @wppp()
	%7 = call i32 @wppp()
	br label %8

8:
;8 0
	ret i32 %7
}

define i32 @block(){
;0 0
	%1 = call i32 @block()
	br label %2

2:
;2 0
	ret i32 %1
}

define i32 @bblock(){
;0 0
	%1 = call i32 @wpppp()
	%2 = call i32 @wpppp()
	%3 = call i32 @bblock()
	%4 = call i32 @bblock()
	br label %5

5:
;5 0
	ret i32 %4
}

define i32 @add1(i32 %0){
;1 1
	%2 = add i32 %0, 1
	br label %3

3:
;3 1
	ret i32 %2
}

define i32 @add2(i32 %0){
;1 1
	%2 = call i32 @add1(i32 %0)
	%3 = call i32 @add1(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add4(i32 %0){
;1 1
	%2 = call i32 @add2(i32 %0)
	%3 = call i32 @add2(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add8(i32 %0){
;1 1
	%2 = call i32 @add4(i32 %0)
	%3 = call i32 @add4(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add16(i32 %0){
;1 1
	%2 = call i32 @add8(i32 %0)
	%3 = call i32 @add8(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add32(i32 %0){
;1 1
	%2 = call i32 @add16(i32 %0)
	%3 = call i32 @add16(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add64(i32 %0){
;1 1
	%2 = call i32 @add32(i32 %0)
	%3 = call i32 @add32(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add128(i32 %0){
;1 1
	%2 = call i32 @add64(i32 %0)
	%3 = call i32 @add64(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add256(i32 %0){
;1 1
	%2 = call i32 @add128(i32 %0)
	%3 = call i32 @add128(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add512(i32 %0){
;1 1
	%2 = call i32 @add256(i32 %0)
	%3 = call i32 @add256(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add1024(i32 %0){
;1 1
	%2 = call i32 @add512(i32 %0)
	%3 = call i32 @add512(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add2048(i32 %0){
;1 1
	%2 = call i32 @add1024(i32 %0)
	%3 = call i32 @add1024(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add4096(i32 %0){
;1 1
	%2 = call i32 @add2048(i32 %0)
	%3 = call i32 @add2048(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add8192(i32 %0){
;1 1
	%2 = call i32 @add4096(i32 %0)
	%3 = call i32 @add4096(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add16384(i32 %0){
;1 1
	%2 = call i32 @add8192(i32 %0)
	%3 = call i32 @add8192(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add32768(i32 %0){
;1 1
	%2 = call i32 @add16384(i32 %0)
	%3 = call i32 @add16384(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add65536(i32 %0){
;1 1
	%2 = call i32 @add32768(i32 %0)
	%3 = call i32 @add32768(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add131072(i32 %0){
;1 1
	%2 = call i32 @add65536(i32 %0)
	%3 = call i32 @add65536(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add262144(i32 %0){
;1 1
	%2 = call i32 @add131072(i32 %0)
	%3 = call i32 @add131072(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add524288(i32 %0){
;1 1
	%2 = call i32 @add262144(i32 %0)
	%3 = call i32 @add262144(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @wP(){
;0 0
	br label %1

;loop check block wP loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 0, %0 ], [ %6, %51 ]
	%3 = phi i32 [ 0, %0 ], [ %8, %51 ]
	%4 = phi i32 [ 3, %0 ], [ %52, %51 ]
	br label %5

;loop body wP loopDepth 1 iterCount 0
5:
;5 1
	%6 = ashr i32 %4, 1
	br label %7

;loop check block wP loopDepth 2 iterCount 0
7:
;7 5
	%8 = phi i32 [ 2, %5 ], [ %54, %53 ]
	%9 = icmp slt i32 %8, %6
	br i1 %9, label %10, label %15

;loop body wP loopDepth 2 iterCount 0
10:
;10 7
	%11 = srem i32 %4, %8
	%12 = icmp eq i32 %11, 0
	br i1 %12, label %13, label %53

;True block in wP selectCount 0
13:
;13 10
	%14 = add i32 %4, 1
	br label %15

;loop exit block wP loopDepth 2 iterCount 0
15:
;15 7
	%16 = phi i32 [ 1, %7 ], [ 0, %13 ]
	%17 = phi i32 [ %4, %7 ], [ %14, %13 ]
	%18 = icmp sgt i32 %17, 0
	br i1 %18, label %19, label %23

19:
;19 15
	%20 = add i32 %17, %16
	%21 = srem i32 %20, 9
	%22 = icmp eq i32 %21, 0
	br label %23

23:
;23 15
	%24 = phi i1 [ 0, %15 ], [ %22, %19 ]
	br i1 %24, label %25, label %47

;loop exit block wP loopDepth 1 iterCount 0
25:
;25 1
	%26 = phi i32 [ %2, %1 ], [ %6, %23 ]
	%27 = phi i32 [ %3, %1 ], [ %8, %23 ]
	%28 = phi i32 [ %4, %1 ], [ %17, %23 ]
	%29 = load i32, i32* @N, align 4
	%30 = call i32 @wpppp()
	%31 = add i32 %29, %30
	%32 = srem i32 %31, 2
	%33 = icmp eq i32 %32, 0
	br i1 %33, label %34, label %41

;True block in wP selectCount 2
34:
;34 25
	%35 = load i32, i32* @N, align 4
	%36 = call i32 @add524288(i32 %35)
	%37 = sub i32 %36, 524288
	%38 = sub i32 %37, 6
	br label %39

39:
;39 25
	%40 = phi i32 [ %38, %34 ], [ %46, %41 ]
	ret i32 %40

;Converge block in wP selectCount 2
41:
;41 25
	%42 = call i32 @block()
	%43 = call i32 @block()
	%44 = call i32 @block()
	%45 = call i32 @block()
	%46 = call i32 @bblock()
	br label %39

;Converge block in wP selectCount 1
47:
;47 23
	%48 = load i32, i32* @N, align 4
	%49 = add i32 %48, %16
	store i32 %49, i32* @N, align 4
	%50 = add i32 %17, %16
	br label %51

;loop increase block wP loopDepth 1 iterCount 0
51:
;51 47
	%52 = add i32 %50, 1
	br label %1

;loop increase block wP loopDepth 2 iterCount 0
53:
;53 55
	%54 = add i32 %8, 1
	br label %7
}

define i32 @sanity_check(){
;0 0
	%1 = call i32 @wP()
	%2 = add i32 %1, 1
	br label %3

3:
;3 0
	ret i32 %2
}

define i32 @main(){
;0 0
	call void @_GLOBAL_()
	%1 = call i32 @sanity_check()
	%2 = sub i32 %1, 1
	br label %3

3:
;3 0
	ret i32 %2
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

