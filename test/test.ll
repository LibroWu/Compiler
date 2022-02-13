%struct.string = type { i32, i8* }

@INF = global i32 10000000, align 4
@n = global i32 0, align 4
@m = global i32 0, align 4
@a = global i32** null, align 4

@.libro.str = constant [3 x i8] c"-1\00", align 1
@.libro.str.1 = constant [2 x i8] c" \00", align 1
@.libro.str.2 = constant [1 x i8] c"\00", align 1

define void @init(){
	%1 = alloca i32, align 4;for new loop
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = call i32 @getInt()
	%8 = load i32, i32* @n, align 4
	store i32 %7, i32* @n, align 4
	%9 = call i32 @getInt()
	%10 = load i32, i32* @m, align 4
	store i32 %9, i32* @m, align 4
	%11 = load i32, i32* @n, align 4
	%12 = mul i32 %11, 4
	%13 = add i32 %12, 4
	%14 = call i8* @myNew(i32 %13)
	%15 = bitcast i8* %14 to i32*
	store i32 %11, i32* %15, align 4
	%16 = bitcast i8* %14 to i32**
	store i32 0, i32* %1, align 4
	br label %17

17:
	%18 = load i32, i32* %1, align 4
	%19 = add i32 %18, 4
	store i32 %19, i32* %1, align 4
	%20 = icmp slt i32 %18, %13
	br i1 %20, label %21, label %30

21:
	%22 = getelementptr i8, i8* %14, i32 %18
	%23 = load i32, i32* @n, align 4
	%24 = mul i32 %23, 4
	%25 = add i32 %24, 4
	%26 = call i8* @myNew(i32 %25)
	%27 = bitcast i8* %26 to i32*
	store i32 %23, i32* %27, align 4
	%28 = bitcast i8* %26 to i32*
	%29 = bitcast i8* %22 to i32**
	store i32* %28, i32** %29, align 4
	br label %17

30:
	%31 = load i32**, i32*** @a, align 4
	store i32** %16, i32*** @a, align 4
	%32 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %33

33:
	%34 = load i32, i32* %2, align 4
	%35 = load i32, i32* @n, align 4
	%36 = icmp slt i32 %34, %35
	br i1 %36, label %37, label %67

37:
	%38 = load i32, i32* %3, align 4
	store i32 0, i32* %3, align 4
	br label %39

39:
	%40 = load i32, i32* %3, align 4
	%41 = load i32, i32* @n, align 4
	%42 = icmp slt i32 %40, %41
	br i1 %42, label %43, label %63

43:
	%44 = load i32, i32* @INF, align 4
	%45 = load i32**, i32*** @a, align 4
	%46 = load i32, i32* %2, align 4
	%47 = mul i32 %46, 4
	%48 = add i32 %47, 4
	%49 = bitcast i32** %45 to i8*
	%50 = getelementptr i8, i8* %49, i32 %48
	%51 = bitcast i8* %50 to i32**
	%52 = load i32*, i32** %51, align 4
	%53 = load i32, i32* %3, align 4
	%54 = mul i32 %53, 4
	%55 = add i32 %54, 4
	%56 = bitcast i32* %52 to i8*
	%57 = getelementptr i8, i8* %56, i32 %55
	%58 = bitcast i8* %57 to i32*
	%59 = load i32, i32* %58, align 4
	store i32 %44, i32* %58, align 4
	br label %60

60:
	%61 = load i32, i32* %3, align 4
	%62 = add i32 %61, 1
	store i32 %62, i32* %3, align 4
	br label %39

63:
	br label %64

64:
	%65 = load i32, i32* %2, align 4
	%66 = add i32 %65, 1
	store i32 %66, i32* %2, align 4
	br label %33

67:
	%68 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %69

69:
	%70 = load i32, i32* %2, align 4
	%71 = load i32, i32* @n, align 4
	%72 = icmp slt i32 %70, %71
	br i1 %72, label %73, label %92

73:
	%74 = load i32**, i32*** @a, align 4
	%75 = load i32, i32* %2, align 4
	%76 = mul i32 %75, 4
	%77 = add i32 %76, 4
	%78 = bitcast i32** %74 to i8*
	%79 = getelementptr i8, i8* %78, i32 %77
	%80 = bitcast i8* %79 to i32**
	%81 = load i32*, i32** %80, align 4
	%82 = load i32, i32* %2, align 4
	%83 = mul i32 %82, 4
	%84 = add i32 %83, 4
	%85 = bitcast i32* %81 to i8*
	%86 = getelementptr i8, i8* %85, i32 %84
	%87 = bitcast i8* %86 to i32*
	%88 = load i32, i32* %87, align 4
	store i32 0, i32* %87, align 4
	br label %89

89:
	%90 = load i32, i32* %2, align 4
	%91 = add i32 %90, 1
	store i32 %91, i32* %2, align 4
	br label %69

92:
	%93 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %94

94:
	%95 = load i32, i32* %2, align 4
	%96 = load i32, i32* @m, align 4
	%97 = icmp slt i32 %95, %96
	br i1 %97, label %98, label %121

98:
	%99 = call i32 @getInt()
	store i32 %99, i32* %4, align 4
	%100 = call i32 @getInt()
	store i32 %100, i32* %5, align 4
	%101 = call i32 @getInt()
	store i32 %101, i32* %6, align 4
	%102 = load i32, i32* %6, align 4
	%103 = load i32**, i32*** @a, align 4
	%104 = load i32, i32* %4, align 4
	%105 = mul i32 %104, 4
	%106 = add i32 %105, 4
	%107 = bitcast i32** %103 to i8*
	%108 = getelementptr i8, i8* %107, i32 %106
	%109 = bitcast i8* %108 to i32**
	%110 = load i32*, i32** %109, align 4
	%111 = load i32, i32* %5, align 4
	%112 = mul i32 %111, 4
	%113 = add i32 %112, 4
	%114 = bitcast i32* %110 to i8*
	%115 = getelementptr i8, i8* %114, i32 %113
	%116 = bitcast i8* %115 to i32*
	%117 = load i32, i32* %116, align 4
	store i32 %102, i32* %116, align 4
	br label %118

118:
	%119 = load i32, i32* %2, align 4
	%120 = add i32 %119, 1
	store i32 %120, i32* %2, align 4
	br label %94

121:
	br label %122

122:
	ret void
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	call void @init()
	%5 = load i32, i32* %4, align 4
	store i32 0, i32* %4, align 4
	br label %6

6:
	%7 = load i32, i32* %4, align 4
	%8 = load i32, i32* @n, align 4
	%9 = icmp slt i32 %7, %8
	br i1 %9, label %10, label %129

10:
	%11 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %12

12:
	%13 = load i32, i32* %2, align 4
	%14 = load i32, i32* @n, align 4
	%15 = icmp slt i32 %13, %14
	br i1 %15, label %16, label %125

16:
	%17 = load i32, i32* %3, align 4
	store i32 0, i32* %3, align 4
	br label %18

18:
	%19 = load i32, i32* %3, align 4
	%20 = load i32, i32* @n, align 4
	%21 = icmp slt i32 %19, %20
	br i1 %21, label %22, label %121

22:
	%23 = load i32**, i32*** @a, align 4
	%24 = load i32, i32* %2, align 4
	%25 = mul i32 %24, 4
	%26 = add i32 %25, 4
	%27 = bitcast i32** %23 to i8*
	%28 = getelementptr i8, i8* %27, i32 %26
	%29 = bitcast i8* %28 to i32**
	%30 = load i32*, i32** %29, align 4
	%31 = load i32, i32* %3, align 4
	%32 = mul i32 %31, 4
	%33 = add i32 %32, 4
	%34 = bitcast i32* %30 to i8*
	%35 = getelementptr i8, i8* %34, i32 %33
	%36 = bitcast i8* %35 to i32*
	%37 = load i32, i32* %36, align 4
	%38 = load i32**, i32*** @a, align 4
	%39 = load i32, i32* %2, align 4
	%40 = mul i32 %39, 4
	%41 = add i32 %40, 4
	%42 = bitcast i32** %38 to i8*
	%43 = getelementptr i8, i8* %42, i32 %41
	%44 = bitcast i8* %43 to i32**
	%45 = load i32*, i32** %44, align 4
	%46 = load i32, i32* %4, align 4
	%47 = mul i32 %46, 4
	%48 = add i32 %47, 4
	%49 = bitcast i32* %45 to i8*
	%50 = getelementptr i8, i8* %49, i32 %48
	%51 = bitcast i8* %50 to i32*
	%52 = load i32, i32* %51, align 4
	%53 = load i32**, i32*** @a, align 4
	%54 = load i32, i32* %4, align 4
	%55 = mul i32 %54, 4
	%56 = add i32 %55, 4
	%57 = bitcast i32** %53 to i8*
	%58 = getelementptr i8, i8* %57, i32 %56
	%59 = bitcast i8* %58 to i32**
	%60 = load i32*, i32** %59, align 4
	%61 = load i32, i32* %3, align 4
	%62 = mul i32 %61, 4
	%63 = add i32 %62, 4
	%64 = bitcast i32* %60 to i8*
	%65 = getelementptr i8, i8* %64, i32 %63
	%66 = bitcast i8* %65 to i32*
	%67 = load i32, i32* %66, align 4
	%68 = add i32 %52, %67
	%69 = icmp sgt i32 %37, %68
	br i1 %69, label %70, label %117

70:
	%71 = load i32**, i32*** @a, align 4
	%72 = load i32, i32* %2, align 4
	%73 = mul i32 %72, 4
	%74 = add i32 %73, 4
	%75 = bitcast i32** %71 to i8*
	%76 = getelementptr i8, i8* %75, i32 %74
	%77 = bitcast i8* %76 to i32**
	%78 = load i32*, i32** %77, align 4
	%79 = load i32, i32* %4, align 4
	%80 = mul i32 %79, 4
	%81 = add i32 %80, 4
	%82 = bitcast i32* %78 to i8*
	%83 = getelementptr i8, i8* %82, i32 %81
	%84 = bitcast i8* %83 to i32*
	%85 = load i32, i32* %84, align 4
	%86 = load i32**, i32*** @a, align 4
	%87 = load i32, i32* %4, align 4
	%88 = mul i32 %87, 4
	%89 = add i32 %88, 4
	%90 = bitcast i32** %86 to i8*
	%91 = getelementptr i8, i8* %90, i32 %89
	%92 = bitcast i8* %91 to i32**
	%93 = load i32*, i32** %92, align 4
	%94 = load i32, i32* %3, align 4
	%95 = mul i32 %94, 4
	%96 = add i32 %95, 4
	%97 = bitcast i32* %93 to i8*
	%98 = getelementptr i8, i8* %97, i32 %96
	%99 = bitcast i8* %98 to i32*
	%100 = load i32, i32* %99, align 4
	%101 = add i32 %85, %100
	%102 = load i32**, i32*** @a, align 4
	%103 = load i32, i32* %2, align 4
	%104 = mul i32 %103, 4
	%105 = add i32 %104, 4
	%106 = bitcast i32** %102 to i8*
	%107 = getelementptr i8, i8* %106, i32 %105
	%108 = bitcast i8* %107 to i32**
	%109 = load i32*, i32** %108, align 4
	%110 = load i32, i32* %3, align 4
	%111 = mul i32 %110, 4
	%112 = add i32 %111, 4
	%113 = bitcast i32* %109 to i8*
	%114 = getelementptr i8, i8* %113, i32 %112
	%115 = bitcast i8* %114 to i32*
	%116 = load i32, i32* %115, align 4
	store i32 %101, i32* %115, align 4
	br label %117

117:
	br label %118

118:
	%119 = load i32, i32* %3, align 4
	%120 = add i32 %119, 1
	store i32 %120, i32* %3, align 4
	br label %18

121:
	br label %122

122:
	%123 = load i32, i32* %2, align 4
	%124 = add i32 %123, 1
	store i32 %124, i32* %2, align 4
	br label %12

125:
	br label %126

126:
	%127 = load i32, i32* %4, align 4
	%128 = add i32 %127, 1
	store i32 %128, i32* %4, align 4
	br label %6

129:
	%130 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %131

131:
	%132 = load i32, i32* %2, align 4
	%133 = load i32, i32* @n, align 4
	%134 = icmp slt i32 %132, %133
	br i1 %134, label %135, label %190

135:
	%136 = load i32, i32* %3, align 4
	store i32 0, i32* %3, align 4
	br label %137

137:
	%138 = load i32, i32* %3, align 4
	%139 = load i32, i32* @n, align 4
	%140 = icmp slt i32 %138, %139
	br i1 %140, label %141, label %185

141:
	%142 = load i32**, i32*** @a, align 4
	%143 = load i32, i32* %2, align 4
	%144 = mul i32 %143, 4
	%145 = add i32 %144, 4
	%146 = bitcast i32** %142 to i8*
	%147 = getelementptr i8, i8* %146, i32 %145
	%148 = bitcast i8* %147 to i32**
	%149 = load i32*, i32** %148, align 4
	%150 = load i32, i32* %3, align 4
	%151 = mul i32 %150, 4
	%152 = add i32 %151, 4
	%153 = bitcast i32* %149 to i8*
	%154 = getelementptr i8, i8* %153, i32 %152
	%155 = bitcast i8* %154 to i32*
	%156 = load i32, i32* %155, align 4
	%157 = load i32, i32* @INF, align 4
	%158 = icmp eq i32 %156, %157
	br i1 %158, label %159, label %161

159:
	%160 = bitcast [3 x i8]* @.libro.str to i8*
	call void @print(i8* %160)
	br label %180

161:
	%162 = load i32**, i32*** @a, align 4
	%163 = load i32, i32* %2, align 4
	%164 = mul i32 %163, 4
	%165 = add i32 %164, 4
	%166 = bitcast i32** %162 to i8*
	%167 = getelementptr i8, i8* %166, i32 %165
	%168 = bitcast i8* %167 to i32**
	%169 = load i32*, i32** %168, align 4
	%170 = load i32, i32* %3, align 4
	%171 = mul i32 %170, 4
	%172 = add i32 %171, 4
	%173 = bitcast i32* %169 to i8*
	%174 = getelementptr i8, i8* %173, i32 %172
	%175 = bitcast i8* %174 to i32*
	%176 = load i32, i32* %175, align 4
	%177 = call %struct.string* @toString(i32 %176)
	%178 = getelementptr %struct.string, %struct.string* %177, i32 0, i32 1
	%179 = load i8*, i8** %178, align 4
	call void @print(i8* %179)
	br label %180

180:
	%181 = bitcast [2 x i8]* @.libro.str.1 to i8*
	call void @print(i8* %181)
	br label %182

182:
	%183 = load i32, i32* %3, align 4
	%184 = add i32 %183, 1
	store i32 %184, i32* %3, align 4
	br label %137

185:
	%186 = bitcast [1 x i8]* @.libro.str.2 to i8*
	call void @println(i8* %186)
	br label %187

187:
	%188 = load i32, i32* %2, align 4
	%189 = add i32 %188, 1
	store i32 %189, i32* %2, align 4
	br label %131

190:
	store i32 0, i32* %1, align 4
	br label %191

191:
	%192 = load i32, i32* %1, align 4
	ret i32 %192
}

define void @_GLOBAL_(){
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

