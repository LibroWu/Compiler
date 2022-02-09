	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	call _GLOBAL_
	addi %0, zero, 0
	sw %0, -12(s0)
	call getInt
	mv %1, a0
	la %2, N
	lw %3, 0(%2)
	la %4, N
	sw %1, 0(%4)
	lw %5, -16(s0)
	addi %6, zero, 1
	sw %6, -16(s0)
	j .LibroBB0_3
.LibroBB0_1: 
	lw %12, -20(s0)
	addi %13, zero, 1
	sw %13, -20(s0)
	j .LibroBB0_7
.LibroBB0_2: 
	lw %294, -16(s0)
	addi %295, zero, 1
	add %295, %294, %295
	sw %295, -16(s0)
	j .LibroBB0_3
.LibroBB0_3: 
	lw %7, -16(s0)
	la %8, N
	lw %9, 0(%8)
	slt %11, %9, %7
	seqz %10, %11
	beqz %10, .LibroBB0_4
	j .LibroBB0_1
.LibroBB0_4: 
	la %296, total
	lw %297, 0(%296)
	mv a0, %297
	call toString
	mv %298, a0
	addi %299, %298, 4
	lw %300, 0(%299)
	mv a0, %300
	call println
	addi %301, zero, 0
	sw %301, -12(s0)
	j .LibroBB0_9
.LibroBB0_5: 
	lw %19, -24(s0)
	addi %20, zero, 1
	sw %20, -24(s0)
	j .LibroBB0_10
.LibroBB0_6: 
	lw %292, -20(s0)
	addi %293, zero, 1
	add %293, %292, %293
	sw %293, -20(s0)
	j .LibroBB0_7
.LibroBB0_7: 
	lw %14, -20(s0)
	la %15, N
	lw %16, 0(%15)
	slt %18, %16, %14
	seqz %17, %18
	beqz %17, .LibroBB0_8
	j .LibroBB0_5
.LibroBB0_8: 
	j .LibroBB0_2
.LibroBB0_9: 
	lw %302, -12(s0)
	mv a0, %302
	ret

.LibroBB0_10: 
	lw %21, -24(s0)
	la %22, N
	lw %23, 0(%22)
	slt %25, %23, %21
	seqz %24, %25
	beqz %24, .LibroBB0_12
	j .LibroBB0_13
.LibroBB0_11: 
	lw %290, -24(s0)
	addi %291, zero, 1
	add %291, %290, %291
	sw %291, -24(s0)
	j .LibroBB0_10
.LibroBB0_12: 
	j .LibroBB0_6
.LibroBB0_13: 
	lw %26, -28(s0)
	addi %27, zero, 1
	sw %27, -28(s0)
	j .LibroBB0_15
.LibroBB0_14: 
	lw %33, -32(s0)
	addi %34, zero, 1
	sw %34, -32(s0)
	j .LibroBB0_18
.LibroBB0_15: 
	lw %28, -28(s0)
	la %29, N
	lw %30, 0(%29)
	slt %32, %30, %28
	seqz %31, %32
	beqz %31, .LibroBB0_16
	j .LibroBB0_14
.LibroBB0_16: 
	j .LibroBB0_11
.LibroBB0_17: 
	lw %288, -28(s0)
	addi %289, zero, 1
	add %289, %288, %289
	sw %289, -28(s0)
	j .LibroBB0_15
.LibroBB0_18: 
	lw %35, -32(s0)
	la %36, N
	lw %37, 0(%36)
	slt %39, %37, %35
	seqz %38, %39
	beqz %38, .LibroBB0_19
	j .LibroBB0_21
.LibroBB0_19: 
	j .LibroBB0_17
.LibroBB0_20: 
	lw %286, -32(s0)
	addi %287, zero, 1
	add %287, %286, %287
	sw %287, -32(s0)
	j .LibroBB0_18
.LibroBB0_21: 
	lw %40, -36(s0)
	addi %41, zero, 1
	sw %41, -36(s0)
	j .LibroBB0_24
.LibroBB0_22: 
	lw %47, -16(s0)
	lw %48, -20(s0)
	xor %50, %47, %48
	snez %49, %50
	addi %240, zero, 0
	mv %239, %240
	beqz %49, .LibroBB0_66
	j .LibroBB0_26
