%struct.string = type { i32, i8* }

@N = global i32 0, align 4
@M = global i32 0, align 4
@check = global i8* null, align 4

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32*, align 4
	%4 = alloca i32*, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%8 = call i32 @getInt()
	%9 = load i32, i32* @N, align 4
	store i32 %8, i32* @N, align 4
	%10 = load i32, i32* @N, align 4
	%11 = add i32 %10, 5
	%12 = sext i32 %11 to i32
	%13 = mul i32 %12, 1
	%14 = add i32 %13, 4
	%15 = call i8* @myNew(i32 %14)
	%16 = bitcast i8* %15 to i32*
	store i32 %11, i32* %16, align 4
	%17 = load i8*, i8** @check, align 4
	store i8* %15, i8** @check, align 4
	store i32 0, i32* %2, align 4
	br label %18

18:
	%19 = load i32, i32* %2, align 4
	%20 = load i32, i32* @N, align 4
	%21 = icmp sle i32 %19, %20
	br i1 %21, label %22, label %33

22:
	%23 = load i8*, i8** @check, align 4
	%24 = load i32, i32* %2, align 4
	%25 = add i32 %24, 1
	store i32 %25, i32* %2, align 4
	%26 = sext i32 %24 to i32
	%27 = mul i32 %26, 1
	%28 = add i32 %27, 4
	%29 = getelementptr i8, i8* %23, i32 %28
	%30 = bitcast i8* %29 to i8*
	%31 = load i8, i8* %30, align 1
	%32 = sext i1 1 to i8
	store i8 %32, i8* %30, align 1
	br label %18

33:
	%34 = load i32, i32* @N, align 4
	%35 = add i32 %34, 5
	%36 = sext i32 %35 to i32
	%37 = mul i32 %36, 4
	%38 = add i32 %37, 4
	%39 = call i8* @myNew(i32 %38)
	%40 = bitcast i8* %39 to i32*
	store i32 %35, i32* %40, align 4
	%41 = bitcast i8* %39 to i32*
	store i32* %41, i32** %3, align 4
	%42 = load i32, i32* @N, align 4
	%43 = add i32 %42, 5
	%44 = sext i32 %43 to i32
	%45 = mul i32 %44, 4
	%46 = add i32 %45, 4
	%47 = call i8* @myNew(i32 %46)
	%48 = bitcast i8* %47 to i32*
	store i32 %43, i32* %48, align 4
	%49 = bitcast i8* %47 to i32*
	store i32* %49, i32** %4, align 4
	%50 = load i32*, i32** %3, align 4
	%51 = sext i32 1 to i32
	%52 = mul i32 %51, 4
	%53 = add i32 %52, 4
	%54 = bitcast i32* %50 to i8*
	%55 = getelementptr i8, i8* %54, i32 %53
	%56 = bitcast i8* %55 to i32*
	%57 = load i32, i32* %56, align 4
	store i32 1, i32* %56, align 4
	%58 = load i32, i32* %2, align 4
	store i32 2, i32* %2, align 4
	br label %59

59:
	br label %60

60:
	%61 = load i32, i32* %2, align 4
	%62 = load i32, i32* @N, align 4
	%63 = icmp sgt i32 %61, %62
	br i1 %63, label %64, label %65

64:
	br label %248

65:
	%66 = load i8*, i8** @check, align 4
	%67 = load i32, i32* %2, align 4
	%68 = sext i32 %67 to i32
	%69 = mul i32 %68, 1
	%70 = add i32 %69, 4
	%71 = getelementptr i8, i8* %66, i32 %70
	%72 = bitcast i8* %71 to i8*
	%73 = load i8, i8* %72, align 1
	%74 = trunc i8 %73 to i1
	br i1 %74, label %75, label %98

