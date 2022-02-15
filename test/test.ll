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
	%24 = load i32, i32* %6, align 4
	store i32 0, i32* %6, align 4
	%25 = load i32, i32* %2, align 4
	%26 = sub i32 %25, 1
	%27 = load i32, i32* %7, align 4
	store i32 %26, i32* %7, align 4
	%28 = load i32, i32* %11, align 4
	store i32 0, i32* %11, align 4
	%29 = load i32, i32* %12, align 4
	store i32 0, i32* %12, align 4
	%30 = load i32, i32* %10, align 4
	store i32 0, i32* %10, align 4
	%31 = load i32, i32* %9, align 4
	store i32 0, i32* %9, align 4
	%32 = load i32, i32* %2, align 4
	%33 = load i32, i32* %2, align 4
	%34 = mul i32 %32, %33
	%35 = mul i32 %34, 4
	%36 = add i32 %35, 4
	%37 = call i8* @myNew(i32 %36)
	%38 = bitcast i8* %37 to i32*
	store i32 %34, i32* %38, align 4
	%39 = bitcast i8* %37 to i32*
	%40 = load i32*, i32** %13, align 4
	store i32* %39, i32** %13, align 4
	%41 = load i32, i32* %16, align 4
	store i32 0, i32* %16, align 4
	br label %42

42:
	%43 = load i32, i32* %16, align 4
	%44 = load i32, i32* %2, align 4
	%45 = load i32, i32* %2, align 4
	%46 = mul i32 %44, %45
	%47 = icmp slt i32 %43, %46
	br i1 %47, label %48, label %61

48:
	%49 = load i32*, i32** %13, align 4
	%50 = load i32, i32* %16, align 4
	%51 = mul i32 %50, 4
	%52 = add i32 %51, 4
	%53 = bitcast i32* %49 to i8*
	%54 = getelementptr i8, i8* %53, i32 %52
	%55 = bitcast i8* %54 to i32*
	%56 = load i32, i32* %55, align 4
	store i32 0, i32* %55, align 4
	br label %57

57:
	%58 = load i32, i32* %16, align 4
	%59 = add i32 %58, 1
	store i32 %59, i32* %16, align 4
	%60 = load i32, i32* %16, align 4
	store i32 %58, i32* %16, align 4
	br label %42

61:
	%62 = load i32, i32* %2, align 4
	%63 = load i32, i32* %2, align 4
	%64 = mul i32 %62, %63
	%65 = mul i32 %64, 4
	%66 = add i32 %65, 4
	%67 = call i8* @myNew(i32 %66)
	%68 = bitcast i8* %67 to i32*
	store i32 %64, i32* %68, align 4
	%69 = bitcast i8* %67 to i32*
	%70 = load i32*, i32** %14, align 4
	store i32* %69, i32** %14, align 4
	%71 = load i32, i32* %16, align 4
	store i32 0, i32* %16, align 4
	br label %72

72:
	%73 = load i32, i32* %16, align 4
	%74 = load i32, i32* %2, align 4
	%75 = load i32, i32* %2, align 4
	%76 = mul i32 %74, %75
	%77 = icmp slt i32 %73, %76
	br i1 %77, label %78, label %91

78:
	%79 = load i32*, i32** %14, align 4
	%80 = load i32, i32* %16, align 4
	%81 = mul i32 %80, 4
	%82 = add i32 %81, 4
	%83 = bitcast i32* %79 to i8*
	%84 = getelementptr i8, i8* %83, i32 %82
	%85 = bitcast i8* %84 to i32*
	%86 = load i32, i32* %85, align 4
	store i32 0, i32* %85, align 4
	br label %87

87:
	%88 = load i32, i32* %16, align 4
	%89 = add i32 %88, 1
	store i32 %89, i32* %16, align 4
	%90 = load i32, i32* %16, align 4
	store i32 %88, i32* %16, align 4
	br label %72

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
	br i1 %103, label %104, label %150

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
	br i1 %123, label %124, label %145

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
	%144 = load i32, i32* %17, align 4
	store i32 %142, i32* %17, align 4
	br label %120

145:
	br label %146

146:
	%147 = load i32, i32* %16, align 4
	%148 = add i32 %147, 1
	store i32 %148, i32* %16, align 4
	%149 = load i32, i32* %16, align 4
	store i32 %147, i32* %16, align 4
	br label %100

150:
	%151 = load i32, i32* %4, align 4
	%152 = load i32*, i32** %13, align 4
	%153 = mul i32 0, 4
	%154 = add i32 %153, 4
	%155 = bitcast i32* %152 to i8*
	%156 = getelementptr i8, i8* %155, i32 %154
	%157 = bitcast i8* %156 to i32*
	%158 = load i32, i32* %157, align 4
	store i32 %151, i32* %157, align 4
	%159 = load i32, i32* %5, align 4
	%160 = load i32*, i32** %14, align 4
	%161 = mul i32 0, 4
	%162 = add i32 %161, 4
	%163 = bitcast i32* %160 to i8*
	%164 = getelementptr i8, i8* %163, i32 %162
	%165 = bitcast i8* %164 to i32*
	%166 = load i32, i32* %165, align 4
	store i32 %159, i32* %165, align 4
	%167 = load i32**, i32*** %15, align 4
	%168 = load i32, i32* %4, align 4
	%169 = mul i32 %168, 4
	%170 = add i32 %169, 4
	%171 = bitcast i32** %167 to i8*
	%172 = getelementptr i8, i8* %171, i32 %170
	%173 = bitcast i8* %172 to i32**
	%174 = load i32*, i32** %173, align 4
	%175 = load i32, i32* %5, align 4
	%176 = mul i32 %175, 4
	%177 = add i32 %176, 4
	%178 = bitcast i32* %174 to i8*
	%179 = getelementptr i8, i8* %178, i32 %177
	%180 = bitcast i8* %179 to i32*
	%181 = load i32, i32* %180, align 4
	%182 = icmp eq i32 %181, 0
	br label %183

183:
	%184 = load i32, i32* %3, align 4
	%185 = load i32, i32* %8, align 4
	%186 = icmp sle i32 %184, %185
	br i1 %186, label %187, label %1033