.LibroBB0_23: 
	lw %284, -36(s0)
	addi %285, zero, 1
	add %285, %284, %285
	sw %285, -36(s0)
	j .LibroBB0_24
.LibroBB0_24: 
	lw %42, -36(s0)
	la %43, N
	lw %44, 0(%43)
	slt %46, %44, %42
	seqz %45, %46
	beqz %45, .LibroBB0_25
	j .LibroBB0_22
.LibroBB0_25: 
	j .LibroBB0_20
.LibroBB0_26: 
	lw %51, -16(s0)
	lw %52, -24(s0)
	xor %54, %51, %52
	snez %53, %54
	addi %241, zero, 0
	mv %239, %241
	beqz %53, .LibroBB0_66
	j .LibroBB0_27
.LibroBB0_27: 
	lw %55, -16(s0)
	lw %56, -28(s0)
	xor %58, %55, %56
	snez %57, %58
	addi %242, zero, 0
	mv %239, %242
	beqz %57, .LibroBB0_66
	j .LibroBB0_28
.LibroBB0_28: 
	lw %59, -16(s0)
	lw %60, -32(s0)
	xor %62, %59, %60
	snez %61, %62
	addi %243, zero, 0
	mv %239, %243
	beqz %61, .LibroBB0_66
	j .LibroBB0_29
.LibroBB0_29: 
	lw %63, -16(s0)
	lw %64, -36(s0)
	xor %66, %63, %64
	snez %65, %66
	addi %244, zero, 0
	mv %239, %244
	beqz %65, .LibroBB0_66
	j .LibroBB0_30
.LibroBB0_30: 
	lw %67, -16(s0)
	la %68, h
	lw %69, 0(%68)
	xor %71, %67, %69
	snez %70, %71
	addi %245, zero, 0
	mv %239, %245
	beqz %70, .LibroBB0_66
	j .LibroBB0_31
.LibroBB0_31: 
	lw %72, -16(s0)
	la %73, i
	lw %74, 0(%73)
	xor %76, %72, %74
	snez %75, %76
	addi %246, zero, 0
	mv %239, %246
	beqz %75, .LibroBB0_66
	j .LibroBB0_32
.LibroBB0_32: 
	lw %77, -16(s0)
	la %78, j
	lw %79, 0(%78)
	xor %81, %77, %79
	snez %80, %81
	addi %247, zero, 0
	mv %239, %247
	beqz %80, .LibroBB0_66
	j .LibroBB0_33
.LibroBB0_33: 
	lw %82, -16(s0)
	la %83, k
	lw %84, 0(%83)
	xor %86, %82, %84
	snez %85, %86
	addi %248, zero, 0
	mv %239, %248
	beqz %85, .LibroBB0_66
	j .LibroBB0_34
.LibroBB0_34: 
	lw %87, -20(s0)
	lw %88, -24(s0)
	xor %90, %87, %88
	snez %89, %90
	addi %249, zero, 0
	mv %239, %249
	beqz %89, .LibroBB0_66
	j .LibroBB0_35
.LibroBB0_35: 
	lw %91, -20(s0)
	lw %92, -28(s0)
	xor %94, %91, %92
	snez %93, %94
	addi %250, zero, 0
	mv %239, %250
	beqz %93, .LibroBB0_66
	j .LibroBB0_36
.LibroBB0_36: 
	lw %95, -20(s0)
	lw %96, -32(s0)
	xor %98, %95, %96
	snez %97, %98
	addi %251, zero, 0
	mv %239, %251
	beqz %97, .LibroBB0_66
	j .LibroBB0_37
.LibroBB0_37: 
	lw %99, -20(s0)
	lw %100, -36(s0)
	xor %102, %99, %100
	snez %101, %102
	addi %252, zero, 0
	mv %239, %252
	beqz %101, .LibroBB0_66
	j .LibroBB0_38
.LibroBB0_38: 
	lw %103, -20(s0)
	la %104, h
	lw %105, 0(%104)
	xor %107, %103, %105
	snez %106, %107
	addi %253, zero, 0
	mv %239, %253
	beqz %106, .LibroBB0_66
	j .LibroBB0_39
