%struct.string = type { i32, i8* }

@w = global i32 0, align 4
@N = global i32 1, align 4

define void @_GLOBAL_(){

0:
;0 0
	ret void
}

define i32 @block(){

0:
;0 0
	%1 = call i32 @block()
	br label %2

2:
;2 0
	ret i32 %1
}

define i32 @add1(i32 %0){

1:
;1 1
	%2 = add i32 %0, 1
	br label %3

3:
;3 1
	ret i32 %2
}

define i32 @add2(i32 %0){

1:
;1 1
	br label %2

;begin inline expansion add1
2:
;2 7
	%3 = add i32 %0, 1
	br label %4

;begin inline expansion add1
4:
;4 7
	%5 = add i32 %3, 1
	br label %6

6:
;6 1
	ret i32 %5
}

define i32 @add4(i32 %0){

1:
;1 1
	br label %2

2:
;2 11
	%3 = add i32 %0, 1
	br label %4

4:
;4 11
	%5 = add i32 %3, 1
	br label %6

6:
;6 11
	%7 = add i32 %5, 1
	br label %8

8:
;8 11
	%9 = add i32 %7, 1
	br label %10

10:
;10 1
	ret i32 %9
}

define i32 @add8(i32 %0){

1:
;1 1
	br label %2

2:
;2 19
	%3 = add i32 %0, 1
	br label %4

4:
;4 19
	%5 = add i32 %3, 1
	br label %6

6:
;6 19
	%7 = add i32 %5, 1
	br label %8

8:
;8 19
	%9 = add i32 %7, 1
	br label %10

10:
;10 19
	%11 = add i32 %9, 1
	br label %12

12:
;12 19
	%13 = add i32 %11, 1
	br label %14

14:
;14 19
	%15 = add i32 %13, 1
	br label %16

16:
;16 19
	%17 = add i32 %15, 1
	br label %18

18:
;18 1
	ret i32 %17
}

define i32 @add16(i32 %0){

1:
;1 1
	br label %2

2:
;2 35
	%3 = add i32 %0, 1
	br label %4

4:
;4 35
	%5 = add i32 %3, 1
	br label %6

6:
;6 35
	%7 = add i32 %5, 1
	br label %8

8:
;8 35
	%9 = add i32 %7, 1
	br label %10

10:
;10 35
	%11 = add i32 %9, 1
	br label %12

12:
;12 35
	%13 = add i32 %11, 1
	br label %14

14:
;14 35
	%15 = add i32 %13, 1
	br label %16

16:
;16 35
	%17 = add i32 %15, 1
	br label %18

18:
;18 35
	%19 = add i32 %17, 1
	br label %20

20:
;20 35
	%21 = add i32 %19, 1
	br label %22

22:
;22 35
	%23 = add i32 %21, 1
	br label %24

24:
;24 35
	%25 = add i32 %23, 1
	br label %26

26:
;26 35
	%27 = add i32 %25, 1
	br label %28

28:
;28 35
	%29 = add i32 %27, 1
	br label %30

30:
;30 35
	%31 = add i32 %29, 1
	br label %32

32:
;32 35
	%33 = add i32 %31, 1
	br label %34

34:
;34 1
	ret i32 %33
}