187:
	%188 = load i32**, i32*** %15, align 4
	%189 = load i32*, i32** %13, align 4
	%190 = load i32, i32* %3, align 4
	%191 = mul i32 %190, 4
	%192 = add i32 %191, 4
	%193 = bitcast i32* %189 to i8*
	%194 = getelementptr i8, i8* %193, i32 %192
	%195 = bitcast i8* %194 to i32*
	%196 = load i32, i32* %195, align 4
	%197 = mul i32 %196, 4
	%198 = add i32 %197, 4
	%199 = bitcast i32** %188 to i8*
	%200 = getelementptr i8, i8* %199, i32 %198
	%201 = bitcast i8* %200 to i32**
	%202 = load i32*, i32** %201, align 4
	%203 = load i32*, i32** %14, align 4
	%204 = load i32, i32* %3, align 4
	%205 = mul i32 %204, 4
	%206 = add i32 %205, 4
	%207 = bitcast i32* %203 to i8*
	%208 = getelementptr i8, i8* %207, i32 %206
	%209 = bitcast i8* %208 to i32*
	%210 = load i32, i32* %209, align 4
	%211 = mul i32 %210, 4
	%212 = add i32 %211, 4
	%213 = bitcast i32* %202 to i8*
	%214 = getelementptr i8, i8* %213, i32 %212
	%215 = bitcast i8* %214 to i32*
	%216 = load i32, i32* %215, align 4
	%217 = load i32, i32* %10, align 4
	store i32 %216, i32* %10, align 4
	%218 = load i32*, i32** %13, align 4
	%219 = load i32, i32* %3, align 4
	%220 = mul i32 %219, 4
	%221 = add i32 %220, 4
	%222 = bitcast i32* %218 to i8*
	%223 = getelementptr i8, i8* %222, i32 %221
	%224 = bitcast i8* %223 to i32*
	%225 = load i32, i32* %224, align 4
	%226 = sub i32 %225, 1
	%227 = load i32, i32* %11, align 4
	store i32 %226, i32* %11, align 4
	%228 = load i32*, i32** %14, align 4
	%229 = load i32, i32* %3, align 4
	%230 = mul i32 %229, 4
	%231 = add i32 %230, 4
	%232 = bitcast i32* %228 to i8*
	%233 = getelementptr i8, i8* %232, i32 %231
	%234 = bitcast i8* %233 to i32*
	%235 = load i32, i32* %234, align 4
	%236 = sub i32 %235, 2
	%237 = load i32, i32* %12, align 4
	store i32 %236, i32* %12, align 4
	%238 = load i32, i32* %11, align 4
	%239 = load i32, i32* %2, align 4
	%240 = call i8 @check(i32 %238, i32 %239)
	%241 = trunc i8 %240 to i1
	br i1 %241, label %242, label %265

242:
	%243 = load i32, i32* %12, align 4
	%244 = load i32, i32* %2, align 4
	%245 = call i8 @check(i32 %243, i32 %244)
	%246 = trunc i8 %245 to i1
	br i1 %246, label %247, label %265

247:
	%248 = load i32**, i32*** %15, align 4
	%249 = load i32, i32* %11, align 4
	%250 = mul i32 %249, 4
	%251 = add i32 %250, 4
	%252 = bitcast i32** %248 to i8*
	%253 = getelementptr i8, i8* %252, i32 %251
	%254 = bitcast i8* %253 to i32**
	%255 = load i32*, i32** %254, align 4
	%256 = load i32, i32* %12, align 4
	%257 = mul i32 %256, 4
	%258 = add i32 %257, 4
	%259 = bitcast i32* %255 to i8*
	%260 = getelementptr i8, i8* %259, i32 %258
	%261 = bitcast i8* %260 to i32*
	%262 = load i32, i32* %261, align 4
	%263 = sub i32 0, 1
	%264 = icmp eq i32 %262, %263
	br label %265

265:
	%266 = phi i1 [ 0, %187 ], [ 0, %242 ], [ %264, %247 ]
	br i1 %266, label %267, label %318

267:
	%268 = load i32, i32* %8, align 4
	%269 = add i32 %268, 1
	%270 = load i32, i32* %8, align 4
	store i32 %269, i32* %8, align 4
	%271 = load i32, i32* %11, align 4
	%272 = load i32*, i32** %13, align 4
	%273 = load i32, i32* %8, align 4
	%274 = mul i32 %273, 4
	%275 = add i32 %274, 4
	%276 = bitcast i32* %272 to i8*
	%277 = getelementptr i8, i8* %276, i32 %275
	%278 = bitcast i8* %277 to i32*
	%279 = load i32, i32* %278, align 4
	store i32 %271, i32* %278, align 4
	%280 = load i32, i32* %12, align 4
	%281 = load i32*, i32** %14, align 4
	%282 = load i32, i32* %8, align 4
	%283 = mul i32 %282, 4
	%284 = add i32 %283, 4
	%285 = bitcast i32* %281 to i8*
	%286 = getelementptr i8, i8* %285, i32 %284
	%287 = bitcast i8* %286 to i32*
	%288 = load i32, i32* %287, align 4
	store i32 %280, i32* %287, align 4
	%289 = load i32, i32* %10, align 4
	%290 = add i32 %289, 1
	%291 = load i32**, i32*** %15, align 4
	%292 = load i32, i32* %11, align 4
	%293 = mul i32 %292, 4
	%294 = add i32 %293, 4
	%295 = bitcast i32** %291 to i8*
	%296 = getelementptr i8, i8* %295, i32 %294
	%297 = bitcast i8* %296 to i32**
	%298 = load i32*, i32** %297, align 4
	%299 = load i32, i32* %12, align 4
	%300 = mul i32 %299, 4
	%301 = add i32 %300, 4
	%302 = bitcast i32* %298 to i8*
	%303 = getelementptr i8, i8* %302, i32 %301
	%304 = bitcast i8* %303 to i32*
	%305 = load i32, i32* %304, align 4
	store i32 %290, i32* %304, align 4
	%306 = load i32, i32* %11, align 4
	%307 = load i32, i32* %6, align 4
	%308 = icmp eq i32 %306, %307
	br i1 %308, label %309, label %313

309:
	%310 = load i32, i32* %12, align 4
	%311 = load i32, i32* %7, align 4
	%312 = icmp eq i32 %310, %311
	br label %313

