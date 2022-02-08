%struct.string = type { i32, i8* }

@N = global i32 0, align 4
@h = global i32 99, align 4
@i = global i32 100, align 4
@j = global i32 101, align 4
@k = global i32 102, align 4
@total = global i32 0, align 4

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%8 = call i32 @getInt()
	%9 = load i32, i32* @N, align 4
	store i32 %8, i32* @N, align 4
	%10 = load i32, i32* %2, align 4
	store i32 1, i32* %2, align 4
	br label %11

11:
	%12 = load i32, i32* %2, align 4
	%13 = load i32, i32* @N, align 4
	%14 = icmp sle i32 %12, %13
	br i1 %14, label %15, label %238

15:
	%16 = load i32, i32* %3, align 4
	store i32 1, i32* %3, align 4
	br label %17

17:
	%18 = load i32, i32* %3, align 4
	%19 = load i32, i32* @N, align 4
	%20 = icmp sle i32 %18, %19
	br i1 %20, label %21, label %234

21:
	%22 = load i32, i32* %4, align 4
	store i32 1, i32* %4, align 4
	br label %23

23:
	%24 = load i32, i32* %4, align 4
	%25 = load i32, i32* @N, align 4
	%26 = icmp sle i32 %24, %25
	br i1 %26, label %27, label %230

27:
	%28 = load i32, i32* %5, align 4
	store i32 1, i32* %5, align 4
	br label %29

29:
	%30 = load i32, i32* %5, align 4
	%31 = load i32, i32* @N, align 4
	%32 = icmp sle i32 %30, %31
	br i1 %32, label %33, label %226

33:
	%34 = load i32, i32* %6, align 4
	store i32 1, i32* %6, align 4
	br label %35

35:
	%36 = load i32, i32* %6, align 4
	%37 = load i32, i32* @N, align 4
	%38 = icmp sle i32 %36, %37
	br i1 %38, label %39, label %222

39:
	%40 = load i32, i32* %7, align 4
	store i32 1, i32* %7, align 4
	br label %41

41:
	%42 = load i32, i32* %7, align 4
	%43 = load i32, i32* @N, align 4
	%44 = icmp sle i32 %42, %43
	br i1 %44, label %45, label %218

45:
	%46 = load i32, i32* %2, align 4
	%47 = load i32, i32* %3, align 4
	%48 = icmp ne i32 %46, %47
	br i1 %48, label %49, label %209

49:
	%50 = load i32, i32* %2, align 4
	%51 = load i32, i32* %4, align 4
	%52 = icmp ne i32 %50, %51
	br i1 %52, label %53, label %209

53:
	%54 = load i32, i32* %2, align 4
	%55 = load i32, i32* %5, align 4
	%56 = icmp ne i32 %54, %55
	br i1 %56, label %57, label %209

57:
	%58 = load i32, i32* %2, align 4
	%59 = load i32, i32* %6, align 4
	%60 = icmp ne i32 %58, %59
	br i1 %60, label %61, label %209

61:
	%62 = load i32, i32* %2, align 4
	%63 = load i32, i32* %7, align 4
	%64 = icmp ne i32 %62, %63
	br i1 %64, label %65, label %209

65:
	%66 = load i32, i32* %2, align 4
	%67 = load i32, i32* @h, align 4
	%68 = icmp ne i32 %66, %67
	br i1 %68, label %69, label %209

69:
	%70 = load i32, i32* %2, align 4
	%71 = load i32, i32* @i, align 4
	%72 = icmp ne i32 %70, %71
	br i1 %72, label %73, label %209

73:
	%74 = load i32, i32* %2, align 4
	%75 = load i32, i32* @j, align 4
	%76 = icmp ne i32 %74, %75
	br i1 %76, label %77, label %209

77:
	%78 = load i32, i32* %2, align 4
	%79 = load i32, i32* @k, align 4
	%80 = icmp ne i32 %78, %79
	br i1 %80, label %81, label %209

81:
	%82 = load i32, i32* %3, align 4
	%83 = load i32, i32* %4, align 4
	%84 = icmp ne i32 %82, %83
	br i1 %84, label %85, label %209

85:
	%86 = load i32, i32* %3, align 4
	%87 = load i32, i32* %5, align 4
	%88 = icmp ne i32 %86, %87
	br i1 %88, label %89, label %209

