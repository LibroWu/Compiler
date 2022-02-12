%struct.string = type { i32, i8* }

@.libro.str = constant [14 x i8] c"no solution!\0A\00", align 1

define i8 @check(i32 %0,i32 %1){
	%3 = alloca i8, align 1
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	store i8 0, i8* %3, align 1
	store i32 %0, i32* %4, align 4
	store i32 %1, i32* %5, align 4
	%6 = load i32, i32* %4, align 4
	%7 = load i32, i32* %5, align 4
	%8 = icmp slt i32 %6, %7
	br i1 %8, label %9, label %12

9:
	%10 = load i32, i32* %4, align 4
	%11 = icmp sge i32 %10, 0
	br label %12

12:
	%13 = phi i1 [ 0, %2 ], [ %11, %9 ]
	%14 = zext i1 %13 to i8
	store i8 %14, i8* %3, align 1
	br label %15

15:
	%16 = load i8, i8* %3, align 1
	ret i8 %16
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca i32, align 4
	%8 = alloca i32, align 4
	%9 = alloca i32, align 4
	%10 = alloca i32, align 4
	%11 = alloca i32, align 4
	%12 = alloca i32, align 4
	%13 = alloca i32*, align 4
	%14 = alloca i32*, align 4
	%15 = alloca i32**, align 4
	%16 = alloca i32, align 4
	%17 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%18 = call i32 @getInt()
	%19 = load i32, i32* %2, align 4
	store i32 %18, i32* %2, align 4
	%20 = load i32, i32* %3, align 4
	store i32 0, i32* %3, align 4
	%21 = load i32, i32* %8, align 4
	store i32 0, i32* %8, align 4
	%22 = load i32, i32* %4, align 4
	store i32 0, i32* %4, align 4
	%23 = load i32, i32* %5, align 4
	store i32 0, i32* %5, align 4
	%24 = load i32, i32* %2, align 4
	%25 = sub i32 %24, 1
	%26 = load i32, i32* %6, align 4
	store i32 %25, i32* %6, align 4
	%27 = load i32, i32* %2, align 4
	%28 = sub i32 %27, 1
	%29 = load i32, i32* %7, align 4
	store i32 %28, i32* %7, align 4
	%30 = load i32, i32* %11, align 4
	store i32 0, i32* %11, align 4
	%31 = load i32, i32* %12, align 4
	store i32 0, i32* %12, align 4
	%32 = load i32, i32* %10, align 4
	store i32 0, i32* %10, align 4
	%33 = load i32, i32* %9, align 4
	store i32 0, i32* %9, align 4
	%34 = load i32, i32* %2, align 4
	%35 = load i32, i32* %2, align 4
	%36 = mul i32 %34, %35
	%37 = mul i32 %36, 4
	%38 = add i32 %37, 4
	%39 = call i8* @myNew(i32 %38)
	%40 = bitcast i8* %39 to i32*
	store i32 %36, i32* %40, align 4
	%41 = bitcast i8* %39 to i32*
	%42 = load i32*, i32** %13, align 4
	store i32* %41, i32** %13, align 4
	%43 = load i32, i32* %16, align 4
	store i32 0, i32* %16, align 4
	br label %44

44:
	%45 = load i32, i32* %16, align 4
	%46 = load i32, i32* %2, align 4
	%47 = load i32, i32* %2, align 4
	%48 = mul i32 %46, %47
	%49 = icmp slt i32 %45, %48
	br i1 %49, label %50, label %62

50:
	%51 = load i32*, i32** %13, align 4
	%52 = load i32, i32* %16, align 4
	%53 = mul i32 %52, 4
	%54 = add i32 %53, 4
	%55 = bitcast i32* %51 to i8*
	%56 = getelementptr i8, i8* %55, i32 %54
	%57 = bitcast i8* %56 to i32*
	%58 = load i32, i32* %57, align 4
	store i32 0, i32* %57, align 4
	br label %59

59:
	%60 = load i32, i32* %16, align 4
	%61 = add i32 %60, 1
	store i32 %61, i32* %16, align 4
	br label %44

62:
	%63 = load i32, i32* %2, align 4
	%64 = load i32, i32* %2, align 4
	%65 = mul i32 %63, %64
	%66 = mul i32 %65, 4
	%67 = add i32 %66, 4
	%68 = call i8* @myNew(i32 %67)
	%69 = bitcast i8* %68 to i32*
	store i32 %65, i32* %69, align 4
	%70 = bitcast i8* %68 to i32*
	%71 = load i32*, i32** %14, align 4
	store i32* %70, i32** %14, align 4
	%72 = load i32, i32* %16, align 4
	store i32 0, i32* %16, align 4
	br label %73

73:
	%74 = load i32, i32* %16, align 4
	%75 = load i32, i32* %2, align 4
	%76 = load i32, i32* %2, align 4
	%77 = mul i32 %75, %76
	%78 = icmp slt i32 %74, %77
	br i1 %78, label %79, label %91

79:
	%80 = load i32*, i32** %14, align 4
	%81 = load i32, i32* %16, align 4
	%82 = mul i32 %81, 4
	%83 = add i32 %82, 4
	%84 = bitcast i32* %80 to i8*
	%85 = getelementptr i8, i8* %84, i32 %83
	%86 = bitcast i8* %85 to i32*
	%87 = load i32, i32* %86, align 4
	store i32 0, i32* %86, align 4
	br label %88

88:
	%89 = load i32, i32* %16, align 4
	%90 = add i32 %89, 1
	store i32 %90, i32* %16, align 4
	br label %73

91:
	%92 = load i32, i32* %2, align 4
	%93 = mul i32 %92, 4
	%94 = add i32 %93, 4
	%95 = call i8* @myNew(i32 %94)
	%96 = bitcast i8* %95 to i32*
	store i32 %92, i32* %96, align 4
	%97 = bitcast i8* %95 to i32**
	%98 = load i32**, i32*** %15, align 4
	store i32** %97, i32*** %15, align 4
	%99 = load i32, i32* %16, align 4
	store i32 0, i32* %16, align 4
	br label %100

100:
	%101 = load i32, i32* %16, align 4
	%102 = load i32, i32* %2, align 4
	%103 = icmp slt i32 %101, %102
	br i1 %103, label %104, label %148

104:
	%105 = load i32, i32* %2, align 4
	%106 = mul i32 %105, 4
	%107 = add i32 %106, 4
	%108 = call i8* @myNew(i32 %107)
	%109 = bitcast i8* %108 to i32*
	store i32 %105, i32* %109, align 4
	%110 = bitcast i8* %108 to i32*
	%111 = load i32**, i32*** %15, align 4
	%112 = load i32, i32* %16, align 4
	%113 = mul i32 %112, 4
	%114 = add i32 %113, 4
	%115 = bitcast i32** %111 to i8*
	%116 = getelementptr i8, i8* %115, i32 %114
	%117 = bitcast i8* %116 to i32**
	%118 = load i32*, i32** %117, align 4
	store i32* %110, i32** %117, align 4
	%119 = load i32, i32* %17, align 4
	store i32 0, i32* %17, align 4
	br label %120

120:
	%121 = load i32, i32* %17, align 4
	%122 = load i32, i32* %2, align 4
	%123 = icmp slt i32 %121, %122
	br i1 %123, label %124, label %144

124:
	%125 = sub i32 0, 1
	%126 = load i32**, i32*** %15, align 4
	%127 = load i32, i32* %16, align 4
	%128 = mul i32 %127, 4
	%129 = add i32 %128, 4
	%130 = bitcast i32** %126 to i8*
	%131 = getelementptr i8, i8* %130, i32 %129
	%132 = bitcast i8* %131 to i32**
	%133 = load i32*, i32** %132, align 4
	%134 = load i32, i32* %17, align 4
	%135 = mul i32 %134, 4
	%136 = add i32 %135, 4
	%137 = bitcast i32* %133 to i8*
	%138 = getelementptr i8, i8* %137, i32 %136
	%139 = bitcast i8* %138 to i32*
	%140 = load i32, i32* %139, align 4
	store i32 %125, i32* %139, align 4
	br label %141

141:
	%142 = load i32, i32* %17, align 4
	%143 = add i32 %142, 1
	store i32 %143, i32* %17, align 4
	br label %120

144:
	br label %145

145:
	%146 = load i32, i32* %16, align 4
	%147 = add i32 %146, 1
	store i32 %147, i32* %16, align 4
	br label %100

148:
	%149 = load i32, i32* %4, align 4
	%150 = load i32*, i32** %13, align 4
	%151 = mul i32 0, 4
	%152 = add i32 %151, 4
	%153 = bitcast i32* %150 to i8*
	%154 = getelementptr i8, i8* %153, i32 %152
	%155 = bitcast i8* %154 to i32*
	%156 = load i32, i32* %155, align 4
	store i32 %149, i32* %155, align 4
	%157 = load i32, i32* %5, align 4
	%158 = load i32*, i32** %14, align 4
	%159 = mul i32 0, 4
	%160 = add i32 %159, 4
	%161 = bitcast i32* %158 to i8*
	%162 = getelementptr i8, i8* %161, i32 %160
	%163 = bitcast i8* %162 to i32*
	%164 = load i32, i32* %163, align 4
	store i32 %157, i32* %163, align 4
	%165 = load i32**, i32*** %15, align 4
	%166 = load i32, i32* %4, align 4
	%167 = mul i32 %166, 4
	%168 = add i32 %167, 4
	%169 = bitcast i32** %165 to i8*
	%170 = getelementptr i8, i8* %169, i32 %168
	%171 = bitcast i8* %170 to i32**
	%172 = load i32*, i32** %171, align 4
	%173 = load i32, i32* %5, align 4
	%174 = mul i32 %173, 4
	%175 = add i32 %174, 4
	%176 = bitcast i32* %172 to i8*
	%177 = getelementptr i8, i8* %176, i32 %175
	%178 = bitcast i8* %177 to i32*
	%179 = load i32, i32* %178, align 4
	store i32 0, i32* %178, align 4
	br label %180

180:
	%181 = load i32, i32* %3, align 4
	%182 = load i32, i32* %8, align 4
	%183 = icmp sle i32 %181, %182
	br i1 %183, label %184, label %1030

184:
	%185 = load i32**, i32*** %15, align 4
	%186 = load i32*, i32** %13, align 4
	%187 = load i32, i32* %3, align 4
	%188 = mul i32 %187, 4
	%189 = add i32 %188, 4
	%190 = bitcast i32* %186 to i8*
	%191 = getelementptr i8, i8* %190, i32 %189
	%192 = bitcast i8* %191 to i32*
	%193 = load i32, i32* %192, align 4
	%194 = mul i32 %193, 4
	%195 = add i32 %194, 4
	%196 = bitcast i32** %185 to i8*
	%197 = getelementptr i8, i8* %196, i32 %195
	%198 = bitcast i8* %197 to i32**
	%199 = load i32*, i32** %198, align 4
	%200 = load i32*, i32** %14, align 4
	%201 = load i32, i32* %3, align 4
	%202 = mul i32 %201, 4
	%203 = add i32 %202, 4
	%204 = bitcast i32* %200 to i8*
	%205 = getelementptr i8, i8* %204, i32 %203
	%206 = bitcast i8* %205 to i32*
	%207 = load i32, i32* %206, align 4
	%208 = mul i32 %207, 4
	%209 = add i32 %208, 4
	%210 = bitcast i32* %199 to i8*
	%211 = getelementptr i8, i8* %210, i32 %209
	%212 = bitcast i8* %211 to i32*
	%213 = load i32, i32* %212, align 4
	%214 = load i32, i32* %10, align 4
	store i32 %213, i32* %10, align 4
	%215 = load i32*, i32** %13, align 4
	%216 = load i32, i32* %3, align 4
	%217 = mul i32 %216, 4
	%218 = add i32 %217, 4
	%219 = bitcast i32* %215 to i8*
	%220 = getelementptr i8, i8* %219, i32 %218
	%221 = bitcast i8* %220 to i32*
	%222 = load i32, i32* %221, align 4
	%223 = sub i32 %222, 1
	%224 = load i32, i32* %11, align 4
	store i32 %223, i32* %11, align 4
	%225 = load i32*, i32** %14, align 4
	%226 = load i32, i32* %3, align 4
	%227 = mul i32 %226, 4
	%228 = add i32 %227, 4
	%229 = bitcast i32* %225 to i8*
	%230 = getelementptr i8, i8* %229, i32 %228
	%231 = bitcast i8* %230 to i32*
	%232 = load i32, i32* %231, align 4
	%233 = sub i32 %232, 2
	%234 = load i32, i32* %12, align 4
	store i32 %233, i32* %12, align 4
	%235 = load i32, i32* %11, align 4
	%236 = load i32, i32* %2, align 4
	%237 = call i8 @check(i32 %235, i32 %236)
	%238 = trunc i8 %237 to i1
	br i1 %238, label %239, label %262

239:
	%240 = load i32, i32* %12, align 4
	%241 = load i32, i32* %2, align 4
	%242 = call i8 @check(i32 %240, i32 %241)
	%243 = trunc i8 %242 to i1
	br i1 %243, label %244, label %262

244:
	%245 = load i32**, i32*** %15, align 4
	%246 = load i32, i32* %11, align 4
	%247 = mul i32 %246, 4
	%248 = add i32 %247, 4
	%249 = bitcast i32** %245 to i8*
	%250 = getelementptr i8, i8* %249, i32 %248
	%251 = bitcast i8* %250 to i32**
	%252 = load i32*, i32** %251, align 4
	%253 = load i32, i32* %12, align 4
	%254 = mul i32 %253, 4
	%255 = add i32 %254, 4
	%256 = bitcast i32* %252 to i8*
	%257 = getelementptr i8, i8* %256, i32 %255
	%258 = bitcast i8* %257 to i32*
	%259 = load i32, i32* %258, align 4
	%260 = sub i32 0, 1
	%261 = icmp eq i32 %259, %260
	br label %262

262:
	%263 = phi i1 [ 0, %184 ], [ 0, %239 ], [ %261, %244 ]
	br i1 %263, label %264, label %315

264:
	%265 = load i32, i32* %8, align 4
	%266 = add i32 %265, 1
	%267 = load i32, i32* %8, align 4
	store i32 %266, i32* %8, align 4
	%268 = load i32, i32* %11, align 4
	%269 = load i32*, i32** %13, align 4
	%270 = load i32, i32* %8, align 4
	%271 = mul i32 %270, 4
	%272 = add i32 %271, 4
	%273 = bitcast i32* %269 to i8*
	%274 = getelementptr i8, i8* %273, i32 %272
	%275 = bitcast i8* %274 to i32*
	%276 = load i32, i32* %275, align 4
	store i32 %268, i32* %275, align 4
	%277 = load i32, i32* %12, align 4
	%278 = load i32*, i32** %14, align 4
	%279 = load i32, i32* %8, align 4
	%280 = mul i32 %279, 4
	%281 = add i32 %280, 4
	%282 = bitcast i32* %278 to i8*
	%283 = getelementptr i8, i8* %282, i32 %281
	%284 = bitcast i8* %283 to i32*
	%285 = load i32, i32* %284, align 4
	store i32 %277, i32* %284, align 4
	%286 = load i32, i32* %10, align 4
	%287 = add i32 %286, 1
	%288 = load i32**, i32*** %15, align 4
	%289 = load i32, i32* %11, align 4
	%290 = mul i32 %289, 4
	%291 = add i32 %290, 4
	%292 = bitcast i32** %288 to i8*
	%293 = getelementptr i8, i8* %292, i32 %291
	%294 = bitcast i8* %293 to i32**
	%295 = load i32*, i32** %294, align 4
	%296 = load i32, i32* %12, align 4
	%297 = mul i32 %296, 4
	%298 = add i32 %297, 4
	%299 = bitcast i32* %295 to i8*
	%300 = getelementptr i8, i8* %299, i32 %298
	%301 = bitcast i8* %300 to i32*
	%302 = load i32, i32* %301, align 4
	store i32 %287, i32* %301, align 4
	%303 = load i32, i32* %11, align 4
	%304 = load i32, i32* %6, align 4
	%305 = icmp eq i32 %303, %304
	br i1 %305, label %306, label %310

306:
	%307 = load i32, i32* %12, align 4
	%308 = load i32, i32* %7, align 4
	%309 = icmp eq i32 %307, %308
	br label %310

310:
	%311 = phi i1 [ 0, %264 ], [ %309, %306 ]
	br i1 %311, label %312, label %314

312:
	%313 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %314

314:
	br label %315

315:
	%316 = load i32*, i32** %13, align 4
	%317 = load i32, i32* %3, align 4
	%318 = mul i32 %317, 4
	%319 = add i32 %318, 4
	%320 = bitcast i32* %316 to i8*
	%321 = getelementptr i8, i8* %320, i32 %319
	%322 = bitcast i8* %321 to i32*
	%323 = load i32, i32* %322, align 4
	%324 = sub i32 %323, 1
	%325 = load i32, i32* %11, align 4
	store i32 %324, i32* %11, align 4
	%326 = load i32*, i32** %14, align 4
	%327 = load i32, i32* %3, align 4
	%328 = mul i32 %327, 4
	%329 = add i32 %328, 4
	%330 = bitcast i32* %326 to i8*
	%331 = getelementptr i8, i8* %330, i32 %329
	%332 = bitcast i8* %331 to i32*
	%333 = load i32, i32* %332, align 4
	%334 = add i32 %333, 2
	%335 = load i32, i32* %12, align 4
	store i32 %334, i32* %12, align 4
	%336 = load i32, i32* %11, align 4
	%337 = load i32, i32* %2, align 4
	%338 = call i8 @check(i32 %336, i32 %337)
	%339 = trunc i8 %338 to i1
	br i1 %339, label %340, label %363

340:
	%341 = load i32, i32* %12, align 4
	%342 = load i32, i32* %2, align 4
	%343 = call i8 @check(i32 %341, i32 %342)
	%344 = trunc i8 %343 to i1
	br i1 %344, label %345, label %363

345:
	%346 = load i32**, i32*** %15, align 4
	%347 = load i32, i32* %11, align 4
	%348 = mul i32 %347, 4
	%349 = add i32 %348, 4
	%350 = bitcast i32** %346 to i8*
	%351 = getelementptr i8, i8* %350, i32 %349
	%352 = bitcast i8* %351 to i32**
	%353 = load i32*, i32** %352, align 4
	%354 = load i32, i32* %12, align 4
	%355 = mul i32 %354, 4
	%356 = add i32 %355, 4
	%357 = bitcast i32* %353 to i8*
	%358 = getelementptr i8, i8* %357, i32 %356
	%359 = bitcast i8* %358 to i32*
	%360 = load i32, i32* %359, align 4
	%361 = sub i32 0, 1
	%362 = icmp eq i32 %360, %361
	br label %363

363:
	%364 = phi i1 [ 0, %315 ], [ 0, %340 ], [ %362, %345 ]
	br i1 %364, label %365, label %416

365:
	%366 = load i32, i32* %8, align 4
	%367 = add i32 %366, 1
	%368 = load i32, i32* %8, align 4
	store i32 %367, i32* %8, align 4
	%369 = load i32, i32* %11, align 4
	%370 = load i32*, i32** %13, align 4
	%371 = load i32, i32* %8, align 4
	%372 = mul i32 %371, 4
	%373 = add i32 %372, 4
	%374 = bitcast i32* %370 to i8*
	%375 = getelementptr i8, i8* %374, i32 %373
	%376 = bitcast i8* %375 to i32*
	%377 = load i32, i32* %376, align 4
	store i32 %369, i32* %376, align 4
	%378 = load i32, i32* %12, align 4
	%379 = load i32*, i32** %14, align 4
	%380 = load i32, i32* %8, align 4
	%381 = mul i32 %380, 4
	%382 = add i32 %381, 4
	%383 = bitcast i32* %379 to i8*
	%384 = getelementptr i8, i8* %383, i32 %382
	%385 = bitcast i8* %384 to i32*
	%386 = load i32, i32* %385, align 4
	store i32 %378, i32* %385, align 4
	%387 = load i32, i32* %10, align 4
	%388 = add i32 %387, 1
	%389 = load i32**, i32*** %15, align 4
	%390 = load i32, i32* %11, align 4
	%391 = mul i32 %390, 4
	%392 = add i32 %391, 4
	%393 = bitcast i32** %389 to i8*
	%394 = getelementptr i8, i8* %393, i32 %392
	%395 = bitcast i8* %394 to i32**
	%396 = load i32*, i32** %395, align 4
	%397 = load i32, i32* %12, align 4
	%398 = mul i32 %397, 4
	%399 = add i32 %398, 4
	%400 = bitcast i32* %396 to i8*
	%401 = getelementptr i8, i8* %400, i32 %399
	%402 = bitcast i8* %401 to i32*
	%403 = load i32, i32* %402, align 4
	store i32 %388, i32* %402, align 4
	%404 = load i32, i32* %11, align 4
	%405 = load i32, i32* %6, align 4
	%406 = icmp eq i32 %404, %405
	br i1 %406, label %407, label %411

407:
	%408 = load i32, i32* %12, align 4
	%409 = load i32, i32* %7, align 4
	%410 = icmp eq i32 %408, %409
	br label %411

411:
	%412 = phi i1 [ 0, %365 ], [ %410, %407 ]
	br i1 %412, label %413, label %415

413:
	%414 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %415

415:
	br label %416

416:
	%417 = load i32*, i32** %13, align 4
	%418 = load i32, i32* %3, align 4
	%419 = mul i32 %418, 4
	%420 = add i32 %419, 4
	%421 = bitcast i32* %417 to i8*
	%422 = getelementptr i8, i8* %421, i32 %420
	%423 = bitcast i8* %422 to i32*
	%424 = load i32, i32* %423, align 4
	%425 = add i32 %424, 1
	%426 = load i32, i32* %11, align 4
	store i32 %425, i32* %11, align 4
	%427 = load i32*, i32** %14, align 4
	%428 = load i32, i32* %3, align 4
	%429 = mul i32 %428, 4
	%430 = add i32 %429, 4
	%431 = bitcast i32* %427 to i8*
	%432 = getelementptr i8, i8* %431, i32 %430
	%433 = bitcast i8* %432 to i32*
	%434 = load i32, i32* %433, align 4
	%435 = sub i32 %434, 2
	%436 = load i32, i32* %12, align 4
	store i32 %435, i32* %12, align 4
	%437 = load i32, i32* %11, align 4
	%438 = load i32, i32* %2, align 4
	%439 = call i8 @check(i32 %437, i32 %438)
	%440 = trunc i8 %439 to i1
	br i1 %440, label %441, label %464

441:
	%442 = load i32, i32* %12, align 4
	%443 = load i32, i32* %2, align 4
	%444 = call i8 @check(i32 %442, i32 %443)
	%445 = trunc i8 %444 to i1
	br i1 %445, label %446, label %464

446:
	%447 = load i32**, i32*** %15, align 4
	%448 = load i32, i32* %11, align 4
	%449 = mul i32 %448, 4
	%450 = add i32 %449, 4
	%451 = bitcast i32** %447 to i8*
	%452 = getelementptr i8, i8* %451, i32 %450
	%453 = bitcast i8* %452 to i32**
	%454 = load i32*, i32** %453, align 4
	%455 = load i32, i32* %12, align 4
	%456 = mul i32 %455, 4
	%457 = add i32 %456, 4
	%458 = bitcast i32* %454 to i8*
	%459 = getelementptr i8, i8* %458, i32 %457
	%460 = bitcast i8* %459 to i32*
	%461 = load i32, i32* %460, align 4
	%462 = sub i32 0, 1
	%463 = icmp eq i32 %461, %462
	br label %464

464:
	%465 = phi i1 [ 0, %416 ], [ 0, %441 ], [ %463, %446 ]
	br i1 %465, label %466, label %517

466:
	%467 = load i32, i32* %8, align 4
	%468 = add i32 %467, 1
	%469 = load i32, i32* %8, align 4
	store i32 %468, i32* %8, align 4
	%470 = load i32, i32* %11, align 4
	%471 = load i32*, i32** %13, align 4
	%472 = load i32, i32* %8, align 4
	%473 = mul i32 %472, 4
	%474 = add i32 %473, 4
	%475 = bitcast i32* %471 to i8*
	%476 = getelementptr i8, i8* %475, i32 %474
	%477 = bitcast i8* %476 to i32*
	%478 = load i32, i32* %477, align 4
	store i32 %470, i32* %477, align 4
	%479 = load i32, i32* %12, align 4
	%480 = load i32*, i32** %14, align 4
	%481 = load i32, i32* %8, align 4
	%482 = mul i32 %481, 4
	%483 = add i32 %482, 4
	%484 = bitcast i32* %480 to i8*
	%485 = getelementptr i8, i8* %484, i32 %483
	%486 = bitcast i8* %485 to i32*
	%487 = load i32, i32* %486, align 4
	store i32 %479, i32* %486, align 4
	%488 = load i32, i32* %10, align 4
	%489 = add i32 %488, 1
	%490 = load i32**, i32*** %15, align 4
	%491 = load i32, i32* %11, align 4
	%492 = mul i32 %491, 4
	%493 = add i32 %492, 4
	%494 = bitcast i32** %490 to i8*
	%495 = getelementptr i8, i8* %494, i32 %493
	%496 = bitcast i8* %495 to i32**
	%497 = load i32*, i32** %496, align 4
	%498 = load i32, i32* %12, align 4
	%499 = mul i32 %498, 4
	%500 = add i32 %499, 4
	%501 = bitcast i32* %497 to i8*
	%502 = getelementptr i8, i8* %501, i32 %500
	%503 = bitcast i8* %502 to i32*
	%504 = load i32, i32* %503, align 4
	store i32 %489, i32* %503, align 4
	%505 = load i32, i32* %11, align 4
	%506 = load i32, i32* %6, align 4
	%507 = icmp eq i32 %505, %506
	br i1 %507, label %508, label %512

508:
	%509 = load i32, i32* %12, align 4
	%510 = load i32, i32* %7, align 4
	%511 = icmp eq i32 %509, %510
	br label %512

512:
	%513 = phi i1 [ 0, %466 ], [ %511, %508 ]
	br i1 %513, label %514, label %516

514:
	%515 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %516

516:
	br label %517

517:
	%518 = load i32*, i32** %13, align 4
	%519 = load i32, i32* %3, align 4
	%520 = mul i32 %519, 4
	%521 = add i32 %520, 4
	%522 = bitcast i32* %518 to i8*
	%523 = getelementptr i8, i8* %522, i32 %521
	%524 = bitcast i8* %523 to i32*
	%525 = load i32, i32* %524, align 4
	%526 = add i32 %525, 1
	%527 = load i32, i32* %11, align 4
	store i32 %526, i32* %11, align 4
	%528 = load i32*, i32** %14, align 4
	%529 = load i32, i32* %3, align 4
	%530 = mul i32 %529, 4
	%531 = add i32 %530, 4
	%532 = bitcast i32* %528 to i8*
	%533 = getelementptr i8, i8* %532, i32 %531
	%534 = bitcast i8* %533 to i32*
	%535 = load i32, i32* %534, align 4
	%536 = add i32 %535, 2
	%537 = load i32, i32* %12, align 4
	store i32 %536, i32* %12, align 4
	%538 = load i32, i32* %11, align 4
	%539 = load i32, i32* %2, align 4
	%540 = call i8 @check(i32 %538, i32 %539)
	%541 = trunc i8 %540 to i1
	br i1 %541, label %542, label %565

542:
	%543 = load i32, i32* %12, align 4
	%544 = load i32, i32* %2, align 4
	%545 = call i8 @check(i32 %543, i32 %544)
	%546 = trunc i8 %545 to i1
	br i1 %546, label %547, label %565

547:
	%548 = load i32**, i32*** %15, align 4
	%549 = load i32, i32* %11, align 4
	%550 = mul i32 %549, 4
	%551 = add i32 %550, 4
	%552 = bitcast i32** %548 to i8*
	%553 = getelementptr i8, i8* %552, i32 %551
	%554 = bitcast i8* %553 to i32**
	%555 = load i32*, i32** %554, align 4
	%556 = load i32, i32* %12, align 4
	%557 = mul i32 %556, 4
	%558 = add i32 %557, 4
	%559 = bitcast i32* %555 to i8*
	%560 = getelementptr i8, i8* %559, i32 %558
	%561 = bitcast i8* %560 to i32*
	%562 = load i32, i32* %561, align 4
	%563 = sub i32 0, 1
	%564 = icmp eq i32 %562, %563
	br label %565

565:
	%566 = phi i1 [ 0, %517 ], [ 0, %542 ], [ %564, %547 ]
	br i1 %566, label %567, label %618

567:
	%568 = load i32, i32* %8, align 4
	%569 = add i32 %568, 1
	%570 = load i32, i32* %8, align 4
	store i32 %569, i32* %8, align 4
	%571 = load i32, i32* %11, align 4
	%572 = load i32*, i32** %13, align 4
	%573 = load i32, i32* %8, align 4
	%574 = mul i32 %573, 4
	%575 = add i32 %574, 4
	%576 = bitcast i32* %572 to i8*
	%577 = getelementptr i8, i8* %576, i32 %575
	%578 = bitcast i8* %577 to i32*
	%579 = load i32, i32* %578, align 4
	store i32 %571, i32* %578, align 4
	%580 = load i32, i32* %12, align 4
	%581 = load i32*, i32** %14, align 4
	%582 = load i32, i32* %8, align 4
	%583 = mul i32 %582, 4
	%584 = add i32 %583, 4
	%585 = bitcast i32* %581 to i8*
	%586 = getelementptr i8, i8* %585, i32 %584
	%587 = bitcast i8* %586 to i32*
	%588 = load i32, i32* %587, align 4
	store i32 %580, i32* %587, align 4
	%589 = load i32, i32* %10, align 4
	%590 = add i32 %589, 1
	%591 = load i32**, i32*** %15, align 4
	%592 = load i32, i32* %11, align 4
	%593 = mul i32 %592, 4
	%594 = add i32 %593, 4
	%595 = bitcast i32** %591 to i8*
	%596 = getelementptr i8, i8* %595, i32 %594
	%597 = bitcast i8* %596 to i32**
	%598 = load i32*, i32** %597, align 4
	%599 = load i32, i32* %12, align 4
	%600 = mul i32 %599, 4
	%601 = add i32 %600, 4
	%602 = bitcast i32* %598 to i8*
	%603 = getelementptr i8, i8* %602, i32 %601
	%604 = bitcast i8* %603 to i32*
	%605 = load i32, i32* %604, align 4
	store i32 %590, i32* %604, align 4
	%606 = load i32, i32* %11, align 4
	%607 = load i32, i32* %6, align 4
	%608 = icmp eq i32 %606, %607
	br i1 %608, label %609, label %613

609:
	%610 = load i32, i32* %12, align 4
	%611 = load i32, i32* %7, align 4
	%612 = icmp eq i32 %610, %611
	br label %613

613:
	%614 = phi i1 [ 0, %567 ], [ %612, %609 ]
	br i1 %614, label %615, label %617

615:
	%616 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %617

617:
	br label %618

618:
	%619 = load i32*, i32** %13, align 4
	%620 = load i32, i32* %3, align 4
	%621 = mul i32 %620, 4
	%622 = add i32 %621, 4
	%623 = bitcast i32* %619 to i8*
	%624 = getelementptr i8, i8* %623, i32 %622
	%625 = bitcast i8* %624 to i32*
	%626 = load i32, i32* %625, align 4
	%627 = sub i32 %626, 2
	%628 = load i32, i32* %11, align 4
	store i32 %627, i32* %11, align 4
	%629 = load i32*, i32** %14, align 4
	%630 = load i32, i32* %3, align 4
	%631 = mul i32 %630, 4
	%632 = add i32 %631, 4
	%633 = bitcast i32* %629 to i8*
	%634 = getelementptr i8, i8* %633, i32 %632
	%635 = bitcast i8* %634 to i32*
	%636 = load i32, i32* %635, align 4
	%637 = sub i32 %636, 1
	%638 = load i32, i32* %12, align 4
	store i32 %637, i32* %12, align 4
	%639 = load i32, i32* %11, align 4
	%640 = load i32, i32* %2, align 4
	%641 = call i8 @check(i32 %639, i32 %640)
	%642 = trunc i8 %641 to i1
	br i1 %642, label %643, label %666

643:
	%644 = load i32, i32* %12, align 4
	%645 = load i32, i32* %2, align 4
	%646 = call i8 @check(i32 %644, i32 %645)
	%647 = trunc i8 %646 to i1
	br i1 %647, label %648, label %666

648:
	%649 = load i32**, i32*** %15, align 4
	%650 = load i32, i32* %11, align 4
	%651 = mul i32 %650, 4
	%652 = add i32 %651, 4
	%653 = bitcast i32** %649 to i8*
	%654 = getelementptr i8, i8* %653, i32 %652
	%655 = bitcast i8* %654 to i32**
	%656 = load i32*, i32** %655, align 4
	%657 = load i32, i32* %12, align 4
	%658 = mul i32 %657, 4
	%659 = add i32 %658, 4
	%660 = bitcast i32* %656 to i8*
	%661 = getelementptr i8, i8* %660, i32 %659
	%662 = bitcast i8* %661 to i32*
	%663 = load i32, i32* %662, align 4
	%664 = sub i32 0, 1
	%665 = icmp eq i32 %663, %664
	br label %666

666:
	%667 = phi i1 [ 0, %618 ], [ 0, %643 ], [ %665, %648 ]
	br i1 %667, label %668, label %719

668:
	%669 = load i32, i32* %8, align 4
	%670 = add i32 %669, 1
	%671 = load i32, i32* %8, align 4
	store i32 %670, i32* %8, align 4
	%672 = load i32, i32* %11, align 4
	%673 = load i32*, i32** %13, align 4
	%674 = load i32, i32* %8, align 4
	%675 = mul i32 %674, 4
	%676 = add i32 %675, 4
	%677 = bitcast i32* %673 to i8*
	%678 = getelementptr i8, i8* %677, i32 %676
	%679 = bitcast i8* %678 to i32*
	%680 = load i32, i32* %679, align 4
	store i32 %672, i32* %679, align 4
	%681 = load i32, i32* %12, align 4
	%682 = load i32*, i32** %14, align 4
	%683 = load i32, i32* %8, align 4
	%684 = mul i32 %683, 4
	%685 = add i32 %684, 4
	%686 = bitcast i32* %682 to i8*
	%687 = getelementptr i8, i8* %686, i32 %685
	%688 = bitcast i8* %687 to i32*
	%689 = load i32, i32* %688, align 4
	store i32 %681, i32* %688, align 4
	%690 = load i32, i32* %10, align 4
	%691 = add i32 %690, 1
	%692 = load i32**, i32*** %15, align 4
	%693 = load i32, i32* %11, align 4
	%694 = mul i32 %693, 4
	%695 = add i32 %694, 4
	%696 = bitcast i32** %692 to i8*
	%697 = getelementptr i8, i8* %696, i32 %695
	%698 = bitcast i8* %697 to i32**
	%699 = load i32*, i32** %698, align 4
	%700 = load i32, i32* %12, align 4
	%701 = mul i32 %700, 4
	%702 = add i32 %701, 4
	%703 = bitcast i32* %699 to i8*
	%704 = getelementptr i8, i8* %703, i32 %702
	%705 = bitcast i8* %704 to i32*
	%706 = load i32, i32* %705, align 4
	store i32 %691, i32* %705, align 4
	%707 = load i32, i32* %11, align 4
	%708 = load i32, i32* %6, align 4
	%709 = icmp eq i32 %707, %708
	br i1 %709, label %710, label %714

710:
	%711 = load i32, i32* %12, align 4
	%712 = load i32, i32* %7, align 4
	%713 = icmp eq i32 %711, %712
	br label %714

714:
	%715 = phi i1 [ 0, %668 ], [ %713, %710 ]
	br i1 %715, label %716, label %718

716:
	%717 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %718

718:
	br label %719

719:
	%720 = load i32*, i32** %13, align 4
	%721 = load i32, i32* %3, align 4
	%722 = mul i32 %721, 4
	%723 = add i32 %722, 4
	%724 = bitcast i32* %720 to i8*
	%725 = getelementptr i8, i8* %724, i32 %723
	%726 = bitcast i8* %725 to i32*
	%727 = load i32, i32* %726, align 4
	%728 = sub i32 %727, 2
	%729 = load i32, i32* %11, align 4
	store i32 %728, i32* %11, align 4
	%730 = load i32*, i32** %14, align 4
	%731 = load i32, i32* %3, align 4
	%732 = mul i32 %731, 4
	%733 = add i32 %732, 4
	%734 = bitcast i32* %730 to i8*
	%735 = getelementptr i8, i8* %734, i32 %733
	%736 = bitcast i8* %735 to i32*
	%737 = load i32, i32* %736, align 4
	%738 = add i32 %737, 1
	%739 = load i32, i32* %12, align 4
	store i32 %738, i32* %12, align 4
	%740 = load i32, i32* %11, align 4
	%741 = load i32, i32* %2, align 4
	%742 = call i8 @check(i32 %740, i32 %741)
	%743 = trunc i8 %742 to i1
	br i1 %743, label %744, label %767

744:
	%745 = load i32, i32* %12, align 4
	%746 = load i32, i32* %2, align 4
	%747 = call i8 @check(i32 %745, i32 %746)
	%748 = trunc i8 %747 to i1
	br i1 %748, label %749, label %767

749:
	%750 = load i32**, i32*** %15, align 4
	%751 = load i32, i32* %11, align 4
	%752 = mul i32 %751, 4
	%753 = add i32 %752, 4
	%754 = bitcast i32** %750 to i8*
	%755 = getelementptr i8, i8* %754, i32 %753
	%756 = bitcast i8* %755 to i32**
	%757 = load i32*, i32** %756, align 4
	%758 = load i32, i32* %12, align 4
	%759 = mul i32 %758, 4
	%760 = add i32 %759, 4
	%761 = bitcast i32* %757 to i8*
	%762 = getelementptr i8, i8* %761, i32 %760
	%763 = bitcast i8* %762 to i32*
	%764 = load i32, i32* %763, align 4
	%765 = sub i32 0, 1
	%766 = icmp eq i32 %764, %765
	br label %767

767:
	%768 = phi i1 [ 0, %719 ], [ 0, %744 ], [ %766, %749 ]
	br i1 %768, label %769, label %820

769:
	%770 = load i32, i32* %8, align 4
	%771 = add i32 %770, 1
	%772 = load i32, i32* %8, align 4
	store i32 %771, i32* %8, align 4
	%773 = load i32, i32* %11, align 4
	%774 = load i32*, i32** %13, align 4
	%775 = load i32, i32* %8, align 4
	%776 = mul i32 %775, 4
	%777 = add i32 %776, 4
	%778 = bitcast i32* %774 to i8*
	%779 = getelementptr i8, i8* %778, i32 %777
	%780 = bitcast i8* %779 to i32*
	%781 = load i32, i32* %780, align 4
	store i32 %773, i32* %780, align 4
	%782 = load i32, i32* %12, align 4
	%783 = load i32*, i32** %14, align 4
	%784 = load i32, i32* %8, align 4
	%785 = mul i32 %784, 4
	%786 = add i32 %785, 4
	%787 = bitcast i32* %783 to i8*
	%788 = getelementptr i8, i8* %787, i32 %786
	%789 = bitcast i8* %788 to i32*
	%790 = load i32, i32* %789, align 4
	store i32 %782, i32* %789, align 4
	%791 = load i32, i32* %10, align 4
	%792 = add i32 %791, 1
	%793 = load i32**, i32*** %15, align 4
	%794 = load i32, i32* %11, align 4
	%795 = mul i32 %794, 4
	%796 = add i32 %795, 4
	%797 = bitcast i32** %793 to i8*
	%798 = getelementptr i8, i8* %797, i32 %796
	%799 = bitcast i8* %798 to i32**
	%800 = load i32*, i32** %799, align 4
	%801 = load i32, i32* %12, align 4
	%802 = mul i32 %801, 4
	%803 = add i32 %802, 4
	%804 = bitcast i32* %800 to i8*
	%805 = getelementptr i8, i8* %804, i32 %803
	%806 = bitcast i8* %805 to i32*
	%807 = load i32, i32* %806, align 4
	store i32 %792, i32* %806, align 4
	%808 = load i32, i32* %11, align 4
	%809 = load i32, i32* %6, align 4
	%810 = icmp eq i32 %808, %809
	br i1 %810, label %811, label %815

811:
	%812 = load i32, i32* %12, align 4
	%813 = load i32, i32* %7, align 4
	%814 = icmp eq i32 %812, %813
	br label %815

815:
	%816 = phi i1 [ 0, %769 ], [ %814, %811 ]
	br i1 %816, label %817, label %819

817:
	%818 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %819

819:
	br label %820

820:
	%821 = load i32*, i32** %13, align 4
	%822 = load i32, i32* %3, align 4
	%823 = mul i32 %822, 4
	%824 = add i32 %823, 4
	%825 = bitcast i32* %821 to i8*
	%826 = getelementptr i8, i8* %825, i32 %824
	%827 = bitcast i8* %826 to i32*
	%828 = load i32, i32* %827, align 4
	%829 = add i32 %828, 2
	%830 = load i32, i32* %11, align 4
	store i32 %829, i32* %11, align 4
	%831 = load i32*, i32** %14, align 4
	%832 = load i32, i32* %3, align 4
	%833 = mul i32 %832, 4
	%834 = add i32 %833, 4
	%835 = bitcast i32* %831 to i8*
	%836 = getelementptr i8, i8* %835, i32 %834
	%837 = bitcast i8* %836 to i32*
	%838 = load i32, i32* %837, align 4
	%839 = sub i32 %838, 1
	%840 = load i32, i32* %12, align 4
	store i32 %839, i32* %12, align 4
	%841 = load i32, i32* %11, align 4
	%842 = load i32, i32* %2, align 4
	%843 = call i8 @check(i32 %841, i32 %842)
	%844 = trunc i8 %843 to i1
	br i1 %844, label %845, label %868

845:
	%846 = load i32, i32* %12, align 4
	%847 = load i32, i32* %2, align 4
	%848 = call i8 @check(i32 %846, i32 %847)
	%849 = trunc i8 %848 to i1
	br i1 %849, label %850, label %868

850:
	%851 = load i32**, i32*** %15, align 4
	%852 = load i32, i32* %11, align 4
	%853 = mul i32 %852, 4
	%854 = add i32 %853, 4
	%855 = bitcast i32** %851 to i8*
	%856 = getelementptr i8, i8* %855, i32 %854
	%857 = bitcast i8* %856 to i32**
	%858 = load i32*, i32** %857, align 4
	%859 = load i32, i32* %12, align 4
	%860 = mul i32 %859, 4
	%861 = add i32 %860, 4
	%862 = bitcast i32* %858 to i8*
	%863 = getelementptr i8, i8* %862, i32 %861
	%864 = bitcast i8* %863 to i32*
	%865 = load i32, i32* %864, align 4
	%866 = sub i32 0, 1
	%867 = icmp eq i32 %865, %866
	br label %868

868:
	%869 = phi i1 [ 0, %820 ], [ 0, %845 ], [ %867, %850 ]
	br i1 %869, label %870, label %921

870:
	%871 = load i32, i32* %8, align 4
	%872 = add i32 %871, 1
	%873 = load i32, i32* %8, align 4
	store i32 %872, i32* %8, align 4
	%874 = load i32, i32* %11, align 4
	%875 = load i32*, i32** %13, align 4
	%876 = load i32, i32* %8, align 4
	%877 = mul i32 %876, 4
	%878 = add i32 %877, 4
	%879 = bitcast i32* %875 to i8*
	%880 = getelementptr i8, i8* %879, i32 %878
	%881 = bitcast i8* %880 to i32*
	%882 = load i32, i32* %881, align 4
	store i32 %874, i32* %881, align 4
	%883 = load i32, i32* %12, align 4
	%884 = load i32*, i32** %14, align 4
	%885 = load i32, i32* %8, align 4
	%886 = mul i32 %885, 4
	%887 = add i32 %886, 4
	%888 = bitcast i32* %884 to i8*
	%889 = getelementptr i8, i8* %888, i32 %887
	%890 = bitcast i8* %889 to i32*
	%891 = load i32, i32* %890, align 4
	store i32 %883, i32* %890, align 4
	%892 = load i32, i32* %10, align 4
	%893 = add i32 %892, 1
	%894 = load i32**, i32*** %15, align 4
	%895 = load i32, i32* %11, align 4
	%896 = mul i32 %895, 4
	%897 = add i32 %896, 4
	%898 = bitcast i32** %894 to i8*
	%899 = getelementptr i8, i8* %898, i32 %897
	%900 = bitcast i8* %899 to i32**
	%901 = load i32*, i32** %900, align 4
	%902 = load i32, i32* %12, align 4
	%903 = mul i32 %902, 4
	%904 = add i32 %903, 4
	%905 = bitcast i32* %901 to i8*
	%906 = getelementptr i8, i8* %905, i32 %904
	%907 = bitcast i8* %906 to i32*
	%908 = load i32, i32* %907, align 4
	store i32 %893, i32* %907, align 4
	%909 = load i32, i32* %11, align 4
	%910 = load i32, i32* %6, align 4
	%911 = icmp eq i32 %909, %910
	br i1 %911, label %912, label %916

912:
	%913 = load i32, i32* %12, align 4
	%914 = load i32, i32* %7, align 4
	%915 = icmp eq i32 %913, %914
	br label %916

916:
	%917 = phi i1 [ 0, %870 ], [ %915, %912 ]
	br i1 %917, label %918, label %920

918:
	%919 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %920

920:
	br label %921

921:
	%922 = load i32*, i32** %13, align 4
	%923 = load i32, i32* %3, align 4
	%924 = mul i32 %923, 4
	%925 = add i32 %924, 4
	%926 = bitcast i32* %922 to i8*
	%927 = getelementptr i8, i8* %926, i32 %925
	%928 = bitcast i8* %927 to i32*
	%929 = load i32, i32* %928, align 4
	%930 = add i32 %929, 2
	%931 = load i32, i32* %11, align 4
	store i32 %930, i32* %11, align 4
	%932 = load i32*, i32** %14, align 4
	%933 = load i32, i32* %3, align 4
	%934 = mul i32 %933, 4
	%935 = add i32 %934, 4
	%936 = bitcast i32* %932 to i8*
	%937 = getelementptr i8, i8* %936, i32 %935
	%938 = bitcast i8* %937 to i32*
	%939 = load i32, i32* %938, align 4
	%940 = add i32 %939, 1
	%941 = load i32, i32* %12, align 4
	store i32 %940, i32* %12, align 4
	%942 = load i32, i32* %11, align 4
	%943 = load i32, i32* %2, align 4
	%944 = call i8 @check(i32 %942, i32 %943)
	%945 = trunc i8 %944 to i1
	br i1 %945, label %946, label %969

946:
	%947 = load i32, i32* %12, align 4
	%948 = load i32, i32* %2, align 4
	%949 = call i8 @check(i32 %947, i32 %948)
	%950 = trunc i8 %949 to i1
	br i1 %950, label %951, label %969

951:
	%952 = load i32**, i32*** %15, align 4
	%953 = load i32, i32* %11, align 4
	%954 = mul i32 %953, 4
	%955 = add i32 %954, 4
	%956 = bitcast i32** %952 to i8*
	%957 = getelementptr i8, i8* %956, i32 %955
	%958 = bitcast i8* %957 to i32**
	%959 = load i32*, i32** %958, align 4
	%960 = load i32, i32* %12, align 4
	%961 = mul i32 %960, 4
	%962 = add i32 %961, 4
	%963 = bitcast i32* %959 to i8*
	%964 = getelementptr i8, i8* %963, i32 %962
	%965 = bitcast i8* %964 to i32*
	%966 = load i32, i32* %965, align 4
	%967 = sub i32 0, 1
	%968 = icmp eq i32 %966, %967
	br label %969

969:
	%970 = phi i1 [ 0, %921 ], [ 0, %946 ], [ %968, %951 ]
	br i1 %970, label %971, label %1022

971:
	%972 = load i32, i32* %8, align 4
	%973 = add i32 %972, 1
	%974 = load i32, i32* %8, align 4
	store i32 %973, i32* %8, align 4
	%975 = load i32, i32* %11, align 4
	%976 = load i32*, i32** %13, align 4
	%977 = load i32, i32* %8, align 4
	%978 = mul i32 %977, 4
	%979 = add i32 %978, 4
	%980 = bitcast i32* %976 to i8*
	%981 = getelementptr i8, i8* %980, i32 %979
	%982 = bitcast i8* %981 to i32*
	%983 = load i32, i32* %982, align 4
	store i32 %975, i32* %982, align 4
	%984 = load i32, i32* %12, align 4
	%985 = load i32*, i32** %14, align 4
	%986 = load i32, i32* %8, align 4
	%987 = mul i32 %986, 4
	%988 = add i32 %987, 4
	%989 = bitcast i32* %985 to i8*
	%990 = getelementptr i8, i8* %989, i32 %988
	%991 = bitcast i8* %990 to i32*
	%992 = load i32, i32* %991, align 4
	store i32 %984, i32* %991, align 4
	%993 = load i32, i32* %10, align 4
	%994 = add i32 %993, 1
	%995 = load i32**, i32*** %15, align 4
	%996 = load i32, i32* %11, align 4
	%997 = mul i32 %996, 4
	%998 = add i32 %997, 4
	%999 = bitcast i32** %995 to i8*
	%1000 = getelementptr i8, i8* %999, i32 %998
	%1001 = bitcast i8* %1000 to i32**
	%1002 = load i32*, i32** %1001, align 4
	%1003 = load i32, i32* %12, align 4
	%1004 = mul i32 %1003, 4
	%1005 = add i32 %1004, 4
	%1006 = bitcast i32* %1002 to i8*
	%1007 = getelementptr i8, i8* %1006, i32 %1005
	%1008 = bitcast i8* %1007 to i32*
	%1009 = load i32, i32* %1008, align 4
	store i32 %994, i32* %1008, align 4
	%1010 = load i32, i32* %11, align 4
	%1011 = load i32, i32* %6, align 4
	%1012 = icmp eq i32 %1010, %1011
	br i1 %1012, label %1013, label %1017

1013:
	%1014 = load i32, i32* %12, align 4
	%1015 = load i32, i32* %7, align 4
	%1016 = icmp eq i32 %1014, %1015
	br label %1017

1017:
	%1018 = phi i1 [ 0, %971 ], [ %1016, %1013 ]
	br i1 %1018, label %1019, label %1021

1019:
	%1020 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %1021

1021:
	br label %1022

1022:
	%1023 = load i32, i32* %9, align 4
	%1024 = icmp eq i32 %1023, 1
	br i1 %1024, label %1025, label %1026

1025:
	br label %1030

1026:
	%1027 = load i32, i32* %3, align 4
	%1028 = add i32 %1027, 1
	%1029 = load i32, i32* %3, align 4
	store i32 %1028, i32* %3, align 4
	br label %180

1030:
	%1031 = load i32, i32* %9, align 4
	%1032 = icmp eq i32 %1031, 1
	br i1 %1032, label %1033, label %1052

1033:
	%1034 = load i32**, i32*** %15, align 4
	%1035 = load i32, i32* %6, align 4
	%1036 = mul i32 %1035, 4
	%1037 = add i32 %1036, 4
	%1038 = bitcast i32** %1034 to i8*
	%1039 = getelementptr i8, i8* %1038, i32 %1037
	%1040 = bitcast i8* %1039 to i32**
	%1041 = load i32*, i32** %1040, align 4
	%1042 = load i32, i32* %7, align 4
	%1043 = mul i32 %1042, 4
	%1044 = add i32 %1043, 4
	%1045 = bitcast i32* %1041 to i8*
	%1046 = getelementptr i8, i8* %1045, i32 %1044
	%1047 = bitcast i8* %1046 to i32*
	%1048 = load i32, i32* %1047, align 4
	%1049 = call %struct.string* @toString(i32 %1048)
	%1050 = getelementptr %struct.string, %struct.string* %1049, i32 0, i32 1
	%1051 = load i8*, i8** %1050, align 4
	call void @println(i8* %1051)
	br label %1054

1052:
	%1053 = bitcast [14 x i8]* @.libro.str to i8*
	call void @print(i8* %1053)
	br label %1054

1054:
	store i32 0, i32* %1, align 4
	br label %1055

1055:
	%1056 = load i32, i32* %1, align 4
	ret i32 %1056
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