313:
	%314 = phi i1 [ 0, %267 ], [ %312, %309 ]
	br i1 %314, label %315, label %317

315:
	%316 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %317

317:
	br label %318

318:
	%319 = load i32*, i32** %13, align 4
	%320 = load i32, i32* %3, align 4
	%321 = mul i32 %320, 4
	%322 = add i32 %321, 4
	%323 = bitcast i32* %319 to i8*
	%324 = getelementptr i8, i8* %323, i32 %322
	%325 = bitcast i8* %324 to i32*
	%326 = load i32, i32* %325, align 4
	%327 = sub i32 %326, 1
	%328 = load i32, i32* %11, align 4
	store i32 %327, i32* %11, align 4
	%329 = load i32*, i32** %14, align 4
	%330 = load i32, i32* %3, align 4
	%331 = mul i32 %330, 4
	%332 = add i32 %331, 4
	%333 = bitcast i32* %329 to i8*
	%334 = getelementptr i8, i8* %333, i32 %332
	%335 = bitcast i8* %334 to i32*
	%336 = load i32, i32* %335, align 4
	%337 = add i32 %336, 2
	%338 = load i32, i32* %12, align 4
	store i32 %337, i32* %12, align 4
	%339 = load i32, i32* %11, align 4
	%340 = load i32, i32* %2, align 4
	%341 = call i8 @check(i32 %339, i32 %340)
	%342 = trunc i8 %341 to i1
	br i1 %342, label %343, label %366

343:
	%344 = load i32, i32* %12, align 4
	%345 = load i32, i32* %2, align 4
	%346 = call i8 @check(i32 %344, i32 %345)
	%347 = trunc i8 %346 to i1
	br i1 %347, label %348, label %366

348:
	%349 = load i32**, i32*** %15, align 4
	%350 = load i32, i32* %11, align 4
	%351 = mul i32 %350, 4
	%352 = add i32 %351, 4
	%353 = bitcast i32** %349 to i8*
	%354 = getelementptr i8, i8* %353, i32 %352
	%355 = bitcast i8* %354 to i32**
	%356 = load i32*, i32** %355, align 4
	%357 = load i32, i32* %12, align 4
	%358 = mul i32 %357, 4
	%359 = add i32 %358, 4
	%360 = bitcast i32* %356 to i8*
	%361 = getelementptr i8, i8* %360, i32 %359
	%362 = bitcast i8* %361 to i32*
	%363 = load i32, i32* %362, align 4
	%364 = sub i32 0, 1
	%365 = icmp eq i32 %363, %364
	br label %366

366:
	%367 = phi i1 [ 0, %318 ], [ 0, %343 ], [ %365, %348 ]
	br i1 %367, label %368, label %419

368:
	%369 = load i32, i32* %8, align 4
	%370 = add i32 %369, 1
	%371 = load i32, i32* %8, align 4
	store i32 %370, i32* %8, align 4
	%372 = load i32, i32* %11, align 4
	%373 = load i32*, i32** %13, align 4
	%374 = load i32, i32* %8, align 4
	%375 = mul i32 %374, 4
	%376 = add i32 %375, 4
	%377 = bitcast i32* %373 to i8*
	%378 = getelementptr i8, i8* %377, i32 %376
	%379 = bitcast i8* %378 to i32*
	%380 = load i32, i32* %379, align 4
	store i32 %372, i32* %379, align 4
	%381 = load i32, i32* %12, align 4
	%382 = load i32*, i32** %14, align 4
	%383 = load i32, i32* %8, align 4
	%384 = mul i32 %383, 4
	%385 = add i32 %384, 4
	%386 = bitcast i32* %382 to i8*
	%387 = getelementptr i8, i8* %386, i32 %385
	%388 = bitcast i8* %387 to i32*
	%389 = load i32, i32* %388, align 4
	store i32 %381, i32* %388, align 4
	%390 = load i32, i32* %10, align 4
	%391 = add i32 %390, 1
	%392 = load i32**, i32*** %15, align 4
	%393 = load i32, i32* %11, align 4
	%394 = mul i32 %393, 4
	%395 = add i32 %394, 4
	%396 = bitcast i32** %392 to i8*
	%397 = getelementptr i8, i8* %396, i32 %395
	%398 = bitcast i8* %397 to i32**
	%399 = load i32*, i32** %398, align 4
	%400 = load i32, i32* %12, align 4
	%401 = mul i32 %400, 4
	%402 = add i32 %401, 4
	%403 = bitcast i32* %399 to i8*
	%404 = getelementptr i8, i8* %403, i32 %402
	%405 = bitcast i8* %404 to i32*
	%406 = load i32, i32* %405, align 4
	store i32 %391, i32* %405, align 4
	%407 = load i32, i32* %11, align 4
	%408 = load i32, i32* %6, align 4
	%409 = icmp eq i32 %407, %408
	br i1 %409, label %410, label %414

410:
	%411 = load i32, i32* %12, align 4
	%412 = load i32, i32* %7, align 4
	%413 = icmp eq i32 %411, %412
	br label %414

414:
	%415 = phi i1 [ 0, %368 ], [ %413, %410 ]
	br i1 %415, label %416, label %418

416:
	%417 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %418

418:
	br label %419

419:
	%420 = load i32*, i32** %13, align 4
	%421 = load i32, i32* %3, align 4
	%422 = mul i32 %421, 4
	%423 = add i32 %422, 4
	%424 = bitcast i32* %420 to i8*
	%425 = getelementptr i8, i8* %424, i32 %423
	%426 = bitcast i8* %425 to i32*
	%427 = load i32, i32* %426, align 4
	%428 = add i32 %427, 1
	%429 = load i32, i32* %11, align 4
	store i32 %428, i32* %11, align 4
	%430 = load i32*, i32** %14, align 4
	%431 = load i32, i32* %3, align 4
	%432 = mul i32 %431, 4
	%433 = add i32 %432, 4
	%434 = bitcast i32* %430 to i8*
	%435 = getelementptr i8, i8* %434, i32 %433
	%436 = bitcast i8* %435 to i32*
	%437 = load i32, i32* %436, align 4
	%438 = sub i32 %437, 2
	%439 = load i32, i32* %12, align 4
	store i32 %438, i32* %12, align 4
	%440 = load i32, i32* %11, align 4
	%441 = load i32, i32* %2, align 4
	%442 = call i8 @check(i32 %440, i32 %441)
	%443 = trunc i8 %442 to i1
	br i1 %443, label %444, label %467