.LibroBB0_39: 
	lw %108, -20(s0)
	la %109, i
	lw %110, 0(%109)
	xor %112, %108, %110
	snez %111, %112
	addi %254, zero, 0
	mv %239, %254
	beqz %111, .LibroBB0_66
	j .LibroBB0_40
.LibroBB0_40: 
	lw %113, -20(s0)
	la %114, j
	lw %115, 0(%114)
	xor %117, %113, %115
	snez %116, %117
	addi %255, zero, 0
	mv %239, %255
	beqz %116, .LibroBB0_66
	j .LibroBB0_41
.LibroBB0_41: 
	lw %118, -20(s0)
	la %119, k
	lw %120, 0(%119)
	xor %122, %118, %120
	snez %121, %122
	addi %256, zero, 0
	mv %239, %256
	beqz %121, .LibroBB0_66
	j .LibroBB0_42
.LibroBB0_42: 
	lw %123, -24(s0)
	lw %124, -28(s0)
	xor %126, %123, %124
	snez %125, %126
	addi %257, zero, 0
	mv %239, %257
	beqz %125, .LibroBB0_66
	j .LibroBB0_43
.LibroBB0_43: 
	lw %127, -24(s0)
	lw %128, -32(s0)
	xor %130, %127, %128
	snez %129, %130
	addi %258, zero, 0
	mv %239, %258
	beqz %129, .LibroBB0_66
	j .LibroBB0_44
.LibroBB0_44: 
	lw %131, -24(s0)
	lw %132, -36(s0)
	xor %134, %131, %132
	snez %133, %134
	addi %259, zero, 0
	mv %239, %259
	beqz %133, .LibroBB0_66
	j .LibroBB0_45
.LibroBB0_45: 
	lw %135, -24(s0)
	la %136, h
	lw %137, 0(%136)
	xor %139, %135, %137
	snez %138, %139
	addi %260, zero, 0
	mv %239, %260
	beqz %138, .LibroBB0_66
	j .LibroBB0_46
.LibroBB0_46: 
	lw %140, -24(s0)
	la %141, i
	lw %142, 0(%141)
	xor %144, %140, %142
	snez %143, %144
	addi %261, zero, 0
	mv %239, %261
	beqz %143, .LibroBB0_66
	j .LibroBB0_47
.LibroBB0_47: 
	lw %145, -24(s0)
	la %146, j
	lw %147, 0(%146)
	xor %149, %145, %147
	snez %148, %149
	addi %262, zero, 0
	mv %239, %262
	beqz %148, .LibroBB0_66
	j .LibroBB0_48
.LibroBB0_48: 
	lw %150, -24(s0)
	la %151, k
	lw %152, 0(%151)
	xor %154, %150, %152
	snez %153, %154
	addi %263, zero, 0
	mv %239, %263
	beqz %153, .LibroBB0_66
	j .LibroBB0_49
.LibroBB0_49: 
	lw %155, -28(s0)
	lw %156, -32(s0)
	xor %158, %155, %156
	snez %157, %158
	addi %264, zero, 0
	mv %239, %264
	beqz %157, .LibroBB0_66
	j .LibroBB0_50
.LibroBB0_50: 
	lw %159, -28(s0)
	lw %160, -36(s0)
	xor %162, %159, %160
	snez %161, %162
	addi %265, zero, 0
	mv %239, %265
	beqz %161, .LibroBB0_66
	j .LibroBB0_51
.LibroBB0_51: 
	lw %163, -28(s0)
	la %164, h
	lw %165, 0(%164)
	xor %167, %163, %165
	snez %166, %167
	addi %266, zero, 0
	mv %239, %266
	beqz %166, .LibroBB0_66
	j .LibroBB0_52
.LibroBB0_52: 
	lw %168, -28(s0)
	la %169, i
	lw %170, 0(%169)
	xor %172, %168, %170
	snez %171, %172
	addi %267, zero, 0
	mv %239, %267
	beqz %171, .LibroBB0_66
	j .LibroBB0_53
.LibroBB0_53: 
	lw %173, -28(s0)
	la %174, j
	lw %175, 0(%174)
	xor %177, %173, %175
	snez %176, %177
	addi %268, zero, 0
	mv %239, %268
	beqz %176, .LibroBB0_66
	j .LibroBB0_54