75:
	%76 = load i32, i32* %2, align 4
	%77 = load i32*, i32** %4, align 4
	%78 = load i32, i32* @M, align 4
	%79 = add i32 %78, 1
	store i32 %79, i32* @M, align 4
	%80 = sext i32 %79 to i32
	%81 = mul i32 %80, 4
	%82 = add i32 %81, 4
	%83 = bitcast i32* %77 to i8*
	%84 = getelementptr i8, i8* %83, i32 %82
	%85 = bitcast i8* %84 to i32*
	%86 = load i32, i32* %85, align 4
	store i32 %76, i32* %85, align 4
	%87 = load i32, i32* %2, align 4
	%88 = sub i32 %87, 1
	%89 = load i32*, i32** %3, align 4
	%90 = load i32, i32* %2, align 4
	%91 = sext i32 %90 to i32
	%92 = mul i32 %91, 4
	%93 = add i32 %92, 4
	%94 = bitcast i32* %89 to i8*
	%95 = getelementptr i8, i8* %94, i32 %93
	%96 = bitcast i8* %95 to i32*
	%97 = load i32, i32* %96, align 4
	store i32 %88, i32* %96, align 4
	br label %98

98:
	%99 = load i32, i32* %2, align 4
	store i32 %99, i32* %5, align 4
	%100 = load i32, i32* %6, align 4
	store i32 1, i32* %6, align 4
	br label %101

101:
	%102 = load i32, i32* %6, align 4
	%103 = load i32, i32* @M, align 4
	%104 = icmp sle i32 %102, %103
	br i1 %104, label %105, label %119

105:
	%106 = load i32, i32* %5, align 4
	%107 = load i32*, i32** %4, align 4
	%108 = load i32, i32* %6, align 4
	%109 = sext i32 %108 to i32
	%110 = mul i32 %109, 4
	%111 = add i32 %110, 4
	%112 = bitcast i32* %107 to i8*
	%113 = getelementptr i8, i8* %112, i32 %111
	%114 = bitcast i8* %113 to i32*
	%115 = load i32, i32* %114, align 4
	%116 = mul i32 %106, %115
	%117 = load i32, i32* @N, align 4
	%118 = icmp sle i32 %116, %117
	br label %119

119:
	%120 = phi i1 [ 0, %101 ], [ %118, %105 ]
	br i1 %120, label %121, label %232

121:
	%122 = load i32, i32* %5, align 4
	%123 = load i32*, i32** %4, align 4
	%124 = load i32, i32* %6, align 4
	%125 = sext i32 %124 to i32
	%126 = mul i32 %125, 4
	%127 = add i32 %126, 4
	%128 = bitcast i32* %123 to i8*
	%129 = getelementptr i8, i8* %128, i32 %127
	%130 = bitcast i8* %129 to i32*
	%131 = load i32, i32* %130, align 4
	%132 = mul i32 %122, %131
	store i32 %132, i32* %7, align 4
	%133 = load i32, i32* %7, align 4
	%134 = load i32, i32* @N, align 4
	%135 = icmp sgt i32 %133, %134
	br i1 %135, label %136, label %137

136:
	br label %229

137:
	%138 = load i8*, i8** @check, align 4
	%139 = load i32, i32* %7, align 4
	%140 = sext i32 %139 to i32
	%141 = mul i32 %140, 1
	%142 = add i32 %141, 4
	%143 = getelementptr i8, i8* %138, i32 %142
	%144 = bitcast i8* %143 to i8*
	%145 = load i8, i8* %144, align 1
	%146 = sext i1 0 to i8
	store i8 %146, i8* %144, align 1
	%147 = load i32, i32* %5, align 4
	%148 = load i32*, i32** %4, align 4
	%149 = load i32, i32* %6, align 4
	%150 = sext i32 %149 to i32
	%151 = mul i32 %150, 4
	%152 = add i32 %151, 4
	%153 = bitcast i32* %148 to i8*
	%154 = getelementptr i8, i8* %153, i32 %152
	%155 = bitcast i8* %154 to i32*
	%156 = load i32, i32* %155, align 4
	%157 = srem i32 %147, %156
	%158 = icmp eq i32 %157, 0
	br i1 %158, label %159, label %188