444:
	%445 = load i32, i32* %12, align 4
	%446 = load i32, i32* %2, align 4
	%447 = call i8 @check(i32 %445, i32 %446)
	%448 = trunc i8 %447 to i1
	br i1 %448, label %449, label %467

449:
	%450 = load i32**, i32*** %15, align 4
	%451 = load i32, i32* %11, align 4
	%452 = mul i32 %451, 4
	%453 = add i32 %452, 4
	%454 = bitcast i32** %450 to i8*
	%455 = getelementptr i8, i8* %454, i32 %453
	%456 = bitcast i8* %455 to i32**
	%457 = load i32*, i32** %456, align 4
	%458 = load i32, i32* %12, align 4
	%459 = mul i32 %458, 4
	%460 = add i32 %459, 4
	%461 = bitcast i32* %457 to i8*
	%462 = getelementptr i8, i8* %461, i32 %460
	%463 = bitcast i8* %462 to i32*
	%464 = load i32, i32* %463, align 4
	%465 = sub i32 0, 1
	%466 = icmp eq i32 %464, %465
	br label %467

467:
	%468 = phi i1 [ 0, %419 ], [ 0, %444 ], [ %466, %449 ]
	br i1 %468, label %469, label %520

469:
	%470 = load i32, i32* %8, align 4
	%471 = add i32 %470, 1
	%472 = load i32, i32* %8, align 4
	store i32 %471, i32* %8, align 4
	%473 = load i32, i32* %11, align 4
	%474 = load i32*, i32** %13, align 4
	%475 = load i32, i32* %8, align 4
	%476 = mul i32 %475, 4
	%477 = add i32 %476, 4
	%478 = bitcast i32* %474 to i8*
	%479 = getelementptr i8, i8* %478, i32 %477
	%480 = bitcast i8* %479 to i32*
	%481 = load i32, i32* %480, align 4
	store i32 %473, i32* %480, align 4
	%482 = load i32, i32* %12, align 4
	%483 = load i32*, i32** %14, align 4
	%484 = load i32, i32* %8, align 4
	%485 = mul i32 %484, 4
	%486 = add i32 %485, 4
	%487 = bitcast i32* %483 to i8*
	%488 = getelementptr i8, i8* %487, i32 %486
	%489 = bitcast i8* %488 to i32*
	%490 = load i32, i32* %489, align 4
	store i32 %482, i32* %489, align 4
	%491 = load i32, i32* %10, align 4
	%492 = add i32 %491, 1
	%493 = load i32**, i32*** %15, align 4
	%494 = load i32, i32* %11, align 4
	%495 = mul i32 %494, 4
	%496 = add i32 %495, 4
	%497 = bitcast i32** %493 to i8*
	%498 = getelementptr i8, i8* %497, i32 %496
	%499 = bitcast i8* %498 to i32**
	%500 = load i32*, i32** %499, align 4
	%501 = load i32, i32* %12, align 4
	%502 = mul i32 %501, 4
	%503 = add i32 %502, 4
	%504 = bitcast i32* %500 to i8*
	%505 = getelementptr i8, i8* %504, i32 %503
	%506 = bitcast i8* %505 to i32*
	%507 = load i32, i32* %506, align 4
	store i32 %492, i32* %506, align 4
	%508 = load i32, i32* %11, align 4
	%509 = load i32, i32* %6, align 4
	%510 = icmp eq i32 %508, %509
	br i1 %510, label %511, label %515

511:
	%512 = load i32, i32* %12, align 4
	%513 = load i32, i32* %7, align 4
	%514 = icmp eq i32 %512, %513
	br label %515

515:
	%516 = phi i1 [ 0, %469 ], [ %514, %511 ]
	br i1 %516, label %517, label %519

517:
	%518 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %519

519:
	br label %520

520:
	%521 = load i32*, i32** %13, align 4
	%522 = load i32, i32* %3, align 4
	%523 = mul i32 %522, 4
	%524 = add i32 %523, 4
	%525 = bitcast i32* %521 to i8*
	%526 = getelementptr i8, i8* %525, i32 %524
	%527 = bitcast i8* %526 to i32*
	%528 = load i32, i32* %527, align 4
	%529 = add i32 %528, 1
	%530 = load i32, i32* %11, align 4
	store i32 %529, i32* %11, align 4
	%531 = load i32*, i32** %14, align 4
	%532 = load i32, i32* %3, align 4
	%533 = mul i32 %532, 4
	%534 = add i32 %533, 4
	%535 = bitcast i32* %531 to i8*
	%536 = getelementptr i8, i8* %535, i32 %534
	%537 = bitcast i8* %536 to i32*
	%538 = load i32, i32* %537, align 4
	%539 = add i32 %538, 2
	%540 = load i32, i32* %12, align 4
	store i32 %539, i32* %12, align 4
	%541 = load i32, i32* %11, align 4
	%542 = load i32, i32* %2, align 4
	%543 = call i8 @check(i32 %541, i32 %542)
	%544 = trunc i8 %543 to i1
	br i1 %544, label %545, label %568

545:
	%546 = load i32, i32* %12, align 4
	%547 = load i32, i32* %2, align 4
	%548 = call i8 @check(i32 %546, i32 %547)
	%549 = trunc i8 %548 to i1
	br i1 %549, label %550, label %568

550:
	%551 = load i32**, i32*** %15, align 4
	%552 = load i32, i32* %11, align 4
	%553 = mul i32 %552, 4
	%554 = add i32 %553, 4
	%555 = bitcast i32** %551 to i8*
	%556 = getelementptr i8, i8* %555, i32 %554
	%557 = bitcast i8* %556 to i32**
	%558 = load i32*, i32** %557, align 4
	%559 = load i32, i32* %12, align 4
	%560 = mul i32 %559, 4
	%561 = add i32 %560, 4
	%562 = bitcast i32* %558 to i8*
	%563 = getelementptr i8, i8* %562, i32 %561
	%564 = bitcast i8* %563 to i32*
	%565 = load i32, i32* %564, align 4
	%566 = sub i32 0, 1
	%567 = icmp eq i32 %565, %566
	br label %568