89:
	%90 = load i32, i32* %3, align 4
	%91 = load i32, i32* %6, align 4
	%92 = icmp ne i32 %90, %91
	br i1 %92, label %93, label %209

93:
	%94 = load i32, i32* %3, align 4
	%95 = load i32, i32* %7, align 4
	%96 = icmp ne i32 %94, %95
	br i1 %96, label %97, label %209

97:
	%98 = load i32, i32* %3, align 4
	%99 = load i32, i32* @h, align 4
	%100 = icmp ne i32 %98, %99
	br i1 %100, label %101, label %209

101:
	%102 = load i32, i32* %3, align 4
	%103 = load i32, i32* @i, align 4
	%104 = icmp ne i32 %102, %103
	br i1 %104, label %105, label %209

105:
	%106 = load i32, i32* %3, align 4
	%107 = load i32, i32* @j, align 4
	%108 = icmp ne i32 %106, %107
	br i1 %108, label %109, label %209

109:
	%110 = load i32, i32* %3, align 4
	%111 = load i32, i32* @k, align 4
	%112 = icmp ne i32 %110, %111
	br i1 %112, label %113, label %209

113:
	%114 = load i32, i32* %4, align 4
	%115 = load i32, i32* %5, align 4
	%116 = icmp ne i32 %114, %115
	br i1 %116, label %117, label %209

117:
	%118 = load i32, i32* %4, align 4
	%119 = load i32, i32* %6, align 4
	%120 = icmp ne i32 %118, %119
	br i1 %120, label %121, label %209

121:
	%122 = load i32, i32* %4, align 4
	%123 = load i32, i32* %7, align 4
	%124 = icmp ne i32 %122, %123
	br i1 %124, label %125, label %209

125:
	%126 = load i32, i32* %4, align 4
	%127 = load i32, i32* @h, align 4
	%128 = icmp ne i32 %126, %127
	br i1 %128, label %129, label %209

129:
	%130 = load i32, i32* %4, align 4
	%131 = load i32, i32* @i, align 4
	%132 = icmp ne i32 %130, %131
	br i1 %132, label %133, label %209

133:
	%134 = load i32, i32* %4, align 4
	%135 = load i32, i32* @j, align 4
	%136 = icmp ne i32 %134, %135
	br i1 %136, label %137, label %209

137:
	%138 = load i32, i32* %4, align 4
	%139 = load i32, i32* @k, align 4
	%140 = icmp ne i32 %138, %139
	br i1 %140, label %141, label %209

141:
	%142 = load i32, i32* %5, align 4
	%143 = load i32, i32* %6, align 4
	%144 = icmp ne i32 %142, %143
	br i1 %144, label %145, label %209

145:
	%146 = load i32, i32* %5, align 4
	%147 = load i32, i32* %7, align 4
	%148 = icmp ne i32 %146, %147
	br i1 %148, label %149, label %209

149:
	%150 = load i32, i32* %5, align 4
	%151 = load i32, i32* @h, align 4
	%152 = icmp ne i32 %150, %151
	br i1 %152, label %153, label %209

153:
	%154 = load i32, i32* %5, align 4
	%155 = load i32, i32* @i, align 4
	%156 = icmp ne i32 %154, %155
	br i1 %156, label %157, label %209

157:
	%158 = load i32, i32* %5, align 4
	%159 = load i32, i32* @j, align 4
	%160 = icmp ne i32 %158, %159
	br i1 %160, label %161, label %209

161:
	%162 = load i32, i32* %5, align 4
	%163 = load i32, i32* @k, align 4
	%164 = icmp ne i32 %162, %163
	br i1 %164, label %165, label %209

165:
	%166 = load i32, i32* %6, align 4
	%167 = load i32, i32* %7, align 4
	%168 = icmp ne i32 %166, %167
	br i1 %168, label %169, label %209

169:
	%170 = load i32, i32* %6, align 4
	%171 = load i32, i32* @h, align 4
	%172 = icmp ne i32 %170, %171
	br i1 %172, label %173, label %209

173:
	%174 = load i32, i32* %6, align 4
	%175 = load i32, i32* @i, align 4
	%176 = icmp ne i32 %174, %175
	br i1 %176, label %177, label %209