159:
	%160 = load i32*, i32** %3, align 4
	%161 = load i32, i32* %5, align 4
	%162 = sext i32 %161 to i32
	%163 = mul i32 %162, 4
	%164 = add i32 %163, 4
	%165 = bitcast i32* %160 to i8*
	%166 = getelementptr i8, i8* %165, i32 %164
	%167 = bitcast i8* %166 to i32*
	%168 = load i32, i32* %167, align 4
	%169 = load i32*, i32** %4, align 4
	%170 = load i32, i32* %6, align 4
	%171 = sext i32 %170 to i32
	%172 = mul i32 %171, 4
	%173 = add i32 %172, 4
	%174 = bitcast i32* %169 to i8*
	%175 = getelementptr i8, i8* %174, i32 %173
	%176 = bitcast i8* %175 to i32*
	%177 = load i32, i32* %176, align 4
	%178 = mul i32 %168, %177
	%179 = load i32*, i32** %3, align 4
	%180 = load i32, i32* %7, align 4
	%181 = sext i32 %180 to i32
	%182 = mul i32 %181, 4
	%183 = add i32 %182, 4
	%184 = bitcast i32* %179 to i8*
	%185 = getelementptr i8, i8* %184, i32 %183
	%186 = bitcast i8* %185 to i32*
	%187 = load i32, i32* %186, align 4
	store i32 %178, i32* %186, align 4
	br label %232

188:
	%189 = load i32*, i32** %3, align 4
	%190 = load i32, i32* %5, align 4
	%191 = sext i32 %190 to i32
	%192 = mul i32 %191, 4
	%193 = add i32 %192, 4
	%194 = bitcast i32* %189 to i8*
	%195 = getelementptr i8, i8* %194, i32 %193
	%196 = bitcast i8* %195 to i32*
	%197 = load i32, i32* %196, align 4
	%198 = load i32*, i32** %4, align 4
	%199 = load i32, i32* %6, align 4
	%200 = sext i32 %199 to i32
	%201 = mul i32 %200, 4
	%202 = add i32 %201, 4
	%203 = bitcast i32* %198 to i8*
	%204 = getelementptr i8, i8* %203, i32 %202
	%205 = bitcast i8* %204 to i32*
	%206 = load i32, i32* %205, align 4
	%207 = sub i32 %206, 1
	%208 = mul i32 %197, %207
	%209 = load i32*, i32** %3, align 4
	%210 = load i32, i32* %5, align 4
	%211 = load i32*, i32** %4, align 4
	%212 = load i32, i32* %6, align 4
	%213 = sext i32 %212 to i32
	%214 = mul i32 %213, 4
	%215 = add i32 %214, 4
	%216 = bitcast i32* %211 to i8*
	%217 = getelementptr i8, i8* %216, i32 %215
	%218 = bitcast i8* %217 to i32*
	%219 = load i32, i32* %218, align 4
	%220 = mul i32 %210, %219
	%221 = sext i32 %220 to i32
	%222 = mul i32 %221, 4
	%223 = add i32 %222, 4
	%224 = bitcast i32* %209 to i8*
	%225 = getelementptr i8, i8* %224, i32 %223
	%226 = bitcast i8* %225 to i32*
	%227 = load i32, i32* %226, align 4
	store i32 %208, i32* %226, align 4
	br label %228

228:
	br label %229

229:
	%230 = load i32, i32* %6, align 4
	%231 = add i32 %230, 1
	store i32 %231, i32* %6, align 4
	br label %101

232:
	%233 = load i32*, i32** %3, align 4
	%234 = load i32, i32* %5, align 4
	%235 = sext i32 %234 to i32
	%236 = mul i32 %235, 4
	%237 = add i32 %236, 4
	%238 = bitcast i32* %233 to i8*
	%239 = getelementptr i8, i8* %238, i32 %237
	%240 = bitcast i8* %239 to i32*
	%241 = load i32, i32* %240, align 4
	%242 = call %struct.string* @toString(i32 %241)
	%243 = getelementptr %struct.string, %struct.string* %242, i32 0, i32 1
	%244 = load i8*, i8** %243, align 4
	call void @println(i8* %244)
	br label %245

245:
	%246 = load i32, i32* %2, align 4
	%247 = add i32 %246, 1
	store i32 %247, i32* %2, align 4
	br label %59

248:
	store i32 0, i32* %1, align 4
	br label %249

249:
	%250 = load i32, i32* %1, align 4
	ret i32 %250
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