568:
	%569 = phi i1 [ 0, %520 ], [ 0, %545 ], [ %567, %550 ]
	br i1 %569, label %570, label %621

570:
	%571 = load i32, i32* %8, align 4
	%572 = add i32 %571, 1
	%573 = load i32, i32* %8, align 4
	store i32 %572, i32* %8, align 4
	%574 = load i32, i32* %11, align 4
	%575 = load i32*, i32** %13, align 4
	%576 = load i32, i32* %8, align 4
	%577 = mul i32 %576, 4
	%578 = add i32 %577, 4
	%579 = bitcast i32* %575 to i8*
	%580 = getelementptr i8, i8* %579, i32 %578
	%581 = bitcast i8* %580 to i32*
	%582 = load i32, i32* %581, align 4
	store i32 %574, i32* %581, align 4
	%583 = load i32, i32* %12, align 4
	%584 = load i32*, i32** %14, align 4
	%585 = load i32, i32* %8, align 4
	%586 = mul i32 %585, 4
	%587 = add i32 %586, 4
	%588 = bitcast i32* %584 to i8*
	%589 = getelementptr i8, i8* %588, i32 %587
	%590 = bitcast i8* %589 to i32*
	%591 = load i32, i32* %590, align 4
	store i32 %583, i32* %590, align 4
	%592 = load i32, i32* %10, align 4
	%593 = add i32 %592, 1
	%594 = load i32**, i32*** %15, align 4
	%595 = load i32, i32* %11, align 4
	%596 = mul i32 %595, 4
	%597 = add i32 %596, 4
	%598 = bitcast i32** %594 to i8*
	%599 = getelementptr i8, i8* %598, i32 %597
	%600 = bitcast i8* %599 to i32**
	%601 = load i32*, i32** %600, align 4
	%602 = load i32, i32* %12, align 4
	%603 = mul i32 %602, 4
	%604 = add i32 %603, 4
	%605 = bitcast i32* %601 to i8*
	%606 = getelementptr i8, i8* %605, i32 %604
	%607 = bitcast i8* %606 to i32*
	%608 = load i32, i32* %607, align 4
	store i32 %593, i32* %607, align 4
	%609 = load i32, i32* %11, align 4
	%610 = load i32, i32* %6, align 4
	%611 = icmp eq i32 %609, %610
	br i1 %611, label %612, label %616

612:
	%613 = load i32, i32* %12, align 4
	%614 = load i32, i32* %7, align 4
	%615 = icmp eq i32 %613, %614
	br label %616

616:
	%617 = phi i1 [ 0, %570 ], [ %615, %612 ]
	br i1 %617, label %618, label %620

618:
	%619 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %620

620:
	br label %621

621:
	%622 = load i32*, i32** %13, align 4
	%623 = load i32, i32* %3, align 4
	%624 = mul i32 %623, 4
	%625 = add i32 %624, 4
	%626 = bitcast i32* %622 to i8*
	%627 = getelementptr i8, i8* %626, i32 %625
	%628 = bitcast i8* %627 to i32*
	%629 = load i32, i32* %628, align 4
	%630 = sub i32 %629, 2
	%631 = load i32, i32* %11, align 4
	store i32 %630, i32* %11, align 4
	%632 = load i32*, i32** %14, align 4
	%633 = load i32, i32* %3, align 4
	%634 = mul i32 %633, 4
	%635 = add i32 %634, 4
	%636 = bitcast i32* %632 to i8*
	%637 = getelementptr i8, i8* %636, i32 %635
	%638 = bitcast i8* %637 to i32*
	%639 = load i32, i32* %638, align 4
	%640 = sub i32 %639, 1
	%641 = load i32, i32* %12, align 4
	store i32 %640, i32* %12, align 4
	%642 = load i32, i32* %11, align 4
	%643 = load i32, i32* %2, align 4
	%644 = call i8 @check(i32 %642, i32 %643)
	%645 = trunc i8 %644 to i1
	br i1 %645, label %646, label %669

646:
	%647 = load i32, i32* %12, align 4
	%648 = load i32, i32* %2, align 4
	%649 = call i8 @check(i32 %647, i32 %648)
	%650 = trunc i8 %649 to i1
	br i1 %650, label %651, label %669

651:
	%652 = load i32**, i32*** %15, align 4
	%653 = load i32, i32* %11, align 4
	%654 = mul i32 %653, 4
	%655 = add i32 %654, 4
	%656 = bitcast i32** %652 to i8*
	%657 = getelementptr i8, i8* %656, i32 %655
	%658 = bitcast i8* %657 to i32**
	%659 = load i32*, i32** %658, align 4
	%660 = load i32, i32* %12, align 4
	%661 = mul i32 %660, 4
	%662 = add i32 %661, 4
	%663 = bitcast i32* %659 to i8*
	%664 = getelementptr i8, i8* %663, i32 %662
	%665 = bitcast i8* %664 to i32*
	%666 = load i32, i32* %665, align 4
	%667 = sub i32 0, 1
	%668 = icmp eq i32 %666, %667
	br label %669

669:
	%670 = phi i1 [ 0, %621 ], [ 0, %646 ], [ %668, %651 ]
	br i1 %670, label %671, label %722