define i32 @add32(i32 %0){

1:
;1 1
	%2 = call i32 @add16(i32 %0)
	%3 = call i32 @add16(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add64(i32 %0){

1:
;1 1
	br label %2

;begin inline expansion add32
2:
;2 9
	%3 = call i32 @add16(i32 %0)
	%4 = call i32 @add16(i32 %3)
	br label %5

;begin inline expansion add32
5:
;5 9
	%6 = call i32 @add16(i32 %4)
	%7 = call i32 @add16(i32 %6)
	br label %8

8:
;8 1
	ret i32 %7
}

define i32 @add128(i32 %0){

1:
;1 1
	br label %2

2:
;2 15
	%3 = call i32 @add16(i32 %0)
	%4 = call i32 @add16(i32 %3)
	br label %5

5:
;5 15
	%6 = call i32 @add16(i32 %4)
	%7 = call i32 @add16(i32 %6)
	br label %8

8:
;8 15
	%9 = call i32 @add16(i32 %7)
	%10 = call i32 @add16(i32 %9)
	br label %11

11:
;11 15
	%12 = call i32 @add16(i32 %10)
	%13 = call i32 @add16(i32 %12)
	br label %14

14:
;14 1
	ret i32 %13
}

define i32 @add256(i32 %0){

1:
;1 1
	br label %2

2:
;2 27
	%3 = call i32 @add16(i32 %0)
	%4 = call i32 @add16(i32 %3)
	br label %5

5:
;5 27
	%6 = call i32 @add16(i32 %4)
	%7 = call i32 @add16(i32 %6)
	br label %8

8:
;8 27
	%9 = call i32 @add16(i32 %7)
	%10 = call i32 @add16(i32 %9)
	br label %11

11:
;11 27
	%12 = call i32 @add16(i32 %10)
	%13 = call i32 @add16(i32 %12)
	br label %14

14:
;14 27
	%15 = call i32 @add16(i32 %13)
	%16 = call i32 @add16(i32 %15)
	br label %17

17:
;17 27
	%18 = call i32 @add16(i32 %16)
	%19 = call i32 @add16(i32 %18)
	br label %20

20:
;20 27
	%21 = call i32 @add16(i32 %19)
	%22 = call i32 @add16(i32 %21)
	br label %23

23:
;23 27
	%24 = call i32 @add16(i32 %22)
	%25 = call i32 @add16(i32 %24)
	br label %26

26:
;26 1
	ret i32 %25
}

define i32 @add512(i32 %0){

1:
;1 1
	br label %2

2:
;2 51
	%3 = call i32 @add16(i32 %0)
	%4 = call i32 @add16(i32 %3)
	br label %5

5:
;5 51
	%6 = call i32 @add16(i32 %4)
	%7 = call i32 @add16(i32 %6)
	br label %8

8:
;8 51
	%9 = call i32 @add16(i32 %7)
	%10 = call i32 @add16(i32 %9)
	br label %11

11:
;11 51
	%12 = call i32 @add16(i32 %10)
	%13 = call i32 @add16(i32 %12)
	br label %14

14:
;14 51
	%15 = call i32 @add16(i32 %13)
	%16 = call i32 @add16(i32 %15)
	br label %17

17:
;17 51
	%18 = call i32 @add16(i32 %16)
	%19 = call i32 @add16(i32 %18)
	br label %20

20:
;20 51
	%21 = call i32 @add16(i32 %19)
	%22 = call i32 @add16(i32 %21)
	br label %23

23:
;23 51
	%24 = call i32 @add16(i32 %22)
	%25 = call i32 @add16(i32 %24)
	br label %26

26:
;26 51
	%27 = call i32 @add16(i32 %25)
	%28 = call i32 @add16(i32 %27)
	br label %29

29:
;29 51
	%30 = call i32 @add16(i32 %28)
	%31 = call i32 @add16(i32 %30)
	br label %32

32:
;32 51
	%33 = call i32 @add16(i32 %31)
	%34 = call i32 @add16(i32 %33)
	br label %35

35:
;35 51
	%36 = call i32 @add16(i32 %34)
	%37 = call i32 @add16(i32 %36)
	br label %38

38:
;38 51
	%39 = call i32 @add16(i32 %37)
	%40 = call i32 @add16(i32 %39)
	br label %41

41:
;41 51
	%42 = call i32 @add16(i32 %40)
	%43 = call i32 @add16(i32 %42)
	br label %44

44:
;44 51
	%45 = call i32 @add16(i32 %43)
	%46 = call i32 @add16(i32 %45)
	br label %47

47:
;47 51
	%48 = call i32 @add16(i32 %46)
	%49 = call i32 @add16(i32 %48)
	br label %50

50:
;50 1
	ret i32 %49
}

define i32 @add1024(i32 %0){

1:
;1 1
	%2 = call i32 @add512(i32 %0)
	%3 = call i32 @add512(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add2048(i32 %0){

1:
;1 1
	br label %2

;begin inline expansion add1024
2:
;2 9
	%3 = call i32 @add512(i32 %0)
	%4 = call i32 @add512(i32 %3)
	br label %5

;begin inline expansion add1024
5:
;5 9
	%6 = call i32 @add512(i32 %4)
	%7 = call i32 @add512(i32 %6)
	br label %8

8:
;8 1
	ret i32 %7
}

define i32 @add4096(i32 %0){

1:
;1 1
	br label %2

2:
;2 15
	%3 = call i32 @add512(i32 %0)
	%4 = call i32 @add512(i32 %3)
	br label %5

5:
;5 15
	%6 = call i32 @add512(i32 %4)
	%7 = call i32 @add512(i32 %6)
	br label %8

8:
;8 15
	%9 = call i32 @add512(i32 %7)
	%10 = call i32 @add512(i32 %9)
	br label %11

11:
;11 15
	%12 = call i32 @add512(i32 %10)
	%13 = call i32 @add512(i32 %12)
	br label %14

14:
;14 1
	ret i32 %13
}

define i32 @add8192(i32 %0){

1:
;1 1
	br label %2

2:
;2 27
	%3 = call i32 @add512(i32 %0)
	%4 = call i32 @add512(i32 %3)
	br label %5

5:
;5 27
	%6 = call i32 @add512(i32 %4)
	%7 = call i32 @add512(i32 %6)
	br label %8

8:
;8 27
	%9 = call i32 @add512(i32 %7)
	%10 = call i32 @add512(i32 %9)
	br label %11

11:
;11 27
	%12 = call i32 @add512(i32 %10)
	%13 = call i32 @add512(i32 %12)
	br label %14

14:
;14 27
	%15 = call i32 @add512(i32 %13)
	%16 = call i32 @add512(i32 %15)
	br label %17

17:
;17 27
	%18 = call i32 @add512(i32 %16)
	%19 = call i32 @add512(i32 %18)
	br label %20

20:
;20 27
	%21 = call i32 @add512(i32 %19)
	%22 = call i32 @add512(i32 %21)
	br label %23

23:
;23 27
	%24 = call i32 @add512(i32 %22)
	%25 = call i32 @add512(i32 %24)
	br label %26

26:
;26 1
	ret i32 %25
}

define i32 @add16384(i32 %0){

1:
;1 1
	br label %2

2:
;2 51
	%3 = call i32 @add512(i32 %0)
	%4 = call i32 @add512(i32 %3)
	br label %5

5:
;5 51
	%6 = call i32 @add512(i32 %4)
	%7 = call i32 @add512(i32 %6)
	br label %8

8:
;8 51
	%9 = call i32 @add512(i32 %7)
	%10 = call i32 @add512(i32 %9)
	br label %11

11:
;11 51
	%12 = call i32 @add512(i32 %10)
	%13 = call i32 @add512(i32 %12)
	br label %14

14:
;14 51
	%15 = call i32 @add512(i32 %13)
	%16 = call i32 @add512(i32 %15)
	br label %17

17:
;17 51
	%18 = call i32 @add512(i32 %16)
	%19 = call i32 @add512(i32 %18)
	br label %20

20:
;20 51
	%21 = call i32 @add512(i32 %19)
	%22 = call i32 @add512(i32 %21)
	br label %23

23:
;23 51
	%24 = call i32 @add512(i32 %22)
	%25 = call i32 @add512(i32 %24)
	br label %26

26:
;26 51
	%27 = call i32 @add512(i32 %25)
	%28 = call i32 @add512(i32 %27)
	br label %29

29:
;29 51
	%30 = call i32 @add512(i32 %28)
	%31 = call i32 @add512(i32 %30)
	br label %32

32:
;32 51
	%33 = call i32 @add512(i32 %31)
	%34 = call i32 @add512(i32 %33)
	br label %35

35:
;35 51
	%36 = call i32 @add512(i32 %34)
	%37 = call i32 @add512(i32 %36)
	br label %38

38:
;38 51
	%39 = call i32 @add512(i32 %37)
	%40 = call i32 @add512(i32 %39)
	br label %41

41:
;41 51
	%42 = call i32 @add512(i32 %40)
	%43 = call i32 @add512(i32 %42)
	br label %44

44:
;44 51
	%45 = call i32 @add512(i32 %43)
	%46 = call i32 @add512(i32 %45)
	br label %47

47:
;47 51
	%48 = call i32 @add512(i32 %46)
	%49 = call i32 @add512(i32 %48)
	br label %50

50:
;50 1
	ret i32 %49
}

define i32 @add32768(i32 %0){

1:
;1 1
	%2 = call i32 @add16384(i32 %0)
	%3 = call i32 @add16384(i32 %2)
	br label %4

4:
;4 1
	ret i32 %3
}

define i32 @add65536(i32 %0){

1:
;1 1
	br label %2

;begin inline expansion add32768
2:
;2 9
	%3 = call i32 @add16384(i32 %0)
	%4 = call i32 @add16384(i32 %3)
	br label %5

;begin inline expansion add32768
5:
;5 9
	%6 = call i32 @add16384(i32 %4)
	%7 = call i32 @add16384(i32 %6)
	br label %8

8:
;8 1
	ret i32 %7
}

define i32 @add131072(i32 %0){

1:
;1 1
	br label %2

2:
;2 15
	%3 = call i32 @add16384(i32 %0)
	%4 = call i32 @add16384(i32 %3)
	br label %5

5:
;5 15
	%6 = call i32 @add16384(i32 %4)
	%7 = call i32 @add16384(i32 %6)
	br label %8

8:
;8 15
	%9 = call i32 @add16384(i32 %7)
	%10 = call i32 @add16384(i32 %9)
	br label %11

11:
;11 15
	%12 = call i32 @add16384(i32 %10)
	%13 = call i32 @add16384(i32 %12)
	br label %14

14:
;14 1
	ret i32 %13
}

define i32 @add262144(i32 %0){

1:
;1 1
	br label %2

2:
;2 27
	%3 = call i32 @add16384(i32 %0)
	%4 = call i32 @add16384(i32 %3)
	br label %5

5:
;5 27
	%6 = call i32 @add16384(i32 %4)
	%7 = call i32 @add16384(i32 %6)
	br label %8

8:
;8 27
	%9 = call i32 @add16384(i32 %7)
	%10 = call i32 @add16384(i32 %9)
	br label %11

11:
;11 27
	%12 = call i32 @add16384(i32 %10)
	%13 = call i32 @add16384(i32 %12)
	br label %14

14:
;14 27
	%15 = call i32 @add16384(i32 %13)
	%16 = call i32 @add16384(i32 %15)
	br label %17

17:
;17 27
	%18 = call i32 @add16384(i32 %16)
	%19 = call i32 @add16384(i32 %18)
	br label %20

20:
;20 27
	%21 = call i32 @add16384(i32 %19)
	%22 = call i32 @add16384(i32 %21)
	br label %23

23:
;23 27
	%24 = call i32 @add16384(i32 %22)
	%25 = call i32 @add16384(i32 %24)
	br label %26

26:
;26 1
	ret i32 %25
}

define i32 @add524288(i32 %0){

1:
;1 1
	br label %2

2:
;2 51
	%3 = call i32 @add16384(i32 %0)
	%4 = call i32 @add16384(i32 %3)
	br label %5

5:
;5 51
	%6 = call i32 @add16384(i32 %4)
	%7 = call i32 @add16384(i32 %6)
	br label %8

8:
;8 51
	%9 = call i32 @add16384(i32 %7)
	%10 = call i32 @add16384(i32 %9)
	br label %11

11:
;11 51
	%12 = call i32 @add16384(i32 %10)
	%13 = call i32 @add16384(i32 %12)
	br label %14

14:
;14 51
	%15 = call i32 @add16384(i32 %13)
	%16 = call i32 @add16384(i32 %15)
	br label %17

17:
;17 51
	%18 = call i32 @add16384(i32 %16)
	%19 = call i32 @add16384(i32 %18)
	br label %20

20:
;20 51
	%21 = call i32 @add16384(i32 %19)
	%22 = call i32 @add16384(i32 %21)
	br label %23

23:
;23 51
	%24 = call i32 @add16384(i32 %22)
	%25 = call i32 @add16384(i32 %24)
	br label %26

26:
;26 51
	%27 = call i32 @add16384(i32 %25)
	%28 = call i32 @add16384(i32 %27)
	br label %29

29:
;29 51
	%30 = call i32 @add16384(i32 %28)
	%31 = call i32 @add16384(i32 %30)
	br label %32

32:
;32 51
	%33 = call i32 @add16384(i32 %31)
	%34 = call i32 @add16384(i32 %33)
	br label %35

35:
;35 51
	%36 = call i32 @add16384(i32 %34)
	%37 = call i32 @add16384(i32 %36)
	br label %38

38:
;38 51
	%39 = call i32 @add16384(i32 %37)
	%40 = call i32 @add16384(i32 %39)
	br label %41

41:
;41 51
	%42 = call i32 @add16384(i32 %40)
	%43 = call i32 @add16384(i32 %42)
	br label %44

44:
;44 51
	%45 = call i32 @add16384(i32 %43)
	%46 = call i32 @add16384(i32 %45)
	br label %47

47:
;47 51
	%48 = call i32 @add16384(i32 %46)
	%49 = call i32 @add16384(i32 %48)
	br label %50

50:
;50 1
	ret i32 %49
}

define i32 @sanity_check(){

0:
;0 0
	br label %1

;begin inline expansion wP
1:
;1 140
	br label %2

2:
;2 140
	%3 = phi i32 [ 0, %1 ], [ %8, %134 ]
	%4 = phi i32 [ 3, %1 ], [ %135, %134 ]
	br label %5

5:
;5 140
	%6 = ashr i32 %4, 1
	br label %7

7:
;7 140
	%8 = phi i32 [ 2, %5 ], [ %14, %13 ]
	%9 = icmp slt i32 %8, %6
	br i1 %9, label %10, label %17

10:
;10 140
	%11 = srem i32 %4, %8
	%12 = icmp eq i32 %11, 0
	br i1 %12, label %15, label %13

13:
;13 140
	%14 = add i32 %8, 1
	br label %7

15:
;15 140
	%16 = add i32 %4, 1
	br label %17

17:
;17 140
	%18 = phi i32 [ 1, %7 ], [ 0, %15 ]
	%19 = phi i32 [ %4, %7 ], [ %16, %15 ]
	%20 = icmp sgt i32 %19, 0
	br i1 %20, label %136, label %21

21:
;21 140
	%22 = phi i1 [ 0, %17 ], [ %139, %136 ]
	br i1 %22, label %23, label %130

23:
;23 140
	%24 = load i32, i32* @N, align 4
	br label %25

25:
;25 140
	%26 = call i32 @wpp()
	%27 = call i32 @wpp()
	%28 = call i32 @wpp()
	%29 = call i32 @wpp()
	%30 = call i32 @wpp()
	%31 = call i32 @wpp()
	%32 = call i32 @wpp()
	%33 = call i32 @wpp()
	br label %34

34:
;34 140
	%35 = call i32 @wpp()
	%36 = call i32 @wpp()
	%37 = call i32 @wpp()
	%38 = call i32 @wpp()
	%39 = call i32 @wpp()
	%40 = call i32 @wpp()
	%41 = call i32 @wpp()
	%42 = call i32 @wpp()
	br label %43

43:
;43 140
	%44 = call i32 @wpp()
	%45 = call i32 @wpp()
	%46 = call i32 @wpp()
	%47 = call i32 @wpp()
	%48 = call i32 @wpp()
	%49 = call i32 @wpp()
	%50 = call i32 @wpp()
	%51 = call i32 @wpp()
	br label %52

52:
;52 140
	%53 = call i32 @wpp()
	%54 = call i32 @wpp()
	%55 = call i32 @wpp()
	%56 = call i32 @wpp()
	%57 = call i32 @wpp()
	%58 = call i32 @wpp()
	%59 = call i32 @wpp()
	%60 = call i32 @wpp()
	br label %61

61:
;61 140
	%62 = call i32 @wpp()
	%63 = call i32 @wpp()
	%64 = call i32 @wpp()
	%65 = call i32 @wpp()
	%66 = call i32 @wpp()
	%67 = call i32 @wpp()
	%68 = call i32 @wpp()
	%69 = call i32 @wpp()
	br label %70

70:
;70 140
	%71 = call i32 @wpp()
	%72 = call i32 @wpp()
	%73 = call i32 @wpp()
	%74 = call i32 @wpp()
	%75 = call i32 @wpp()
	%76 = call i32 @wpp()
	%77 = call i32 @wpp()
	%78 = call i32 @wpp()
	br label %79

79:
;79 140
	%80 = call i32 @wpp()
	%81 = call i32 @wpp()
	%82 = call i32 @wpp()
	%83 = call i32 @wpp()
	%84 = call i32 @wpp()
	%85 = call i32 @wpp()
	%86 = call i32 @wpp()
	%87 = call i32 @wpp()
	br label %88

;end inline expansion wpppp
88:
;88 140
	%89 = add i32 %24, %87
	%90 = srem i32 %89, 2
	%91 = icmp eq i32 %90, 0
	br i1 %91, label %125, label %92

;begin inline expansion block
92:
;92 140
	%93 = call i32 @block()
	br label %94

;begin inline expansion block
94:
;94 140
	%95 = call i32 @block()
	br label %96

;begin inline expansion block
96:
;96 140
	%97 = call i32 @block()
	br label %98

;begin inline expansion block
98:
;98 140
	%99 = call i32 @block()
	br label %100

100:
;100 140
	%101 = call i32 @wppp()
	%102 = call i32 @wppp()
	%103 = call i32 @wppp()
	%104 = call i32 @wppp()
	%105 = call i32 @wppp()
	%106 = call i32 @wppp()
	%107 = call i32 @wppp()
	br label %108

108:
;108 140
	%109 = call i32 @wppp()
	%110 = call i32 @wppp()
	%111 = call i32 @wppp()
	%112 = call i32 @wppp()
	%113 = call i32 @wppp()
	%114 = call i32 @wppp()
	%115 = call i32 @wppp()
	br label %116

116:
;116 140
	%117 = call i32 @bblock()
	%118 = call i32 @bblock()
	br label %119

;end inline expansion bblock
119:
;119 140
	br label %120

120:
;120 140
	%121 = phi i32 [ %129, %125 ], [ %118, %119 ]
	br label %122

;end inline expansion wP
122:
;122 140
	%123 = add i32 %121, 1
	br label %124

124:
;124 0
	ret i32 %123

125:
;125 140
	%126 = load i32, i32* @N, align 4
	%127 = call i32 @add524288(i32 %126)
	%128 = sub i32 %127, 524288
	%129 = sub i32 %128, 6
	br label %120

130:
;130 140
	%131 = load i32, i32* @N, align 4
	%132 = add i32 %131, %18
	store i32 %132, i32* @N, align 4
	%133 = add i32 %19, %18
	br label %134

134:
;134 140
	%135 = add i32 %133, 1
	br label %2

136:
;136 140
	%137 = add i32 %19, %18
	%138 = srem i32 %137, 9
	%139 = icmp eq i32 %138, 0
	br label %21
}

define i32 @main(){

0:
;0 0
	br label %1

1:
;1 142
	br label %2

2:
;2 142
	%3 = phi i32 [ 0, %1 ], [ %8, %20 ]
	%4 = phi i32 [ 3, %1 ], [ %21, %20 ]
	br label %5

5:
;5 142
	%6 = ashr i32 %4, 1
	br label %7

7:
;7 142
	%8 = phi i32 [ 2, %5 ], [ %139, %138 ]
	%9 = icmp slt i32 %8, %6
	br i1 %9, label %135, label %10

10:
;10 142
	%11 = phi i32 [ 1, %7 ], [ 0, %140 ]
	%12 = phi i32 [ %4, %7 ], [ %141, %140 ]
	%13 = icmp sgt i32 %12, 0
	br i1 %13, label %131, label %14

14:
;14 142
	%15 = phi i1 [ 0, %10 ], [ %134, %131 ]
	br i1 %15, label %22, label %16

16:
;16 142
	%17 = load i32, i32* @N, align 4
	%18 = add i32 %17, %11
	store i32 %18, i32* @N, align 4
	%19 = add i32 %12, %11
	br label %20

20:
;20 142
	%21 = add i32 %19, 1
	br label %2

22:
;22 142
	%23 = load i32, i32* @N, align 4
	br label %24

24:
;24 142
	%25 = call i32 @wpp()
	%26 = call i32 @wpp()
	%27 = call i32 @wpp()
	%28 = call i32 @wpp()
	%29 = call i32 @wpp()
	%30 = call i32 @wpp()
	%31 = call i32 @wpp()
	%32 = call i32 @wpp()
	br label %33

33:
;33 142
	%34 = call i32 @wpp()
	%35 = call i32 @wpp()
	%36 = call i32 @wpp()
	%37 = call i32 @wpp()
	%38 = call i32 @wpp()
	%39 = call i32 @wpp()
	%40 = call i32 @wpp()
	%41 = call i32 @wpp()
	br label %42

42:
;42 142
	%43 = call i32 @wpp()
	%44 = call i32 @wpp()
	%45 = call i32 @wpp()
	%46 = call i32 @wpp()
	%47 = call i32 @wpp()
	%48 = call i32 @wpp()
	%49 = call i32 @wpp()
	%50 = call i32 @wpp()
	br label %51

51:
;51 142
	%52 = call i32 @wpp()
	%53 = call i32 @wpp()
	%54 = call i32 @wpp()
	%55 = call i32 @wpp()
	%56 = call i32 @wpp()
	%57 = call i32 @wpp()
	%58 = call i32 @wpp()
	%59 = call i32 @wpp()
	br label %60

60:
;60 142
	%61 = call i32 @wpp()
	%62 = call i32 @wpp()
	%63 = call i32 @wpp()
	%64 = call i32 @wpp()
	%65 = call i32 @wpp()
	%66 = call i32 @wpp()
	%67 = call i32 @wpp()
	%68 = call i32 @wpp()
	br label %69

69:
;69 142
	%70 = call i32 @wpp()
	%71 = call i32 @wpp()
	%72 = call i32 @wpp()
	%73 = call i32 @wpp()
	%74 = call i32 @wpp()
	%75 = call i32 @wpp()
	%76 = call i32 @wpp()
	%77 = call i32 @wpp()
	br label %78

78:
;78 142
	%79 = call i32 @wpp()
	%80 = call i32 @wpp()
	%81 = call i32 @wpp()
	%82 = call i32 @wpp()
	%83 = call i32 @wpp()
	%84 = call i32 @wpp()
	%85 = call i32 @wpp()
	%86 = call i32 @wpp()
	br label %87

;end inline expansion wpppp
87:
;87 142
	%88 = add i32 %23, %86
	%89 = srem i32 %88, 2
	%90 = icmp eq i32 %89, 0
	br i1 %90, label %126, label %91

;begin inline expansion block
91:
;91 142
	%92 = call i32 @block()
	br label %93

;begin inline expansion block
93:
;93 142
	%94 = call i32 @block()
	br label %95

;begin inline expansion block
95:
;95 142
	%96 = call i32 @block()
	br label %97

;begin inline expansion block
97:
;97 142
	%98 = call i32 @block()
	br label %99

99:
;99 142
	%100 = call i32 @wppp()
	%101 = call i32 @wppp()
	%102 = call i32 @wppp()
	%103 = call i32 @wppp()
	%104 = call i32 @wppp()
	%105 = call i32 @wppp()
	%106 = call i32 @wppp()
	br label %107

107:
;107 142
	%108 = call i32 @wppp()
	%109 = call i32 @wppp()
	%110 = call i32 @wppp()
	%111 = call i32 @wppp()
	%112 = call i32 @wppp()
	%113 = call i32 @wppp()
	%114 = call i32 @wppp()
	br label %115

115:
;115 142
	%116 = call i32 @bblock()
	%117 = call i32 @bblock()
	br label %118

;end inline expansion bblock
118:
;118 142
	br label %119

119:
;119 142
	%120 = phi i32 [ %130, %126 ], [ %117, %118 ]
	br label %121

121:
;121 142
	%122 = add i32 %120, 1
	br label %123

;end inline expansion sanity_check
123:
;123 142
	%124 = sub i32 %122, 1
	br label %125

125:
;125 0
	ret i32 %124

126:
;126 142
	%127 = load i32, i32* @N, align 4
	%128 = call i32 @add524288(i32 %127)
	%129 = sub i32 %128, 524288
	%130 = sub i32 %129, 6
	br label %119

131:
;131 142
	%132 = add i32 %12, %11
	%133 = srem i32 %132, 9
	%134 = icmp eq i32 %133, 0
	br label %14

135:
;135 142
	%136 = srem i32 %4, %8
	%137 = icmp eq i32 %136, 0
	br i1 %137, label %140, label %138

138:
;138 142
	%139 = add i32 %8, 1
	br label %7

140:
;140 142
	%141 = add i32 %4, 1
	br label %10
}

define i32 @bblock(){

0:
;0 0
	br label %1

1:
;1 565
	%2 = load i32, i32* @w, align 4
	%3 = add i32 %2, 1
	store i32 %3, i32* @w, align 4
	%4 = load i32, i32* @w, align 4
	%5 = add i32 %4, 1
	store i32 %5, i32* @w, align 4
	br label %6

6:
;6 565
	%7 = load i32, i32* @w, align 4
	%8 = add i32 %7, 1
	store i32 %8, i32* @w, align 4
	%9 = load i32, i32* @w, align 4
	%10 = add i32 %9, 1
	store i32 %10, i32* @w, align 4
	br label %11

11:
;11 565
	%12 = load i32, i32* @w, align 4
	%13 = add i32 %12, 1
	store i32 %13, i32* @w, align 4
	%14 = load i32, i32* @w, align 4
	%15 = add i32 %14, 1
	store i32 %15, i32* @w, align 4
	br label %16

16:
;16 565
	%17 = load i32, i32* @w, align 4
	%18 = add i32 %17, 1
	store i32 %18, i32* @w, align 4
	%19 = load i32, i32* @w, align 4
	%20 = add i32 %19, 1
	store i32 %20, i32* @w, align 4
	br label %21

21:
;21 565
	%22 = load i32, i32* @w, align 4
	%23 = add i32 %22, 1
	store i32 %23, i32* @w, align 4
	%24 = load i32, i32* @w, align 4
	%25 = add i32 %24, 1
	store i32 %25, i32* @w, align 4
	br label %26

26:
;26 565
	%27 = load i32, i32* @w, align 4
	%28 = add i32 %27, 1
	store i32 %28, i32* @w, align 4
	%29 = load i32, i32* @w, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* @w, align 4
	br label %31

31:
;31 565
	%32 = load i32, i32* @w, align 4
	%33 = add i32 %32, 1
	store i32 %33, i32* @w, align 4
	%34 = load i32, i32* @w, align 4
	%35 = add i32 %34, 1
	store i32 %35, i32* @w, align 4
	br label %36

36:
;36 565
	%37 = load i32, i32* @w, align 4
	%38 = add i32 %37, 1
	store i32 %38, i32* @w, align 4
	%39 = load i32, i32* @w, align 4
	%40 = add i32 %39, 1
	store i32 %40, i32* @w, align 4
	br label %41

41:
;41 565
	%42 = load i32, i32* @w, align 4
	%43 = add i32 %42, 1
	store i32 %43, i32* @w, align 4
	%44 = load i32, i32* @w, align 4
	%45 = add i32 %44, 1
	store i32 %45, i32* @w, align 4
	br label %46

46:
;46 565
	%47 = load i32, i32* @w, align 4
	%48 = add i32 %47, 1
	store i32 %48, i32* @w, align 4
	%49 = load i32, i32* @w, align 4
	%50 = add i32 %49, 1
	store i32 %50, i32* @w, align 4
	br label %51

51:
;51 565
	%52 = load i32, i32* @w, align 4
	%53 = add i32 %52, 1
	store i32 %53, i32* @w, align 4
	%54 = load i32, i32* @w, align 4
	%55 = add i32 %54, 1
	store i32 %55, i32* @w, align 4
	br label %56

56:
;56 565
	%57 = load i32, i32* @w, align 4
	%58 = add i32 %57, 1
	store i32 %58, i32* @w, align 4
	%59 = load i32, i32* @w, align 4
	%60 = add i32 %59, 1
	store i32 %60, i32* @w, align 4
	br label %61

61:
;61 565
	%62 = load i32, i32* @w, align 4
	%63 = add i32 %62, 1
	store i32 %63, i32* @w, align 4
	%64 = load i32, i32* @w, align 4
	%65 = add i32 %64, 1
	store i32 %65, i32* @w, align 4
	br label %66

66:
;66 565
	%67 = load i32, i32* @w, align 4
	%68 = add i32 %67, 1
	store i32 %68, i32* @w, align 4
	%69 = load i32, i32* @w, align 4
	%70 = add i32 %69, 1
	store i32 %70, i32* @w, align 4
	br label %71

71:
;71 565
	%72 = load i32, i32* @w, align 4
	%73 = add i32 %72, 1
	store i32 %73, i32* @w, align 4
	%74 = load i32, i32* @w, align 4
	%75 = add i32 %74, 1
	store i32 %75, i32* @w, align 4
	br label %76

76:
;76 565
	%77 = load i32, i32* @w, align 4
	%78 = add i32 %77, 1
	store i32 %78, i32* @w, align 4
	%79 = load i32, i32* @w, align 4
	%80 = add i32 %79, 1
	store i32 %80, i32* @w, align 4
	br label %81

81:
;81 565
	%82 = load i32, i32* @w, align 4
	%83 = add i32 %82, 1
	store i32 %83, i32* @w, align 4
	%84 = load i32, i32* @w, align 4
	%85 = add i32 %84, 1
	store i32 %85, i32* @w, align 4
	br label %86

86:
;86 565
	%87 = load i32, i32* @w, align 4
	%88 = add i32 %87, 1
	store i32 %88, i32* @w, align 4
	%89 = load i32, i32* @w, align 4
	%90 = add i32 %89, 1
	store i32 %90, i32* @w, align 4
	br label %91

91:
;91 565
	%92 = load i32, i32* @w, align 4
	%93 = add i32 %92, 1
	store i32 %93, i32* @w, align 4
	%94 = load i32, i32* @w, align 4
	%95 = add i32 %94, 1
	store i32 %95, i32* @w, align 4
	br label %96

96:
;96 565
	%97 = load i32, i32* @w, align 4
	%98 = add i32 %97, 1
	store i32 %98, i32* @w, align 4
	%99 = load i32, i32* @w, align 4
	%100 = add i32 %99, 1
	store i32 %100, i32* @w, align 4
	br label %101

101:
;101 565
	%102 = load i32, i32* @w, align 4
	%103 = add i32 %102, 1
	store i32 %103, i32* @w, align 4
	%104 = load i32, i32* @w, align 4
	%105 = add i32 %104, 1
	store i32 %105, i32* @w, align 4
	br label %106

106:
;106 565
	%107 = load i32, i32* @w, align 4
	%108 = add i32 %107, 1
	store i32 %108, i32* @w, align 4
	%109 = load i32, i32* @w, align 4
	%110 = add i32 %109, 1
	store i32 %110, i32* @w, align 4
	br label %111

111:
;111 565
	%112 = load i32, i32* @w, align 4
	%113 = add i32 %112, 1
	store i32 %113, i32* @w, align 4
	%114 = load i32, i32* @w, align 4
	%115 = add i32 %114, 1
	store i32 %115, i32* @w, align 4
	br label %116

116:
;116 565
	%117 = load i32, i32* @w, align 4
	%118 = add i32 %117, 1
	store i32 %118, i32* @w, align 4
	%119 = load i32, i32* @w, align 4
	%120 = add i32 %119, 1
	store i32 %120, i32* @w, align 4
	br label %121

121:
;121 565
	%122 = load i32, i32* @w, align 4
	%123 = add i32 %122, 1
	store i32 %123, i32* @w, align 4
	%124 = load i32, i32* @w, align 4
	%125 = add i32 %124, 1
	store i32 %125, i32* @w, align 4
	br label %126

126:
;126 565
	%127 = load i32, i32* @w, align 4
	%128 = add i32 %127, 1
	store i32 %128, i32* @w, align 4
	%129 = load i32, i32* @w, align 4
	%130 = add i32 %129, 1
	store i32 %130, i32* @w, align 4
	br label %131

131:
;131 565
	%132 = load i32, i32* @w, align 4
	%133 = add i32 %132, 1
	store i32 %133, i32* @w, align 4
	%134 = load i32, i32* @w, align 4
	%135 = add i32 %134, 1
	store i32 %135, i32* @w, align 4
	br label %136

136:
;136 565
	%137 = load i32, i32* @w, align 4
	%138 = add i32 %137, 1
	store i32 %138, i32* @w, align 4
	%139 = load i32, i32* @w, align 4
	%140 = add i32 %139, 1
	store i32 %140, i32* @w, align 4
	br label %141

141:
;141 565
	%142 = load i32, i32* @w, align 4
	%143 = add i32 %142, 1
	store i32 %143, i32* @w, align 4
	%144 = load i32, i32* @w, align 4
	%145 = add i32 %144, 1
	store i32 %145, i32* @w, align 4
	br label %146

146:
;146 565
	%147 = load i32, i32* @w, align 4
	%148 = add i32 %147, 1
	store i32 %148, i32* @w, align 4
	%149 = load i32, i32* @w, align 4
	%150 = add i32 %149, 1
	store i32 %150, i32* @w, align 4
	br label %151

151:
;151 565
	%152 = load i32, i32* @w, align 4
	%153 = add i32 %152, 1
	store i32 %153, i32* @w, align 4
	%154 = load i32, i32* @w, align 4
	%155 = add i32 %154, 1
	store i32 %155, i32* @w, align 4
	br label %156

156:
;156 565
	%157 = load i32, i32* @w, align 4
	%158 = add i32 %157, 1
	store i32 %158, i32* @w, align 4
	%159 = load i32, i32* @w, align 4
	%160 = add i32 %159, 1
	store i32 %160, i32* @w, align 4
	br label %161

161:
;161 565
	%162 = load i32, i32* @w, align 4
	%163 = add i32 %162, 1
	store i32 %163, i32* @w, align 4
	%164 = load i32, i32* @w, align 4
	%165 = add i32 %164, 1
	store i32 %165, i32* @w, align 4
	br label %166

166:
;166 565
	%167 = load i32, i32* @w, align 4
	%168 = add i32 %167, 1
	store i32 %168, i32* @w, align 4
	%169 = load i32, i32* @w, align 4
	%170 = add i32 %169, 1
	store i32 %170, i32* @w, align 4
	br label %171

171:
;171 565
	%172 = load i32, i32* @w, align 4
	%173 = add i32 %172, 1
	store i32 %173, i32* @w, align 4
	%174 = load i32, i32* @w, align 4
	%175 = add i32 %174, 1
	store i32 %175, i32* @w, align 4
	br label %176

176:
;176 565
	%177 = load i32, i32* @w, align 4
	%178 = add i32 %177, 1
	store i32 %178, i32* @w, align 4
	%179 = load i32, i32* @w, align 4
	%180 = add i32 %179, 1
	store i32 %180, i32* @w, align 4
	br label %181

181:
;181 565
	%182 = load i32, i32* @w, align 4
	%183 = add i32 %182, 1
	store i32 %183, i32* @w, align 4
	%184 = load i32, i32* @w, align 4
	%185 = add i32 %184, 1
	store i32 %185, i32* @w, align 4
	br label %186

186:
;186 565
	%187 = load i32, i32* @w, align 4
	%188 = add i32 %187, 1
	store i32 %188, i32* @w, align 4
	%189 = load i32, i32* @w, align 4
	%190 = add i32 %189, 1
	store i32 %190, i32* @w, align 4
	br label %191

191:
;191 565
	%192 = load i32, i32* @w, align 4
	%193 = add i32 %192, 1
	store i32 %193, i32* @w, align 4
	%194 = load i32, i32* @w, align 4
	%195 = add i32 %194, 1
	store i32 %195, i32* @w, align 4
	br label %196

196:
;196 565
	%197 = load i32, i32* @w, align 4
	%198 = add i32 %197, 1
	store i32 %198, i32* @w, align 4
	%199 = load i32, i32* @w, align 4
	%200 = add i32 %199, 1
	store i32 %200, i32* @w, align 4
	br label %201

201:
;201 565
	%202 = load i32, i32* @w, align 4
	%203 = add i32 %202, 1
	store i32 %203, i32* @w, align 4
	%204 = load i32, i32* @w, align 4
	%205 = add i32 %204, 1
	store i32 %205, i32* @w, align 4
	br label %206

206:
;206 565
	%207 = load i32, i32* @w, align 4
	%208 = add i32 %207, 1
	store i32 %208, i32* @w, align 4
	%209 = load i32, i32* @w, align 4
	%210 = add i32 %209, 1
	store i32 %210, i32* @w, align 4
	br label %211

211:
;211 565
	%212 = load i32, i32* @w, align 4
	%213 = add i32 %212, 1
	store i32 %213, i32* @w, align 4
	%214 = load i32, i32* @w, align 4
	%215 = add i32 %214, 1
	store i32 %215, i32* @w, align 4
	br label %216

216:
;216 565
	%217 = load i32, i32* @w, align 4
	%218 = add i32 %217, 1
	store i32 %218, i32* @w, align 4
	%219 = load i32, i32* @w, align 4
	%220 = add i32 %219, 1
	store i32 %220, i32* @w, align 4
	br label %221

221:
;221 565
	%222 = load i32, i32* @w, align 4
	%223 = add i32 %222, 1
	store i32 %223, i32* @w, align 4
	%224 = load i32, i32* @w, align 4
	%225 = add i32 %224, 1
	store i32 %225, i32* @w, align 4
	br label %226

226:
;226 565
	%227 = load i32, i32* @w, align 4
	%228 = add i32 %227, 1
	store i32 %228, i32* @w, align 4
	%229 = load i32, i32* @w, align 4
	%230 = add i32 %229, 1
	store i32 %230, i32* @w, align 4
	br label %231

231:
;231 565
	%232 = load i32, i32* @w, align 4
	%233 = add i32 %232, 1
	store i32 %233, i32* @w, align 4
	%234 = load i32, i32* @w, align 4
	%235 = add i32 %234, 1
	store i32 %235, i32* @w, align 4
	br label %236

236:
;236 565
	%237 = load i32, i32* @w, align 4
	%238 = add i32 %237, 1
	store i32 %238, i32* @w, align 4
	%239 = load i32, i32* @w, align 4
	%240 = add i32 %239, 1
	store i32 %240, i32* @w, align 4
	br label %241

241:
;241 565
	%242 = load i32, i32* @w, align 4
	%243 = add i32 %242, 1
	store i32 %243, i32* @w, align 4
	%244 = load i32, i32* @w, align 4
	%245 = add i32 %244, 1
	store i32 %245, i32* @w, align 4
	br label %246

246:
;246 565
	%247 = load i32, i32* @w, align 4
	%248 = add i32 %247, 1
	store i32 %248, i32* @w, align 4
	%249 = load i32, i32* @w, align 4
	%250 = add i32 %249, 1
	store i32 %250, i32* @w, align 4
	br label %251

251:
;251 565
	%252 = load i32, i32* @w, align 4
	%253 = add i32 %252, 1
	store i32 %253, i32* @w, align 4
	%254 = load i32, i32* @w, align 4
	%255 = add i32 %254, 1
	store i32 %255, i32* @w, align 4
	br label %256

256:
;256 565
	%257 = load i32, i32* @w, align 4
	%258 = add i32 %257, 1
	store i32 %258, i32* @w, align 4
	%259 = load i32, i32* @w, align 4
	%260 = add i32 %259, 1
	store i32 %260, i32* @w, align 4
	br label %261

261:
;261 565
	%262 = load i32, i32* @w, align 4
	%263 = add i32 %262, 1
	store i32 %263, i32* @w, align 4
	%264 = load i32, i32* @w, align 4
	%265 = add i32 %264, 1
	store i32 %265, i32* @w, align 4
	br label %266

266:
;266 565
	%267 = load i32, i32* @w, align 4
	%268 = add i32 %267, 1
	store i32 %268, i32* @w, align 4
	%269 = load i32, i32* @w, align 4
	%270 = add i32 %269, 1
	store i32 %270, i32* @w, align 4
	br label %271

271:
;271 565
	%272 = load i32, i32* @w, align 4
	%273 = add i32 %272, 1
	store i32 %273, i32* @w, align 4
	%274 = load i32, i32* @w, align 4
	%275 = add i32 %274, 1
	store i32 %275, i32* @w, align 4
	br label %276

276:
;276 565
	%277 = load i32, i32* @w, align 4
	%278 = add i32 %277, 1
	store i32 %278, i32* @w, align 4
	%279 = load i32, i32* @w, align 4
	%280 = add i32 %279, 1
	store i32 %280, i32* @w, align 4
	br label %281

281:
;281 565
	%282 = load i32, i32* @w, align 4
	%283 = add i32 %282, 1
	store i32 %283, i32* @w, align 4
	%284 = load i32, i32* @w, align 4
	%285 = add i32 %284, 1
	store i32 %285, i32* @w, align 4
	br label %286

286:
;286 565
	%287 = load i32, i32* @w, align 4
	%288 = add i32 %287, 1
	store i32 %288, i32* @w, align 4
	%289 = load i32, i32* @w, align 4
	%290 = add i32 %289, 1
	store i32 %290, i32* @w, align 4
	br label %291

291:
;291 565
	%292 = load i32, i32* @w, align 4
	%293 = add i32 %292, 1
	store i32 %293, i32* @w, align 4
	%294 = load i32, i32* @w, align 4
	%295 = add i32 %294, 1
	store i32 %295, i32* @w, align 4
	br label %296

296:
;296 565
	%297 = load i32, i32* @w, align 4
	%298 = add i32 %297, 1
	store i32 %298, i32* @w, align 4
	%299 = load i32, i32* @w, align 4
	%300 = add i32 %299, 1
	store i32 %300, i32* @w, align 4
	br label %301

301:
;301 565
	%302 = load i32, i32* @w, align 4
	%303 = add i32 %302, 1
	store i32 %303, i32* @w, align 4
	%304 = load i32, i32* @w, align 4
	%305 = add i32 %304, 1
	store i32 %305, i32* @w, align 4
	br label %306

306:
;306 565
	%307 = load i32, i32* @w, align 4
	%308 = add i32 %307, 1
	store i32 %308, i32* @w, align 4
	%309 = load i32, i32* @w, align 4
	%310 = add i32 %309, 1
	store i32 %310, i32* @w, align 4
	br label %311

311:
;311 565
	%312 = load i32, i32* @w, align 4
	%313 = add i32 %312, 1
	store i32 %313, i32* @w, align 4
	%314 = load i32, i32* @w, align 4
	%315 = add i32 %314, 1
	store i32 %315, i32* @w, align 4
	br label %316

316:
;316 565
	%317 = load i32, i32* @w, align 4
	%318 = add i32 %317, 1
	store i32 %318, i32* @w, align 4
	%319 = load i32, i32* @w, align 4
	%320 = add i32 %319, 1
	store i32 %320, i32* @w, align 4
	br label %321

321:
;321 565
	%322 = load i32, i32* @w, align 4
	%323 = add i32 %322, 1
	store i32 %323, i32* @w, align 4
	%324 = load i32, i32* @w, align 4
	%325 = add i32 %324, 1
	store i32 %325, i32* @w, align 4
	br label %326

326:
;326 565
	%327 = load i32, i32* @w, align 4
	%328 = add i32 %327, 1
	store i32 %328, i32* @w, align 4
	%329 = load i32, i32* @w, align 4
	%330 = add i32 %329, 1
	store i32 %330, i32* @w, align 4
	br label %331

331:
;331 565
	%332 = load i32, i32* @w, align 4
	%333 = add i32 %332, 1
	store i32 %333, i32* @w, align 4
	%334 = load i32, i32* @w, align 4
	%335 = add i32 %334, 1
	store i32 %335, i32* @w, align 4
	br label %336

336:
;336 565
	%337 = load i32, i32* @w, align 4
	%338 = add i32 %337, 1
	store i32 %338, i32* @w, align 4
	%339 = load i32, i32* @w, align 4
	%340 = add i32 %339, 1
	store i32 %340, i32* @w, align 4
	br label %341

341:
;341 565
	%342 = load i32, i32* @w, align 4
	%343 = add i32 %342, 1
	store i32 %343, i32* @w, align 4
	%344 = load i32, i32* @w, align 4
	%345 = add i32 %344, 1
	store i32 %345, i32* @w, align 4
	br label %346

346:
;346 565
	%347 = load i32, i32* @w, align 4
	%348 = add i32 %347, 1
	store i32 %348, i32* @w, align 4
	%349 = load i32, i32* @w, align 4
	%350 = add i32 %349, 1
	store i32 %350, i32* @w, align 4
	br label %351

351:
;351 565
	%352 = load i32, i32* @w, align 4
	%353 = add i32 %352, 1
	store i32 %353, i32* @w, align 4
	%354 = load i32, i32* @w, align 4
	%355 = add i32 %354, 1
	store i32 %355, i32* @w, align 4
	br label %356

356:
;356 565
	%357 = load i32, i32* @w, align 4
	%358 = add i32 %357, 1
	store i32 %358, i32* @w, align 4
	%359 = load i32, i32* @w, align 4
	%360 = add i32 %359, 1
	store i32 %360, i32* @w, align 4
	br label %361

361:
;361 565
	%362 = load i32, i32* @w, align 4
	%363 = add i32 %362, 1
	store i32 %363, i32* @w, align 4
	%364 = load i32, i32* @w, align 4
	%365 = add i32 %364, 1
	store i32 %365, i32* @w, align 4
	br label %366

366:
;366 565
	%367 = load i32, i32* @w, align 4
	%368 = add i32 %367, 1
	store i32 %368, i32* @w, align 4
	%369 = load i32, i32* @w, align 4
	%370 = add i32 %369, 1
	store i32 %370, i32* @w, align 4
	br label %371

371:
;371 565
	%372 = load i32, i32* @w, align 4
	%373 = add i32 %372, 1
	store i32 %373, i32* @w, align 4
	%374 = load i32, i32* @w, align 4
	%375 = add i32 %374, 1
	store i32 %375, i32* @w, align 4
	br label %376

376:
;376 565
	%377 = load i32, i32* @w, align 4
	%378 = add i32 %377, 1
	store i32 %378, i32* @w, align 4
	%379 = load i32, i32* @w, align 4
	%380 = add i32 %379, 1
	store i32 %380, i32* @w, align 4
	br label %381

381:
;381 565
	%382 = load i32, i32* @w, align 4
	%383 = add i32 %382, 1
	store i32 %383, i32* @w, align 4
	%384 = load i32, i32* @w, align 4
	%385 = add i32 %384, 1
	store i32 %385, i32* @w, align 4
	br label %386

386:
;386 565
	%387 = load i32, i32* @w, align 4
	%388 = add i32 %387, 1
	store i32 %388, i32* @w, align 4
	%389 = load i32, i32* @w, align 4
	%390 = add i32 %389, 1
	store i32 %390, i32* @w, align 4
	br label %391

391:
;391 565
	%392 = load i32, i32* @w, align 4
	%393 = add i32 %392, 1
	store i32 %393, i32* @w, align 4
	%394 = load i32, i32* @w, align 4
	%395 = add i32 %394, 1
	store i32 %395, i32* @w, align 4
	br label %396

396:
;396 565
	%397 = load i32, i32* @w, align 4
	%398 = add i32 %397, 1
	store i32 %398, i32* @w, align 4
	%399 = load i32, i32* @w, align 4
	%400 = add i32 %399, 1
	store i32 %400, i32* @w, align 4
	br label %401

401:
;401 565
	%402 = load i32, i32* @w, align 4
	%403 = add i32 %402, 1
	store i32 %403, i32* @w, align 4
	%404 = load i32, i32* @w, align 4
	%405 = add i32 %404, 1
	store i32 %405, i32* @w, align 4
	br label %406

406:
;406 565
	%407 = load i32, i32* @w, align 4
	%408 = add i32 %407, 1
	store i32 %408, i32* @w, align 4
	%409 = load i32, i32* @w, align 4
	%410 = add i32 %409, 1
	store i32 %410, i32* @w, align 4
	br label %411

411:
;411 565
	%412 = load i32, i32* @w, align 4
	%413 = add i32 %412, 1
	store i32 %413, i32* @w, align 4
	%414 = load i32, i32* @w, align 4
	%415 = add i32 %414, 1
	store i32 %415, i32* @w, align 4
	br label %416

416:
;416 565
	%417 = load i32, i32* @w, align 4
	%418 = add i32 %417, 1
	store i32 %418, i32* @w, align 4
	%419 = load i32, i32* @w, align 4
	%420 = add i32 %419, 1
	store i32 %420, i32* @w, align 4
	br label %421

421:
;421 565
	%422 = load i32, i32* @w, align 4
	%423 = add i32 %422, 1
	store i32 %423, i32* @w, align 4
	%424 = load i32, i32* @w, align 4
	%425 = add i32 %424, 1
	store i32 %425, i32* @w, align 4
	br label %426

426:
;426 565
	%427 = load i32, i32* @w, align 4
	%428 = add i32 %427, 1
	store i32 %428, i32* @w, align 4
	%429 = load i32, i32* @w, align 4
	%430 = add i32 %429, 1
	store i32 %430, i32* @w, align 4
	br label %431

431:
;431 565
	%432 = load i32, i32* @w, align 4
	%433 = add i32 %432, 1
	store i32 %433, i32* @w, align 4
	%434 = load i32, i32* @w, align 4
	%435 = add i32 %434, 1
	store i32 %435, i32* @w, align 4
	br label %436

436:
;436 565
	%437 = load i32, i32* @w, align 4
	%438 = add i32 %437, 1
	store i32 %438, i32* @w, align 4
	%439 = load i32, i32* @w, align 4
	%440 = add i32 %439, 1
	store i32 %440, i32* @w, align 4
	br label %441

441:
;441 565
	%442 = load i32, i32* @w, align 4
	%443 = add i32 %442, 1
	store i32 %443, i32* @w, align 4
	%444 = load i32, i32* @w, align 4
	%445 = add i32 %444, 1
	store i32 %445, i32* @w, align 4
	br label %446

446:
;446 565
	%447 = load i32, i32* @w, align 4
	%448 = add i32 %447, 1
	store i32 %448, i32* @w, align 4
	%449 = load i32, i32* @w, align 4
	%450 = add i32 %449, 1
	store i32 %450, i32* @w, align 4
	br label %451

451:
;451 565
	%452 = load i32, i32* @w, align 4
	%453 = add i32 %452, 1
	store i32 %453, i32* @w, align 4
	%454 = load i32, i32* @w, align 4
	%455 = add i32 %454, 1
	store i32 %455, i32* @w, align 4
	br label %456

456:
;456 565
	%457 = load i32, i32* @w, align 4
	%458 = add i32 %457, 1
	store i32 %458, i32* @w, align 4
	%459 = load i32, i32* @w, align 4
	%460 = add i32 %459, 1
	store i32 %460, i32* @w, align 4
	br label %461

461:
;461 565
	%462 = load i32, i32* @w, align 4
	%463 = add i32 %462, 1
	store i32 %463, i32* @w, align 4
	%464 = load i32, i32* @w, align 4
	%465 = add i32 %464, 1
	store i32 %465, i32* @w, align 4
	br label %466

466:
;466 565
	%467 = load i32, i32* @w, align 4
	%468 = add i32 %467, 1
	store i32 %468, i32* @w, align 4
	%469 = load i32, i32* @w, align 4
	%470 = add i32 %469, 1
	store i32 %470, i32* @w, align 4
	br label %471

471:
;471 565
	%472 = load i32, i32* @w, align 4
	%473 = add i32 %472, 1
	store i32 %473, i32* @w, align 4
	%474 = load i32, i32* @w, align 4
	%475 = add i32 %474, 1
	store i32 %475, i32* @w, align 4
	br label %476

476:
;476 565
	%477 = load i32, i32* @w, align 4
	%478 = add i32 %477, 1
	store i32 %478, i32* @w, align 4
	%479 = load i32, i32* @w, align 4
	%480 = add i32 %479, 1
	store i32 %480, i32* @w, align 4
	br label %481

481:
;481 565
	%482 = load i32, i32* @w, align 4
	%483 = add i32 %482, 1
	store i32 %483, i32* @w, align 4
	%484 = load i32, i32* @w, align 4
	%485 = add i32 %484, 1
	store i32 %485, i32* @w, align 4
	br label %486

486:
;486 565
	%487 = load i32, i32* @w, align 4
	%488 = add i32 %487, 1
	store i32 %488, i32* @w, align 4
	%489 = load i32, i32* @w, align 4
	%490 = add i32 %489, 1
	store i32 %490, i32* @w, align 4
	br label %491

491:
;491 565
	%492 = load i32, i32* @w, align 4
	%493 = add i32 %492, 1
	store i32 %493, i32* @w, align 4
	%494 = load i32, i32* @w, align 4
	%495 = add i32 %494, 1
	store i32 %495, i32* @w, align 4
	br label %496

496:
;496 565
	%497 = load i32, i32* @w, align 4
	%498 = add i32 %497, 1
	store i32 %498, i32* @w, align 4
	%499 = load i32, i32* @w, align 4
	%500 = add i32 %499, 1
	store i32 %500, i32* @w, align 4
	br label %501

501:
;501 565
	%502 = load i32, i32* @w, align 4
	%503 = add i32 %502, 1
	store i32 %503, i32* @w, align 4
	%504 = load i32, i32* @w, align 4
	%505 = add i32 %504, 1
	store i32 %505, i32* @w, align 4
	br label %506

506:
;506 565
	%507 = load i32, i32* @w, align 4
	%508 = add i32 %507, 1
	store i32 %508, i32* @w, align 4
	%509 = load i32, i32* @w, align 4
	%510 = add i32 %509, 1
	store i32 %510, i32* @w, align 4
	br label %511

511:
;511 565
	%512 = load i32, i32* @w, align 4
	%513 = add i32 %512, 1
	store i32 %513, i32* @w, align 4
	%514 = load i32, i32* @w, align 4
	%515 = add i32 %514, 1
	store i32 %515, i32* @w, align 4
	br label %516

516:
;516 565
	%517 = load i32, i32* @w, align 4
	%518 = add i32 %517, 1
	store i32 %518, i32* @w, align 4
	%519 = load i32, i32* @w, align 4
	%520 = add i32 %519, 1
	store i32 %520, i32* @w, align 4
	br label %521

521:
;521 565
	%522 = load i32, i32* @w, align 4
	%523 = add i32 %522, 1
	store i32 %523, i32* @w, align 4
	%524 = load i32, i32* @w, align 4
	%525 = add i32 %524, 1
	store i32 %525, i32* @w, align 4
	br label %526

526:
;526 565
	%527 = load i32, i32* @w, align 4
	%528 = add i32 %527, 1
	store i32 %528, i32* @w, align 4
	%529 = load i32, i32* @w, align 4
	%530 = add i32 %529, 1
	store i32 %530, i32* @w, align 4
	br label %531

531:
;531 565
	%532 = load i32, i32* @w, align 4
	%533 = add i32 %532, 1
	store i32 %533, i32* @w, align 4
	%534 = load i32, i32* @w, align 4
	%535 = add i32 %534, 1
	store i32 %535, i32* @w, align 4
	br label %536

536:
;536 565
	%537 = load i32, i32* @w, align 4
	%538 = add i32 %537, 1
	store i32 %538, i32* @w, align 4
	%539 = load i32, i32* @w, align 4
	%540 = add i32 %539, 1
	store i32 %540, i32* @w, align 4
	br label %541

541:
;541 565
	%542 = load i32, i32* @w, align 4
	%543 = add i32 %542, 1
	store i32 %543, i32* @w, align 4
	%544 = load i32, i32* @w, align 4
	%545 = add i32 %544, 1
	store i32 %545, i32* @w, align 4
	br label %546

546:
;546 565
	%547 = load i32, i32* @w, align 4
	%548 = add i32 %547, 1
	store i32 %548, i32* @w, align 4
	%549 = load i32, i32* @w, align 4
	%550 = add i32 %549, 1
	store i32 %550, i32* @w, align 4
	br label %551

551:
;551 565
	%552 = load i32, i32* @w, align 4
	%553 = add i32 %552, 1
	store i32 %553, i32* @w, align 4
	%554 = load i32, i32* @w, align 4
	%555 = add i32 %554, 1
	store i32 %555, i32* @w, align 4
	br label %556

556:
;556 565
	%557 = load i32, i32* @w, align 4
	%558 = add i32 %557, 1
	store i32 %558, i32* @w, align 4
	%559 = load i32, i32* @w, align 4
	%560 = add i32 %559, 1
	store i32 %560, i32* @w, align 4
	br label %561

;end inline expansion wpppp
561:
;561 565
	%562 = call i32 @bblock()
	%563 = call i32 @bblock()
	br label %564

564:
;564 0
	ret i32 %563
}

define i32 @wpp(){

0:
;0 0
	%1 = load i32, i32* @w, align 4
	%2 = add i32 %1, 1
	store i32 %2, i32* @w, align 4
	%3 = load i32, i32* @w, align 4
	%4 = add i32 %3, 1
	store i32 %4, i32* @w, align 4
	br label %5

5:
;5 0
	ret i32 %4
}

define i32 @wpppp(){

0:
;0 0
	br label %1

;begin inline expansion wpp
1:
;1 282
	%2 = load i32, i32* @w, align 4
	%3 = add i32 %2, 1
	store i32 %3, i32* @w, align 4
	%4 = load i32, i32* @w, align 4
	%5 = add i32 %4, 1
	store i32 %5, i32* @w, align 4
	br label %6

;begin inline expansion wpp
6:
;6 282
	%7 = load i32, i32* @w, align 4
	%8 = add i32 %7, 1
	store i32 %8, i32* @w, align 4
	%9 = load i32, i32* @w, align 4
	%10 = add i32 %9, 1
	store i32 %10, i32* @w, align 4
	br label %11

;begin inline expansion wpp
11:
;11 282
	%12 = load i32, i32* @w, align 4
	%13 = add i32 %12, 1
	store i32 %13, i32* @w, align 4
	%14 = load i32, i32* @w, align 4
	%15 = add i32 %14, 1
	store i32 %15, i32* @w, align 4
	br label %16

;begin inline expansion wpp
16:
;16 282
	%17 = load i32, i32* @w, align 4
	%18 = add i32 %17, 1
	store i32 %18, i32* @w, align 4
	%19 = load i32, i32* @w, align 4
	%20 = add i32 %19, 1
	store i32 %20, i32* @w, align 4
	br label %21

;begin inline expansion wpp
21:
;21 282
	%22 = load i32, i32* @w, align 4
	%23 = add i32 %22, 1
	store i32 %23, i32* @w, align 4
	%24 = load i32, i32* @w, align 4
	%25 = add i32 %24, 1
	store i32 %25, i32* @w, align 4
	br label %26

;begin inline expansion wpp
26:
;26 282
	%27 = load i32, i32* @w, align 4
	%28 = add i32 %27, 1
	store i32 %28, i32* @w, align 4
	%29 = load i32, i32* @w, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* @w, align 4
	br label %31

;begin inline expansion wpp
31:
;31 282
	%32 = load i32, i32* @w, align 4
	%33 = add i32 %32, 1
	store i32 %33, i32* @w, align 4
	%34 = load i32, i32* @w, align 4
	%35 = add i32 %34, 1
	store i32 %35, i32* @w, align 4
	br label %36

;begin inline expansion wpp
36:
;36 282
	%37 = load i32, i32* @w, align 4
	%38 = add i32 %37, 1
	store i32 %38, i32* @w, align 4
	%39 = load i32, i32* @w, align 4
	%40 = add i32 %39, 1
	store i32 %40, i32* @w, align 4
	br label %41

;begin inline expansion wpp
41:
;41 282
	%42 = load i32, i32* @w, align 4
	%43 = add i32 %42, 1
	store i32 %43, i32* @w, align 4
	%44 = load i32, i32* @w, align 4
	%45 = add i32 %44, 1
	store i32 %45, i32* @w, align 4
	br label %46

;begin inline expansion wpp
46:
;46 282
	%47 = load i32, i32* @w, align 4
	%48 = add i32 %47, 1
	store i32 %48, i32* @w, align 4
	%49 = load i32, i32* @w, align 4
	%50 = add i32 %49, 1
	store i32 %50, i32* @w, align 4
	br label %51

;begin inline expansion wpp
51:
;51 282
	%52 = load i32, i32* @w, align 4
	%53 = add i32 %52, 1
	store i32 %53, i32* @w, align 4
	%54 = load i32, i32* @w, align 4
	%55 = add i32 %54, 1
	store i32 %55, i32* @w, align 4
	br label %56

;begin inline expansion wpp
56:
;56 282
	%57 = load i32, i32* @w, align 4
	%58 = add i32 %57, 1
	store i32 %58, i32* @w, align 4
	%59 = load i32, i32* @w, align 4
	%60 = add i32 %59, 1
	store i32 %60, i32* @w, align 4
	br label %61

;begin inline expansion wpp
61:
;61 282
	%62 = load i32, i32* @w, align 4
	%63 = add i32 %62, 1
	store i32 %63, i32* @w, align 4
	%64 = load i32, i32* @w, align 4
	%65 = add i32 %64, 1
	store i32 %65, i32* @w, align 4
	br label %66

;begin inline expansion wpp
66:
;66 282
	%67 = load i32, i32* @w, align 4
	%68 = add i32 %67, 1
	store i32 %68, i32* @w, align 4
	%69 = load i32, i32* @w, align 4
	%70 = add i32 %69, 1
	store i32 %70, i32* @w, align 4
	br label %71

;begin inline expansion wpp
71:
;71 282
	%72 = load i32, i32* @w, align 4
	%73 = add i32 %72, 1
	store i32 %73, i32* @w, align 4
	%74 = load i32, i32* @w, align 4
	%75 = add i32 %74, 1
	store i32 %75, i32* @w, align 4
	br label %76

;begin inline expansion wpp
76:
;76 282
	%77 = load i32, i32* @w, align 4
	%78 = add i32 %77, 1
	store i32 %78, i32* @w, align 4
	%79 = load i32, i32* @w, align 4
	%80 = add i32 %79, 1
	store i32 %80, i32* @w, align 4
	br label %81

;begin inline expansion wpp
81:
;81 282
	%82 = load i32, i32* @w, align 4
	%83 = add i32 %82, 1
	store i32 %83, i32* @w, align 4
	%84 = load i32, i32* @w, align 4
	%85 = add i32 %84, 1
	store i32 %85, i32* @w, align 4
	br label %86

;begin inline expansion wpp
86:
;86 282
	%87 = load i32, i32* @w, align 4
	%88 = add i32 %87, 1
	store i32 %88, i32* @w, align 4
	%89 = load i32, i32* @w, align 4
	%90 = add i32 %89, 1
	store i32 %90, i32* @w, align 4
	br label %91

;begin inline expansion wpp
91:
;91 282
	%92 = load i32, i32* @w, align 4
	%93 = add i32 %92, 1
	store i32 %93, i32* @w, align 4
	%94 = load i32, i32* @w, align 4
	%95 = add i32 %94, 1
	store i32 %95, i32* @w, align 4
	br label %96

;begin inline expansion wpp
96:
;96 282
	%97 = load i32, i32* @w, align 4
	%98 = add i32 %97, 1
	store i32 %98, i32* @w, align 4
	%99 = load i32, i32* @w, align 4
	%100 = add i32 %99, 1
	store i32 %100, i32* @w, align 4
	br label %101

;begin inline expansion wpp
101:
;101 282
	%102 = load i32, i32* @w, align 4
	%103 = add i32 %102, 1
	store i32 %103, i32* @w, align 4
	%104 = load i32, i32* @w, align 4
	%105 = add i32 %104, 1
	store i32 %105, i32* @w, align 4
	br label %106

;begin inline expansion wpp
106:
;106 282
	%107 = load i32, i32* @w, align 4
	%108 = add i32 %107, 1
	store i32 %108, i32* @w, align 4
	%109 = load i32, i32* @w, align 4
	%110 = add i32 %109, 1
	store i32 %110, i32* @w, align 4
	br label %111

;begin inline expansion wpp
111:
;111 282
	%112 = load i32, i32* @w, align 4
	%113 = add i32 %112, 1
	store i32 %113, i32* @w, align 4
	%114 = load i32, i32* @w, align 4
	%115 = add i32 %114, 1
	store i32 %115, i32* @w, align 4
	br label %116

;begin inline expansion wpp
116:
;116 282
	%117 = load i32, i32* @w, align 4
	%118 = add i32 %117, 1
	store i32 %118, i32* @w, align 4
	%119 = load i32, i32* @w, align 4
	%120 = add i32 %119, 1
	store i32 %120, i32* @w, align 4
	br label %121

;begin inline expansion wpp
121:
;121 282
	%122 = load i32, i32* @w, align 4
	%123 = add i32 %122, 1
	store i32 %123, i32* @w, align 4
	%124 = load i32, i32* @w, align 4
	%125 = add i32 %124, 1
	store i32 %125, i32* @w, align 4
	br label %126

;begin inline expansion wpp
126:
;126 282
	%127 = load i32, i32* @w, align 4
	%128 = add i32 %127, 1
	store i32 %128, i32* @w, align 4
	%129 = load i32, i32* @w, align 4
	%130 = add i32 %129, 1
	store i32 %130, i32* @w, align 4
	br label %131

;begin inline expansion wpp
131:
;131 282
	%132 = load i32, i32* @w, align 4
	%133 = add i32 %132, 1
	store i32 %133, i32* @w, align 4
	%134 = load i32, i32* @w, align 4
	%135 = add i32 %134, 1
	store i32 %135, i32* @w, align 4
	br label %136

;begin inline expansion wpp
136:
;136 282
	%137 = load i32, i32* @w, align 4
	%138 = add i32 %137, 1
	store i32 %138, i32* @w, align 4
	%139 = load i32, i32* @w, align 4
	%140 = add i32 %139, 1
	store i32 %140, i32* @w, align 4
	br label %141

;begin inline expansion wpp
141:
;141 282
	%142 = load i32, i32* @w, align 4
	%143 = add i32 %142, 1
	store i32 %143, i32* @w, align 4
	%144 = load i32, i32* @w, align 4
	%145 = add i32 %144, 1
	store i32 %145, i32* @w, align 4
	br label %146

;begin inline expansion wpp
146:
;146 282
	%147 = load i32, i32* @w, align 4
	%148 = add i32 %147, 1
	store i32 %148, i32* @w, align 4
	%149 = load i32, i32* @w, align 4
	%150 = add i32 %149, 1
	store i32 %150, i32* @w, align 4
	br label %151

;begin inline expansion wpp
151:
;151 282
	%152 = load i32, i32* @w, align 4
	%153 = add i32 %152, 1
	store i32 %153, i32* @w, align 4
	%154 = load i32, i32* @w, align 4
	%155 = add i32 %154, 1
	store i32 %155, i32* @w, align 4
	br label %156

;begin inline expansion wpp
156:
;156 282
	%157 = load i32, i32* @w, align 4
	%158 = add i32 %157, 1
	store i32 %158, i32* @w, align 4
	%159 = load i32, i32* @w, align 4
	%160 = add i32 %159, 1
	store i32 %160, i32* @w, align 4
	br label %161

;begin inline expansion wpp
161:
;161 282
	%162 = load i32, i32* @w, align 4
	%163 = add i32 %162, 1
	store i32 %163, i32* @w, align 4
	%164 = load i32, i32* @w, align 4
	%165 = add i32 %164, 1
	store i32 %165, i32* @w, align 4
	br label %166

;begin inline expansion wpp
166:
;166 282
	%167 = load i32, i32* @w, align 4
	%168 = add i32 %167, 1
	store i32 %168, i32* @w, align 4
	%169 = load i32, i32* @w, align 4
	%170 = add i32 %169, 1
	store i32 %170, i32* @w, align 4
	br label %171

;begin inline expansion wpp
171:
;171 282
	%172 = load i32, i32* @w, align 4
	%173 = add i32 %172, 1
	store i32 %173, i32* @w, align 4
	%174 = load i32, i32* @w, align 4
	%175 = add i32 %174, 1
	store i32 %175, i32* @w, align 4
	br label %176

;begin inline expansion wpp
176:
;176 282
	%177 = load i32, i32* @w, align 4
	%178 = add i32 %177, 1
	store i32 %178, i32* @w, align 4
	%179 = load i32, i32* @w, align 4
	%180 = add i32 %179, 1
	store i32 %180, i32* @w, align 4
	br label %181

;begin inline expansion wpp
181:
;181 282
	%182 = load i32, i32* @w, align 4
	%183 = add i32 %182, 1
	store i32 %183, i32* @w, align 4
	%184 = load i32, i32* @w, align 4
	%185 = add i32 %184, 1
	store i32 %185, i32* @w, align 4
	br label %186

;begin inline expansion wpp
186:
;186 282
	%187 = load i32, i32* @w, align 4
	%188 = add i32 %187, 1
	store i32 %188, i32* @w, align 4
	%189 = load i32, i32* @w, align 4
	%190 = add i32 %189, 1
	store i32 %190, i32* @w, align 4
	br label %191

;begin inline expansion wpp
191:
;191 282
	%192 = load i32, i32* @w, align 4
	%193 = add i32 %192, 1
	store i32 %193, i32* @w, align 4
	%194 = load i32, i32* @w, align 4
	%195 = add i32 %194, 1
	store i32 %195, i32* @w, align 4
	br label %196

;begin inline expansion wpp
196:
;196 282
	%197 = load i32, i32* @w, align 4
	%198 = add i32 %197, 1
	store i32 %198, i32* @w, align 4
	%199 = load i32, i32* @w, align 4
	%200 = add i32 %199, 1
	store i32 %200, i32* @w, align 4
	br label %201

;begin inline expansion wpp
201:
;201 282
	%202 = load i32, i32* @w, align 4
	%203 = add i32 %202, 1
	store i32 %203, i32* @w, align 4
	%204 = load i32, i32* @w, align 4
	%205 = add i32 %204, 1
	store i32 %205, i32* @w, align 4
	br label %206

;begin inline expansion wpp
206:
;206 282
	%207 = load i32, i32* @w, align 4
	%208 = add i32 %207, 1
	store i32 %208, i32* @w, align 4
	%209 = load i32, i32* @w, align 4
	%210 = add i32 %209, 1
	store i32 %210, i32* @w, align 4
	br label %211

;begin inline expansion wpp
211:
;211 282
	%212 = load i32, i32* @w, align 4
	%213 = add i32 %212, 1
	store i32 %213, i32* @w, align 4
	%214 = load i32, i32* @w, align 4
	%215 = add i32 %214, 1
	store i32 %215, i32* @w, align 4
	br label %216

;begin inline expansion wpp
216:
;216 282
	%217 = load i32, i32* @w, align 4
	%218 = add i32 %217, 1
	store i32 %218, i32* @w, align 4
	%219 = load i32, i32* @w, align 4
	%220 = add i32 %219, 1
	store i32 %220, i32* @w, align 4
	br label %221

;begin inline expansion wpp
221:
;221 282
	%222 = load i32, i32* @w, align 4
	%223 = add i32 %222, 1
	store i32 %223, i32* @w, align 4
	%224 = load i32, i32* @w, align 4
	%225 = add i32 %224, 1
	store i32 %225, i32* @w, align 4
	br label %226

;begin inline expansion wpp
226:
;226 282
	%227 = load i32, i32* @w, align 4
	%228 = add i32 %227, 1
	store i32 %228, i32* @w, align 4
	%229 = load i32, i32* @w, align 4
	%230 = add i32 %229, 1
	store i32 %230, i32* @w, align 4
	br label %231

;begin inline expansion wpp
231:
;231 282
	%232 = load i32, i32* @w, align 4
	%233 = add i32 %232, 1
	store i32 %233, i32* @w, align 4
	%234 = load i32, i32* @w, align 4
	%235 = add i32 %234, 1
	store i32 %235, i32* @w, align 4
	br label %236

;begin inline expansion wpp
236:
;236 282
	%237 = load i32, i32* @w, align 4
	%238 = add i32 %237, 1
	store i32 %238, i32* @w, align 4
	%239 = load i32, i32* @w, align 4
	%240 = add i32 %239, 1
	store i32 %240, i32* @w, align 4
	br label %241

;begin inline expansion wpp
241:
;241 282
	%242 = load i32, i32* @w, align 4
	%243 = add i32 %242, 1
	store i32 %243, i32* @w, align 4
	%244 = load i32, i32* @w, align 4
	%245 = add i32 %244, 1
	store i32 %245, i32* @w, align 4
	br label %246

;begin inline expansion wpp
246:
;246 282
	%247 = load i32, i32* @w, align 4
	%248 = add i32 %247, 1
	store i32 %248, i32* @w, align 4
	%249 = load i32, i32* @w, align 4
	%250 = add i32 %249, 1
	store i32 %250, i32* @w, align 4
	br label %251

;begin inline expansion wpp
251:
;251 282
	%252 = load i32, i32* @w, align 4
	%253 = add i32 %252, 1
	store i32 %253, i32* @w, align 4
	%254 = load i32, i32* @w, align 4
	%255 = add i32 %254, 1
	store i32 %255, i32* @w, align 4
	br label %256

;begin inline expansion wpp
256:
;256 282
	%257 = load i32, i32* @w, align 4
	%258 = add i32 %257, 1
	store i32 %258, i32* @w, align 4
	%259 = load i32, i32* @w, align 4
	%260 = add i32 %259, 1
	store i32 %260, i32* @w, align 4
	br label %261

;begin inline expansion wpp
261:
;261 282
	%262 = load i32, i32* @w, align 4
	%263 = add i32 %262, 1
	store i32 %263, i32* @w, align 4
	%264 = load i32, i32* @w, align 4
	%265 = add i32 %264, 1
	store i32 %265, i32* @w, align 4
	br label %266

;begin inline expansion wpp
266:
;266 282
	%267 = load i32, i32* @w, align 4
	%268 = add i32 %267, 1
	store i32 %268, i32* @w, align 4
	%269 = load i32, i32* @w, align 4
	%270 = add i32 %269, 1
	store i32 %270, i32* @w, align 4
	br label %271

;begin inline expansion wpp
271:
;271 282
	%272 = load i32, i32* @w, align 4
	%273 = add i32 %272, 1
	store i32 %273, i32* @w, align 4
	%274 = load i32, i32* @w, align 4
	%275 = add i32 %274, 1
	store i32 %275, i32* @w, align 4
	br label %276

;begin inline expansion wpp
276:
;276 282
	%277 = load i32, i32* @w, align 4
	%278 = add i32 %277, 1
	store i32 %278, i32* @w, align 4
	%279 = load i32, i32* @w, align 4
	%280 = add i32 %279, 1
	store i32 %280, i32* @w, align 4
	br label %281

281:
;281 0
	ret i32 %280
}

define i32 @wppp(){

0:
;0 0
	br label %1

;begin inline expansion wpp
1:
;1 42
	%2 = load i32, i32* @w, align 4
	%3 = add i32 %2, 1
	store i32 %3, i32* @w, align 4
	%4 = load i32, i32* @w, align 4
	%5 = add i32 %4, 1
	store i32 %5, i32* @w, align 4
	br label %6

;begin inline expansion wpp
6:
;6 42
	%7 = load i32, i32* @w, align 4
	%8 = add i32 %7, 1
	store i32 %8, i32* @w, align 4
	%9 = load i32, i32* @w, align 4
	%10 = add i32 %9, 1
	store i32 %10, i32* @w, align 4
	br label %11

;begin inline expansion wpp
11:
;11 42
	%12 = load i32, i32* @w, align 4
	%13 = add i32 %12, 1
	store i32 %13, i32* @w, align 4
	%14 = load i32, i32* @w, align 4
	%15 = add i32 %14, 1
	store i32 %15, i32* @w, align 4
	br label %16

;begin inline expansion wpp
16:
;16 42
	%17 = load i32, i32* @w, align 4
	%18 = add i32 %17, 1
	store i32 %18, i32* @w, align 4
	%19 = load i32, i32* @w, align 4
	%20 = add i32 %19, 1
	store i32 %20, i32* @w, align 4
	br label %21

;begin inline expansion wpp
21:
;21 42
	%22 = load i32, i32* @w, align 4
	%23 = add i32 %22, 1
	store i32 %23, i32* @w, align 4
	%24 = load i32, i32* @w, align 4
	%25 = add i32 %24, 1
	store i32 %25, i32* @w, align 4
	br label %26

;begin inline expansion wpp
26:
;26 42
	%27 = load i32, i32* @w, align 4
	%28 = add i32 %27, 1
	store i32 %28, i32* @w, align 4
	%29 = load i32, i32* @w, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* @w, align 4
	br label %31

;begin inline expansion wpp
31:
;31 42
	%32 = load i32, i32* @w, align 4
	%33 = add i32 %32, 1
	store i32 %33, i32* @w, align 4
	%34 = load i32, i32* @w, align 4
	%35 = add i32 %34, 1
	store i32 %35, i32* @w, align 4
	br label %36

;begin inline expansion wpp
36:
;36 42
	%37 = load i32, i32* @w, align 4
	%38 = add i32 %37, 1
	store i32 %38, i32* @w, align 4
	%39 = load i32, i32* @w, align 4
	%40 = add i32 %39, 1
	store i32 %40, i32* @w, align 4
	br label %41

41:
;41 0
	ret i32 %40
}

define i32 @wP(){

0:
;0 0
	br label %1

;loop check block wP loopDepth 1 iterCount 0
1:
;1 0
	%2 = phi i32 [ 0, %0 ], [ %7, %893 ]
	%3 = phi i32 [ 3, %0 ], [ %894, %893 ]
	br label %4

;loop body wP loopDepth 1 iterCount 0
4:
;4 1
	%5 = ashr i32 %3, 1
	br label %6

;loop check block wP loopDepth 2 iterCount 0
6:
;6 4
	%7 = phi i32 [ 2, %4 ], [ %896, %895 ]
	%8 = icmp slt i32 %7, %5
	br i1 %8, label %9, label %14

;loop body wP loopDepth 2 iterCount 0
9:
;9 6
	%10 = srem i32 %3, %7
	%11 = icmp eq i32 %10, 0
	br i1 %11, label %12, label %895

;True block in wP selectCount 0
12:
;12 9
	%13 = add i32 %3, 1
	br label %14

;loop exit block wP loopDepth 2 iterCount 0
14:
;14 6
	%15 = phi i32 [ 1, %6 ], [ 0, %12 ]
	%16 = phi i32 [ %3, %6 ], [ %13, %12 ]
	%17 = icmp sgt i32 %16, 0
	br i1 %17, label %18, label %22

18:
;18 14
	%19 = add i32 %16, %15
	%20 = srem i32 %19, 9
	%21 = icmp eq i32 %20, 0
	br label %22

22:
;22 14
	%23 = phi i1 [ 0, %14 ], [ %21, %18 ]
	br i1 %23, label %24, label %889

;loop exit block wP loopDepth 1 iterCount 0
24:
;24 1
	%25 = load i32, i32* @N, align 4
	br label %26

;begin inline expansion wpp
26:
;26 897
	%27 = load i32, i32* @w, align 4
	%28 = add i32 %27, 1
	store i32 %28, i32* @w, align 4
	%29 = load i32, i32* @w, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* @w, align 4
	br label %31

;begin inline expansion wpp
31:
;31 897
	%32 = load i32, i32* @w, align 4
	%33 = add i32 %32, 1
	store i32 %33, i32* @w, align 4
	%34 = load i32, i32* @w, align 4
	%35 = add i32 %34, 1
	store i32 %35, i32* @w, align 4
	br label %36

;begin inline expansion wpp
36:
;36 897
	%37 = load i32, i32* @w, align 4
	%38 = add i32 %37, 1
	store i32 %38, i32* @w, align 4
	%39 = load i32, i32* @w, align 4
	%40 = add i32 %39, 1
	store i32 %40, i32* @w, align 4
	br label %41

;begin inline expansion wpp
41:
;41 897
	%42 = load i32, i32* @w, align 4
	%43 = add i32 %42, 1
	store i32 %43, i32* @w, align 4
	%44 = load i32, i32* @w, align 4
	%45 = add i32 %44, 1
	store i32 %45, i32* @w, align 4
	br label %46

;begin inline expansion wpp
46:
;46 897
	%47 = load i32, i32* @w, align 4
	%48 = add i32 %47, 1
	store i32 %48, i32* @w, align 4
	%49 = load i32, i32* @w, align 4
	%50 = add i32 %49, 1
	store i32 %50, i32* @w, align 4
	br label %51

;begin inline expansion wpp
51:
;51 897
	%52 = load i32, i32* @w, align 4
	%53 = add i32 %52, 1
	store i32 %53, i32* @w, align 4
	%54 = load i32, i32* @w, align 4
	%55 = add i32 %54, 1
	store i32 %55, i32* @w, align 4
	br label %56

;begin inline expansion wpp
56:
;56 897
	%57 = load i32, i32* @w, align 4
	%58 = add i32 %57, 1
	store i32 %58, i32* @w, align 4
	%59 = load i32, i32* @w, align 4
	%60 = add i32 %59, 1
	store i32 %60, i32* @w, align 4
	br label %61

;begin inline expansion wpp
61:
;61 897
	%62 = load i32, i32* @w, align 4
	%63 = add i32 %62, 1
	store i32 %63, i32* @w, align 4
	%64 = load i32, i32* @w, align 4
	%65 = add i32 %64, 1
	store i32 %65, i32* @w, align 4
	br label %66

;begin inline expansion wpp
66:
;66 897
	%67 = load i32, i32* @w, align 4
	%68 = add i32 %67, 1
	store i32 %68, i32* @w, align 4
	%69 = load i32, i32* @w, align 4
	%70 = add i32 %69, 1
	store i32 %70, i32* @w, align 4
	br label %71

;begin inline expansion wpp
71:
;71 897
	%72 = load i32, i32* @w, align 4
	%73 = add i32 %72, 1
	store i32 %73, i32* @w, align 4
	%74 = load i32, i32* @w, align 4
	%75 = add i32 %74, 1
	store i32 %75, i32* @w, align 4
	br label %76

;begin inline expansion wpp
76:
;76 897
	%77 = load i32, i32* @w, align 4
	%78 = add i32 %77, 1
	store i32 %78, i32* @w, align 4
	%79 = load i32, i32* @w, align 4
	%80 = add i32 %79, 1
	store i32 %80, i32* @w, align 4
	br label %81

;begin inline expansion wpp
81:
;81 897
	%82 = load i32, i32* @w, align 4
	%83 = add i32 %82, 1
	store i32 %83, i32* @w, align 4
	%84 = load i32, i32* @w, align 4
	%85 = add i32 %84, 1
	store i32 %85, i32* @w, align 4
	br label %86

;begin inline expansion wpp
86:
;86 897
	%87 = load i32, i32* @w, align 4
	%88 = add i32 %87, 1
	store i32 %88, i32* @w, align 4
	%89 = load i32, i32* @w, align 4
	%90 = add i32 %89, 1
	store i32 %90, i32* @w, align 4
	br label %91

;begin inline expansion wpp
91:
;91 897
	%92 = load i32, i32* @w, align 4
	%93 = add i32 %92, 1
	store i32 %93, i32* @w, align 4
	%94 = load i32, i32* @w, align 4
	%95 = add i32 %94, 1
	store i32 %95, i32* @w, align 4
	br label %96

;begin inline expansion wpp
96:
;96 897
	%97 = load i32, i32* @w, align 4
	%98 = add i32 %97, 1
	store i32 %98, i32* @w, align 4
	%99 = load i32, i32* @w, align 4
	%100 = add i32 %99, 1
	store i32 %100, i32* @w, align 4
	br label %101

;begin inline expansion wpp
101:
;101 897
	%102 = load i32, i32* @w, align 4
	%103 = add i32 %102, 1
	store i32 %103, i32* @w, align 4
	%104 = load i32, i32* @w, align 4
	%105 = add i32 %104, 1
	store i32 %105, i32* @w, align 4
	br label %106

;begin inline expansion wpp
106:
;106 897
	%107 = load i32, i32* @w, align 4
	%108 = add i32 %107, 1
	store i32 %108, i32* @w, align 4
	%109 = load i32, i32* @w, align 4
	%110 = add i32 %109, 1
	store i32 %110, i32* @w, align 4
	br label %111

;begin inline expansion wpp
111:
;111 897
	%112 = load i32, i32* @w, align 4
	%113 = add i32 %112, 1
	store i32 %113, i32* @w, align 4
	%114 = load i32, i32* @w, align 4
	%115 = add i32 %114, 1
	store i32 %115, i32* @w, align 4
	br label %116

;begin inline expansion wpp
116:
;116 897
	%117 = load i32, i32* @w, align 4
	%118 = add i32 %117, 1
	store i32 %118, i32* @w, align 4
	%119 = load i32, i32* @w, align 4
	%120 = add i32 %119, 1
	store i32 %120, i32* @w, align 4
	br label %121

;begin inline expansion wpp
121:
;121 897
	%122 = load i32, i32* @w, align 4
	%123 = add i32 %122, 1
	store i32 %123, i32* @w, align 4
	%124 = load i32, i32* @w, align 4
	%125 = add i32 %124, 1
	store i32 %125, i32* @w, align 4
	br label %126

;begin inline expansion wpp
126:
;126 897
	%127 = load i32, i32* @w, align 4
	%128 = add i32 %127, 1
	store i32 %128, i32* @w, align 4
	%129 = load i32, i32* @w, align 4
	%130 = add i32 %129, 1
	store i32 %130, i32* @w, align 4
	br label %131

;begin inline expansion wpp
131:
;131 897
	%132 = load i32, i32* @w, align 4
	%133 = add i32 %132, 1
	store i32 %133, i32* @w, align 4
	%134 = load i32, i32* @w, align 4
	%135 = add i32 %134, 1
	store i32 %135, i32* @w, align 4
	br label %136

;begin inline expansion wpp
136:
;136 897
	%137 = load i32, i32* @w, align 4
	%138 = add i32 %137, 1
	store i32 %138, i32* @w, align 4
	%139 = load i32, i32* @w, align 4
	%140 = add i32 %139, 1
	store i32 %140, i32* @w, align 4
	br label %141

;begin inline expansion wpp
141:
;141 897
	%142 = load i32, i32* @w, align 4
	%143 = add i32 %142, 1
	store i32 %143, i32* @w, align 4
	%144 = load i32, i32* @w, align 4
	%145 = add i32 %144, 1
	store i32 %145, i32* @w, align 4
	br label %146

;begin inline expansion wpp
146:
;146 897
	%147 = load i32, i32* @w, align 4
	%148 = add i32 %147, 1
	store i32 %148, i32* @w, align 4
	%149 = load i32, i32* @w, align 4
	%150 = add i32 %149, 1
	store i32 %150, i32* @w, align 4
	br label %151

;begin inline expansion wpp
151:
;151 897
	%152 = load i32, i32* @w, align 4
	%153 = add i32 %152, 1
	store i32 %153, i32* @w, align 4
	%154 = load i32, i32* @w, align 4
	%155 = add i32 %154, 1
	store i32 %155, i32* @w, align 4
	br label %156

;begin inline expansion wpp
156:
;156 897
	%157 = load i32, i32* @w, align 4
	%158 = add i32 %157, 1
	store i32 %158, i32* @w, align 4
	%159 = load i32, i32* @w, align 4
	%160 = add i32 %159, 1
	store i32 %160, i32* @w, align 4
	br label %161

;begin inline expansion wpp
161:
;161 897
	%162 = load i32, i32* @w, align 4
	%163 = add i32 %162, 1
	store i32 %163, i32* @w, align 4
	%164 = load i32, i32* @w, align 4
	%165 = add i32 %164, 1
	store i32 %165, i32* @w, align 4
	br label %166

;begin inline expansion wpp
166:
;166 897
	%167 = load i32, i32* @w, align 4
	%168 = add i32 %167, 1
	store i32 %168, i32* @w, align 4
	%169 = load i32, i32* @w, align 4
	%170 = add i32 %169, 1
	store i32 %170, i32* @w, align 4
	br label %171

;begin inline expansion wpp
171:
;171 897
	%172 = load i32, i32* @w, align 4
	%173 = add i32 %172, 1
	store i32 %173, i32* @w, align 4
	%174 = load i32, i32* @w, align 4
	%175 = add i32 %174, 1
	store i32 %175, i32* @w, align 4
	br label %176

;begin inline expansion wpp
176:
;176 897
	%177 = load i32, i32* @w, align 4
	%178 = add i32 %177, 1
	store i32 %178, i32* @w, align 4
	%179 = load i32, i32* @w, align 4
	%180 = add i32 %179, 1
	store i32 %180, i32* @w, align 4
	br label %181

;begin inline expansion wpp
181:
;181 897
	%182 = load i32, i32* @w, align 4
	%183 = add i32 %182, 1
	store i32 %183, i32* @w, align 4
	%184 = load i32, i32* @w, align 4
	%185 = add i32 %184, 1
	store i32 %185, i32* @w, align 4
	br label %186

;begin inline expansion wpp
186:
;186 897
	%187 = load i32, i32* @w, align 4
	%188 = add i32 %187, 1
	store i32 %188, i32* @w, align 4
	%189 = load i32, i32* @w, align 4
	%190 = add i32 %189, 1
	store i32 %190, i32* @w, align 4
	br label %191

;begin inline expansion wpp
191:
;191 897
	%192 = load i32, i32* @w, align 4
	%193 = add i32 %192, 1
	store i32 %193, i32* @w, align 4
	%194 = load i32, i32* @w, align 4
	%195 = add i32 %194, 1
	store i32 %195, i32* @w, align 4
	br label %196

;begin inline expansion wpp
196:
;196 897
	%197 = load i32, i32* @w, align 4
	%198 = add i32 %197, 1
	store i32 %198, i32* @w, align 4
	%199 = load i32, i32* @w, align 4
	%200 = add i32 %199, 1
	store i32 %200, i32* @w, align 4
	br label %201

;begin inline expansion wpp
201:
;201 897
	%202 = load i32, i32* @w, align 4
	%203 = add i32 %202, 1
	store i32 %203, i32* @w, align 4
	%204 = load i32, i32* @w, align 4
	%205 = add i32 %204, 1
	store i32 %205, i32* @w, align 4
	br label %206

;begin inline expansion wpp
206:
;206 897
	%207 = load i32, i32* @w, align 4
	%208 = add i32 %207, 1
	store i32 %208, i32* @w, align 4
	%209 = load i32, i32* @w, align 4
	%210 = add i32 %209, 1
	store i32 %210, i32* @w, align 4
	br label %211

;begin inline expansion wpp
211:
;211 897
	%212 = load i32, i32* @w, align 4
	%213 = add i32 %212, 1
	store i32 %213, i32* @w, align 4
	%214 = load i32, i32* @w, align 4
	%215 = add i32 %214, 1
	store i32 %215, i32* @w, align 4
	br label %216

;begin inline expansion wpp
216:
;216 897
	%217 = load i32, i32* @w, align 4
	%218 = add i32 %217, 1
	store i32 %218, i32* @w, align 4
	%219 = load i32, i32* @w, align 4
	%220 = add i32 %219, 1
	store i32 %220, i32* @w, align 4
	br label %221

;begin inline expansion wpp
221:
;221 897
	%222 = load i32, i32* @w, align 4
	%223 = add i32 %222, 1
	store i32 %223, i32* @w, align 4
	%224 = load i32, i32* @w, align 4
	%225 = add i32 %224, 1
	store i32 %225, i32* @w, align 4
	br label %226

;begin inline expansion wpp
226:
;226 897
	%227 = load i32, i32* @w, align 4
	%228 = add i32 %227, 1
	store i32 %228, i32* @w, align 4
	%229 = load i32, i32* @w, align 4
	%230 = add i32 %229, 1
	store i32 %230, i32* @w, align 4
	br label %231

;begin inline expansion wpp
231:
;231 897
	%232 = load i32, i32* @w, align 4
	%233 = add i32 %232, 1
	store i32 %233, i32* @w, align 4
	%234 = load i32, i32* @w, align 4
	%235 = add i32 %234, 1
	store i32 %235, i32* @w, align 4
	br label %236

;begin inline expansion wpp
236:
;236 897
	%237 = load i32, i32* @w, align 4
	%238 = add i32 %237, 1
	store i32 %238, i32* @w, align 4
	%239 = load i32, i32* @w, align 4
	%240 = add i32 %239, 1
	store i32 %240, i32* @w, align 4
	br label %241

;begin inline expansion wpp
241:
;241 897
	%242 = load i32, i32* @w, align 4
	%243 = add i32 %242, 1
	store i32 %243, i32* @w, align 4
	%244 = load i32, i32* @w, align 4
	%245 = add i32 %244, 1
	store i32 %245, i32* @w, align 4
	br label %246

;begin inline expansion wpp
246:
;246 897
	%247 = load i32, i32* @w, align 4
	%248 = add i32 %247, 1
	store i32 %248, i32* @w, align 4
	%249 = load i32, i32* @w, align 4
	%250 = add i32 %249, 1
	store i32 %250, i32* @w, align 4
	br label %251

;begin inline expansion wpp
251:
;251 897
	%252 = load i32, i32* @w, align 4
	%253 = add i32 %252, 1
	store i32 %253, i32* @w, align 4
	%254 = load i32, i32* @w, align 4
	%255 = add i32 %254, 1
	store i32 %255, i32* @w, align 4
	br label %256

;begin inline expansion wpp
256:
;256 897
	%257 = load i32, i32* @w, align 4
	%258 = add i32 %257, 1
	store i32 %258, i32* @w, align 4
	%259 = load i32, i32* @w, align 4
	%260 = add i32 %259, 1
	store i32 %260, i32* @w, align 4
	br label %261

;begin inline expansion wpp
261:
;261 897
	%262 = load i32, i32* @w, align 4
	%263 = add i32 %262, 1
	store i32 %263, i32* @w, align 4
	%264 = load i32, i32* @w, align 4
	%265 = add i32 %264, 1
	store i32 %265, i32* @w, align 4
	br label %266

;begin inline expansion wpp
266:
;266 897
	%267 = load i32, i32* @w, align 4
	%268 = add i32 %267, 1
	store i32 %268, i32* @w, align 4
	%269 = load i32, i32* @w, align 4
	%270 = add i32 %269, 1
	store i32 %270, i32* @w, align 4
	br label %271

;begin inline expansion wpp
271:
;271 897
	%272 = load i32, i32* @w, align 4
	%273 = add i32 %272, 1
	store i32 %273, i32* @w, align 4
	%274 = load i32, i32* @w, align 4
	%275 = add i32 %274, 1
	store i32 %275, i32* @w, align 4
	br label %276

;begin inline expansion wpp
276:
;276 897
	%277 = load i32, i32* @w, align 4
	%278 = add i32 %277, 1
	store i32 %278, i32* @w, align 4
	%279 = load i32, i32* @w, align 4
	%280 = add i32 %279, 1
	store i32 %280, i32* @w, align 4
	br label %281

;begin inline expansion wpp
281:
;281 897
	%282 = load i32, i32* @w, align 4
	%283 = add i32 %282, 1
	store i32 %283, i32* @w, align 4
	%284 = load i32, i32* @w, align 4
	%285 = add i32 %284, 1
	store i32 %285, i32* @w, align 4
	br label %286

;begin inline expansion wpp
286:
;286 897
	%287 = load i32, i32* @w, align 4
	%288 = add i32 %287, 1
	store i32 %288, i32* @w, align 4
	%289 = load i32, i32* @w, align 4
	%290 = add i32 %289, 1
	store i32 %290, i32* @w, align 4
	br label %291

;begin inline expansion wpp
291:
;291 897
	%292 = load i32, i32* @w, align 4
	%293 = add i32 %292, 1
	store i32 %293, i32* @w, align 4
	%294 = load i32, i32* @w, align 4
	%295 = add i32 %294, 1
	store i32 %295, i32* @w, align 4
	br label %296

;begin inline expansion wpp
296:
;296 897
	%297 = load i32, i32* @w, align 4
	%298 = add i32 %297, 1
	store i32 %298, i32* @w, align 4
	%299 = load i32, i32* @w, align 4
	%300 = add i32 %299, 1
	store i32 %300, i32* @w, align 4
	br label %301

;begin inline expansion wpp
301:
;301 897
	%302 = load i32, i32* @w, align 4
	%303 = add i32 %302, 1
	store i32 %303, i32* @w, align 4
	%304 = load i32, i32* @w, align 4
	%305 = add i32 %304, 1
	store i32 %305, i32* @w, align 4
	br label %306

;end inline expansion wpppp
306:
;306 897
	%307 = add i32 %25, %305
	%308 = srem i32 %307, 2
	%309 = icmp eq i32 %308, 0
	br i1 %309, label %884, label %310

;begin inline expansion block
310:
;310 897
	%311 = call i32 @block()
	br label %312

;begin inline expansion block
312:
;312 897
	%313 = call i32 @block()
	br label %314

;begin inline expansion block
314:
;314 897
	%315 = call i32 @block()
	br label %316

;begin inline expansion block
316:
;316 897
	%317 = call i32 @block()
	br label %318

318:
;318 897
	%319 = load i32, i32* @w, align 4
	%320 = add i32 %319, 1
	store i32 %320, i32* @w, align 4
	%321 = load i32, i32* @w, align 4
	%322 = add i32 %321, 1
	store i32 %322, i32* @w, align 4
	br label %323

323:
;323 897
	%324 = load i32, i32* @w, align 4
	%325 = add i32 %324, 1
	store i32 %325, i32* @w, align 4
	%326 = load i32, i32* @w, align 4
	%327 = add i32 %326, 1
	store i32 %327, i32* @w, align 4
	br label %328

328:
;328 897
	%329 = load i32, i32* @w, align 4
	%330 = add i32 %329, 1
	store i32 %330, i32* @w, align 4
	%331 = load i32, i32* @w, align 4
	%332 = add i32 %331, 1
	store i32 %332, i32* @w, align 4
	br label %333

333:
;333 897
	%334 = load i32, i32* @w, align 4
	%335 = add i32 %334, 1
	store i32 %335, i32* @w, align 4
	%336 = load i32, i32* @w, align 4
	%337 = add i32 %336, 1
	store i32 %337, i32* @w, align 4
	br label %338

338:
;338 897
	%339 = load i32, i32* @w, align 4
	%340 = add i32 %339, 1
	store i32 %340, i32* @w, align 4
	%341 = load i32, i32* @w, align 4
	%342 = add i32 %341, 1
	store i32 %342, i32* @w, align 4
	br label %343

343:
;343 897
	%344 = load i32, i32* @w, align 4
	%345 = add i32 %344, 1
	store i32 %345, i32* @w, align 4
	%346 = load i32, i32* @w, align 4
	%347 = add i32 %346, 1
	store i32 %347, i32* @w, align 4
	br label %348

348:
;348 897
	%349 = load i32, i32* @w, align 4
	%350 = add i32 %349, 1
	store i32 %350, i32* @w, align 4
	%351 = load i32, i32* @w, align 4
	%352 = add i32 %351, 1
	store i32 %352, i32* @w, align 4
	br label %353

353:
;353 897
	%354 = load i32, i32* @w, align 4
	%355 = add i32 %354, 1
	store i32 %355, i32* @w, align 4
	%356 = load i32, i32* @w, align 4
	%357 = add i32 %356, 1
	store i32 %357, i32* @w, align 4
	br label %358

358:
;358 897
	%359 = load i32, i32* @w, align 4
	%360 = add i32 %359, 1
	store i32 %360, i32* @w, align 4
	%361 = load i32, i32* @w, align 4
	%362 = add i32 %361, 1
	store i32 %362, i32* @w, align 4
	br label %363

363:
;363 897
	%364 = load i32, i32* @w, align 4
	%365 = add i32 %364, 1
	store i32 %365, i32* @w, align 4
	%366 = load i32, i32* @w, align 4
	%367 = add i32 %366, 1
	store i32 %367, i32* @w, align 4
	br label %368

368:
;368 897
	%369 = load i32, i32* @w, align 4
	%370 = add i32 %369, 1
	store i32 %370, i32* @w, align 4
	%371 = load i32, i32* @w, align 4
	%372 = add i32 %371, 1
	store i32 %372, i32* @w, align 4
	br label %373

373:
;373 897
	%374 = load i32, i32* @w, align 4
	%375 = add i32 %374, 1
	store i32 %375, i32* @w, align 4
	%376 = load i32, i32* @w, align 4
	%377 = add i32 %376, 1
	store i32 %377, i32* @w, align 4
	br label %378

378:
;378 897
	%379 = load i32, i32* @w, align 4
	%380 = add i32 %379, 1
	store i32 %380, i32* @w, align 4
	%381 = load i32, i32* @w, align 4
	%382 = add i32 %381, 1
	store i32 %382, i32* @w, align 4
	br label %383

383:
;383 897
	%384 = load i32, i32* @w, align 4
	%385 = add i32 %384, 1
	store i32 %385, i32* @w, align 4
	%386 = load i32, i32* @w, align 4
	%387 = add i32 %386, 1
	store i32 %387, i32* @w, align 4
	br label %388

388:
;388 897
	%389 = load i32, i32* @w, align 4
	%390 = add i32 %389, 1
	store i32 %390, i32* @w, align 4
	%391 = load i32, i32* @w, align 4
	%392 = add i32 %391, 1
	store i32 %392, i32* @w, align 4
	br label %393

393:
;393 897
	%394 = load i32, i32* @w, align 4
	%395 = add i32 %394, 1
	store i32 %395, i32* @w, align 4
	%396 = load i32, i32* @w, align 4
	%397 = add i32 %396, 1
	store i32 %397, i32* @w, align 4
	br label %398

398:
;398 897
	%399 = load i32, i32* @w, align 4
	%400 = add i32 %399, 1
	store i32 %400, i32* @w, align 4
	%401 = load i32, i32* @w, align 4
	%402 = add i32 %401, 1
	store i32 %402, i32* @w, align 4
	br label %403

403:
;403 897
	%404 = load i32, i32* @w, align 4
	%405 = add i32 %404, 1
	store i32 %405, i32* @w, align 4
	%406 = load i32, i32* @w, align 4
	%407 = add i32 %406, 1
	store i32 %407, i32* @w, align 4
	br label %408

408:
;408 897
	%409 = load i32, i32* @w, align 4
	%410 = add i32 %409, 1
	store i32 %410, i32* @w, align 4
	%411 = load i32, i32* @w, align 4
	%412 = add i32 %411, 1
	store i32 %412, i32* @w, align 4
	br label %413

413:
;413 897
	%414 = load i32, i32* @w, align 4
	%415 = add i32 %414, 1
	store i32 %415, i32* @w, align 4
	%416 = load i32, i32* @w, align 4
	%417 = add i32 %416, 1
	store i32 %417, i32* @w, align 4
	br label %418

418:
;418 897
	%419 = load i32, i32* @w, align 4
	%420 = add i32 %419, 1
	store i32 %420, i32* @w, align 4
	%421 = load i32, i32* @w, align 4
	%422 = add i32 %421, 1
	store i32 %422, i32* @w, align 4
	br label %423

423:
;423 897
	%424 = load i32, i32* @w, align 4
	%425 = add i32 %424, 1
	store i32 %425, i32* @w, align 4
	%426 = load i32, i32* @w, align 4
	%427 = add i32 %426, 1
	store i32 %427, i32* @w, align 4
	br label %428

428:
;428 897
	%429 = load i32, i32* @w, align 4
	%430 = add i32 %429, 1
	store i32 %430, i32* @w, align 4
	%431 = load i32, i32* @w, align 4
	%432 = add i32 %431, 1
	store i32 %432, i32* @w, align 4
	br label %433

433:
;433 897
	%434 = load i32, i32* @w, align 4
	%435 = add i32 %434, 1
	store i32 %435, i32* @w, align 4
	%436 = load i32, i32* @w, align 4
	%437 = add i32 %436, 1
	store i32 %437, i32* @w, align 4
	br label %438

438:
;438 897
	%439 = load i32, i32* @w, align 4
	%440 = add i32 %439, 1
	store i32 %440, i32* @w, align 4
	%441 = load i32, i32* @w, align 4
	%442 = add i32 %441, 1
	store i32 %442, i32* @w, align 4
	br label %443

443:
;443 897
	%444 = load i32, i32* @w, align 4
	%445 = add i32 %444, 1
	store i32 %445, i32* @w, align 4
	%446 = load i32, i32* @w, align 4
	%447 = add i32 %446, 1
	store i32 %447, i32* @w, align 4
	br label %448

448:
;448 897
	%449 = load i32, i32* @w, align 4
	%450 = add i32 %449, 1
	store i32 %450, i32* @w, align 4
	%451 = load i32, i32* @w, align 4
	%452 = add i32 %451, 1
	store i32 %452, i32* @w, align 4
	br label %453

453:
;453 897
	%454 = load i32, i32* @w, align 4
	%455 = add i32 %454, 1
	store i32 %455, i32* @w, align 4
	%456 = load i32, i32* @w, align 4
	%457 = add i32 %456, 1
	store i32 %457, i32* @w, align 4
	br label %458

458:
;458 897
	%459 = load i32, i32* @w, align 4
	%460 = add i32 %459, 1
	store i32 %460, i32* @w, align 4
	%461 = load i32, i32* @w, align 4
	%462 = add i32 %461, 1
	store i32 %462, i32* @w, align 4
	br label %463

463:
;463 897
	%464 = load i32, i32* @w, align 4
	%465 = add i32 %464, 1
	store i32 %465, i32* @w, align 4
	%466 = load i32, i32* @w, align 4
	%467 = add i32 %466, 1
	store i32 %467, i32* @w, align 4
	br label %468

468:
;468 897
	%469 = load i32, i32* @w, align 4
	%470 = add i32 %469, 1
	store i32 %470, i32* @w, align 4
	%471 = load i32, i32* @w, align 4
	%472 = add i32 %471, 1
	store i32 %472, i32* @w, align 4
	br label %473

473:
;473 897
	%474 = load i32, i32* @w, align 4
	%475 = add i32 %474, 1
	store i32 %475, i32* @w, align 4
	%476 = load i32, i32* @w, align 4
	%477 = add i32 %476, 1
	store i32 %477, i32* @w, align 4
	br label %478

478:
;478 897
	%479 = load i32, i32* @w, align 4
	%480 = add i32 %479, 1
	store i32 %480, i32* @w, align 4
	%481 = load i32, i32* @w, align 4
	%482 = add i32 %481, 1
	store i32 %482, i32* @w, align 4
	br label %483

483:
;483 897
	%484 = load i32, i32* @w, align 4
	%485 = add i32 %484, 1
	store i32 %485, i32* @w, align 4
	%486 = load i32, i32* @w, align 4
	%487 = add i32 %486, 1
	store i32 %487, i32* @w, align 4
	br label %488

488:
;488 897
	%489 = load i32, i32* @w, align 4
	%490 = add i32 %489, 1
	store i32 %490, i32* @w, align 4
	%491 = load i32, i32* @w, align 4
	%492 = add i32 %491, 1
	store i32 %492, i32* @w, align 4
	br label %493

493:
;493 897
	%494 = load i32, i32* @w, align 4
	%495 = add i32 %494, 1
	store i32 %495, i32* @w, align 4
	%496 = load i32, i32* @w, align 4
	%497 = add i32 %496, 1
	store i32 %497, i32* @w, align 4
	br label %498

498:
;498 897
	%499 = load i32, i32* @w, align 4
	%500 = add i32 %499, 1
	store i32 %500, i32* @w, align 4
	%501 = load i32, i32* @w, align 4
	%502 = add i32 %501, 1
	store i32 %502, i32* @w, align 4
	br label %503

503:
;503 897
	%504 = load i32, i32* @w, align 4
	%505 = add i32 %504, 1
	store i32 %505, i32* @w, align 4
	%506 = load i32, i32* @w, align 4
	%507 = add i32 %506, 1
	store i32 %507, i32* @w, align 4
	br label %508

508:
;508 897
	%509 = load i32, i32* @w, align 4
	%510 = add i32 %509, 1
	store i32 %510, i32* @w, align 4
	%511 = load i32, i32* @w, align 4
	%512 = add i32 %511, 1
	store i32 %512, i32* @w, align 4
	br label %513

513:
;513 897
	%514 = load i32, i32* @w, align 4
	%515 = add i32 %514, 1
	store i32 %515, i32* @w, align 4
	%516 = load i32, i32* @w, align 4
	%517 = add i32 %516, 1
	store i32 %517, i32* @w, align 4
	br label %518

518:
;518 897
	%519 = load i32, i32* @w, align 4
	%520 = add i32 %519, 1
	store i32 %520, i32* @w, align 4
	%521 = load i32, i32* @w, align 4
	%522 = add i32 %521, 1
	store i32 %522, i32* @w, align 4
	br label %523

523:
;523 897
	%524 = load i32, i32* @w, align 4
	%525 = add i32 %524, 1
	store i32 %525, i32* @w, align 4
	%526 = load i32, i32* @w, align 4
	%527 = add i32 %526, 1
	store i32 %527, i32* @w, align 4
	br label %528

528:
;528 897
	%529 = load i32, i32* @w, align 4
	%530 = add i32 %529, 1
	store i32 %530, i32* @w, align 4
	%531 = load i32, i32* @w, align 4
	%532 = add i32 %531, 1
	store i32 %532, i32* @w, align 4
	br label %533

533:
;533 897
	%534 = load i32, i32* @w, align 4
	%535 = add i32 %534, 1
	store i32 %535, i32* @w, align 4
	%536 = load i32, i32* @w, align 4
	%537 = add i32 %536, 1
	store i32 %537, i32* @w, align 4
	br label %538

538:
;538 897
	%539 = load i32, i32* @w, align 4
	%540 = add i32 %539, 1
	store i32 %540, i32* @w, align 4
	%541 = load i32, i32* @w, align 4
	%542 = add i32 %541, 1
	store i32 %542, i32* @w, align 4
	br label %543

543:
;543 897
	%544 = load i32, i32* @w, align 4
	%545 = add i32 %544, 1
	store i32 %545, i32* @w, align 4
	%546 = load i32, i32* @w, align 4
	%547 = add i32 %546, 1
	store i32 %547, i32* @w, align 4
	br label %548

548:
;548 897
	%549 = load i32, i32* @w, align 4
	%550 = add i32 %549, 1
	store i32 %550, i32* @w, align 4
	%551 = load i32, i32* @w, align 4
	%552 = add i32 %551, 1
	store i32 %552, i32* @w, align 4
	br label %553

553:
;553 897
	%554 = load i32, i32* @w, align 4
	%555 = add i32 %554, 1
	store i32 %555, i32* @w, align 4
	%556 = load i32, i32* @w, align 4
	%557 = add i32 %556, 1
	store i32 %557, i32* @w, align 4
	br label %558

558:
;558 897
	%559 = load i32, i32* @w, align 4
	%560 = add i32 %559, 1
	store i32 %560, i32* @w, align 4
	%561 = load i32, i32* @w, align 4
	%562 = add i32 %561, 1
	store i32 %562, i32* @w, align 4
	br label %563

563:
;563 897
	%564 = load i32, i32* @w, align 4
	%565 = add i32 %564, 1
	store i32 %565, i32* @w, align 4
	%566 = load i32, i32* @w, align 4
	%567 = add i32 %566, 1
	store i32 %567, i32* @w, align 4
	br label %568

568:
;568 897
	%569 = load i32, i32* @w, align 4
	%570 = add i32 %569, 1
	store i32 %570, i32* @w, align 4
	%571 = load i32, i32* @w, align 4
	%572 = add i32 %571, 1
	store i32 %572, i32* @w, align 4
	br label %573

573:
;573 897
	%574 = load i32, i32* @w, align 4
	%575 = add i32 %574, 1
	store i32 %575, i32* @w, align 4
	%576 = load i32, i32* @w, align 4
	%577 = add i32 %576, 1
	store i32 %577, i32* @w, align 4
	br label %578

578:
;578 897
	%579 = load i32, i32* @w, align 4
	%580 = add i32 %579, 1
	store i32 %580, i32* @w, align 4
	%581 = load i32, i32* @w, align 4
	%582 = add i32 %581, 1
	store i32 %582, i32* @w, align 4
	br label %583

583:
;583 897
	%584 = load i32, i32* @w, align 4
	%585 = add i32 %584, 1
	store i32 %585, i32* @w, align 4
	%586 = load i32, i32* @w, align 4
	%587 = add i32 %586, 1
	store i32 %587, i32* @w, align 4
	br label %588

588:
;588 897
	%589 = load i32, i32* @w, align 4
	%590 = add i32 %589, 1
	store i32 %590, i32* @w, align 4
	%591 = load i32, i32* @w, align 4
	%592 = add i32 %591, 1
	store i32 %592, i32* @w, align 4
	br label %593

593:
;593 897
	%594 = load i32, i32* @w, align 4
	%595 = add i32 %594, 1
	store i32 %595, i32* @w, align 4
	%596 = load i32, i32* @w, align 4
	%597 = add i32 %596, 1
	store i32 %597, i32* @w, align 4
	br label %598

598:
;598 897
	%599 = load i32, i32* @w, align 4
	%600 = add i32 %599, 1
	store i32 %600, i32* @w, align 4
	%601 = load i32, i32* @w, align 4
	%602 = add i32 %601, 1
	store i32 %602, i32* @w, align 4
	br label %603

603:
;603 897
	%604 = load i32, i32* @w, align 4
	%605 = add i32 %604, 1
	store i32 %605, i32* @w, align 4
	%606 = load i32, i32* @w, align 4
	%607 = add i32 %606, 1
	store i32 %607, i32* @w, align 4
	br label %608

608:
;608 897
	%609 = load i32, i32* @w, align 4
	%610 = add i32 %609, 1
	store i32 %610, i32* @w, align 4
	%611 = load i32, i32* @w, align 4
	%612 = add i32 %611, 1
	store i32 %612, i32* @w, align 4
	br label %613

613:
;613 897
	%614 = load i32, i32* @w, align 4
	%615 = add i32 %614, 1
	store i32 %615, i32* @w, align 4
	%616 = load i32, i32* @w, align 4
	%617 = add i32 %616, 1
	store i32 %617, i32* @w, align 4
	br label %618

618:
;618 897
	%619 = load i32, i32* @w, align 4
	%620 = add i32 %619, 1
	store i32 %620, i32* @w, align 4
	%621 = load i32, i32* @w, align 4
	%622 = add i32 %621, 1
	store i32 %622, i32* @w, align 4
	br label %623

623:
;623 897
	%624 = load i32, i32* @w, align 4
	%625 = add i32 %624, 1
	store i32 %625, i32* @w, align 4
	%626 = load i32, i32* @w, align 4
	%627 = add i32 %626, 1
	store i32 %627, i32* @w, align 4
	br label %628

628:
;628 897
	%629 = load i32, i32* @w, align 4
	%630 = add i32 %629, 1
	store i32 %630, i32* @w, align 4
	%631 = load i32, i32* @w, align 4
	%632 = add i32 %631, 1
	store i32 %632, i32* @w, align 4
	br label %633

633:
;633 897
	%634 = load i32, i32* @w, align 4
	%635 = add i32 %634, 1
	store i32 %635, i32* @w, align 4
	%636 = load i32, i32* @w, align 4
	%637 = add i32 %636, 1
	store i32 %637, i32* @w, align 4
	br label %638

638:
;638 897
	%639 = load i32, i32* @w, align 4
	%640 = add i32 %639, 1
	store i32 %640, i32* @w, align 4
	%641 = load i32, i32* @w, align 4
	%642 = add i32 %641, 1
	store i32 %642, i32* @w, align 4
	br label %643

643:
;643 897
	%644 = load i32, i32* @w, align 4
	%645 = add i32 %644, 1
	store i32 %645, i32* @w, align 4
	%646 = load i32, i32* @w, align 4
	%647 = add i32 %646, 1
	store i32 %647, i32* @w, align 4
	br label %648

648:
;648 897
	%649 = load i32, i32* @w, align 4
	%650 = add i32 %649, 1
	store i32 %650, i32* @w, align 4
	%651 = load i32, i32* @w, align 4
	%652 = add i32 %651, 1
	store i32 %652, i32* @w, align 4
	br label %653

653:
;653 897
	%654 = load i32, i32* @w, align 4
	%655 = add i32 %654, 1
	store i32 %655, i32* @w, align 4
	%656 = load i32, i32* @w, align 4
	%657 = add i32 %656, 1
	store i32 %657, i32* @w, align 4
	br label %658

658:
;658 897
	%659 = load i32, i32* @w, align 4
	%660 = add i32 %659, 1
	store i32 %660, i32* @w, align 4
	%661 = load i32, i32* @w, align 4
	%662 = add i32 %661, 1
	store i32 %662, i32* @w, align 4
	br label %663

663:
;663 897
	%664 = load i32, i32* @w, align 4
	%665 = add i32 %664, 1
	store i32 %665, i32* @w, align 4
	%666 = load i32, i32* @w, align 4
	%667 = add i32 %666, 1
	store i32 %667, i32* @w, align 4
	br label %668

668:
;668 897
	%669 = load i32, i32* @w, align 4
	%670 = add i32 %669, 1
	store i32 %670, i32* @w, align 4
	%671 = load i32, i32* @w, align 4
	%672 = add i32 %671, 1
	store i32 %672, i32* @w, align 4
	br label %673

673:
;673 897
	%674 = load i32, i32* @w, align 4
	%675 = add i32 %674, 1
	store i32 %675, i32* @w, align 4
	%676 = load i32, i32* @w, align 4
	%677 = add i32 %676, 1
	store i32 %677, i32* @w, align 4
	br label %678

678:
;678 897
	%679 = load i32, i32* @w, align 4
	%680 = add i32 %679, 1
	store i32 %680, i32* @w, align 4
	%681 = load i32, i32* @w, align 4
	%682 = add i32 %681, 1
	store i32 %682, i32* @w, align 4
	br label %683

683:
;683 897
	%684 = load i32, i32* @w, align 4
	%685 = add i32 %684, 1
	store i32 %685, i32* @w, align 4
	%686 = load i32, i32* @w, align 4
	%687 = add i32 %686, 1
	store i32 %687, i32* @w, align 4
	br label %688

688:
;688 897
	%689 = load i32, i32* @w, align 4
	%690 = add i32 %689, 1
	store i32 %690, i32* @w, align 4
	%691 = load i32, i32* @w, align 4
	%692 = add i32 %691, 1
	store i32 %692, i32* @w, align 4
	br label %693

693:
;693 897
	%694 = load i32, i32* @w, align 4
	%695 = add i32 %694, 1
	store i32 %695, i32* @w, align 4
	%696 = load i32, i32* @w, align 4
	%697 = add i32 %696, 1
	store i32 %697, i32* @w, align 4
	br label %698

698:
;698 897
	%699 = load i32, i32* @w, align 4
	%700 = add i32 %699, 1
	store i32 %700, i32* @w, align 4
	%701 = load i32, i32* @w, align 4
	%702 = add i32 %701, 1
	store i32 %702, i32* @w, align 4
	br label %703

703:
;703 897
	%704 = load i32, i32* @w, align 4
	%705 = add i32 %704, 1
	store i32 %705, i32* @w, align 4
	%706 = load i32, i32* @w, align 4
	%707 = add i32 %706, 1
	store i32 %707, i32* @w, align 4
	br label %708

708:
;708 897
	%709 = load i32, i32* @w, align 4
	%710 = add i32 %709, 1
	store i32 %710, i32* @w, align 4
	%711 = load i32, i32* @w, align 4
	%712 = add i32 %711, 1
	store i32 %712, i32* @w, align 4
	br label %713

713:
;713 897
	%714 = load i32, i32* @w, align 4
	%715 = add i32 %714, 1
	store i32 %715, i32* @w, align 4
	%716 = load i32, i32* @w, align 4
	%717 = add i32 %716, 1
	store i32 %717, i32* @w, align 4
	br label %718

718:
;718 897
	%719 = load i32, i32* @w, align 4
	%720 = add i32 %719, 1
	store i32 %720, i32* @w, align 4
	%721 = load i32, i32* @w, align 4
	%722 = add i32 %721, 1
	store i32 %722, i32* @w, align 4
	br label %723

723:
;723 897
	%724 = load i32, i32* @w, align 4
	%725 = add i32 %724, 1
	store i32 %725, i32* @w, align 4
	%726 = load i32, i32* @w, align 4
	%727 = add i32 %726, 1
	store i32 %727, i32* @w, align 4
	br label %728

728:
;728 897
	%729 = load i32, i32* @w, align 4
	%730 = add i32 %729, 1
	store i32 %730, i32* @w, align 4
	%731 = load i32, i32* @w, align 4
	%732 = add i32 %731, 1
	store i32 %732, i32* @w, align 4
	br label %733

733:
;733 897
	%734 = load i32, i32* @w, align 4
	%735 = add i32 %734, 1
	store i32 %735, i32* @w, align 4
	%736 = load i32, i32* @w, align 4
	%737 = add i32 %736, 1
	store i32 %737, i32* @w, align 4
	br label %738

738:
;738 897
	%739 = load i32, i32* @w, align 4
	%740 = add i32 %739, 1
	store i32 %740, i32* @w, align 4
	%741 = load i32, i32* @w, align 4
	%742 = add i32 %741, 1
	store i32 %742, i32* @w, align 4
	br label %743

743:
;743 897
	%744 = load i32, i32* @w, align 4
	%745 = add i32 %744, 1
	store i32 %745, i32* @w, align 4
	%746 = load i32, i32* @w, align 4
	%747 = add i32 %746, 1
	store i32 %747, i32* @w, align 4
	br label %748

748:
;748 897
	%749 = load i32, i32* @w, align 4
	%750 = add i32 %749, 1
	store i32 %750, i32* @w, align 4
	%751 = load i32, i32* @w, align 4
	%752 = add i32 %751, 1
	store i32 %752, i32* @w, align 4
	br label %753

753:
;753 897
	%754 = load i32, i32* @w, align 4
	%755 = add i32 %754, 1
	store i32 %755, i32* @w, align 4
	%756 = load i32, i32* @w, align 4
	%757 = add i32 %756, 1
	store i32 %757, i32* @w, align 4
	br label %758

758:
;758 897
	%759 = load i32, i32* @w, align 4
	%760 = add i32 %759, 1
	store i32 %760, i32* @w, align 4
	%761 = load i32, i32* @w, align 4
	%762 = add i32 %761, 1
	store i32 %762, i32* @w, align 4
	br label %763

763:
;763 897
	%764 = load i32, i32* @w, align 4
	%765 = add i32 %764, 1
	store i32 %765, i32* @w, align 4
	%766 = load i32, i32* @w, align 4
	%767 = add i32 %766, 1
	store i32 %767, i32* @w, align 4
	br label %768

768:
;768 897
	%769 = load i32, i32* @w, align 4
	%770 = add i32 %769, 1
	store i32 %770, i32* @w, align 4
	%771 = load i32, i32* @w, align 4
	%772 = add i32 %771, 1
	store i32 %772, i32* @w, align 4
	br label %773

773:
;773 897
	%774 = load i32, i32* @w, align 4
	%775 = add i32 %774, 1
	store i32 %775, i32* @w, align 4
	%776 = load i32, i32* @w, align 4
	%777 = add i32 %776, 1
	store i32 %777, i32* @w, align 4
	br label %778

778:
;778 897
	%779 = load i32, i32* @w, align 4
	%780 = add i32 %779, 1
	store i32 %780, i32* @w, align 4
	%781 = load i32, i32* @w, align 4
	%782 = add i32 %781, 1
	store i32 %782, i32* @w, align 4
	br label %783

783:
;783 897
	%784 = load i32, i32* @w, align 4
	%785 = add i32 %784, 1
	store i32 %785, i32* @w, align 4
	%786 = load i32, i32* @w, align 4
	%787 = add i32 %786, 1
	store i32 %787, i32* @w, align 4
	br label %788

788:
;788 897
	%789 = load i32, i32* @w, align 4
	%790 = add i32 %789, 1
	store i32 %790, i32* @w, align 4
	%791 = load i32, i32* @w, align 4
	%792 = add i32 %791, 1
	store i32 %792, i32* @w, align 4
	br label %793

793:
;793 897
	%794 = load i32, i32* @w, align 4
	%795 = add i32 %794, 1
	store i32 %795, i32* @w, align 4
	%796 = load i32, i32* @w, align 4
	%797 = add i32 %796, 1
	store i32 %797, i32* @w, align 4
	br label %798

798:
;798 897
	%799 = load i32, i32* @w, align 4
	%800 = add i32 %799, 1
	store i32 %800, i32* @w, align 4
	%801 = load i32, i32* @w, align 4
	%802 = add i32 %801, 1
	store i32 %802, i32* @w, align 4
	br label %803

803:
;803 897
	%804 = load i32, i32* @w, align 4
	%805 = add i32 %804, 1
	store i32 %805, i32* @w, align 4
	%806 = load i32, i32* @w, align 4
	%807 = add i32 %806, 1
	store i32 %807, i32* @w, align 4
	br label %808

808:
;808 897
	%809 = load i32, i32* @w, align 4
	%810 = add i32 %809, 1
	store i32 %810, i32* @w, align 4
	%811 = load i32, i32* @w, align 4
	%812 = add i32 %811, 1
	store i32 %812, i32* @w, align 4
	br label %813

813:
;813 897
	%814 = load i32, i32* @w, align 4
	%815 = add i32 %814, 1
	store i32 %815, i32* @w, align 4
	%816 = load i32, i32* @w, align 4
	%817 = add i32 %816, 1
	store i32 %817, i32* @w, align 4
	br label %818

818:
;818 897
	%819 = load i32, i32* @w, align 4
	%820 = add i32 %819, 1
	store i32 %820, i32* @w, align 4
	%821 = load i32, i32* @w, align 4
	%822 = add i32 %821, 1
	store i32 %822, i32* @w, align 4
	br label %823

823:
;823 897
	%824 = load i32, i32* @w, align 4
	%825 = add i32 %824, 1
	store i32 %825, i32* @w, align 4
	%826 = load i32, i32* @w, align 4
	%827 = add i32 %826, 1
	store i32 %827, i32* @w, align 4
	br label %828

828:
;828 897
	%829 = load i32, i32* @w, align 4
	%830 = add i32 %829, 1
	store i32 %830, i32* @w, align 4
	%831 = load i32, i32* @w, align 4
	%832 = add i32 %831, 1
	store i32 %832, i32* @w, align 4
	br label %833

833:
;833 897
	%834 = load i32, i32* @w, align 4
	%835 = add i32 %834, 1
	store i32 %835, i32* @w, align 4
	%836 = load i32, i32* @w, align 4
	%837 = add i32 %836, 1
	store i32 %837, i32* @w, align 4
	br label %838

838:
;838 897
	%839 = load i32, i32* @w, align 4
	%840 = add i32 %839, 1
	store i32 %840, i32* @w, align 4
	%841 = load i32, i32* @w, align 4
	%842 = add i32 %841, 1
	store i32 %842, i32* @w, align 4
	br label %843

843:
;843 897
	%844 = load i32, i32* @w, align 4
	%845 = add i32 %844, 1
	store i32 %845, i32* @w, align 4
	%846 = load i32, i32* @w, align 4
	%847 = add i32 %846, 1
	store i32 %847, i32* @w, align 4
	br label %848

848:
;848 897
	%849 = load i32, i32* @w, align 4
	%850 = add i32 %849, 1
	store i32 %850, i32* @w, align 4
	%851 = load i32, i32* @w, align 4
	%852 = add i32 %851, 1
	store i32 %852, i32* @w, align 4
	br label %853

853:
;853 897
	%854 = load i32, i32* @w, align 4
	%855 = add i32 %854, 1
	store i32 %855, i32* @w, align 4
	%856 = load i32, i32* @w, align 4
	%857 = add i32 %856, 1
	store i32 %857, i32* @w, align 4
	br label %858

858:
;858 897
	%859 = load i32, i32* @w, align 4
	%860 = add i32 %859, 1
	store i32 %860, i32* @w, align 4
	%861 = load i32, i32* @w, align 4
	%862 = add i32 %861, 1
	store i32 %862, i32* @w, align 4
	br label %863

863:
;863 897
	%864 = load i32, i32* @w, align 4
	%865 = add i32 %864, 1
	store i32 %865, i32* @w, align 4
	%866 = load i32, i32* @w, align 4
	%867 = add i32 %866, 1
	store i32 %867, i32* @w, align 4
	br label %868

868:
;868 897
	%869 = load i32, i32* @w, align 4
	%870 = add i32 %869, 1
	store i32 %870, i32* @w, align 4
	%871 = load i32, i32* @w, align 4
	%872 = add i32 %871, 1
	store i32 %872, i32* @w, align 4
	br label %873

873:
;873 897
	%874 = load i32, i32* @w, align 4
	%875 = add i32 %874, 1
	store i32 %875, i32* @w, align 4
	%876 = load i32, i32* @w, align 4
	%877 = add i32 %876, 1
	store i32 %877, i32* @w, align 4
	br label %878

878:
;878 897
	%879 = call i32 @bblock()
	%880 = call i32 @bblock()
	br label %881

;end inline expansion bblock
881:
;881 897
	br label %882

882:
;882 24
	%883 = phi i32 [ %888, %884 ], [ %880, %881 ]
	ret i32 %883

;True block in wP selectCount 2
884:
;884 24
	%885 = load i32, i32* @N, align 4
	%886 = call i32 @add524288(i32 %885)
	%887 = sub i32 %886, 524288
	%888 = sub i32 %887, 6
	br label %882

;Converge block in wP selectCount 1
889:
;889 22
	%890 = load i32, i32* @N, align 4
	%891 = add i32 %890, %15
	store i32 %891, i32* @N, align 4
	%892 = add i32 %16, %15
	br label %893

;loop increase block wP loopDepth 1 iterCount 0
893:
;893 889
	%894 = add i32 %892, 1
	br label %1

;loop increase block wP loopDepth 2 iterCount 0
895:
;895 898
	%896 = add i32 %7, 1
	br label %6
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

