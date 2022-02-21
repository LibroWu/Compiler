%struct.string = type { i32, i8* }

define i32 @test(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	store i32 0, i32* %3, align 4
	%4 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %5

;loop check block test loopDepth 1 iterCount 0
5:
	%6 = load i32, i32* %2, align 4
	%7 = icmp slt i32 %6, 200
	br i1 %7, label %8, label %135

;loop body test loopDepth 1 iterCount 0
8:
	%9 = xor i32 1, 2
	%10 = icmp eq i32 %9, 3
	br i1 %10, label %11, label %119

11:
	%12 = and i32 1, 1
	%13 = sdiv i32 5, 3
	%14 = icmp eq i32 %12, %13
	br i1 %14, label %15, label %119

15:
	%16 = add i32 1, 2
	%17 = add i32 %16, 3
	%18 = add i32 %17, 4
	%19 = add i32 %18, 5
	%20 = add i32 %19, 6
	%21 = add i32 %20, 7
	%22 = add i32 %21, 8
	%23 = add i32 %22, 9
	%24 = add i32 %23, 10
	%25 = add i32 %24, 11
	%26 = add i32 %25, 12
	%27 = add i32 %26, 13
	%28 = add i32 %27, 14
	%29 = add i32 %28, 15
	%30 = add i32 %29, 16
	%31 = add i32 %30, 17
	%32 = add i32 %31, 18
	%33 = add i32 %32, 19
	%34 = add i32 %33, 20
	%35 = add i32 %34, 21
	%36 = add i32 %35, 22
	%37 = add i32 %36, 23
	%38 = add i32 %37, 24
	%39 = add i32 %38, 25
	%40 = add i32 %39, 26
	%41 = add i32 %40, 27
	%42 = add i32 %41, 28
	%43 = add i32 %42, 29
	%44 = add i32 %43, 30
	%45 = add i32 %44, 31
	%46 = add i32 %45, 32
	%47 = add i32 %46, 33
	%48 = add i32 %47, 34
	%49 = add i32 %48, 35
	%50 = add i32 %49, 36
	%51 = add i32 %50, 37
	%52 = add i32 %51, 38
	%53 = add i32 %52, 39
	%54 = add i32 %53, 40
	%55 = add i32 %54, 41
	%56 = add i32 %55, 42
	%57 = add i32 %56, 43
	%58 = add i32 %57, 44
	%59 = add i32 %58, 45
	%60 = add i32 %59, 46
	%61 = add i32 %60, 47
	%62 = add i32 %61, 48
	%63 = add i32 %62, 49
	%64 = add i32 %63, 50
	%65 = add i32 %64, 51
	%66 = add i32 %65, 52
	%67 = add i32 %66, 53
	%68 = add i32 %67, 54
	%69 = add i32 %68, 55
	%70 = add i32 %69, 56
	%71 = add i32 %70, 57
	%72 = add i32 %71, 58
	%73 = add i32 %72, 59
	%74 = add i32 %73, 60
	%75 = add i32 %74, 61
	%76 = add i32 %75, 62
	%77 = add i32 %76, 63
	%78 = add i32 %77, 64
	%79 = add i32 %78, 65
	%80 = add i32 %79, 66
	%81 = add i32 %80, 67
	%82 = add i32 %81, 68
	%83 = add i32 %82, 69
	%84 = add i32 %83, 70
	%85 = add i32 %84, 71
	%86 = add i32 %85, 72
	%87 = add i32 %86, 73
	%88 = add i32 %87, 74
	%89 = add i32 %88, 75
	%90 = add i32 %89, 76
	%91 = add i32 %90, 77
	%92 = add i32 %91, 78
	%93 = add i32 %92, 79
	%94 = add i32 %93, 80
	%95 = add i32 %94, 81
	%96 = add i32 %95, 82
	%97 = add i32 %96, 83
	%98 = add i32 %97, 84
	%99 = add i32 %98, 85
	%100 = add i32 %99, 86
	%101 = add i32 %100, 87
	%102 = add i32 %101, 88
	%103 = add i32 %102, 89
	%104 = add i32 %103, 90
	%105 = add i32 %104, 91
	%106 = add i32 %105, 92
	%107 = add i32 %106, 93
	%108 = add i32 %107, 94
	%109 = add i32 %108, 95
	%110 = add i32 %109, 96
	%111 = add i32 %110, 97
	%112 = add i32 %111, 98
	%113 = add i32 %112, 99
	%114 = add i32 %113, 100
	%115 = add i32 100, 1
	%116 = mul i32 %115, 100
	%117 = sdiv i32 %116, 2
	%118 = icmp eq i32 %114, %117
	br label %119

119:
	%120 = phi i1 [ 0, %8 ], [ 0, %11 ], [ %118, %15 ]
	br i1 %120, label %121, label %126

;True block in test selectCount 0
121:
	%122 = load i32, i32* %2, align 4
	%123 = add i32 %122, 1
	store i32 %123, i32* %2, align 4
	%124 = load i32, i32* %3, align 4
	%125 = add i32 %124, 1
	store i32 %125, i32* %3, align 4
	br label %131

;False block in test selectCount 0
126:
	%127 = add i32 1, 1
	%128 = sub i32 1, 1
	%129 = sdiv i32 %127, %128
	%130 = load i32, i32* %3, align 4
	store i32 %129, i32* %3, align 4
	br label %131

;Converge block in test selectCount 0
131:
	br label %132

;loop increase block test loopDepth 1 iterCount 0
132:
	%133 = load i32, i32* %2, align 4
	%134 = add i32 %133, 1
	store i32 %134, i32* %2, align 4
	br label %5

;loop exit block test loopDepth 1 iterCount 0
135:
	%136 = load i32, i32* %3, align 4
	store i32 %136, i32* %1, align 4
	br label %137

137:
	%138 = load i32, i32* %1, align 4
	ret i32 %138
}

define i32 @main(){
	%1 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%2 = call i32 @test()
	%3 = sub i32 %2, 100
	store i32 %3, i32* %1, align 4
	br label %4

4:
	%5 = load i32, i32* %1, align 4
	ret i32 %5
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