671:
	%672 = load i32, i32* %8, align 4
	%673 = add i32 %672, 1
	%674 = load i32, i32* %8, align 4
	store i32 %673, i32* %8, align 4
	%675 = load i32, i32* %11, align 4
	%676 = load i32*, i32** %13, align 4
	%677 = load i32, i32* %8, align 4
	%678 = mul i32 %677, 4
	%679 = add i32 %678, 4
	%680 = bitcast i32* %676 to i8*
	%681 = getelementptr i8, i8* %680, i32 %679
	%682 = bitcast i8* %681 to i32*
	%683 = load i32, i32* %682, align 4
	store i32 %675, i32* %682, align 4
	%684 = load i32, i32* %12, align 4
	%685 = load i32*, i32** %14, align 4
	%686 = load i32, i32* %8, align 4
	%687 = mul i32 %686, 4
	%688 = add i32 %687, 4
	%689 = bitcast i32* %685 to i8*
	%690 = getelementptr i8, i8* %689, i32 %688
	%691 = bitcast i8* %690 to i32*
	%692 = load i32, i32* %691, align 4
	store i32 %684, i32* %691, align 4
	%693 = load i32, i32* %10, align 4
	%694 = add i32 %693, 1
	%695 = load i32**, i32*** %15, align 4
	%696 = load i32, i32* %11, align 4
	%697 = mul i32 %696, 4
	%698 = add i32 %697, 4
	%699 = bitcast i32** %695 to i8*
	%700 = getelementptr i8, i8* %699, i32 %698
	%701 = bitcast i8* %700 to i32**
	%702 = load i32*, i32** %701, align 4
	%703 = load i32, i32* %12, align 4
	%704 = mul i32 %703, 4
	%705 = add i32 %704, 4
	%706 = bitcast i32* %702 to i8*
	%707 = getelementptr i8, i8* %706, i32 %705
	%708 = bitcast i8* %707 to i32*
	%709 = load i32, i32* %708, align 4
	store i32 %694, i32* %708, align 4
	%710 = load i32, i32* %11, align 4
	%711 = load i32, i32* %6, align 4
	%712 = icmp eq i32 %710, %711
	br i1 %712, label %713, label %717

713:
	%714 = load i32, i32* %12, align 4
	%715 = load i32, i32* %7, align 4
	%716 = icmp eq i32 %714, %715
	br label %717

717:
	%718 = phi i1 [ 0, %671 ], [ %716, %713 ]
	br i1 %718, label %719, label %721

719:
	%720 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %721

721:
	br label %722

722:
	%723 = load i32*, i32** %13, align 4
	%724 = load i32, i32* %3, align 4
	%725 = mul i32 %724, 4
	%726 = add i32 %725, 4
	%727 = bitcast i32* %723 to i8*
	%728 = getelementptr i8, i8* %727, i32 %726
	%729 = bitcast i8* %728 to i32*
	%730 = load i32, i32* %729, align 4
	%731 = sub i32 %730, 2
	%732 = load i32, i32* %11, align 4
	store i32 %731, i32* %11, align 4
	%733 = load i32*, i32** %14, align 4
	%734 = load i32, i32* %3, align 4
	%735 = mul i32 %734, 4
	%736 = add i32 %735, 4
	%737 = bitcast i32* %733 to i8*
	%738 = getelementptr i8, i8* %737, i32 %736
	%739 = bitcast i8* %738 to i32*
	%740 = load i32, i32* %739, align 4
	%741 = add i32 %740, 1
	%742 = load i32, i32* %12, align 4
	store i32 %741, i32* %12, align 4
	%743 = load i32, i32* %11, align 4
	%744 = load i32, i32* %2, align 4
	%745 = call i8 @check(i32 %743, i32 %744)
	%746 = trunc i8 %745 to i1
	br i1 %746, label %747, label %770

747:
	%748 = load i32, i32* %12, align 4
	%749 = load i32, i32* %2, align 4
	%750 = call i8 @check(i32 %748, i32 %749)
	%751 = trunc i8 %750 to i1
	br i1 %751, label %752, label %770

752:
	%753 = load i32**, i32*** %15, align 4
	%754 = load i32, i32* %11, align 4
	%755 = mul i32 %754, 4
	%756 = add i32 %755, 4
	%757 = bitcast i32** %753 to i8*
	%758 = getelementptr i8, i8* %757, i32 %756
	%759 = bitcast i8* %758 to i32**
	%760 = load i32*, i32** %759, align 4
	%761 = load i32, i32* %12, align 4
	%762 = mul i32 %761, 4
	%763 = add i32 %762, 4
	%764 = bitcast i32* %760 to i8*
	%765 = getelementptr i8, i8* %764, i32 %763
	%766 = bitcast i8* %765 to i32*
	%767 = load i32, i32* %766, align 4
	%768 = sub i32 0, 1
	%769 = icmp eq i32 %767, %768
	br label %770

770:
	%771 = phi i1 [ 0, %722 ], [ 0, %747 ], [ %769, %752 ]
	br i1 %771, label %772, label %823

772:
	%773 = load i32, i32* %8, align 4
	%774 = add i32 %773, 1
	%775 = load i32, i32* %8, align 4
	store i32 %774, i32* %8, align 4
	%776 = load i32, i32* %11, align 4
	%777 = load i32*, i32** %13, align 4
	%778 = load i32, i32* %8, align 4
	%779 = mul i32 %778, 4
	%780 = add i32 %779, 4
	%781 = bitcast i32* %777 to i8*
	%782 = getelementptr i8, i8* %781, i32 %780
	%783 = bitcast i8* %782 to i32*
	%784 = load i32, i32* %783, align 4
	store i32 %776, i32* %783, align 4
	%785 = load i32, i32* %12, align 4
	%786 = load i32*, i32** %14, align 4
	%787 = load i32, i32* %8, align 4
	%788 = mul i32 %787, 4
	%789 = add i32 %788, 4
	%790 = bitcast i32* %786 to i8*
	%791 = getelementptr i8, i8* %790, i32 %789
	%792 = bitcast i8* %791 to i32*
	%793 = load i32, i32* %792, align 4
	store i32 %785, i32* %792, align 4
	%794 = load i32, i32* %10, align 4
	%795 = add i32 %794, 1
	%796 = load i32**, i32*** %15, align 4
	%797 = load i32, i32* %11, align 4
	%798 = mul i32 %797, 4
	%799 = add i32 %798, 4
	%800 = bitcast i32** %796 to i8*
	%801 = getelementptr i8, i8* %800, i32 %799
	%802 = bitcast i8* %801 to i32**
	%803 = load i32*, i32** %802, align 4
	%804 = load i32, i32* %12, align 4
	%805 = mul i32 %804, 4
	%806 = add i32 %805, 4
	%807 = bitcast i32* %803 to i8*
	%808 = getelementptr i8, i8* %807, i32 %806
	%809 = bitcast i8* %808 to i32*
	%810 = load i32, i32* %809, align 4
	store i32 %795, i32* %809, align 4
	%811 = load i32, i32* %11, align 4
	%812 = load i32, i32* %6, align 4
	%813 = icmp eq i32 %811, %812
	br i1 %813, label %814, label %818