.LibroBB0_54: 
	lw %178, -28(s0)
	la %179, k
	lw %180, 0(%179)
	xor %182, %178, %180
	snez %181, %182
	addi %269, zero, 0
	mv %239, %269
	beqz %181, .LibroBB0_66
	j .LibroBB0_55
.LibroBB0_55: 
	lw %183, -32(s0)
	lw %184, -36(s0)
	xor %186, %183, %184
	snez %185, %186
	addi %270, zero, 0
	mv %239, %270
	beqz %185, .LibroBB0_66
	j .LibroBB0_56
.LibroBB0_56: 
	lw %187, -32(s0)
	la %188, h
	lw %189, 0(%188)
	xor %191, %187, %189
	snez %190, %191
	addi %271, zero, 0
	mv %239, %271
	beqz %190, .LibroBB0_66
	j .LibroBB0_57
.LibroBB0_57: 
	lw %192, -32(s0)
	la %193, i
	lw %194, 0(%193)
	xor %196, %192, %194
	snez %195, %196
	addi %272, zero, 0
	mv %239, %272
	beqz %195, .LibroBB0_66
	j .LibroBB0_58
.LibroBB0_58: 
	lw %197, -32(s0)
	la %198, j
	lw %199, 0(%198)
	xor %201, %197, %199
	snez %200, %201
	addi %273, zero, 0
	mv %239, %273
	beqz %200, .LibroBB0_66
	j .LibroBB0_59
.LibroBB0_59: 
	lw %202, -32(s0)
	la %203, k
	lw %204, 0(%203)
	xor %206, %202, %204
	snez %205, %206
	addi %274, zero, 0
	mv %239, %274
	beqz %205, .LibroBB0_66
	j .LibroBB0_60
.LibroBB0_60: 
	lw %207, -36(s0)
	la %208, h
	lw %209, 0(%208)
	xor %211, %207, %209
	snez %210, %211
	addi %275, zero, 0
	mv %239, %275
	beqz %210, .LibroBB0_66
	j .LibroBB0_61
.LibroBB0_61: 
	lw %212, -36(s0)
	la %213, i
	lw %214, 0(%213)
	xor %216, %212, %214
	snez %215, %216
	addi %276, zero, 0
	mv %239, %276
	beqz %215, .LibroBB0_66
	j .LibroBB0_62
.LibroBB0_62: 
	lw %217, -36(s0)
	la %218, j
	lw %219, 0(%218)
	xor %221, %217, %219
	snez %220, %221
	addi %277, zero, 0
	mv %239, %277
	beqz %220, .LibroBB0_66
	j .LibroBB0_63
.LibroBB0_63: 
	lw %222, -36(s0)
	la %223, k
	lw %224, 0(%223)
	xor %226, %222, %224
	snez %225, %226
	addi %278, zero, 0
	mv %239, %278
	beqz %225, .LibroBB0_66
	j .LibroBB0_64
.LibroBB0_64: 
	la %227, i
	lw %228, 0(%227)
	la %229, j
	lw %230, 0(%229)
	xor %232, %228, %230
	snez %231, %232
	addi %279, zero, 0
	mv %239, %279
	beqz %231, .LibroBB0_66
	j .LibroBB0_65
.LibroBB0_65: 
	la %233, h
	lw %234, 0(%233)
	la %235, k
	lw %236, 0(%235)
	xor %238, %234, %236
	snez %237, %238
	mv %239, %237
	j .LibroBB0_66
.LibroBB0_66: 
	beqz %239, .LibroBB0_67
	j .LibroBB0_68
.LibroBB0_67: 
	j .LibroBB0_23
.LibroBB0_68: 
	la %280, total
	lw %281, 0(%280)
	addi %282, zero, 1
	add %282, %281, %282
	la %283, total
	sw %282, 0(%283)
	j .LibroBB0_67
_GLOBAL_: 
	ret

.data
	.type	N,@object
N:
	.word	0
	.size	N, 4

	.type	h,@object
h:
	.word	99
	.size	h, 4

	.type	i,@object
i:
	.word	100
	.size	i, 4

	.type	j,@object
j:
	.word	101
	.size	j, 4

	.type	k,@object
k:
	.word	102
	.size	k, 4

	.type	total,@object
total:
	.word	0
	.size	total, 4