177:
	%178 = load i32, i32* %6, align 4
	%179 = load i32, i32* @j, align 4
	%180 = icmp ne i32 %178, %179
	br i1 %180, label %181, label %209

181:
	%182 = load i32, i32* %6, align 4
	%183 = load i32, i32* @k, align 4
	%184 = icmp ne i32 %182, %183
	br i1 %184, label %185, label %209

185:
	%186 = load i32, i32* %7, align 4
	%187 = load i32, i32* @h, align 4
	%188 = icmp ne i32 %186, %187
	br i1 %188, label %189, label %209

189:
	%190 = load i32, i32* %7, align 4
	%191 = load i32, i32* @i, align 4
	%192 = icmp ne i32 %190, %191
	br i1 %192, label %193, label %209

193:
	%194 = load i32, i32* %7, align 4
	%195 = load i32, i32* @j, align 4
	%196 = icmp ne i32 %194, %195
	br i1 %196, label %197, label %209

197:
	%198 = load i32, i32* %7, align 4
	%199 = load i32, i32* @k, align 4
	%200 = icmp ne i32 %198, %199
	br i1 %200, label %201, label %209

201:
	%202 = load i32, i32* @i, align 4
	%203 = load i32, i32* @j, align 4
	%204 = icmp ne i32 %202, %203
	br i1 %204, label %205, label %209

205:
	%206 = load i32, i32* @h, align 4
	%207 = load i32, i32* @k, align 4
	%208 = icmp ne i32 %206, %207
	br label %209

209:
	%210 = phi i1 [ 0, %45 ], [ 0, %49 ], [ 0, %53 ], [ 0, %57 ], [ 0, %61 ], [ 0, %65 ], [ 0, %69 ], [ 0, %73 ], [ 0, %77 ], [ 0, %81 ], [ 0, %85 ], [ 0, %89 ], [ 0, %93 ], [ 0, %97 ], [ 0, %101 ], [ 0, %105 ], [ 0, %109 ], [ 0, %113 ], [ 0, %117 ], [ 0, %121 ], [ 0, %125 ], [ 0, %129 ], [ 0, %133 ], [ 0, %137 ], [ 0, %141 ], [ 0, %145 ], [ 0, %149 ], [ 0, %153 ], [ 0, %157 ], [ 0, %161 ], [ 0, %165 ], [ 0, %169 ], [ 0, %173 ], [ 0, %177 ], [ 0, %181 ], [ 0, %185 ], [ 0, %189 ], [ 0, %193 ], [ 0, %197 ], [ 0, %201 ], [ %208, %205 ]
	br i1 %210, label %211, label %214

211:
	%212 = load i32, i32* @total, align 4
	%213 = add i32 %212, 1
	store i32 %213, i32* @total, align 4
	br label %214

214:
	br label %215

215:
	%216 = load i32, i32* %7, align 4
	%217 = add i32 %216, 1
	store i32 %217, i32* %7, align 4
	br label %41

218:
	br label %219

219:
	%220 = load i32, i32* %6, align 4
	%221 = add i32 %220, 1
	store i32 %221, i32* %6, align 4
	br label %35

222:
	br label %223

223:
	%224 = load i32, i32* %5, align 4
	%225 = add i32 %224, 1
	store i32 %225, i32* %5, align 4
	br label %29

226:
	br label %227

227:
	%228 = load i32, i32* %4, align 4
	%229 = add i32 %228, 1
	store i32 %229, i32* %4, align 4
	br label %23

230:
	br label %231

231:
	%232 = load i32, i32* %3, align 4
	%233 = add i32 %232, 1
	store i32 %233, i32* %3, align 4
	br label %17

234:
	br label %235

235:
	%236 = load i32, i32* %2, align 4
	%237 = add i32 %236, 1
	store i32 %237, i32* %2, align 4
	br label %11

238:
	%239 = load i32, i32* @total, align 4
	%240 = call %struct.string* @toString(i32 %239)
	%241 = getelementptr %struct.string, %struct.string* %240, i32 0, i32 1
	%242 = load i8*, i8** %241, align 4
	call void @println(i8* %242)
	store i32 0, i32* %1, align 4
	br label %243

243:
	%244 = load i32, i32* %1, align 4
	ret i32 %244
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