814:
	%815 = load i32, i32* %12, align 4
	%816 = load i32, i32* %7, align 4
	%817 = icmp eq i32 %815, %816
	br label %818

818:
	%819 = phi i1 [ 0, %772 ], [ %817, %814 ]
	br i1 %819, label %820, label %822

820:
	%821 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %822

822:
	br label %823

823:
	%824 = load i32*, i32** %13, align 4
	%825 = load i32, i32* %3, align 4
	%826 = mul i32 %825, 4
	%827 = add i32 %826, 4
	%828 = bitcast i32* %824 to i8*
	%829 = getelementptr i8, i8* %828, i32 %827
	%830 = bitcast i8* %829 to i32*
	%831 = load i32, i32* %830, align 4
	%832 = add i32 %831, 2
	%833 = load i32, i32* %11, align 4
	store i32 %832, i32* %11, align 4
	%834 = load i32*, i32** %14, align 4
	%835 = load i32, i32* %3, align 4
	%836 = mul i32 %835, 4
	%837 = add i32 %836, 4
	%838 = bitcast i32* %834 to i8*
	%839 = getelementptr i8, i8* %838, i32 %837
	%840 = bitcast i8* %839 to i32*
	%841 = load i32, i32* %840, align 4
	%842 = sub i32 %841, 1
	%843 = load i32, i32* %12, align 4
	store i32 %842, i32* %12, align 4
	%844 = load i32, i32* %11, align 4
	%845 = load i32, i32* %2, align 4
	%846 = call i8 @check(i32 %844, i32 %845)
	%847 = trunc i8 %846 to i1
	br i1 %847, label %848, label %871

848:
	%849 = load i32, i32* %12, align 4
	%850 = load i32, i32* %2, align 4
	%851 = call i8 @check(i32 %849, i32 %850)
	%852 = trunc i8 %851 to i1
	br i1 %852, label %853, label %871

853:
	%854 = load i32**, i32*** %15, align 4
	%855 = load i32, i32* %11, align 4
	%856 = mul i32 %855, 4
	%857 = add i32 %856, 4
	%858 = bitcast i32** %854 to i8*
	%859 = getelementptr i8, i8* %858, i32 %857
	%860 = bitcast i8* %859 to i32**
	%861 = load i32*, i32** %860, align 4
	%862 = load i32, i32* %12, align 4
	%863 = mul i32 %862, 4
	%864 = add i32 %863, 4
	%865 = bitcast i32* %861 to i8*
	%866 = getelementptr i8, i8* %865, i32 %864
	%867 = bitcast i8* %866 to i32*
	%868 = load i32, i32* %867, align 4
	%869 = sub i32 0, 1
	%870 = icmp eq i32 %868, %869
	br label %871

871:
	%872 = phi i1 [ 0, %823 ], [ 0, %848 ], [ %870, %853 ]
	br i1 %872, label %873, label %924

873:
	%874 = load i32, i32* %8, align 4
	%875 = add i32 %874, 1
	%876 = load i32, i32* %8, align 4
	store i32 %875, i32* %8, align 4
	%877 = load i32, i32* %11, align 4
	%878 = load i32*, i32** %13, align 4
	%879 = load i32, i32* %8, align 4
	%880 = mul i32 %879, 4
	%881 = add i32 %880, 4
	%882 = bitcast i32* %878 to i8*
	%883 = getelementptr i8, i8* %882, i32 %881
	%884 = bitcast i8* %883 to i32*
	%885 = load i32, i32* %884, align 4
	store i32 %877, i32* %884, align 4
	%886 = load i32, i32* %12, align 4
	%887 = load i32*, i32** %14, align 4
	%888 = load i32, i32* %8, align 4
	%889 = mul i32 %888, 4
	%890 = add i32 %889, 4
	%891 = bitcast i32* %887 to i8*
	%892 = getelementptr i8, i8* %891, i32 %890
	%893 = bitcast i8* %892 to i32*
	%894 = load i32, i32* %893, align 4
	store i32 %886, i32* %893, align 4
	%895 = load i32, i32* %10, align 4
	%896 = add i32 %895, 1
	%897 = load i32**, i32*** %15, align 4
	%898 = load i32, i32* %11, align 4
	%899 = mul i32 %898, 4
	%900 = add i32 %899, 4
	%901 = bitcast i32** %897 to i8*
	%902 = getelementptr i8, i8* %901, i32 %900
	%903 = bitcast i8* %902 to i32**
	%904 = load i32*, i32** %903, align 4
	%905 = load i32, i32* %12, align 4
	%906 = mul i32 %905, 4
	%907 = add i32 %906, 4
	%908 = bitcast i32* %904 to i8*
	%909 = getelementptr i8, i8* %908, i32 %907
	%910 = bitcast i8* %909 to i32*
	%911 = load i32, i32* %910, align 4
	store i32 %896, i32* %910, align 4
	%912 = load i32, i32* %11, align 4
	%913 = load i32, i32* %6, align 4
	%914 = icmp eq i32 %912, %913
	br i1 %914, label %915, label %919

915:
	%916 = load i32, i32* %12, align 4
	%917 = load i32, i32* %7, align 4
	%918 = icmp eq i32 %916, %917
	br label %919

919:
	%920 = phi i1 [ 0, %873 ], [ %918, %915 ]
	br i1 %920, label %921, label %923

921:
	%922 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %923

923:
	br label %924

924:
	%925 = load i32*, i32** %13, align 4
	%926 = load i32, i32* %3, align 4
	%927 = mul i32 %926, 4
	%928 = add i32 %927, 4
	%929 = bitcast i32* %925 to i8*
	%930 = getelementptr i8, i8* %929, i32 %928
	%931 = bitcast i8* %930 to i32*
	%932 = load i32, i32* %931, align 4
	%933 = add i32 %932, 2
	%934 = load i32, i32* %11, align 4
	store i32 %933, i32* %11, align 4
	%935 = load i32*, i32** %14, align 4
	%936 = load i32, i32* %3, align 4
	%937 = mul i32 %936, 4
	%938 = add i32 %937, 4
	%939 = bitcast i32* %935 to i8*
	%940 = getelementptr i8, i8* %939, i32 %938
	%941 = bitcast i8* %940 to i32*
	%942 = load i32, i32* %941, align 4
	%943 = add i32 %942, 1
	%944 = load i32, i32* %12, align 4
	store i32 %943, i32* %12, align 4
	%945 = load i32, i32* %11, align 4
	%946 = load i32, i32* %2, align 4
	%947 = call i8 @check(i32 %945, i32 %946)
	%948 = trunc i8 %947 to i1
	br i1 %948, label %949, label %972

949:
	%950 = load i32, i32* %12, align 4
	%951 = load i32, i32* %2, align 4
	%952 = call i8 @check(i32 %950, i32 %951)
	%953 = trunc i8 %952 to i1
	br i1 %953, label %954, label %972

954:
	%955 = load i32**, i32*** %15, align 4
	%956 = load i32, i32* %11, align 4
	%957 = mul i32 %956, 4
	%958 = add i32 %957, 4
	%959 = bitcast i32** %955 to i8*
	%960 = getelementptr i8, i8* %959, i32 %958
	%961 = bitcast i8* %960 to i32**
	%962 = load i32*, i32** %961, align 4
	%963 = load i32, i32* %12, align 4
	%964 = mul i32 %963, 4
	%965 = add i32 %964, 4
	%966 = bitcast i32* %962 to i8*
	%967 = getelementptr i8, i8* %966, i32 %965
	%968 = bitcast i8* %967 to i32*
	%969 = load i32, i32* %968, align 4
	%970 = sub i32 0, 1
	%971 = icmp eq i32 %969, %970
	br label %972

972:
	%973 = phi i1 [ 0, %924 ], [ 0, %949 ], [ %971, %954 ]
	br i1 %973, label %974, label %1025

974:
	%975 = load i32, i32* %8, align 4
	%976 = add i32 %975, 1
	%977 = load i32, i32* %8, align 4
	store i32 %976, i32* %8, align 4
	%978 = load i32, i32* %11, align 4
	%979 = load i32*, i32** %13, align 4
	%980 = load i32, i32* %8, align 4
	%981 = mul i32 %980, 4
	%982 = add i32 %981, 4
	%983 = bitcast i32* %979 to i8*
	%984 = getelementptr i8, i8* %983, i32 %982
	%985 = bitcast i8* %984 to i32*
	%986 = load i32, i32* %985, align 4
	store i32 %978, i32* %985, align 4
	%987 = load i32, i32* %12, align 4
	%988 = load i32*, i32** %14, align 4
	%989 = load i32, i32* %8, align 4
	%990 = mul i32 %989, 4
	%991 = add i32 %990, 4
	%992 = bitcast i32* %988 to i8*
	%993 = getelementptr i8, i8* %992, i32 %991
	%994 = bitcast i8* %993 to i32*
	%995 = load i32, i32* %994, align 4
	store i32 %987, i32* %994, align 4
	%996 = load i32, i32* %10, align 4
	%997 = add i32 %996, 1
	%998 = load i32**, i32*** %15, align 4
	%999 = load i32, i32* %11, align 4
	%1000 = mul i32 %999, 4
	%1001 = add i32 %1000, 4
	%1002 = bitcast i32** %998 to i8*
	%1003 = getelementptr i8, i8* %1002, i32 %1001
	%1004 = bitcast i8* %1003 to i32**
	%1005 = load i32*, i32** %1004, align 4
	%1006 = load i32, i32* %12, align 4
	%1007 = mul i32 %1006, 4
	%1008 = add i32 %1007, 4
	%1009 = bitcast i32* %1005 to i8*
	%1010 = getelementptr i8, i8* %1009, i32 %1008
	%1011 = bitcast i8* %1010 to i32*
	%1012 = load i32, i32* %1011, align 4
	store i32 %997, i32* %1011, align 4
	%1013 = load i32, i32* %11, align 4
	%1014 = load i32, i32* %6, align 4
	%1015 = icmp eq i32 %1013, %1014
	br i1 %1015, label %1016, label %1020

1016:
	%1017 = load i32, i32* %12, align 4
	%1018 = load i32, i32* %7, align 4
	%1019 = icmp eq i32 %1017, %1018
	br label %1020

1020:
	%1021 = phi i1 [ 0, %974 ], [ %1019, %1016 ]
	br i1 %1021, label %1022, label %1024

1022:
	%1023 = load i32, i32* %9, align 4
	store i32 1, i32* %9, align 4
	br label %1024

1024:
	br label %1025

1025:
	%1026 = load i32, i32* %9, align 4
	%1027 = icmp eq i32 %1026, 1
	br i1 %1027, label %1028, label %1029

1028:
	br label %1033

1029:
	%1030 = load i32, i32* %3, align 4
	%1031 = add i32 %1030, 1
	%1032 = load i32, i32* %3, align 4
	store i32 %1031, i32* %3, align 4
	br label %183

1033:
	%1034 = load i32, i32* %9, align 4
	%1035 = icmp eq i32 %1034, 1
	br i1 %1035, label %1036, label %1055

1036:
	%1037 = load i32**, i32*** %15, align 4
	%1038 = load i32, i32* %6, align 4
	%1039 = mul i32 %1038, 4
	%1040 = add i32 %1039, 4
	%1041 = bitcast i32** %1037 to i8*
	%1042 = getelementptr i8, i8* %1041, i32 %1040
	%1043 = bitcast i8* %1042 to i32**
	%1044 = load i32*, i32** %1043, align 4
	%1045 = load i32, i32* %7, align 4
	%1046 = mul i32 %1045, 4
	%1047 = add i32 %1046, 4
	%1048 = bitcast i32* %1044 to i8*
	%1049 = getelementptr i8, i8* %1048, i32 %1047
	%1050 = bitcast i8* %1049 to i32*
	%1051 = load i32, i32* %1050, align 4
	%1052 = call %struct.string* @toString(i32 %1051)
	%1053 = getelementptr %struct.string, %struct.string* %1052, i32 0, i32 1
	%1054 = load i8*, i8** %1053, align 4
	call void @println(i8* %1054)
	br label %1057

1055:
	%1056 = bitcast [14 x i8]* @.libro.str to i8*
	call void @print(i8* %1056)
	br label %1057

1057:
	store i32 0, i32* %1, align 4
	br label %1058

1058:
	%1059 = load i32, i32* %1, align 4
	ret i32 %1059
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

