	.text
	.globl main
	.p2align	2
	.type	main,@function
digt: 
	addi sp, sp, -452
	sw s0, 444(sp)
	sw ra, 448(sp)
	addi s0, sp, 452
	mv t2, a0
	sw t2, 0(sp)
	addi t2, zero, 0
	sw t2, 12(sp)
	lw t0, 0(sp)
	mv t2, t0
	sw t2, 8(sp)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 16(sp)
	addi t2, zero, 0
	sw t2, 24(sp)
	lw t0, 16(sp)
	lw t1, 24(sp)
	xor t2, t0, t1
	sw t2, 28(sp)
	lw t0, 28(sp)
	bnez t0, .LibroBB0_1
	j .LibroBB0_2
.LibroBB0_1: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 32(sp)
	addi t2, zero, 1
	sw t2, 40(sp)
	lw t0, 32(sp)
	lw t1, 40(sp)
	xor t2, t0, t1
	sw t2, 44(sp)
	lw t0, 44(sp)
	bnez t0, .LibroBB0_4
	j .LibroBB0_3
.LibroBB0_2: 
	addi t2, zero, 12
	sw t2, 420(sp)
	lw t0, 420(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 424(sp)
	lw t0, 424(sp)
	addi t2, t0, 0
	sw t2, 428(sp)
	addi t2, zero, 1
	sw t2, 432(sp)
	lw t0, 428(sp)
	lw t1, 432(sp)
	sw t1, 0(t0)
	la t2, .libro.str
	sw t2, 436(sp)
	lw t0, 424(sp)
	addi t2, t0, 4
	sw t2, 440(sp)
	lw t0, 440(sp)
	lw t1, 436(sp)
	sw t1, 0(t0)
	lw t0, 424(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_3: 
	addi t2, zero, 12
	sw t2, 396(sp)
	lw t0, 396(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 400(sp)
	lw t0, 400(sp)
	addi t2, t0, 0
	sw t2, 404(sp)
	addi t2, zero, 1
	sw t2, 408(sp)
	lw t0, 404(sp)
	lw t1, 408(sp)
	sw t1, 0(t0)
	la t2, .libro.str.1
	sw t2, 412(sp)
	lw t0, 400(sp)
	addi t2, t0, 4
	sw t2, 416(sp)
	lw t0, 416(sp)
	lw t1, 412(sp)
	sw t1, 0(t0)
	lw t0, 400(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_4: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 48(sp)
	addi t2, zero, 2
	sw t2, 56(sp)
	lw t0, 48(sp)
	lw t1, 56(sp)
	xor t2, t0, t1
	sw t2, 60(sp)
	lw t0, 60(sp)
	bnez t0, .LibroBB0_5
	j .LibroBB0_6
.LibroBB0_5: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 92(sp)
	addi t2, zero, 3
	sw t2, 100(sp)
	lw t0, 92(sp)
	lw t1, 100(sp)
	xor t2, t0, t1
	sw t2, 104(sp)
	lw t0, 104(sp)
	bnez t0, .LibroBB0_7
	j .LibroBB0_8
.LibroBB0_6: 
	addi t2, zero, 12
	sw t2, 64(sp)
	lw t0, 64(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 68(sp)
	lw t0, 68(sp)
	addi t2, t0, 0
	sw t2, 72(sp)
	addi t2, zero, 1
	sw t2, 76(sp)
	lw t0, 72(sp)
	lw t1, 76(sp)
	sw t1, 0(t0)
	la t2, .libro.str.2
	sw t2, 80(sp)
	lw t0, 68(sp)
	addi t2, t0, 4
	sw t2, 84(sp)
	lw t0, 84(sp)
	lw t1, 80(sp)
	sw t1, 0(t0)
	lw t0, 68(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_7: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 132(sp)
	addi t2, zero, 4
	sw t2, 140(sp)
	lw t0, 132(sp)
	lw t1, 140(sp)
	xor t2, t0, t1
	sw t2, 144(sp)
	lw t0, 144(sp)
	bnez t0, .LibroBB0_10
	j .LibroBB0_11
.LibroBB0_8: 
	addi t2, zero, 12
	sw t2, 108(sp)
	lw t0, 108(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 112(sp)
	lw t0, 112(sp)
	addi t2, t0, 0
	sw t2, 116(sp)
	addi t2, zero, 1
	sw t2, 120(sp)
	lw t0, 116(sp)
	lw t1, 120(sp)
	sw t1, 0(t0)
	la t2, .libro.str.3
	sw t2, 124(sp)
	lw t0, 112(sp)
	addi t2, t0, 4
	sw t2, 128(sp)
	lw t0, 128(sp)
	lw t1, 124(sp)
	sw t1, 0(t0)
	lw t0, 112(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_9: 
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 88(sp)
	lw t0, 88(sp)
	mv a0, t0
	lw s0, 444(sp)
	lw ra, 448(sp)
	addi sp, sp, 452
	ret
.LibroBB0_10: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 148(sp)
	addi t2, zero, 5
	sw t2, 156(sp)
	lw t0, 148(sp)
	lw t1, 156(sp)
	xor t2, t0, t1
	sw t2, 160(sp)
	lw t0, 160(sp)
	bnez t0, .LibroBB0_12
	j .LibroBB0_13
.LibroBB0_11: 
	addi t2, zero, 12
	sw t2, 372(sp)
	lw t0, 372(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 376(sp)
	lw t0, 376(sp)
	addi t2, t0, 0
	sw t2, 380(sp)
	addi t2, zero, 1
	sw t2, 384(sp)
	lw t0, 380(sp)
	lw t1, 384(sp)
	sw t1, 0(t0)
	la t2, .libro.str.4
	sw t2, 388(sp)
	lw t0, 376(sp)
	addi t2, t0, 4
	sw t2, 392(sp)
	lw t0, 392(sp)
	lw t1, 388(sp)
	sw t1, 0(t0)
	lw t0, 376(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_12: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 164(sp)
	addi t2, zero, 6
	sw t2, 172(sp)
	lw t0, 164(sp)
	lw t1, 172(sp)
	xor t2, t0, t1
	sw t2, 176(sp)
	lw t0, 176(sp)
	bnez t0, .LibroBB0_15
	j .LibroBB0_14
.LibroBB0_13: 
	addi t2, zero, 12
	sw t2, 348(sp)
	lw t0, 348(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 352(sp)
	lw t0, 352(sp)
	addi t2, t0, 0
	sw t2, 356(sp)
	addi t2, zero, 1
	sw t2, 360(sp)
	lw t0, 356(sp)
	lw t1, 360(sp)
	sw t1, 0(t0)
	la t2, .libro.str.5
	sw t2, 364(sp)
	lw t0, 352(sp)
	addi t2, t0, 4
	sw t2, 368(sp)
	lw t0, 368(sp)
	lw t1, 364(sp)
	sw t1, 0(t0)
	lw t0, 352(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_14: 
	addi t2, zero, 12
	sw t2, 324(sp)
	lw t0, 324(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 328(sp)
	lw t0, 328(sp)
	addi t2, t0, 0
	sw t2, 332(sp)
	addi t2, zero, 1
	sw t2, 336(sp)
	lw t0, 332(sp)
	lw t1, 336(sp)
	sw t1, 0(t0)
	la t2, .libro.str.6
	sw t2, 340(sp)
	lw t0, 328(sp)
	addi t2, t0, 4
	sw t2, 344(sp)
	lw t0, 344(sp)
	lw t1, 340(sp)
	sw t1, 0(t0)
	lw t0, 328(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_15: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 180(sp)
	addi t2, zero, 7
	sw t2, 188(sp)
	lw t0, 180(sp)
	lw t1, 188(sp)
	xor t2, t0, t1
	sw t2, 192(sp)
	lw t0, 192(sp)
	bnez t0, .LibroBB0_16
	j .LibroBB0_17
.LibroBB0_16: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 220(sp)
	addi t2, zero, 8
	sw t2, 228(sp)
	lw t0, 220(sp)
	lw t1, 228(sp)
	xor t2, t0, t1
	sw t2, 232(sp)
	lw t0, 232(sp)
	bnez t0, .LibroBB0_19
	j .LibroBB0_18
.LibroBB0_17: 
	addi t2, zero, 12
	sw t2, 196(sp)
	lw t0, 196(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 200(sp)
	lw t0, 200(sp)
	addi t2, t0, 0
	sw t2, 204(sp)
	addi t2, zero, 1
	sw t2, 208(sp)
	lw t0, 204(sp)
	lw t1, 208(sp)
	sw t1, 0(t0)
	la t2, .libro.str.7
	sw t2, 212(sp)
	lw t0, 200(sp)
	addi t2, t0, 4
	sw t2, 216(sp)
	lw t0, 216(sp)
	lw t1, 212(sp)
	sw t1, 0(t0)
	lw t0, 200(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_18: 
	addi t2, zero, 12
	sw t2, 236(sp)
	lw t0, 236(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 240(sp)
	lw t0, 240(sp)
	addi t2, t0, 0
	sw t2, 244(sp)
	addi t2, zero, 1
	sw t2, 248(sp)
	lw t0, 244(sp)
	lw t1, 248(sp)
	sw t1, 0(t0)
	la t2, .libro.str.8
	sw t2, 252(sp)
	lw t0, 240(sp)
	addi t2, t0, 4
	sw t2, 256(sp)
	lw t0, 256(sp)
	lw t1, 252(sp)
	sw t1, 0(t0)
	lw t0, 240(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_19: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 260(sp)
	addi t2, zero, 9
	sw t2, 268(sp)
	lw t0, 260(sp)
	lw t1, 268(sp)
	xor t2, t0, t1
	sw t2, 272(sp)
	lw t0, 272(sp)
	bnez t0, .LibroBB0_21
	j .LibroBB0_20
.LibroBB0_20: 
	addi t2, zero, 12
	sw t2, 300(sp)
	lw t0, 300(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 304(sp)
	lw t0, 304(sp)
	addi t2, t0, 0
	sw t2, 308(sp)
	addi t2, zero, 1
	sw t2, 312(sp)
	lw t0, 308(sp)
	lw t1, 312(sp)
	sw t1, 0(t0)
	la t2, .libro.str.9
	sw t2, 316(sp)
	lw t0, 304(sp)
	addi t2, t0, 4
	sw t2, 320(sp)
	lw t0, 320(sp)
	lw t1, 316(sp)
	sw t1, 0(t0)
	lw t0, 304(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
.LibroBB0_21: 
	addi t2, zero, 12
	sw t2, 276(sp)
	lw t0, 276(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 280(sp)
	lw t0, 280(sp)
	addi t2, t0, 0
	sw t2, 284(sp)
	addi t2, zero, 1
	sw t2, 288(sp)
	lw t0, 284(sp)
	lw t1, 288(sp)
	sw t1, 0(t0)
	la t2, .libro.str.10
	sw t2, 292(sp)
	lw t0, 280(sp)
	addi t2, t0, 4
	sw t2, 296(sp)
	lw t0, 296(sp)
	lw t1, 292(sp)
	sw t1, 0(t0)
	lw t0, 280(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB0_9
_global_var_init.0: 
	addi sp, sp, -24
	sw s0, 16(sp)
	sw ra, 20(sp)
	addi s0, sp, 24
	addi t2, zero, 1028
	sw t2, 0(sp)
	lw t0, 0(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 4(sp)
	addi t2, zero, 256
	sw t2, 8(sp)
	lw t0, 4(sp)
	lw t1, 8(sp)
	sw t1, 0(t0)
	la t2, s
	sw t2, 12(sp)
	lw t0, 12(sp)
	lw t1, 4(sp)
	sw t1, 0(t0)
	lw s0, 16(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
_global_var_init.1: 
	addi sp, sp, -24
	sw s0, 16(sp)
	sw ra, 20(sp)
	addi s0, sp, 24
	addi t2, zero, 1028
	sw t2, 0(sp)
	lw t0, 0(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 4(sp)
	addi t2, zero, 256
	sw t2, 8(sp)
	lw t0, 4(sp)
	lw t1, 8(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 12(sp)
	lw t0, 12(sp)
	lw t1, 4(sp)
	sw t1, 0(t0)
	lw s0, 16(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
s2: 
	addi sp, sp, -192
	sw s0, 184(sp)
	sw ra, 188(sp)
	addi s0, sp, 192
	mv t2, a0
	sw t2, 0(sp)
	addi t2, zero, 0
	sw t2, 12(sp)
	lw t0, 0(sp)
	mv t2, t0
	sw t2, 8(sp)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 16(sp)
	addi t2, zero, 9
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t1, 16(sp)
	slt t2, t0, t1
	sw t2, 28(sp)
	lw t0, 28(sp)
	bnez t0, .LibroBB3_1
	j .LibroBB3_2
.LibroBB3_1: 
	addi t2, zero, 12
	sw t2, 100(sp)
	lw t0, 100(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 104(sp)
	lw t0, 104(sp)
	addi t2, t0, 0
	sw t2, 108(sp)
	addi t2, zero, 2
	sw t2, 112(sp)
	lw t0, 108(sp)
	lw t1, 112(sp)
	sw t1, 0(t0)
	la t2, .libro.str.13
	sw t2, 116(sp)
	lw t0, 104(sp)
	addi t2, t0, 4
	sw t2, 120(sp)
	lw t0, 120(sp)
	lw t1, 116(sp)
	sw t1, 0(t0)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 124(sp)
	addi t2, zero, 10
	sw t2, 128(sp)
	lw t0, 124(sp)
	lw t1, 128(sp)
	div t2, t0, t1
	sw t2, 128(sp)
	lw t0, 128(sp)
	mv a0, t0
	call digt
	mv t2, a0
	sw t2, 132(sp)
	lw t0, 104(sp)
	mv a0, t0
	lw t0, 132(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 136(sp)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 140(sp)
	addi t2, zero, 10
	sw t2, 144(sp)
	lw t0, 140(sp)
	lw t1, 144(sp)
	rem t2, t0, t1
	sw t2, 144(sp)
	lw t0, 144(sp)
	mv a0, t0
	call digt
	mv t2, a0
	sw t2, 148(sp)
	lw t0, 136(sp)
	mv a0, t0
	lw t0, 148(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 152(sp)
	addi t2, zero, 12
	sw t2, 156(sp)
	lw t0, 156(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 160(sp)
	lw t0, 160(sp)
	addi t2, t0, 0
	sw t2, 164(sp)
	addi t2, zero, 2
	sw t2, 168(sp)
	lw t0, 164(sp)
	lw t1, 168(sp)
	sw t1, 0(t0)
	la t2, .libro.str.14
	sw t2, 172(sp)
	lw t0, 160(sp)
	addi t2, t0, 4
	sw t2, 176(sp)
	lw t0, 176(sp)
	lw t1, 172(sp)
	sw t1, 0(t0)
	lw t0, 152(sp)
	mv a0, t0
	lw t0, 160(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 180(sp)
	lw t0, 180(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB3_3
.LibroBB3_2: 
	addi t2, zero, 12
	sw t2, 32(sp)
	lw t0, 32(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 36(sp)
	lw t0, 36(sp)
	addi t2, t0, 0
	sw t2, 40(sp)
	addi t2, zero, 2
	sw t2, 44(sp)
	lw t0, 40(sp)
	lw t1, 44(sp)
	sw t1, 0(t0)
	la t2, .libro.str.11
	sw t2, 48(sp)
	lw t0, 36(sp)
	addi t2, t0, 4
	sw t2, 52(sp)
	lw t0, 52(sp)
	lw t1, 48(sp)
	sw t1, 0(t0)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 56(sp)
	lw t0, 56(sp)
	mv a0, t0
	call digt
	mv t2, a0
	sw t2, 60(sp)
	lw t0, 36(sp)
	mv a0, t0
	lw t0, 60(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 64(sp)
	addi t2, zero, 12
	sw t2, 68(sp)
	lw t0, 68(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 72(sp)
	lw t0, 72(sp)
	addi t2, t0, 0
	sw t2, 76(sp)
	addi t2, zero, 2
	sw t2, 80(sp)
	lw t0, 76(sp)
	lw t1, 80(sp)
	sw t1, 0(t0)
	la t2, .libro.str.12
	sw t2, 84(sp)
	lw t0, 72(sp)
	addi t2, t0, 4
	sw t2, 88(sp)
	lw t0, 88(sp)
	lw t1, 84(sp)
	sw t1, 0(t0)
	lw t0, 64(sp)
	mv a0, t0
	lw t0, 72(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 92(sp)
	lw t0, 92(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB3_3
.LibroBB3_3: 
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 96(sp)
	lw t0, 96(sp)
	mv a0, t0
	lw s0, 184(sp)
	lw ra, 188(sp)
	addi sp, sp, 192
	ret
c2: 
	addi sp, sp, -192
	sw s0, 184(sp)
	sw ra, 188(sp)
	addi s0, sp, 192
	mv t2, a0
	sw t2, 0(sp)
	addi t2, zero, 0
	sw t2, 12(sp)
	lw t0, 0(sp)
	mv t2, t0
	sw t2, 8(sp)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 16(sp)
	addi t2, zero, 9
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t1, 16(sp)
	slt t2, t0, t1
	sw t2, 28(sp)
	lw t0, 28(sp)
	bnez t0, .LibroBB4_1
	j .LibroBB4_2
.LibroBB4_1: 
	addi t2, zero, 12
	sw t2, 32(sp)
	lw t0, 32(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 36(sp)
	lw t0, 36(sp)
	addi t2, t0, 0
	sw t2, 40(sp)
	addi t2, zero, 2
	sw t2, 44(sp)
	lw t0, 40(sp)
	lw t1, 44(sp)
	sw t1, 0(t0)
	la t2, .libro.str.17
	sw t2, 48(sp)
	lw t0, 36(sp)
	addi t2, t0, 4
	sw t2, 52(sp)
	lw t0, 52(sp)
	lw t1, 48(sp)
	sw t1, 0(t0)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 56(sp)
	addi t2, zero, 10
	sw t2, 60(sp)
	lw t0, 56(sp)
	lw t1, 60(sp)
	div t2, t0, t1
	sw t2, 60(sp)
	lw t0, 60(sp)
	mv a0, t0
	call digt
	mv t2, a0
	sw t2, 64(sp)
	lw t0, 36(sp)
	mv a0, t0
	lw t0, 64(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 68(sp)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 72(sp)
	addi t2, zero, 10
	sw t2, 76(sp)
	lw t0, 72(sp)
	lw t1, 76(sp)
	rem t2, t0, t1
	sw t2, 76(sp)
	lw t0, 76(sp)
	mv a0, t0
	call digt
	mv t2, a0
	sw t2, 80(sp)
	lw t0, 68(sp)
	mv a0, t0
	lw t0, 80(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 84(sp)
	addi t2, zero, 12
	sw t2, 88(sp)
	lw t0, 88(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 92(sp)
	lw t0, 92(sp)
	addi t2, t0, 0
	sw t2, 96(sp)
	addi t2, zero, 2
	sw t2, 100(sp)
	lw t0, 96(sp)
	lw t1, 100(sp)
	sw t1, 0(t0)
	la t2, .libro.str.18
	sw t2, 104(sp)
	lw t0, 92(sp)
	addi t2, t0, 4
	sw t2, 108(sp)
	lw t0, 108(sp)
	lw t1, 104(sp)
	sw t1, 0(t0)
	lw t0, 84(sp)
	mv a0, t0
	lw t0, 92(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 112(sp)
	lw t0, 112(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB4_3
.LibroBB4_2: 
	addi t2, zero, 12
	sw t2, 120(sp)
	lw t0, 120(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 124(sp)
	lw t0, 124(sp)
	addi t2, t0, 0
	sw t2, 128(sp)
	addi t2, zero, 2
	sw t2, 132(sp)
	lw t0, 128(sp)
	lw t1, 132(sp)
	sw t1, 0(t0)
	la t2, .libro.str.15
	sw t2, 136(sp)
	lw t0, 124(sp)
	addi t2, t0, 4
	sw t2, 140(sp)
	lw t0, 140(sp)
	lw t1, 136(sp)
	sw t1, 0(t0)
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 144(sp)
	lw t0, 144(sp)
	mv a0, t0
	call digt
	mv t2, a0
	sw t2, 148(sp)
	lw t0, 124(sp)
	mv a0, t0
	lw t0, 148(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 152(sp)
	addi t2, zero, 12
	sw t2, 156(sp)
	lw t0, 156(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 160(sp)
	lw t0, 160(sp)
	addi t2, t0, 0
	sw t2, 164(sp)
	addi t2, zero, 2
	sw t2, 168(sp)
	lw t0, 164(sp)
	lw t1, 168(sp)
	sw t1, 0(t0)
	la t2, .libro.str.16
	sw t2, 172(sp)
	lw t0, 160(sp)
	addi t2, t0, 4
	sw t2, 176(sp)
	lw t0, 176(sp)
	lw t1, 172(sp)
	sw t1, 0(t0)
	lw t0, 152(sp)
	mv a0, t0
	lw t0, 160(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 180(sp)
	lw t0, 180(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB4_3
.LibroBB4_3: 
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 116(sp)
	lw t0, 116(sp)
	mv a0, t0
	lw s0, 184(sp)
	lw ra, 188(sp)
	addi sp, sp, 192
	ret
_global_var_init.2: 
	addi sp, sp, -36
	sw s0, 28(sp)
	sw ra, 32(sp)
	addi s0, sp, 36
	addi t2, zero, 12
	sw t2, 0(sp)
	lw t0, 0(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 4(sp)
	lw t0, 4(sp)
	addi t2, t0, 0
	sw t2, 8(sp)
	addi t2, zero, 1
	sw t2, 12(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	sw t1, 0(t0)
	la t2, .libro.str.19
	sw t2, 16(sp)
	lw t0, 4(sp)
	addi t2, t0, 4
	sw t2, 20(sp)
	lw t0, 20(sp)
	lw t1, 16(sp)
	sw t1, 0(t0)
	la t2, co
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t1, 4(sp)
	sw t1, 0(t0)
	lw s0, 28(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
_global_var_init.3: 
	addi sp, sp, -36
	sw s0, 28(sp)
	sw ra, 32(sp)
	addi s0, sp, 36
	addi t2, zero, 12
	sw t2, 0(sp)
	lw t0, 0(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 4(sp)
	lw t0, 4(sp)
	addi t2, t0, 0
	sw t2, 8(sp)
	addi t2, zero, 1
	sw t2, 12(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	sw t1, 0(t0)
	la t2, .libro.str.20
	sw t2, 16(sp)
	lw t0, 4(sp)
	addi t2, t0, 4
	sw t2, 20(sp)
	lw t0, 20(sp)
	lw t1, 16(sp)
	sw t1, 0(t0)
	la t2, a2q
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t1, 4(sp)
	sw t1, 0(t0)
	lw s0, 28(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
_global_var_init.4: 
	addi sp, sp, -36
	sw s0, 28(sp)
	sw ra, 32(sp)
	addi s0, sp, 36
	addi t2, zero, 12
	sw t2, 0(sp)
	lw t0, 0(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 4(sp)
	lw t0, 4(sp)
	addi t2, t0, 0
	sw t2, 8(sp)
	addi t2, zero, 1
	sw t2, 12(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	sw t1, 0(t0)
	la t2, .libro.str.21
	sw t2, 16(sp)
	lw t0, 4(sp)
	addi t2, t0, 4
	sw t2, 20(sp)
	lw t0, 20(sp)
	lw t1, 16(sp)
	sw t1, 0(t0)
	la t2, a2b
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t1, 4(sp)
	sw t1, 0(t0)
	lw s0, 28(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
main: 
	lui t6, 1048571
	addi t6, t6, -1556
	add sp, sp, t6
	lui t6, 5
	add t6, sp, t6
	sw s0, 1548(t6)
	lui t6, 5
	add t6, sp, t6
	sw ra, 1552(t6)
	lui t6, 5
	addi t6, t6, 1556
	add s0, sp, t6
	call _GLOBAL_
	addi t2, zero, 0
	sw t2, 8(sp)
	addi t2, zero, 0
	sw t2, 12(sp)
	lw t0, 12(sp)
	mv t2, t0
	sw t2, 4(sp)
	la t2, c
	sw t2, 16(sp)
	lw t0, 16(sp)
	lw t2, 0(t0)
	sw t2, 20(sp)
	addi t2, zero, 0
	sw t2, 24(sp)
	addi t2, zero, 4
	sw t2, 28(sp)
	lw t0, 24(sp)
	lw t1, 28(sp)
	mul t2, t0, t1
	sw t2, 24(sp)
	lw t0, 24(sp)
	addi t2, t0, 4
	sw t2, 32(sp)
	lw t0, 20(sp)
	lw t1, 32(sp)
	add t2, t0, t1
	sw t2, 36(sp)
	addi t2, zero, 12
	sw t2, 44(sp)
	lw t0, 44(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 48(sp)
	lw t0, 48(sp)
	addi t2, t0, 0
	sw t2, 52(sp)
	addi t2, zero, 1
	sw t2, 56(sp)
	lw t0, 52(sp)
	lw t1, 56(sp)
	sw t1, 0(t0)
	la t2, .libro.str.22
	sw t2, 60(sp)
	lw t0, 48(sp)
	addi t2, t0, 4
	sw t2, 64(sp)
	lw t0, 64(sp)
	lw t1, 60(sp)
	sw t1, 0(t0)
	lw t0, 36(sp)
	lw t1, 48(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 68(sp)
	lw t0, 68(sp)
	lw t2, 0(t0)
	sw t2, 72(sp)
	addi t2, zero, 1
	sw t2, 76(sp)
	addi t2, zero, 4
	sw t2, 80(sp)
	lw t0, 76(sp)
	lw t1, 80(sp)
	mul t2, t0, t1
	sw t2, 76(sp)
	lw t0, 76(sp)
	addi t2, t0, 4
	sw t2, 84(sp)
	lw t0, 72(sp)
	lw t1, 84(sp)
	add t2, t0, t1
	sw t2, 88(sp)
	addi t2, zero, 12
	sw t2, 96(sp)
	lw t0, 96(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 100(sp)
	lw t0, 100(sp)
	addi t2, t0, 0
	sw t2, 104(sp)
	addi t2, zero, 1
	sw t2, 108(sp)
	lw t0, 104(sp)
	lw t1, 108(sp)
	sw t1, 0(t0)
	la t2, .libro.str.23
	sw t2, 112(sp)
	lw t0, 100(sp)
	addi t2, t0, 4
	sw t2, 116(sp)
	lw t0, 116(sp)
	lw t1, 112(sp)
	sw t1, 0(t0)
	lw t0, 88(sp)
	lw t1, 100(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 120(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 124(sp)
	addi t2, zero, 2
	sw t2, 128(sp)
	addi t2, zero, 4
	sw t2, 132(sp)
	lw t0, 128(sp)
	lw t1, 132(sp)
	mul t2, t0, t1
	sw t2, 128(sp)
	lw t0, 128(sp)
	addi t2, t0, 4
	sw t2, 136(sp)
	lw t0, 124(sp)
	lw t1, 136(sp)
	add t2, t0, t1
	sw t2, 140(sp)
	addi t2, zero, 12
	sw t2, 148(sp)
	lw t0, 148(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 152(sp)
	lw t0, 152(sp)
	addi t2, t0, 0
	sw t2, 156(sp)
	addi t2, zero, 1
	sw t2, 160(sp)
	lw t0, 156(sp)
	lw t1, 160(sp)
	sw t1, 0(t0)
	la t2, .libro.str.24
	sw t2, 164(sp)
	lw t0, 152(sp)
	addi t2, t0, 4
	sw t2, 168(sp)
	lw t0, 168(sp)
	lw t1, 164(sp)
	sw t1, 0(t0)
	lw t0, 140(sp)
	lw t1, 152(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 172(sp)
	lw t0, 172(sp)
	lw t2, 0(t0)
	sw t2, 176(sp)
	addi t2, zero, 3
	sw t2, 180(sp)
	addi t2, zero, 4
	sw t2, 184(sp)
	lw t0, 180(sp)
	lw t1, 184(sp)
	mul t2, t0, t1
	sw t2, 180(sp)
	lw t0, 180(sp)
	addi t2, t0, 4
	sw t2, 188(sp)
	lw t0, 176(sp)
	lw t1, 188(sp)
	add t2, t0, t1
	sw t2, 192(sp)
	addi t2, zero, 12
	sw t2, 200(sp)
	lw t0, 200(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 204(sp)
	lw t0, 204(sp)
	addi t2, t0, 0
	sw t2, 208(sp)
	addi t2, zero, 1
	sw t2, 212(sp)
	lw t0, 208(sp)
	lw t1, 212(sp)
	sw t1, 0(t0)
	la t2, .libro.str.25
	sw t2, 216(sp)
	lw t0, 204(sp)
	addi t2, t0, 4
	sw t2, 220(sp)
	lw t0, 220(sp)
	lw t1, 216(sp)
	sw t1, 0(t0)
	lw t0, 192(sp)
	lw t1, 204(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 224(sp)
	lw t0, 224(sp)
	lw t2, 0(t0)
	sw t2, 228(sp)
	addi t2, zero, 4
	sw t2, 232(sp)
	addi t2, zero, 4
	sw t2, 236(sp)
	lw t0, 232(sp)
	lw t1, 236(sp)
	mul t2, t0, t1
	sw t2, 232(sp)
	lw t0, 232(sp)
	addi t2, t0, 4
	sw t2, 240(sp)
	lw t0, 228(sp)
	lw t1, 240(sp)
	add t2, t0, t1
	sw t2, 244(sp)
	addi t2, zero, 12
	sw t2, 252(sp)
	lw t0, 252(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 256(sp)
	lw t0, 256(sp)
	addi t2, t0, 0
	sw t2, 260(sp)
	addi t2, zero, 1
	sw t2, 264(sp)
	lw t0, 260(sp)
	lw t1, 264(sp)
	sw t1, 0(t0)
	la t2, .libro.str.26
	sw t2, 268(sp)
	lw t0, 256(sp)
	addi t2, t0, 4
	sw t2, 272(sp)
	lw t0, 272(sp)
	lw t1, 268(sp)
	sw t1, 0(t0)
	lw t0, 244(sp)
	lw t1, 256(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 276(sp)
	lw t0, 276(sp)
	lw t2, 0(t0)
	sw t2, 280(sp)
	addi t2, zero, 5
	sw t2, 284(sp)
	addi t2, zero, 4
	sw t2, 288(sp)
	lw t0, 284(sp)
	lw t1, 288(sp)
	mul t2, t0, t1
	sw t2, 284(sp)
	lw t0, 284(sp)
	addi t2, t0, 4
	sw t2, 292(sp)
	lw t0, 280(sp)
	lw t1, 292(sp)
	add t2, t0, t1
	sw t2, 296(sp)
	addi t2, zero, 12
	sw t2, 304(sp)
	lw t0, 304(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 308(sp)
	lw t0, 308(sp)
	addi t2, t0, 0
	sw t2, 312(sp)
	addi t2, zero, 1
	sw t2, 316(sp)
	lw t0, 312(sp)
	lw t1, 316(sp)
	sw t1, 0(t0)
	la t2, .libro.str.27
	sw t2, 320(sp)
	lw t0, 308(sp)
	addi t2, t0, 4
	sw t2, 324(sp)
	lw t0, 324(sp)
	lw t1, 320(sp)
	sw t1, 0(t0)
	lw t0, 296(sp)
	lw t1, 308(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 328(sp)
	lw t0, 328(sp)
	lw t2, 0(t0)
	sw t2, 332(sp)
	addi t2, zero, 6
	sw t2, 336(sp)
	addi t2, zero, 4
	sw t2, 340(sp)
	lw t0, 336(sp)
	lw t1, 340(sp)
	mul t2, t0, t1
	sw t2, 336(sp)
	lw t0, 336(sp)
	addi t2, t0, 4
	sw t2, 344(sp)
	lw t0, 332(sp)
	lw t1, 344(sp)
	add t2, t0, t1
	sw t2, 348(sp)
	addi t2, zero, 12
	sw t2, 356(sp)
	lw t0, 356(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 360(sp)
	lw t0, 360(sp)
	addi t2, t0, 0
	sw t2, 364(sp)
	addi t2, zero, 1
	sw t2, 368(sp)
	lw t0, 364(sp)
	lw t1, 368(sp)
	sw t1, 0(t0)
	la t2, .libro.str.28
	sw t2, 372(sp)
	lw t0, 360(sp)
	addi t2, t0, 4
	sw t2, 376(sp)
	lw t0, 376(sp)
	lw t1, 372(sp)
	sw t1, 0(t0)
	lw t0, 348(sp)
	lw t1, 360(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 380(sp)
	lw t0, 380(sp)
	lw t2, 0(t0)
	sw t2, 384(sp)
	addi t2, zero, 7
	sw t2, 388(sp)
	addi t2, zero, 4
	sw t2, 392(sp)
	lw t0, 388(sp)
	lw t1, 392(sp)
	mul t2, t0, t1
	sw t2, 388(sp)
	lw t0, 388(sp)
	addi t2, t0, 4
	sw t2, 396(sp)
	lw t0, 384(sp)
	lw t1, 396(sp)
	add t2, t0, t1
	sw t2, 400(sp)
	addi t2, zero, 12
	sw t2, 408(sp)
	lw t0, 408(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 412(sp)
	lw t0, 412(sp)
	addi t2, t0, 0
	sw t2, 416(sp)
	addi t2, zero, 1
	sw t2, 420(sp)
	lw t0, 416(sp)
	lw t1, 420(sp)
	sw t1, 0(t0)
	la t2, .libro.str.29
	sw t2, 424(sp)
	lw t0, 412(sp)
	addi t2, t0, 4
	sw t2, 428(sp)
	lw t0, 428(sp)
	lw t1, 424(sp)
	sw t1, 0(t0)
	lw t0, 400(sp)
	lw t1, 412(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 432(sp)
	lw t0, 432(sp)
	lw t2, 0(t0)
	sw t2, 436(sp)
	addi t2, zero, 8
	sw t2, 440(sp)
	addi t2, zero, 4
	sw t2, 444(sp)
	lw t0, 440(sp)
	lw t1, 444(sp)
	mul t2, t0, t1
	sw t2, 440(sp)
	lw t0, 440(sp)
	addi t2, t0, 4
	sw t2, 448(sp)
	lw t0, 436(sp)
	lw t1, 448(sp)
	add t2, t0, t1
	sw t2, 452(sp)
	addi t2, zero, 12
	sw t2, 460(sp)
	lw t0, 460(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 464(sp)
	lw t0, 464(sp)
	addi t2, t0, 0
	sw t2, 468(sp)
	addi t2, zero, 1
	sw t2, 472(sp)
	lw t0, 468(sp)
	lw t1, 472(sp)
	sw t1, 0(t0)
	la t2, .libro.str.30
	sw t2, 476(sp)
	lw t0, 464(sp)
	addi t2, t0, 4
	sw t2, 480(sp)
	lw t0, 480(sp)
	lw t1, 476(sp)
	sw t1, 0(t0)
	lw t0, 452(sp)
	lw t1, 464(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 484(sp)
	lw t0, 484(sp)
	lw t2, 0(t0)
	sw t2, 488(sp)
	addi t2, zero, 9
	sw t2, 492(sp)
	addi t2, zero, 4
	sw t2, 496(sp)
	lw t0, 492(sp)
	lw t1, 496(sp)
	mul t2, t0, t1
	sw t2, 492(sp)
	lw t0, 492(sp)
	addi t2, t0, 4
	sw t2, 500(sp)
	lw t0, 488(sp)
	lw t1, 500(sp)
	add t2, t0, t1
	sw t2, 504(sp)
	addi t2, zero, 12
	sw t2, 512(sp)
	lw t0, 512(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 516(sp)
	lw t0, 516(sp)
	addi t2, t0, 0
	sw t2, 520(sp)
	addi t2, zero, 1
	sw t2, 524(sp)
	lw t0, 520(sp)
	lw t1, 524(sp)
	sw t1, 0(t0)
	la t2, .libro.str.31
	sw t2, 528(sp)
	lw t0, 516(sp)
	addi t2, t0, 4
	sw t2, 532(sp)
	lw t0, 532(sp)
	lw t1, 528(sp)
	sw t1, 0(t0)
	lw t0, 504(sp)
	lw t1, 516(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 536(sp)
	lw t0, 536(sp)
	lw t2, 0(t0)
	sw t2, 540(sp)
	addi t2, zero, 10
	sw t2, 544(sp)
	addi t2, zero, 4
	sw t2, 548(sp)
	lw t0, 544(sp)
	lw t1, 548(sp)
	mul t2, t0, t1
	sw t2, 544(sp)
	lw t0, 544(sp)
	addi t2, t0, 4
	sw t2, 552(sp)
	lw t0, 540(sp)
	lw t1, 552(sp)
	add t2, t0, t1
	sw t2, 556(sp)
	addi t2, zero, 12
	sw t2, 564(sp)
	lw t0, 564(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 568(sp)
	lw t0, 568(sp)
	addi t2, t0, 0
	sw t2, 572(sp)
	addi t2, zero, 1
	sw t2, 576(sp)
	lw t0, 572(sp)
	lw t1, 576(sp)
	sw t1, 0(t0)
	la t2, .libro.str.32
	sw t2, 580(sp)
	lw t0, 568(sp)
	addi t2, t0, 4
	sw t2, 584(sp)
	lw t0, 584(sp)
	lw t1, 580(sp)
	sw t1, 0(t0)
	lw t0, 556(sp)
	lw t1, 568(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 588(sp)
	lw t0, 588(sp)
	lw t2, 0(t0)
	sw t2, 592(sp)
	addi t2, zero, 11
	sw t2, 596(sp)
	addi t2, zero, 4
	sw t2, 600(sp)
	lw t0, 596(sp)
	lw t1, 600(sp)
	mul t2, t0, t1
	sw t2, 596(sp)
	lw t0, 596(sp)
	addi t2, t0, 4
	sw t2, 604(sp)
	lw t0, 592(sp)
	lw t1, 604(sp)
	add t2, t0, t1
	sw t2, 608(sp)
	addi t2, zero, 12
	sw t2, 616(sp)
	lw t0, 616(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 620(sp)
	lw t0, 620(sp)
	addi t2, t0, 0
	sw t2, 624(sp)
	addi t2, zero, 1
	sw t2, 628(sp)
	lw t0, 624(sp)
	lw t1, 628(sp)
	sw t1, 0(t0)
	la t2, .libro.str.33
	sw t2, 632(sp)
	lw t0, 620(sp)
	addi t2, t0, 4
	sw t2, 636(sp)
	lw t0, 636(sp)
	lw t1, 632(sp)
	sw t1, 0(t0)
	lw t0, 608(sp)
	lw t1, 620(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 640(sp)
	lw t0, 640(sp)
	lw t2, 0(t0)
	sw t2, 644(sp)
	addi t2, zero, 12
	sw t2, 648(sp)
	addi t2, zero, 4
	sw t2, 652(sp)
	lw t0, 648(sp)
	lw t1, 652(sp)
	mul t2, t0, t1
	sw t2, 648(sp)
	lw t0, 648(sp)
	addi t2, t0, 4
	sw t2, 656(sp)
	lw t0, 644(sp)
	lw t1, 656(sp)
	add t2, t0, t1
	sw t2, 660(sp)
	addi t2, zero, 12
	sw t2, 668(sp)
	lw t0, 668(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 672(sp)
	lw t0, 672(sp)
	addi t2, t0, 0
	sw t2, 676(sp)
	addi t2, zero, 1
	sw t2, 680(sp)
	lw t0, 676(sp)
	lw t1, 680(sp)
	sw t1, 0(t0)
	la t2, .libro.str.34
	sw t2, 684(sp)
	lw t0, 672(sp)
	addi t2, t0, 4
	sw t2, 688(sp)
	lw t0, 688(sp)
	lw t1, 684(sp)
	sw t1, 0(t0)
	lw t0, 660(sp)
	lw t1, 672(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 692(sp)
	lw t0, 692(sp)
	lw t2, 0(t0)
	sw t2, 696(sp)
	addi t2, zero, 13
	sw t2, 700(sp)
	addi t2, zero, 4
	sw t2, 704(sp)
	lw t0, 700(sp)
	lw t1, 704(sp)
	mul t2, t0, t1
	sw t2, 700(sp)
	lw t0, 700(sp)
	addi t2, t0, 4
	sw t2, 708(sp)
	lw t0, 696(sp)
	lw t1, 708(sp)
	add t2, t0, t1
	sw t2, 712(sp)
	addi t2, zero, 12
	sw t2, 720(sp)
	lw t0, 720(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 724(sp)
	lw t0, 724(sp)
	addi t2, t0, 0
	sw t2, 728(sp)
	addi t2, zero, 1
	sw t2, 732(sp)
	lw t0, 728(sp)
	lw t1, 732(sp)
	sw t1, 0(t0)
	la t2, .libro.str.35
	sw t2, 736(sp)
	lw t0, 724(sp)
	addi t2, t0, 4
	sw t2, 740(sp)
	lw t0, 740(sp)
	lw t1, 736(sp)
	sw t1, 0(t0)
	lw t0, 712(sp)
	lw t1, 724(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 744(sp)
	lw t0, 744(sp)
	lw t2, 0(t0)
	sw t2, 748(sp)
	addi t2, zero, 14
	sw t2, 752(sp)
	addi t2, zero, 4
	sw t2, 756(sp)
	lw t0, 752(sp)
	lw t1, 756(sp)
	mul t2, t0, t1
	sw t2, 752(sp)
	lw t0, 752(sp)
	addi t2, t0, 4
	sw t2, 760(sp)
	lw t0, 748(sp)
	lw t1, 760(sp)
	add t2, t0, t1
	sw t2, 764(sp)
	addi t2, zero, 12
	sw t2, 772(sp)
	lw t0, 772(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 776(sp)
	lw t0, 776(sp)
	addi t2, t0, 0
	sw t2, 780(sp)
	addi t2, zero, 1
	sw t2, 784(sp)
	lw t0, 780(sp)
	lw t1, 784(sp)
	sw t1, 0(t0)
	la t2, .libro.str.36
	sw t2, 788(sp)
	lw t0, 776(sp)
	addi t2, t0, 4
	sw t2, 792(sp)
	lw t0, 792(sp)
	lw t1, 788(sp)
	sw t1, 0(t0)
	lw t0, 764(sp)
	lw t1, 776(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 796(sp)
	lw t0, 796(sp)
	lw t2, 0(t0)
	sw t2, 800(sp)
	addi t2, zero, 15
	sw t2, 804(sp)
	addi t2, zero, 4
	sw t2, 808(sp)
	lw t0, 804(sp)
	lw t1, 808(sp)
	mul t2, t0, t1
	sw t2, 804(sp)
	lw t0, 804(sp)
	addi t2, t0, 4
	sw t2, 812(sp)
	lw t0, 800(sp)
	lw t1, 812(sp)
	add t2, t0, t1
	sw t2, 816(sp)
	addi t2, zero, 12
	sw t2, 824(sp)
	lw t0, 824(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 828(sp)
	lw t0, 828(sp)
	addi t2, t0, 0
	sw t2, 832(sp)
	addi t2, zero, 1
	sw t2, 836(sp)
	lw t0, 832(sp)
	lw t1, 836(sp)
	sw t1, 0(t0)
	la t2, .libro.str.37
	sw t2, 840(sp)
	lw t0, 828(sp)
	addi t2, t0, 4
	sw t2, 844(sp)
	lw t0, 844(sp)
	lw t1, 840(sp)
	sw t1, 0(t0)
	lw t0, 816(sp)
	lw t1, 828(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 848(sp)
	lw t0, 848(sp)
	lw t2, 0(t0)
	sw t2, 852(sp)
	addi t2, zero, 16
	sw t2, 856(sp)
	addi t2, zero, 4
	sw t2, 860(sp)
	lw t0, 856(sp)
	lw t1, 860(sp)
	mul t2, t0, t1
	sw t2, 856(sp)
	lw t0, 856(sp)
	addi t2, t0, 4
	sw t2, 864(sp)
	lw t0, 852(sp)
	lw t1, 864(sp)
	add t2, t0, t1
	sw t2, 868(sp)
	addi t2, zero, 12
	sw t2, 876(sp)
	lw t0, 876(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 880(sp)
	lw t0, 880(sp)
	addi t2, t0, 0
	sw t2, 884(sp)
	addi t2, zero, 1
	sw t2, 888(sp)
	lw t0, 884(sp)
	lw t1, 888(sp)
	sw t1, 0(t0)
	la t2, .libro.str.38
	sw t2, 892(sp)
	lw t0, 880(sp)
	addi t2, t0, 4
	sw t2, 896(sp)
	lw t0, 896(sp)
	lw t1, 892(sp)
	sw t1, 0(t0)
	lw t0, 868(sp)
	lw t1, 880(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 900(sp)
	lw t0, 900(sp)
	lw t2, 0(t0)
	sw t2, 904(sp)
	addi t2, zero, 17
	sw t2, 908(sp)
	addi t2, zero, 4
	sw t2, 912(sp)
	lw t0, 908(sp)
	lw t1, 912(sp)
	mul t2, t0, t1
	sw t2, 908(sp)
	lw t0, 908(sp)
	addi t2, t0, 4
	sw t2, 916(sp)
	lw t0, 904(sp)
	lw t1, 916(sp)
	add t2, t0, t1
	sw t2, 920(sp)
	addi t2, zero, 12
	sw t2, 928(sp)
	lw t0, 928(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 932(sp)
	lw t0, 932(sp)
	addi t2, t0, 0
	sw t2, 936(sp)
	addi t2, zero, 1
	sw t2, 940(sp)
	lw t0, 936(sp)
	lw t1, 940(sp)
	sw t1, 0(t0)
	la t2, .libro.str.39
	sw t2, 944(sp)
	lw t0, 932(sp)
	addi t2, t0, 4
	sw t2, 948(sp)
	lw t0, 948(sp)
	lw t1, 944(sp)
	sw t1, 0(t0)
	lw t0, 920(sp)
	lw t1, 932(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 952(sp)
	lw t0, 952(sp)
	lw t2, 0(t0)
	sw t2, 956(sp)
	addi t2, zero, 18
	sw t2, 960(sp)
	addi t2, zero, 4
	sw t2, 964(sp)
	lw t0, 960(sp)
	lw t1, 964(sp)
	mul t2, t0, t1
	sw t2, 960(sp)
	lw t0, 960(sp)
	addi t2, t0, 4
	sw t2, 968(sp)
	lw t0, 956(sp)
	lw t1, 968(sp)
	add t2, t0, t1
	sw t2, 972(sp)
	addi t2, zero, 12
	sw t2, 980(sp)
	lw t0, 980(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 984(sp)
	lw t0, 984(sp)
	addi t2, t0, 0
	sw t2, 988(sp)
	addi t2, zero, 1
	sw t2, 992(sp)
	lw t0, 988(sp)
	lw t1, 992(sp)
	sw t1, 0(t0)
	la t2, .libro.str.40
	sw t2, 996(sp)
	lw t0, 984(sp)
	addi t2, t0, 4
	sw t2, 1000(sp)
	lw t0, 1000(sp)
	lw t1, 996(sp)
	sw t1, 0(t0)
	lw t0, 972(sp)
	lw t1, 984(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1004(sp)
	lw t0, 1004(sp)
	lw t2, 0(t0)
	sw t2, 1008(sp)
	addi t2, zero, 19
	sw t2, 1012(sp)
	addi t2, zero, 4
	sw t2, 1016(sp)
	lw t0, 1012(sp)
	lw t1, 1016(sp)
	mul t2, t0, t1
	sw t2, 1012(sp)
	lw t0, 1012(sp)
	addi t2, t0, 4
	sw t2, 1020(sp)
	lw t0, 1008(sp)
	lw t1, 1020(sp)
	add t2, t0, t1
	sw t2, 1024(sp)
	addi t2, zero, 12
	sw t2, 1032(sp)
	lw t0, 1032(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1036(sp)
	lw t0, 1036(sp)
	addi t2, t0, 0
	sw t2, 1040(sp)
	addi t2, zero, 1
	sw t2, 1044(sp)
	lw t0, 1040(sp)
	lw t1, 1044(sp)
	sw t1, 0(t0)
	la t2, .libro.str.41
	sw t2, 1048(sp)
	lw t0, 1036(sp)
	addi t2, t0, 4
	sw t2, 1052(sp)
	lw t0, 1052(sp)
	lw t1, 1048(sp)
	sw t1, 0(t0)
	lw t0, 1024(sp)
	lw t1, 1036(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1056(sp)
	lw t0, 1056(sp)
	lw t2, 0(t0)
	sw t2, 1060(sp)
	addi t2, zero, 20
	sw t2, 1064(sp)
	addi t2, zero, 4
	sw t2, 1068(sp)
	lw t0, 1064(sp)
	lw t1, 1068(sp)
	mul t2, t0, t1
	sw t2, 1064(sp)
	lw t0, 1064(sp)
	addi t2, t0, 4
	sw t2, 1072(sp)
	lw t0, 1060(sp)
	lw t1, 1072(sp)
	add t2, t0, t1
	sw t2, 1076(sp)
	addi t2, zero, 12
	sw t2, 1084(sp)
	lw t0, 1084(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1088(sp)
	lw t0, 1088(sp)
	addi t2, t0, 0
	sw t2, 1092(sp)
	addi t2, zero, 1
	sw t2, 1096(sp)
	lw t0, 1092(sp)
	lw t1, 1096(sp)
	sw t1, 0(t0)
	la t2, .libro.str.42
	sw t2, 1100(sp)
	lw t0, 1088(sp)
	addi t2, t0, 4
	sw t2, 1104(sp)
	lw t0, 1104(sp)
	lw t1, 1100(sp)
	sw t1, 0(t0)
	lw t0, 1076(sp)
	lw t1, 1088(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1108(sp)
	lw t0, 1108(sp)
	lw t2, 0(t0)
	sw t2, 1112(sp)
	addi t2, zero, 21
	sw t2, 1116(sp)
	addi t2, zero, 4
	sw t2, 1120(sp)
	lw t0, 1116(sp)
	lw t1, 1120(sp)
	mul t2, t0, t1
	sw t2, 1116(sp)
	lw t0, 1116(sp)
	addi t2, t0, 4
	sw t2, 1124(sp)
	lw t0, 1112(sp)
	lw t1, 1124(sp)
	add t2, t0, t1
	sw t2, 1128(sp)
	addi t2, zero, 12
	sw t2, 1136(sp)
	lw t0, 1136(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1140(sp)
	lw t0, 1140(sp)
	addi t2, t0, 0
	sw t2, 1144(sp)
	addi t2, zero, 1
	sw t2, 1148(sp)
	lw t0, 1144(sp)
	lw t1, 1148(sp)
	sw t1, 0(t0)
	la t2, .libro.str.43
	sw t2, 1152(sp)
	lw t0, 1140(sp)
	addi t2, t0, 4
	sw t2, 1156(sp)
	lw t0, 1156(sp)
	lw t1, 1152(sp)
	sw t1, 0(t0)
	lw t0, 1128(sp)
	lw t1, 1140(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1160(sp)
	lw t0, 1160(sp)
	lw t2, 0(t0)
	sw t2, 1164(sp)
	addi t2, zero, 22
	sw t2, 1168(sp)
	addi t2, zero, 4
	sw t2, 1172(sp)
	lw t0, 1168(sp)
	lw t1, 1172(sp)
	mul t2, t0, t1
	sw t2, 1168(sp)
	lw t0, 1168(sp)
	addi t2, t0, 4
	sw t2, 1176(sp)
	lw t0, 1164(sp)
	lw t1, 1176(sp)
	add t2, t0, t1
	sw t2, 1180(sp)
	addi t2, zero, 12
	sw t2, 1188(sp)
	lw t0, 1188(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1192(sp)
	lw t0, 1192(sp)
	addi t2, t0, 0
	sw t2, 1196(sp)
	addi t2, zero, 1
	sw t2, 1200(sp)
	lw t0, 1196(sp)
	lw t1, 1200(sp)
	sw t1, 0(t0)
	la t2, .libro.str.44
	sw t2, 1204(sp)
	lw t0, 1192(sp)
	addi t2, t0, 4
	sw t2, 1208(sp)
	lw t0, 1208(sp)
	lw t1, 1204(sp)
	sw t1, 0(t0)
	lw t0, 1180(sp)
	lw t1, 1192(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1212(sp)
	lw t0, 1212(sp)
	lw t2, 0(t0)
	sw t2, 1216(sp)
	addi t2, zero, 23
	sw t2, 1220(sp)
	addi t2, zero, 4
	sw t2, 1224(sp)
	lw t0, 1220(sp)
	lw t1, 1224(sp)
	mul t2, t0, t1
	sw t2, 1220(sp)
	lw t0, 1220(sp)
	addi t2, t0, 4
	sw t2, 1228(sp)
	lw t0, 1216(sp)
	lw t1, 1228(sp)
	add t2, t0, t1
	sw t2, 1232(sp)
	addi t2, zero, 12
	sw t2, 1240(sp)
	lw t0, 1240(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1244(sp)
	lw t0, 1244(sp)
	addi t2, t0, 0
	sw t2, 1248(sp)
	addi t2, zero, 1
	sw t2, 1252(sp)
	lw t0, 1248(sp)
	lw t1, 1252(sp)
	sw t1, 0(t0)
	la t2, .libro.str.45
	sw t2, 1256(sp)
	lw t0, 1244(sp)
	addi t2, t0, 4
	sw t2, 1260(sp)
	lw t0, 1260(sp)
	lw t1, 1256(sp)
	sw t1, 0(t0)
	lw t0, 1232(sp)
	lw t1, 1244(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1264(sp)
	lw t0, 1264(sp)
	lw t2, 0(t0)
	sw t2, 1268(sp)
	addi t2, zero, 24
	sw t2, 1272(sp)
	addi t2, zero, 4
	sw t2, 1276(sp)
	lw t0, 1272(sp)
	lw t1, 1276(sp)
	mul t2, t0, t1
	sw t2, 1272(sp)
	lw t0, 1272(sp)
	addi t2, t0, 4
	sw t2, 1280(sp)
	lw t0, 1268(sp)
	lw t1, 1280(sp)
	add t2, t0, t1
	sw t2, 1284(sp)
	addi t2, zero, 12
	sw t2, 1292(sp)
	lw t0, 1292(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1296(sp)
	lw t0, 1296(sp)
	addi t2, t0, 0
	sw t2, 1300(sp)
	addi t2, zero, 1
	sw t2, 1304(sp)
	lw t0, 1300(sp)
	lw t1, 1304(sp)
	sw t1, 0(t0)
	la t2, .libro.str.46
	sw t2, 1308(sp)
	lw t0, 1296(sp)
	addi t2, t0, 4
	sw t2, 1312(sp)
	lw t0, 1312(sp)
	lw t1, 1308(sp)
	sw t1, 0(t0)
	lw t0, 1284(sp)
	lw t1, 1296(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1316(sp)
	lw t0, 1316(sp)
	lw t2, 0(t0)
	sw t2, 1320(sp)
	addi t2, zero, 25
	sw t2, 1324(sp)
	addi t2, zero, 4
	sw t2, 1328(sp)
	lw t0, 1324(sp)
	lw t1, 1328(sp)
	mul t2, t0, t1
	sw t2, 1324(sp)
	lw t0, 1324(sp)
	addi t2, t0, 4
	sw t2, 1332(sp)
	lw t0, 1320(sp)
	lw t1, 1332(sp)
	add t2, t0, t1
	sw t2, 1336(sp)
	addi t2, zero, 12
	sw t2, 1344(sp)
	lw t0, 1344(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1348(sp)
	lw t0, 1348(sp)
	addi t2, t0, 0
	sw t2, 1352(sp)
	addi t2, zero, 1
	sw t2, 1356(sp)
	lw t0, 1352(sp)
	lw t1, 1356(sp)
	sw t1, 0(t0)
	la t2, .libro.str.47
	sw t2, 1360(sp)
	lw t0, 1348(sp)
	addi t2, t0, 4
	sw t2, 1364(sp)
	lw t0, 1364(sp)
	lw t1, 1360(sp)
	sw t1, 0(t0)
	lw t0, 1336(sp)
	lw t1, 1348(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1368(sp)
	lw t0, 1368(sp)
	lw t2, 0(t0)
	sw t2, 1372(sp)
	addi t2, zero, 26
	sw t2, 1376(sp)
	addi t2, zero, 4
	sw t2, 1380(sp)
	lw t0, 1376(sp)
	lw t1, 1380(sp)
	mul t2, t0, t1
	sw t2, 1376(sp)
	lw t0, 1376(sp)
	addi t2, t0, 4
	sw t2, 1384(sp)
	lw t0, 1372(sp)
	lw t1, 1384(sp)
	add t2, t0, t1
	sw t2, 1388(sp)
	addi t2, zero, 12
	sw t2, 1396(sp)
	lw t0, 1396(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1400(sp)
	lw t0, 1400(sp)
	addi t2, t0, 0
	sw t2, 1404(sp)
	addi t2, zero, 1
	sw t2, 1408(sp)
	lw t0, 1404(sp)
	lw t1, 1408(sp)
	sw t1, 0(t0)
	la t2, .libro.str.48
	sw t2, 1412(sp)
	lw t0, 1400(sp)
	addi t2, t0, 4
	sw t2, 1416(sp)
	lw t0, 1416(sp)
	lw t1, 1412(sp)
	sw t1, 0(t0)
	lw t0, 1388(sp)
	lw t1, 1400(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1420(sp)
	lw t0, 1420(sp)
	lw t2, 0(t0)
	sw t2, 1424(sp)
	addi t2, zero, 27
	sw t2, 1428(sp)
	addi t2, zero, 4
	sw t2, 1432(sp)
	lw t0, 1428(sp)
	lw t1, 1432(sp)
	mul t2, t0, t1
	sw t2, 1428(sp)
	lw t0, 1428(sp)
	addi t2, t0, 4
	sw t2, 1436(sp)
	lw t0, 1424(sp)
	lw t1, 1436(sp)
	add t2, t0, t1
	sw t2, 1440(sp)
	addi t2, zero, 12
	sw t2, 1448(sp)
	lw t0, 1448(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1452(sp)
	lw t0, 1452(sp)
	addi t2, t0, 0
	sw t2, 1456(sp)
	addi t2, zero, 1
	sw t2, 1460(sp)
	lw t0, 1456(sp)
	lw t1, 1460(sp)
	sw t1, 0(t0)
	la t2, .libro.str.49
	sw t2, 1464(sp)
	lw t0, 1452(sp)
	addi t2, t0, 4
	sw t2, 1468(sp)
	lw t0, 1468(sp)
	lw t1, 1464(sp)
	sw t1, 0(t0)
	lw t0, 1440(sp)
	lw t1, 1452(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1472(sp)
	lw t0, 1472(sp)
	lw t2, 0(t0)
	sw t2, 1476(sp)
	addi t2, zero, 28
	sw t2, 1480(sp)
	addi t2, zero, 4
	sw t2, 1484(sp)
	lw t0, 1480(sp)
	lw t1, 1484(sp)
	mul t2, t0, t1
	sw t2, 1480(sp)
	lw t0, 1480(sp)
	addi t2, t0, 4
	sw t2, 1488(sp)
	lw t0, 1476(sp)
	lw t1, 1488(sp)
	add t2, t0, t1
	sw t2, 1492(sp)
	addi t2, zero, 12
	sw t2, 1500(sp)
	lw t0, 1500(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1504(sp)
	lw t0, 1504(sp)
	addi t2, t0, 0
	sw t2, 1508(sp)
	addi t2, zero, 1
	sw t2, 1512(sp)
	lw t0, 1508(sp)
	lw t1, 1512(sp)
	sw t1, 0(t0)
	la t2, .libro.str.50
	sw t2, 1516(sp)
	lw t0, 1504(sp)
	addi t2, t0, 4
	sw t2, 1520(sp)
	lw t0, 1520(sp)
	lw t1, 1516(sp)
	sw t1, 0(t0)
	lw t0, 1492(sp)
	lw t1, 1504(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1524(sp)
	lw t0, 1524(sp)
	lw t2, 0(t0)
	sw t2, 1528(sp)
	addi t2, zero, 29
	sw t2, 1532(sp)
	addi t2, zero, 4
	sw t2, 1536(sp)
	lw t0, 1532(sp)
	lw t1, 1536(sp)
	mul t2, t0, t1
	sw t2, 1532(sp)
	lw t0, 1532(sp)
	addi t2, t0, 4
	sw t2, 1540(sp)
	lw t0, 1528(sp)
	lw t1, 1540(sp)
	add t2, t0, t1
	sw t2, 1544(sp)
	addi t2, zero, 12
	sw t2, 1552(sp)
	lw t0, 1552(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1556(sp)
	lw t0, 1556(sp)
	addi t2, t0, 0
	sw t2, 1560(sp)
	addi t2, zero, 1
	sw t2, 1564(sp)
	lw t0, 1560(sp)
	lw t1, 1564(sp)
	sw t1, 0(t0)
	la t2, .libro.str.51
	sw t2, 1568(sp)
	lw t0, 1556(sp)
	addi t2, t0, 4
	sw t2, 1572(sp)
	lw t0, 1572(sp)
	lw t1, 1568(sp)
	sw t1, 0(t0)
	lw t0, 1544(sp)
	lw t1, 1556(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1576(sp)
	lw t0, 1576(sp)
	lw t2, 0(t0)
	sw t2, 1580(sp)
	addi t2, zero, 30
	sw t2, 1584(sp)
	addi t2, zero, 4
	sw t2, 1588(sp)
	lw t0, 1584(sp)
	lw t1, 1588(sp)
	mul t2, t0, t1
	sw t2, 1584(sp)
	lw t0, 1584(sp)
	addi t2, t0, 4
	sw t2, 1592(sp)
	lw t0, 1580(sp)
	lw t1, 1592(sp)
	add t2, t0, t1
	sw t2, 1596(sp)
	addi t2, zero, 12
	sw t2, 1604(sp)
	lw t0, 1604(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1608(sp)
	lw t0, 1608(sp)
	addi t2, t0, 0
	sw t2, 1612(sp)
	addi t2, zero, 1
	sw t2, 1616(sp)
	lw t0, 1612(sp)
	lw t1, 1616(sp)
	sw t1, 0(t0)
	la t2, .libro.str.52
	sw t2, 1620(sp)
	lw t0, 1608(sp)
	addi t2, t0, 4
	sw t2, 1624(sp)
	lw t0, 1624(sp)
	lw t1, 1620(sp)
	sw t1, 0(t0)
	lw t0, 1596(sp)
	lw t1, 1608(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1628(sp)
	lw t0, 1628(sp)
	lw t2, 0(t0)
	sw t2, 1632(sp)
	addi t2, zero, 31
	sw t2, 1636(sp)
	addi t2, zero, 4
	sw t2, 1640(sp)
	lw t0, 1636(sp)
	lw t1, 1640(sp)
	mul t2, t0, t1
	sw t2, 1636(sp)
	lw t0, 1636(sp)
	addi t2, t0, 4
	sw t2, 1644(sp)
	lw t0, 1632(sp)
	lw t1, 1644(sp)
	add t2, t0, t1
	sw t2, 1648(sp)
	addi t2, zero, 12
	sw t2, 1656(sp)
	lw t0, 1656(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1660(sp)
	lw t0, 1660(sp)
	addi t2, t0, 0
	sw t2, 1664(sp)
	addi t2, zero, 1
	sw t2, 1668(sp)
	lw t0, 1664(sp)
	lw t1, 1668(sp)
	sw t1, 0(t0)
	la t2, .libro.str.53
	sw t2, 1672(sp)
	lw t0, 1660(sp)
	addi t2, t0, 4
	sw t2, 1676(sp)
	lw t0, 1676(sp)
	lw t1, 1672(sp)
	sw t1, 0(t0)
	lw t0, 1648(sp)
	lw t1, 1660(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1680(sp)
	lw t0, 1680(sp)
	lw t2, 0(t0)
	sw t2, 1684(sp)
	addi t2, zero, 32
	sw t2, 1688(sp)
	addi t2, zero, 4
	sw t2, 1692(sp)
	lw t0, 1688(sp)
	lw t1, 1692(sp)
	mul t2, t0, t1
	sw t2, 1688(sp)
	lw t0, 1688(sp)
	addi t2, t0, 4
	sw t2, 1696(sp)
	lw t0, 1684(sp)
	lw t1, 1696(sp)
	add t2, t0, t1
	sw t2, 1700(sp)
	addi t2, zero, 12
	sw t2, 1708(sp)
	lw t0, 1708(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1712(sp)
	lw t0, 1712(sp)
	addi t2, t0, 0
	sw t2, 1716(sp)
	addi t2, zero, 1
	sw t2, 1720(sp)
	lw t0, 1716(sp)
	lw t1, 1720(sp)
	sw t1, 0(t0)
	la t2, .libro.str.54
	sw t2, 1724(sp)
	lw t0, 1712(sp)
	addi t2, t0, 4
	sw t2, 1728(sp)
	lw t0, 1728(sp)
	lw t1, 1724(sp)
	sw t1, 0(t0)
	lw t0, 1700(sp)
	lw t1, 1712(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1732(sp)
	lw t0, 1732(sp)
	lw t2, 0(t0)
	sw t2, 1736(sp)
	addi t2, zero, 33
	sw t2, 1740(sp)
	addi t2, zero, 4
	sw t2, 1744(sp)
	lw t0, 1740(sp)
	lw t1, 1744(sp)
	mul t2, t0, t1
	sw t2, 1740(sp)
	lw t0, 1740(sp)
	addi t2, t0, 4
	sw t2, 1748(sp)
	lw t0, 1736(sp)
	lw t1, 1748(sp)
	add t2, t0, t1
	sw t2, 1752(sp)
	addi t2, zero, 12
	sw t2, 1760(sp)
	lw t0, 1760(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1764(sp)
	lw t0, 1764(sp)
	addi t2, t0, 0
	sw t2, 1768(sp)
	addi t2, zero, 1
	sw t2, 1772(sp)
	lw t0, 1768(sp)
	lw t1, 1772(sp)
	sw t1, 0(t0)
	la t2, .libro.str.55
	sw t2, 1776(sp)
	lw t0, 1764(sp)
	addi t2, t0, 4
	sw t2, 1780(sp)
	lw t0, 1780(sp)
	lw t1, 1776(sp)
	sw t1, 0(t0)
	lw t0, 1752(sp)
	lw t1, 1764(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1784(sp)
	lw t0, 1784(sp)
	lw t2, 0(t0)
	sw t2, 1788(sp)
	addi t2, zero, 34
	sw t2, 1792(sp)
	addi t2, zero, 4
	sw t2, 1796(sp)
	lw t0, 1792(sp)
	lw t1, 1796(sp)
	mul t2, t0, t1
	sw t2, 1792(sp)
	lw t0, 1792(sp)
	addi t2, t0, 4
	sw t2, 1800(sp)
	lw t0, 1788(sp)
	lw t1, 1800(sp)
	add t2, t0, t1
	sw t2, 1804(sp)
	addi t2, zero, 12
	sw t2, 1812(sp)
	lw t0, 1812(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1816(sp)
	lw t0, 1816(sp)
	addi t2, t0, 0
	sw t2, 1820(sp)
	addi t2, zero, 1
	sw t2, 1824(sp)
	lw t0, 1820(sp)
	lw t1, 1824(sp)
	sw t1, 0(t0)
	la t2, .libro.str.56
	sw t2, 1828(sp)
	lw t0, 1816(sp)
	addi t2, t0, 4
	sw t2, 1832(sp)
	lw t0, 1832(sp)
	lw t1, 1828(sp)
	sw t1, 0(t0)
	lw t0, 1804(sp)
	lw t1, 1816(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1836(sp)
	lw t0, 1836(sp)
	lw t2, 0(t0)
	sw t2, 1840(sp)
	addi t2, zero, 35
	sw t2, 1844(sp)
	addi t2, zero, 4
	sw t2, 1848(sp)
	lw t0, 1844(sp)
	lw t1, 1848(sp)
	mul t2, t0, t1
	sw t2, 1844(sp)
	lw t0, 1844(sp)
	addi t2, t0, 4
	sw t2, 1852(sp)
	lw t0, 1840(sp)
	lw t1, 1852(sp)
	add t2, t0, t1
	sw t2, 1856(sp)
	addi t2, zero, 12
	sw t2, 1864(sp)
	lw t0, 1864(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1868(sp)
	lw t0, 1868(sp)
	addi t2, t0, 0
	sw t2, 1872(sp)
	addi t2, zero, 1
	sw t2, 1876(sp)
	lw t0, 1872(sp)
	lw t1, 1876(sp)
	sw t1, 0(t0)
	la t2, .libro.str.57
	sw t2, 1880(sp)
	lw t0, 1868(sp)
	addi t2, t0, 4
	sw t2, 1884(sp)
	lw t0, 1884(sp)
	lw t1, 1880(sp)
	sw t1, 0(t0)
	lw t0, 1856(sp)
	lw t1, 1868(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1888(sp)
	lw t0, 1888(sp)
	lw t2, 0(t0)
	sw t2, 1892(sp)
	addi t2, zero, 36
	sw t2, 1896(sp)
	addi t2, zero, 4
	sw t2, 1900(sp)
	lw t0, 1896(sp)
	lw t1, 1900(sp)
	mul t2, t0, t1
	sw t2, 1896(sp)
	lw t0, 1896(sp)
	addi t2, t0, 4
	sw t2, 1904(sp)
	lw t0, 1892(sp)
	lw t1, 1904(sp)
	add t2, t0, t1
	sw t2, 1908(sp)
	addi t2, zero, 12
	sw t2, 1916(sp)
	lw t0, 1916(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1920(sp)
	lw t0, 1920(sp)
	addi t2, t0, 0
	sw t2, 1924(sp)
	addi t2, zero, 1
	sw t2, 1928(sp)
	lw t0, 1924(sp)
	lw t1, 1928(sp)
	sw t1, 0(t0)
	la t2, .libro.str.58
	sw t2, 1932(sp)
	lw t0, 1920(sp)
	addi t2, t0, 4
	sw t2, 1936(sp)
	lw t0, 1936(sp)
	lw t1, 1932(sp)
	sw t1, 0(t0)
	lw t0, 1908(sp)
	lw t1, 1920(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1940(sp)
	lw t0, 1940(sp)
	lw t2, 0(t0)
	sw t2, 1944(sp)
	addi t2, zero, 37
	sw t2, 1948(sp)
	addi t2, zero, 4
	sw t2, 1952(sp)
	lw t0, 1948(sp)
	lw t1, 1952(sp)
	mul t2, t0, t1
	sw t2, 1948(sp)
	lw t0, 1948(sp)
	addi t2, t0, 4
	sw t2, 1956(sp)
	lw t0, 1944(sp)
	lw t1, 1956(sp)
	add t2, t0, t1
	sw t2, 1960(sp)
	addi t2, zero, 12
	sw t2, 1968(sp)
	lw t0, 1968(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 1972(sp)
	lw t0, 1972(sp)
	addi t2, t0, 0
	sw t2, 1976(sp)
	addi t2, zero, 1
	sw t2, 1980(sp)
	lw t0, 1976(sp)
	lw t1, 1980(sp)
	sw t1, 0(t0)
	la t2, .libro.str.59
	sw t2, 1984(sp)
	lw t0, 1972(sp)
	addi t2, t0, 4
	sw t2, 1988(sp)
	lw t0, 1988(sp)
	lw t1, 1984(sp)
	sw t1, 0(t0)
	lw t0, 1960(sp)
	lw t1, 1972(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 1992(sp)
	lw t0, 1992(sp)
	lw t2, 0(t0)
	sw t2, 1996(sp)
	addi t2, zero, 38
	sw t2, 2000(sp)
	addi t2, zero, 4
	sw t2, 2004(sp)
	lw t0, 2000(sp)
	lw t1, 2004(sp)
	mul t2, t0, t1
	sw t2, 2000(sp)
	lw t0, 2000(sp)
	addi t2, t0, 4
	sw t2, 2008(sp)
	lw t0, 1996(sp)
	lw t1, 2008(sp)
	add t2, t0, t1
	sw t2, 2012(sp)
	addi t2, zero, 12
	sw t2, 2020(sp)
	lw t0, 2020(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 2024(sp)
	lw t0, 2024(sp)
	addi t2, t0, 0
	sw t2, 2028(sp)
	addi t2, zero, 1
	sw t2, 2032(sp)
	lw t0, 2028(sp)
	lw t1, 2032(sp)
	sw t1, 0(t0)
	la t2, .libro.str.60
	sw t2, 2036(sp)
	lw t0, 2024(sp)
	addi t2, t0, 4
	sw t2, 2040(sp)
	lw t0, 2040(sp)
	lw t1, 2036(sp)
	sw t1, 0(t0)
	lw t0, 2012(sp)
	lw t1, 2024(sp)
	sw t1, 0(t0)
	la t2, c
	sw t2, 2044(sp)
	lw t0, 2044(sp)
	lw t2, 0(t0)
	li t6, 2048
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 39
	li t6, 2052
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2056
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2052
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2048
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2060
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2064
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2072
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2076
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2080
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2080
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2084
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.61
	li t6, 2088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2076
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2088
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2064
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2076
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2096
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2100
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 40
	li t6, 2104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2108
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2104
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2100
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2112
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2116
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2124
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2128
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2136
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.62
	li t6, 2140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2128
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2144
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2140
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2116
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2128
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2148
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2152
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 41
	li t6, 2156
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2160
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2156
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2152
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2164
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2168
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2176
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2180
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2184
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2184
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2188
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.63
	li t6, 2192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2180
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2192
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2180
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2200
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2204
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 42
	li t6, 2208
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2208
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2212
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2208
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2204
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2216
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2220
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2228
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2232
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2236
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2240
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.64
	li t6, 2244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2232
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2248
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2244
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2220
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2232
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2252
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2256
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 43
	li t6, 2260
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2264
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2260
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2256
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2268
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2272
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2280
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2284
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2288
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2292
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.65
	li t6, 2296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2284
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2296
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2272
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2284
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2304
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2308
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 44
	li t6, 2312
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2312
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2316
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2312
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2308
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2320
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2324
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2332
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2336
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2344
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.66
	li t6, 2348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2336
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2352
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2348
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2336
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2356
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2360
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 45
	li t6, 2364
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2368
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2364
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2360
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2372
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2376
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2384
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2388
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2392
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2396
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.67
	li t6, 2400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2388
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2404
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2400
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2376
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2388
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2408
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2412
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 46
	li t6, 2416
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2416
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2420
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2416
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2412
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2424
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2428
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2436
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2440
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2444
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2448
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.68
	li t6, 2452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2440
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2452
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2428
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2440
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2460
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2464
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 47
	li t6, 2468
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2468
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2472
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2468
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2464
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2476
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2480
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2488
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2492
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2496
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2496
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2500
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.69
	li t6, 2504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2492
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2508
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2504
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2492
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2512
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2516
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 48
	li t6, 2520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2524
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2520
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2528
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2532
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2540
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2544
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2552
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.70
	li t6, 2556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2544
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2560
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2556
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2532
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2544
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2564
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2568
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 49
	li t6, 2572
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2572
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2576
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2572
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2568
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2580
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2592
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2596
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2600
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2600
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2604
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.71
	li t6, 2608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2596
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2608
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2596
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2616
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2620
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 50
	li t6, 2624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2628
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2624
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2620
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2632
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2636
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2644
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2648
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2652
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2656
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.72
	li t6, 2660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2648
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2664
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2660
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2636
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2648
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2668
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2672
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 51
	li t6, 2676
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2680
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2676
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2672
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2684
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2688
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2696
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2700
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2704
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2708
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.73
	li t6, 2712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2700
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2716
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2712
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2688
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2700
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2720
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2724
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 52
	li t6, 2728
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2728
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2732
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2728
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2724
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2736
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2740
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2748
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2752
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2756
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2760
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.74
	li t6, 2764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2752
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2764
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2752
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2772
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2776
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 53
	li t6, 2780
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2780
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2784
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2780
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2776
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2788
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2792
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2800
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2804
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2808
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2812
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.75
	li t6, 2816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2804
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2820
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2816
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2792
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2804
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2824
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2828
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 54
	li t6, 2832
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2832
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2836
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2832
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2828
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2840
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2844
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2852
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2856
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2860
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2864
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.76
	li t6, 2868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2856
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2872
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2868
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2844
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2856
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2876
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2880
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 55
	li t6, 2884
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2884
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2888
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2884
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2880
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2892
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2896
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2904
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2908
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2916
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.77
	li t6, 2920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2908
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2920
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2896
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2908
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2928
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2932
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 56
	li t6, 2936
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2936
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2940
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2936
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2944
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 2948
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 2956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2956
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 2960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2960
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 2964
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 2968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2968
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.78
	li t6, 2972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2960
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2972
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 2948
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2960
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 2980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2980
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 2984
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 57
	li t6, 2988
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 2992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2988
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2992
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 2988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2988
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 2996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 2984
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 2996
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3000
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3008
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3012
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3016
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3016
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3020
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.79
	li t6, 3024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3012
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3024
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3000
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3012
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3032
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3036
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 3040
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3040
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3044
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3040
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3036
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3048
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3052
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3060
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3064
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3068
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3068
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3072
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.80
	li t6, 3076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3064
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3080
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3076
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3064
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3084
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3088
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 3092
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3096
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3092
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3088
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3100
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3112
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3116
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3120
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3120
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3124
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.81
	li t6, 3128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3116
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3128
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3116
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3136
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3140
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 60
	li t6, 3144
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3144
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3148
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3144
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3140
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3152
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3156
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3164
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3168
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3172
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3176
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.82
	li t6, 3180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3168
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3184
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3180
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3168
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3188
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3192
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 61
	li t6, 3196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3200
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3196
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3192
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3204
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3208
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3216
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3220
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3224
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3228
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.83
	li t6, 3232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3220
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3232
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3208
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3220
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3240
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3244
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 62
	li t6, 3248
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3248
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3252
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3248
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3244
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3256
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3260
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3268
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3272
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3276
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3276
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3280
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.84
	li t6, 3284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3272
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3284
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3272
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3292
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3296
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 63
	li t6, 3300
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3304
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3300
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3308
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3312
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3320
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3324
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3328
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3332
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.85
	li t6, 3336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3324
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3336
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3312
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3324
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3344
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3348
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 64
	li t6, 3352
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3352
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3356
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3352
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3348
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3360
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3364
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3372
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3376
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3380
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3384
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.86
	li t6, 3388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3376
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3388
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3376
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3396
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3400
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 3404
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3404
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3408
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3404
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3400
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3412
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3416
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3424
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3428
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3432
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3432
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3436
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.87
	li t6, 3440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3428
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3440
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3416
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3428
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3448
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3452
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 66
	li t6, 3456
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3460
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3456
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3452
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3464
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3468
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3476
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3480
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3488
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.88
	li t6, 3492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3480
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3496
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3492
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3468
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3480
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3500
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3504
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 3508
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3508
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3512
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3508
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3504
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3516
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3528
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3532
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3536
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3536
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3540
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.89
	li t6, 3544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3532
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3544
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3532
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3552
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3556
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 3560
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3560
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3564
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3560
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3556
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3568
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3572
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3580
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3584
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3588
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3588
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3592
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.90
	li t6, 3596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3584
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3600
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3596
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3572
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3584
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3604
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3608
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 3612
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3616
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3612
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3608
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3620
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3632
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3636
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3640
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3640
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3644
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.91
	li t6, 3648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3636
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3648
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3636
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3656
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3660
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 70
	li t6, 3664
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3664
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3668
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3664
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3660
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3672
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3676
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3684
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3688
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3692
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3692
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3696
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.92
	li t6, 3700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3688
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3700
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3688
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3708
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3712
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 3716
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3716
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3720
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3716
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3712
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3724
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3728
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3736
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3740
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3744
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3748
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.93
	li t6, 3752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3740
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3752
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3728
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3740
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3760
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3764
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 72
	li t6, 3768
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3772
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3768
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3764
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3776
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3780
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3788
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3792
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3796
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3796
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3800
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.94
	li t6, 3804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3792
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3804
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3780
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3792
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3812
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3816
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 73
	li t6, 3820
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3820
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3824
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3820
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3816
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3828
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3832
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3840
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3844
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3848
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3852
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.95
	li t6, 3856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3844
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3856
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3832
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3844
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3864
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3868
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 74
	li t6, 3872
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3872
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3876
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3872
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3880
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3884
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3892
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3896
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3900
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3904
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.96
	li t6, 3908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3896
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3908
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3884
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3896
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3916
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3920
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 75
	li t6, 3924
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3928
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3924
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3920
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3932
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3936
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3944
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 3948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3948
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 3952
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 3956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3956
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.97
	li t6, 3960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3948
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3960
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3936
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3948
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 3968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3968
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 3972
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 3976
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 3980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3980
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 3976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3976
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 3984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3972
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 3984
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 3988
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 3996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 3996
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4000
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4004
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4004
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4008
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.98
	li t6, 4012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4000
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4016
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4012
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 3988
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4000
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4020
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4024
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 77
	li t6, 4028
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4032
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4028
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4024
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4036
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4040
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4048
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4052
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4056
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4056
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4060
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.99
	li t6, 4064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4052
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4068
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4064
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4040
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4052
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4072
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4076
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 78
	li t6, 4080
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4080
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4084
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4080
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4076
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4088
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4092
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4100
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4104
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4108
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4108
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4112
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.100
	li t6, 4116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4104
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4120
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4116
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4104
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4124
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4128
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 79
	li t6, 4132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4136
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4132
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4128
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4140
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4144
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4152
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4156
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4160
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4160
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4164
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.101
	li t6, 4168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4156
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4168
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4144
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4156
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4176
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4180
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 4184
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4184
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4188
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4184
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4180
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4192
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4204
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4208
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4212
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4212
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4216
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.102
	li t6, 4220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4208
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4220
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4208
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4228
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4232
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 4236
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4240
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4236
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4232
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4244
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4248
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4256
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4260
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4268
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.103
	li t6, 4272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4260
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4276
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4272
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4248
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4260
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4280
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4284
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 4288
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4292
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4288
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4284
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4296
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4300
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4308
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4312
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4316
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4316
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4320
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.104
	li t6, 4324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4312
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4324
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4312
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4332
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4336
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 4340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4344
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4340
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4336
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4348
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4352
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4360
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4364
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4368
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4368
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4372
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.105
	li t6, 4376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4364
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4376
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4352
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4364
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4384
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4388
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 84
	li t6, 4392
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4396
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4392
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4388
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4400
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4404
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4412
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4416
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4420
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4424
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.106
	li t6, 4428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4416
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4432
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4428
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4404
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4416
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4436
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4440
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 85
	li t6, 4444
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4448
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4444
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4440
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4452
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4456
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4464
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4468
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4472
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4476
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.107
	li t6, 4480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4468
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4480
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4468
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4488
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4492
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 4496
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4496
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4500
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4496
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4492
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4504
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4508
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4516
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4520
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4524
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4528
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.108
	li t6, 4532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4520
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4536
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4532
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4508
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4520
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4540
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4544
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 87
	li t6, 4548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4552
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4548
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4544
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4556
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4560
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4568
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4572
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4576
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4576
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4580
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.109
	li t6, 4584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4572
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4588
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4584
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4560
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4572
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4592
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4596
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 88
	li t6, 4600
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4600
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4604
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4600
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4596
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4608
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4612
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4620
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4624
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4628
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4632
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.110
	li t6, 4636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4624
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4640
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4636
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4624
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4644
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4648
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 89
	li t6, 4652
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4656
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4652
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4648
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4660
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4664
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4672
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4676
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4680
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4680
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4684
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.111
	li t6, 4688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4676
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4692
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4688
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4664
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4676
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4696
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4700
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 90
	li t6, 4704
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4708
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4704
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4700
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4712
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4716
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4724
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4728
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4732
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4732
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4736
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.112
	li t6, 4740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4728
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4740
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4716
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4728
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4748
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4752
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 91
	li t6, 4756
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4760
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4756
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4752
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4764
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4768
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4776
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4780
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4784
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4784
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4788
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.113
	li t6, 4792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4780
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4796
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4792
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4780
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 4800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4800
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4804
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 92
	li t6, 4808
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4812
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4808
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4816
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4820
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4828
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4832
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4836
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4840
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.114
	li t6, 4844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4832
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4844
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4820
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4832
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 4852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4852
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4856
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 4860
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4864
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4860
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4856
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4868
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4872
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4880
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4884
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4888
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 4892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4888
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4892
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.115
	li t6, 4896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4884
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4896
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4872
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4884
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 4904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4904
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4908
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 4912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4916
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4912
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4908
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4920
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4924
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4932
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4936
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4940
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 119
	li t6, 4944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4940
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4944
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.116
	li t6, 4948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4936
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4948
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4936
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 4956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4956
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 4960
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 2
	li t6, 4964
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 4968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4968
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 4964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4964
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 4972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4960
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4972
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 4976
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 4984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4984
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 4988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4988
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 4992
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 4996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4992
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4996
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.117
	li t6, 5000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 4988
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5004
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5000
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 4976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 4988
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5008
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5012
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 3
	li t6, 5016
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5016
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5020
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5016
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5012
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5024
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5028
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5036
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5040
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5044
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5044
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5048
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.118
	li t6, 5052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5040
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5056
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5052
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5040
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5060
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5064
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5068
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5068
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5072
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5068
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5064
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5076
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5080
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5088
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5092
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5096
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5096
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5100
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.119
	li t6, 5104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5092
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5108
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5104
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5080
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5092
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5112
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5116
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 5
	li t6, 5120
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5120
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5124
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5120
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5116
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5128
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5140
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5144
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5148
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5148
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5152
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.120
	li t6, 5156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5144
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5160
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5156
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5144
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5164
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5168
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 6
	li t6, 5172
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5176
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5172
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5180
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5184
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5192
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5196
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5200
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5200
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5204
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.121
	li t6, 5208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5196
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5212
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5208
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5184
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5196
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5216
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5220
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 5224
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5228
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5224
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5220
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5232
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5236
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5244
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5248
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5252
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5252
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5256
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.122
	li t6, 5260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5248
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5260
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5248
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5268
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5272
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 5276
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5276
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5280
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5276
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5272
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5284
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5288
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5296
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5300
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5304
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5304
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5308
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.123
	li t6, 5312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5300
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5316
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5312
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5300
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5320
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5324
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 9
	li t6, 5328
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5332
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5328
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5336
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5348
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5352
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5356
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5356
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5360
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.124
	li t6, 5364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5352
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5368
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5364
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5352
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5372
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5376
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 5380
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5384
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5380
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5376
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5388
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5392
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5400
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5404
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5408
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5408
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5412
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.125
	li t6, 5416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5404
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5416
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5404
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5424
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5428
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 11
	li t6, 5432
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5432
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5436
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5432
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5428
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5440
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5444
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5452
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5456
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5460
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 116
	li t6, 5464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5460
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5464
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.126
	li t6, 5468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5456
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5468
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5456
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5476
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5480
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5488
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5484
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5492
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5496
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5504
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5508
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5512
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 5516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5516
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.127
	li t6, 5520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5508
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5520
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5496
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5508
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5528
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5532
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 13
	li t6, 5536
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5536
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5540
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5536
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5532
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5544
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5556
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5560
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5564
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 169
	li t6, 5568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5564
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5568
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.128
	li t6, 5572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5560
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5576
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5572
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5560
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5580
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 14
	li t6, 5588
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5588
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5592
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5588
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5596
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5600
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5608
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5612
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5616
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 169
	li t6, 5620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5620
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.129
	li t6, 5624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5612
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5624
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5600
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5612
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5632
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5636
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 5640
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5640
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5644
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5640
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5636
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5648
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5652
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5660
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5664
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5668
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 113
	li t6, 5672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5668
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5672
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.130
	li t6, 5676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5664
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5680
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5676
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5664
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5684
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5688
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 16
	li t6, 5692
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5692
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5696
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5692
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5688
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5700
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5704
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5712
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5716
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5720
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 206
	li t6, 5724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5720
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5724
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.131
	li t6, 5728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5716
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5732
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5728
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5716
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5736
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5740
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 5744
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5748
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5744
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5752
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5756
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5764
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5768
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5772
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 241
	li t6, 5776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5776
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.132
	li t6, 5780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5768
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5784
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5780
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5768
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5788
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5792
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 18
	li t6, 5796
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5796
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5800
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5796
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5792
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5804
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5808
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5816
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5820
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5824
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 5828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5824
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5828
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.133
	li t6, 5832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5820
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5832
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5820
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5840
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5844
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 19
	li t6, 5848
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5852
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5848
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5844
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5856
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5860
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5868
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5872
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5876
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 113
	li t6, 5880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5876
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5880
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.134
	li t6, 5884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5872
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5888
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5884
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5872
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5892
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5896
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 20
	li t6, 5900
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5904
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5900
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5896
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5908
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5920
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5924
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5928
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 206
	li t6, 5932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5928
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5932
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.135
	li t6, 5936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5924
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5940
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5936
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5924
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5944
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 5948
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 21
	li t6, 5952
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 5956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5956
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 5952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5952
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5948
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5960
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 5964
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 5972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5972
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 5976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5976
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 5980
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 241
	li t6, 5984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5980
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5984
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.136
	li t6, 5988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5976
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 5992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5992
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5988
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 5964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 5976
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 5996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 5996
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6000
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 22
	li t6, 6004
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6004
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6008
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6004
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6000
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6012
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6016
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6024
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6028
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6032
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 6036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6032
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6036
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.137
	li t6, 6040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6028
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6044
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6040
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6016
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6028
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6048
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6052
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 23
	li t6, 6056
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6056
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6060
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6056
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6064
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6068
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6076
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6080
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6084
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 88
	li t6, 6088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6084
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6088
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.138
	li t6, 6092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6080
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6096
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6092
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6068
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6080
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6100
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 24
	li t6, 6108
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6108
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6112
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6108
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6116
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6120
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6128
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6132
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6136
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 96
	li t6, 6140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6140
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.139
	li t6, 6144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6132
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6148
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6144
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6120
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6132
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6152
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6156
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 25
	li t6, 6160
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6160
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6164
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6160
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6168
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6172
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6180
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6184
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6188
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 96
	li t6, 6192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6188
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6192
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.140
	li t6, 6196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6184
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6200
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6196
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6184
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6204
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6208
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 6212
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6212
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6216
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6212
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6208
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6220
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6224
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6232
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6236
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6240
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 14
	li t6, 6244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6240
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6244
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.141
	li t6, 6248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6236
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6252
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6248
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6236
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6256
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6260
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 27
	li t6, 6264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6268
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6264
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6272
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6276
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6284
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6288
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6292
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 48
	li t6, 6296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6296
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.142
	li t6, 6300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6288
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6304
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6300
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6276
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6288
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6308
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6312
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 6316
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6316
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6320
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6316
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6312
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6324
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6328
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6336
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6340
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6344
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 48
	li t6, 6348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6344
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6348
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.143
	li t6, 6352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6340
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6356
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6352
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6340
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6360
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6364
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 29
	li t6, 6368
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6368
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6372
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6368
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6376
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6380
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6388
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6392
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6396
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 31
	li t6, 6400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6396
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6400
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.144
	li t6, 6404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6392
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6408
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6404
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6392
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6412
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6416
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 30
	li t6, 6420
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6424
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6420
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6416
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6428
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6432
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6440
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6444
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6448
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 9
	li t6, 6452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6448
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6452
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.145
	li t6, 6456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6444
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6460
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6456
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6432
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6444
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, s
	li t6, 6464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6464
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6468
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 31
	li t6, 6472
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6476
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6472
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6468
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6480
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 12
	li t6, 6492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6492
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call myNew
	mv t2, a0
	li t6, 6496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6496
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 0
	li t6, 6500
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 1
	li t6, 6504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6500
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6504
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, .libro.str.146
	li t6, 6508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6496
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6508
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	li t6, 6484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6496
	add t6, t6, sp
	lw t1, 0(t6)
	sw t1, 0(t0)
	la t2, c
	li t6, 6516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6516
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 6524
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6528
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6524
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6532
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6536
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6540
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6544
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 6552
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6552
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6556
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6552
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6560
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6564
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6540
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6568
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6572
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6576
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6580
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 6584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6588
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6584
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6592
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6596
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6572
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6600
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6604
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6608
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6612
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 6616
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6620
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6616
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6624
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6628
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6604
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6632
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6636
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6640
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6644
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 6648
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6648
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6652
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6648
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6656
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6660
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6636
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6664
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6668
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6672
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6676
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 6680
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6680
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6684
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6680
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6688
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6692
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6668
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6696
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6700
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6704
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6708
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 6712
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6712
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6716
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6712
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6720
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6724
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6700
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6728
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6732
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6736
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6740
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 66
	li t6, 6744
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6748
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6744
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6752
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6756
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6732
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6760
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6764
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6768
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6772
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 6776
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6776
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6780
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6776
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6784
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6788
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6764
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6792
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6796
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6800
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6804
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 6808
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6812
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6808
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6816
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6820
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6796
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6824
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6828
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6832
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6836
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 6840
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6840
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6844
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6840
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6848
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6852
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6828
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6856
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6860
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6864
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6868
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 6872
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6872
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6876
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6872
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6880
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6884
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6888
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6892
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6896
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6900
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 6904
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6904
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6908
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6904
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6912
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6916
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6892
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6920
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6924
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6928
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6932
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 6936
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6936
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6940
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6936
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6944
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6948
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6952
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6956
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6960
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6964
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 6968
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 6972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6968
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6972
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 6968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6968
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 6976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6976
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6980
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6956
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 6984
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 6988
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 6992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6992
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 6996
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 7000
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7000
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7004
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7000
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7008
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7012
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 6988
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7016
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7020
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7024
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7028
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 7032
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7032
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7036
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7032
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7040
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7044
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7020
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7048
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7052
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7056
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7060
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 7064
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7064
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7068
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7064
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7072
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7076
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7080
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7084
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7088
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7092
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 89
	li t6, 7096
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7096
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7100
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7096
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7104
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7108
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7084
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7112
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7116
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7120
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7124
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 7128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7128
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 7136
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7140
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7136
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7144
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7148
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7152
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7156
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7160
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 7164
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7168
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7164
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7160
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7172
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7176
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7152
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7180
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7184
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7188
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7192
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 7196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7200
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7196
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7192
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7204
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7208
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7184
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7212
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7216
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7220
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7224
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 7228
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7232
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7228
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7236
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7240
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7216
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7244
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7248
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7252
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7256
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 7260
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7264
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7260
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7256
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7268
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7272
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7248
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7276
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7280
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7284
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7288
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 7292
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7296
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7292
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7300
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7304
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7280
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7308
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7312
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7316
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7320
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 7324
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7328
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7324
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7320
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7332
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7336
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7312
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7340
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7344
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7348
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7352
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 7356
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7356
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7360
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7356
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7352
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7364
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7368
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7344
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7372
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7376
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7380
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7384
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 7388
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7388
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7392
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7388
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7384
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7396
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7400
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7376
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7404
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7408
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7412
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7416
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 7420
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7424
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7420
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7416
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7428
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7432
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7408
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7436
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7440
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7444
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7448
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 7452
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7452
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7456
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7452
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7448
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7460
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7464
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7440
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7468
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7472
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7476
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7480
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 7484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7488
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7484
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7492
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7496
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7500
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7504
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7508
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7512
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 7516
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7520
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7516
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7524
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7528
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7504
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7532
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7536
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7540
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7544
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 7548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7552
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7548
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7544
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7556
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7560
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7536
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7564
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7568
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7572
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7576
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 7580
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7584
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7580
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7576
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7588
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7592
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7568
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7596
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7600
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 7604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7604
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7600
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7608
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7612
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7616
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7620
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 7624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7628
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7624
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7620
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7632
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7636
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7640
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7644
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 7648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7648
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7652
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7656
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7660
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7664
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 7668
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7668
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7672
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7668
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7664
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7676
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7680
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7656
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7684
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7688
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7692
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7696
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 7700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7700
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7704
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 7708
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7712
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7708
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7716
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7720
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7724
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7728
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7732
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 7736
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7736
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7740
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7736
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7732
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7744
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7748
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7724
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7752
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7756
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7760
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7764
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 7768
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7772
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7768
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7764
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7776
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7780
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7784
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7788
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7792
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7796
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 7800
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7800
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7804
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7800
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7796
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7808
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7812
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7788
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7816
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7820
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7824
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7828
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 7832
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7832
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7836
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7832
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7828
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7840
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7844
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7820
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7848
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7852
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7856
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7860
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 7864
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7864
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7868
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7864
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7872
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7876
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7852
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7880
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7884
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7888
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7892
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 16
	li t6, 7896
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7896
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7900
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7896
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7892
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7904
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7908
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7884
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7912
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7916
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7920
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7924
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 7928
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7928
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7932
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7928
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7936
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7940
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7916
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7944
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7948
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7952
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7956
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 7960
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7960
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7964
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7960
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 7968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7956
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7968
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7972
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7948
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7976
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 7980
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 7984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7984
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 7988
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 7992
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 7996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7992
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 7996
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 7992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7992
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7988
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8000
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8004
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 7980
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8008
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8012
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8016
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8020
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 8024
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8024
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8028
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8024
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8020
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8032
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8036
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8012
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8040
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8044
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8048
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8052
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 8056
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8056
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8060
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8056
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8064
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8068
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8044
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8072
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8076
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8080
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8084
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 8088
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8088
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8092
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8088
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8084
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8096
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8100
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8076
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8104
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8108
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8112
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8116
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 8120
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8120
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8124
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8120
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8116
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8128
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8132
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8108
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8136
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8140
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8144
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8148
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 8152
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8152
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8156
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8152
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8148
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8160
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8164
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8140
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8168
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8172
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 8176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8176
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8180
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8184
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8188
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8192
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 16
	li t6, 8196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8200
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8196
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8192
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8204
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8208
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8184
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8212
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8216
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 8220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8220
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8216
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8224
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8228
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8232
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8236
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 8240
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8240
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8244
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8240
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8248
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8252
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8256
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8260
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8264
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8268
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 8272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8272
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8276
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 8280
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8280
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8284
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8280
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8276
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8288
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8292
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8296
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8300
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8304
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 8308
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8308
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8312
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8308
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8304
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8316
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8320
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8324
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8328
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8332
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8336
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 8340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8344
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8340
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8336
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8348
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8352
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8356
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8360
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8364
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8368
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 8372
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8372
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8376
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8372
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8368
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8380
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8384
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8360
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8388
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8392
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8396
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8400
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 8404
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8404
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8408
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8404
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8400
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8412
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8416
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8420
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8424
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8428
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8432
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 8436
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8436
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8440
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8436
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8432
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8444
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8448
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8424
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8452
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8456
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8460
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8464
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 8468
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8468
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8472
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8468
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8464
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8476
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8480
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8484
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8488
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8492
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8496
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 8500
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8500
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8504
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8500
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8496
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8508
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8512
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8488
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8516
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8520
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8524
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8528
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 8532
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8532
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8536
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8532
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8528
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8540
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8544
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8548
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8552
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8556
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8560
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 8564
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8564
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8568
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8564
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8560
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8572
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8576
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8552
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8580
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8584
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8588
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8592
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 8596
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8596
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8600
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8596
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8592
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8604
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8608
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8612
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8616
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8620
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 8628
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8632
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8628
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8636
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8640
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8644
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8648
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8652
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8656
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 8660
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8660
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8664
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8660
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8656
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8668
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8672
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8648
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8676
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8680
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8684
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8688
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 8692
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8692
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8696
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8692
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8688
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8700
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8704
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8680
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8708
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8712
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8716
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8720
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 8724
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8724
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8728
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8724
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8720
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8732
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8736
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8712
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8740
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8744
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 8748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8748
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8752
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8756
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8760
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8764
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 8768
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8772
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8768
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8764
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8776
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8780
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8784
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8788
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 8792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8792
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8788
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8796
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8800
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8804
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8808
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 8812
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8812
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8816
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8812
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8820
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8824
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8800
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8828
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8832
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8836
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8840
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 8844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8844
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8848
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 8852
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8852
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8856
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8852
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8860
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8864
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8868
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8872
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8876
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 8880
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8880
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8884
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8880
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8876
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8888
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8892
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8896
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8900
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8904
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8908
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 8912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8916
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8912
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8908
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8920
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8924
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8928
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8932
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8936
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8940
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 8944
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8944
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8948
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8944
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8940
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8952
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8956
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8960
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8964
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 8968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8968
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8972
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 8976
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 8980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8980
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 8976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8976
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 8984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8972
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8984
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8988
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 8992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 8992
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 8996
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9000
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9004
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 9008
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9008
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9012
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9008
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9004
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9016
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9020
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 8996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9024
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9028
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9032
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9036
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 18
	li t6, 9040
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9040
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9044
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9040
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9036
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9048
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9052
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9056
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9060
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9064
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9068
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 9072
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9072
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9076
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9072
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9068
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9080
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9084
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9088
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9092
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9096
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9100
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 9104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9108
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9104
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9100
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9112
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9116
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9120
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9124
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9128
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 9136
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9140
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9136
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9144
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9148
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9124
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9152
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9156
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9160
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9164
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 9168
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9172
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9168
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9176
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9180
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9184
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9188
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9192
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 9200
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9200
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9204
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9200
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9208
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9212
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9188
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9216
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9220
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9224
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9228
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 9232
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9232
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9236
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9232
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9240
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9244
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9220
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9248
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9252
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9256
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9260
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 9264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9268
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9264
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9272
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9276
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9252
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9280
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9284
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9288
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9292
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 9296
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9300
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9296
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9304
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9308
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9284
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9312
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9316
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 9320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9320
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9316
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9324
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9328
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9332
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9336
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 18
	li t6, 9340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9344
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9340
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9336
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9348
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9352
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9356
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9360
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 9364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9364
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9360
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9368
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9372
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9376
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9380
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 9384
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9384
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9388
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9384
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9392
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9396
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9372
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9400
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9404
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9408
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9412
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 9416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9416
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9420
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 9424
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9424
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9428
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9424
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9432
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9436
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9440
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9444
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9448
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 9452
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9452
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9456
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9452
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9448
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9460
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9464
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9440
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9468
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9472
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9476
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9480
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 9484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9488
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9484
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9492
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9496
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9500
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9504
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9508
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9512
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 9516
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9520
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9516
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9524
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9528
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9504
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9532
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9536
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9540
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9544
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 9548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9552
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9548
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9544
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9556
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9560
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9536
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9564
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9568
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9572
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9576
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 9580
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9584
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9580
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9576
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9588
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9592
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9568
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9596
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9600
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9604
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9608
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 19
	li t6, 9612
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9616
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9612
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9608
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9620
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9624
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9600
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9628
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9632
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9636
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9640
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 9644
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9648
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9644
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9640
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9652
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9656
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9632
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9660
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9664
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9668
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9672
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 9676
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9680
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9676
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9672
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9684
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9688
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9664
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9692
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9696
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9700
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9704
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 9708
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9712
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9708
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9716
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9720
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9696
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9724
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9728
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9732
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9736
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 9740
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9744
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9740
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9736
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9748
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9752
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9728
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9756
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9760
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9764
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9768
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 9772
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9776
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9772
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9780
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9784
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9760
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9788
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9792
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9796
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9800
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 9804
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9808
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9804
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9800
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9812
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9816
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9792
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9820
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9824
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9828
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9832
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 9836
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9840
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9836
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9832
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9844
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9848
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9824
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9852
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9856
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9860
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9864
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 9868
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9872
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9868
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9864
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9876
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9880
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9856
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9884
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9888
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 9892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9892
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9888
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9896
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9900
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9904
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9908
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 19
	li t6, 9912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9916
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9912
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9908
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9920
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9924
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9928
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9932
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 9936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9936
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9940
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9944
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 9948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9948
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9952
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 9956
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 9960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9956
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9960
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9956
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9964
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9968
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9944
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 9972
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 9976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9976
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 9980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9980
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9984
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 9988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9988
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 9992
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 9996
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10000
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 9996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9996
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 9992
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10004
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10008
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10012
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10016
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10020
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 10024
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10024
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10028
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10024
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10020
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10032
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10036
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10012
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10040
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10044
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10048
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10052
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 10056
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10056
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10060
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10056
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10064
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10068
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10044
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10072
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10076
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10080
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10084
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 10088
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10088
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10092
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10088
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10084
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10096
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10100
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10076
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10104
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10108
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10112
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10116
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 10120
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10120
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10124
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10120
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10116
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10128
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10132
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10108
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10136
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10140
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10144
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10148
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 10152
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10152
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10156
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10152
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10148
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10160
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10164
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10140
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10168
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10172
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10176
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10180
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 20
	li t6, 10184
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10184
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10188
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10184
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10180
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10192
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10196
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10200
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10204
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10208
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10212
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 10216
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10216
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10220
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10216
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10212
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10224
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10228
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10204
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10232
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10236
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10240
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10244
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 10248
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10248
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10252
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10248
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10244
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10256
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10260
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10264
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10268
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10272
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10276
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 10280
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10280
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10284
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10280
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10276
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10288
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10292
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10268
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10296
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10300
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10304
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10308
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 10312
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10312
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10316
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10312
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10308
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10320
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10324
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10328
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10332
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10336
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 10344
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10344
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10348
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10344
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10352
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10356
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10332
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10360
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10364
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10368
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10372
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 10376
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10376
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10380
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10376
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10372
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10384
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10388
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10392
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10396
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10400
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10404
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 10408
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10408
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10412
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10408
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10404
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10416
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10420
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10396
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10424
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10428
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10432
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10436
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 10440
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10440
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10444
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10440
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10436
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10448
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10452
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10428
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10456
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10460
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 10464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10464
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10460
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10468
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10472
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10476
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10480
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 20
	li t6, 10484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10488
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10484
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10492
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10496
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10500
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10504
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 10508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10508
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10504
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10512
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10516
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10520
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10524
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 10528
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10528
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10532
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10528
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10536
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10540
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10544
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10548
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10552
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10556
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 10560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10560
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10564
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 10568
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10568
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10572
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10568
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10564
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10576
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10580
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10584
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10588
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10592
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 10596
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10596
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10600
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10596
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10592
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10604
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10608
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10612
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10616
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10620
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 10628
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10632
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10628
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10636
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10640
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10644
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10648
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10652
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10656
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 10660
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10660
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10664
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10660
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10656
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10668
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10672
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10648
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10676
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10680
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10684
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10688
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 10692
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10692
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10696
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10692
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10688
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10700
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10704
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10680
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10708
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10712
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10716
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10720
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 10724
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10724
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10728
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10724
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10720
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10732
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10736
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10712
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10740
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10744
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10748
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10752
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 21
	li t6, 10756
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10760
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10756
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10752
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10764
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10768
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10772
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10776
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10780
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10784
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 10788
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10788
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10792
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10788
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10784
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10796
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10800
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10776
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10804
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10808
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10812
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10816
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 10820
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10820
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10824
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10820
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10816
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10828
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10832
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10836
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10840
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10844
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10848
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 10852
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10852
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10856
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10852
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10860
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10864
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10840
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10868
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10872
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10876
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10880
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 10884
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10884
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10888
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10884
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10880
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10892
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10896
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10872
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10900
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10904
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10908
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 10916
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10916
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10920
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10916
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10924
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10928
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10904
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10932
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10936
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10940
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10944
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 10948
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10948
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10952
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10948
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10944
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10956
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10960
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10936
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10964
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10968
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 10972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10972
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10976
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 10980
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 10984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10980
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10984
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 10980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10980
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 10988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10988
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 10992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10992
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 10996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 10968
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 10996
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11000
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11004
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11008
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 11012
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11012
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11016
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11012
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11008
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11020
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11024
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11000
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11028
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11032
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 11036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11036
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11032
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11040
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11044
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11048
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11052
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 21
	li t6, 11056
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11056
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11060
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11056
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11064
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11068
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11044
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11072
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11076
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 11080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11080
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11076
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11084
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11088
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11092
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11096
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 11100
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11100
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11104
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11100
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11096
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11108
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11112
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11088
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11116
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11120
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11124
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11128
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 11132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11132
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11136
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 11140
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11140
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11144
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11140
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11148
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11152
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11156
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11160
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11164
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 11168
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11172
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11168
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11176
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11180
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11184
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11188
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11192
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 11200
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11200
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11204
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11200
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11208
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11212
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11188
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11216
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11220
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11224
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11228
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 11232
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11232
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11236
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11232
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11240
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11244
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11220
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11248
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11252
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11256
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11260
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 11264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11268
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11264
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11272
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11276
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11252
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11280
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11284
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11288
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11292
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 11296
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11300
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11296
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11304
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11308
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11284
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11312
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11316
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11320
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11324
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 22
	li t6, 11328
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11332
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11328
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11336
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11340
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11316
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11344
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11348
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11352
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11356
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 11360
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11360
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11364
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11360
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11356
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11368
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11372
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11348
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11376
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11380
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11384
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11388
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 11392
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11396
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11392
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11388
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11400
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11404
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11408
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11412
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11416
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11420
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 11424
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11424
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11428
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11424
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11432
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11436
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11412
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11440
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11444
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11448
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11452
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 11456
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11460
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11456
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11452
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11464
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11468
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11472
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11476
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11480
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 11488
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11488
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11492
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11488
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11496
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11500
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11476
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11504
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11508
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11512
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11516
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 11520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11524
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11520
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11528
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11532
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11508
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11536
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11540
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11544
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 11552
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11552
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11556
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11552
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11560
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11564
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11540
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11568
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11572
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11576
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11580
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 11584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11588
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11584
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11592
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11596
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11572
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11600
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11604
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 11608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11608
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11604
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11612
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11616
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11620
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 22
	li t6, 11628
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11632
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11628
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11636
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11640
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11644
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11648
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 11652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11652
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11648
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11656
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11660
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11664
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11668
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 11672
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11672
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11676
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11672
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11668
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11680
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11684
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11660
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11688
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11692
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11696
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11700
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 11704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11704
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11708
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 11712
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11712
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11716
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11712
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11720
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11724
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11728
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11732
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11736
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 11740
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11744
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11740
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11736
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11748
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11752
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11728
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11756
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11760
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11764
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11768
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 11772
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11776
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11772
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11780
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11784
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11760
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11788
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11792
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11796
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11800
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 11804
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11808
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11804
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11800
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11812
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11816
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11792
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11820
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11824
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11828
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11832
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 11836
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11840
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11836
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11832
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11844
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11848
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11824
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11852
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11856
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11860
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11864
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 11868
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11872
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11868
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11864
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11876
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11880
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11856
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11884
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11888
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11892
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11896
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 23
	li t6, 11900
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11904
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11900
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11896
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11908
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11912
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11888
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11916
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11920
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11924
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11928
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 11932
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11936
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11932
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11928
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11940
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11944
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11920
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11948
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11952
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11956
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11960
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 11964
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 11968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11968
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11964
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 11972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11960
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11972
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11976
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 11980
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 11984
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 11988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11988
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 11992
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 11996
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12000
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 11996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11996
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11992
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12004
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12008
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 11984
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12012
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12016
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12020
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12024
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 12028
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12032
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12028
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12024
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12036
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12040
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12016
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12044
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12048
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12052
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12056
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 12060
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12064
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12060
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12056
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12068
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12072
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12048
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12076
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12080
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12084
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12088
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 12092
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12096
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12092
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12088
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12100
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12104
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12080
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12108
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12112
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12116
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12120
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 12124
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12124
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12128
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12124
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12120
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12132
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12136
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12112
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12140
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12144
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12148
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12152
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 12156
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12160
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12156
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12152
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12164
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12168
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12144
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12172
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12176
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 12180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12180
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12176
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12184
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12188
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12192
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 23
	li t6, 12200
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12200
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12204
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12200
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12208
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12212
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12188
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12216
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12220
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 12224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12224
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12220
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12228
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12232
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12236
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12240
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 12244
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12244
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12248
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12244
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12240
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12252
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12256
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12232
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12260
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12264
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12268
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12272
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 12276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12276
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12280
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 12284
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12284
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12288
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12284
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12280
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12292
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12296
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12300
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12304
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12308
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 12312
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12312
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12316
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12312
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12308
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12320
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12324
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12328
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12332
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12336
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 12344
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12344
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12348
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12344
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12352
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12356
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12332
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12360
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12364
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12368
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12372
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 86
	li t6, 12376
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12376
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12380
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12376
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12372
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12384
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12388
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12392
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12396
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12400
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12404
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 12408
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12408
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12412
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12408
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12404
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12416
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12420
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12396
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12424
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12428
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12432
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12436
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 12440
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12440
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12444
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12440
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12436
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12448
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12452
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12428
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12456
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12460
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12464
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12468
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 24
	li t6, 12472
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12476
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12472
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12468
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12480
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12484
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12460
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12488
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12492
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12496
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12500
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 12504
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12504
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12508
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12504
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12500
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12512
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12516
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12492
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12520
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12524
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12528
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12532
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 12536
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12536
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12540
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12536
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12532
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12544
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12548
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12552
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12556
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12560
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12564
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 12568
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12568
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12572
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12568
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12564
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12576
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12580
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12556
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12584
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12588
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12592
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12596
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 12600
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12600
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12604
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12600
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12596
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12608
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12612
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12588
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12616
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12620
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12624
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12628
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 12632
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12632
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12636
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12632
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12640
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12644
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12620
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12648
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12652
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12656
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12660
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 12664
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12664
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12668
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12664
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12660
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12672
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12676
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12680
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12684
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12688
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12692
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 12696
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12696
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12700
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12696
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12692
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12704
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12708
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12684
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12712
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12716
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12720
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12724
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 12728
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12728
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12732
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12728
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12724
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12736
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12740
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12716
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12744
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12748
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 12752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12752
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12748
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12756
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12760
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12764
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12768
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 24
	li t6, 12772
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12776
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12772
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12780
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12784
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12760
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12788
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12792
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 12796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12796
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12792
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12800
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12804
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12808
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12812
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 12816
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12816
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12820
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12816
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12812
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12824
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12828
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12832
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12836
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12840
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12844
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 12848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12848
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12852
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 91
	li t6, 12856
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12856
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12860
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12856
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12852
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12864
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12868
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12872
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12876
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12880
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 12884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12884
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12888
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 12892
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12892
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12896
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12892
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12888
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12900
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12904
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12908
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12912
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12916
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 12920
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12920
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12924
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12920
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12916
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12928
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12932
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12908
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12936
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12940
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12944
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12948
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 12952
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12956
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12952
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12948
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12960
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12964
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12940
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12968
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12972
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 12976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12976
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 12980
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 12984
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 12988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12984
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12988
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 12984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12984
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 12992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12980
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 12992
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 12996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12996
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 12972
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13000
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13004
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13008
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13012
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 13016
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13016
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13020
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13016
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13012
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13024
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13028
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13004
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13032
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13036
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13040
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13044
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 13048
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13048
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13052
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13048
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13044
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13056
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13060
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13036
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13064
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13068
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13072
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13076
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 13080
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13080
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13084
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13080
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13076
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13088
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13092
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13068
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13096
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13100
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13104
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13108
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 13112
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13112
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13116
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13112
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13108
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13120
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13124
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13100
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13128
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13132
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13136
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13140
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 13144
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13144
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13148
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13144
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13140
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13152
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13156
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13160
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13164
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13168
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13172
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 13176
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13176
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13180
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13176
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13184
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13188
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13192
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13196
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13200
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13204
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 13208
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13208
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13212
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13208
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13204
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13216
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13220
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13224
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13228
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13232
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13236
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 13240
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13240
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13244
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13240
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13248
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13252
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13256
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13260
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13264
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13268
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 13272
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13272
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13276
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13272
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13268
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13280
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13284
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13288
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13292
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13296
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13300
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 85
	li t6, 13304
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13304
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13308
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13304
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13312
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13316
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13320
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13324
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13328
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13332
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 13336
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13336
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13340
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13336
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13332
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13344
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13348
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13352
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13356
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13360
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13364
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 13368
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13368
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13372
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13368
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13376
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13380
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13356
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13384
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13388
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13392
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13396
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 13400
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13400
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13404
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13400
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13396
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13408
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13412
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13388
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13416
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13420
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13424
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13428
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 13432
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13432
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13436
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13432
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13428
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13440
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13444
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13448
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13452
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13456
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13460
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 13464
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13464
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13468
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13464
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13460
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13472
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13476
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13452
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13480
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13484
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13488
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13492
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 13496
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13496
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13500
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13496
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13492
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13504
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13508
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13512
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13516
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13520
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13524
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 13528
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13528
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13532
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13528
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13536
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13540
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13544
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13548
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13552
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13556
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 13560
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13560
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13564
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13560
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13556
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13568
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13572
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13576
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13580
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13584
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13588
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 13592
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13592
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13596
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13592
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13588
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13600
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13604
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13608
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13612
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13616
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13620
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 20
	li t6, 13624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13628
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13624
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13620
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13632
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13636
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13640
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13644
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13648
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13652
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 21
	li t6, 13656
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13656
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13660
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13656
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13664
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13668
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13672
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13676
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13680
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13684
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 13688
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13688
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13692
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13688
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13684
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13696
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13700
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13704
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13708
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13712
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13716
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 13720
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13720
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13724
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13720
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13716
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13728
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13732
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13736
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13740
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13744
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13748
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 13752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13752
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13756
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 13760
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13760
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13764
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13760
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13768
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13772
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13776
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13780
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13784
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 13788
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13788
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13792
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13788
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13784
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13796
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13800
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13776
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13804
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13808
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13812
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13816
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 13820
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13820
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13824
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13820
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13816
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13828
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13832
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13836
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13840
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13844
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13848
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 13852
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13852
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13856
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13852
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13860
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13864
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13840
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13868
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13872
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13876
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13880
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 13884
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13884
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13888
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13884
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13880
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13892
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13896
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13872
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13900
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13904
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13908
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 13916
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13916
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13920
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13916
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13924
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13928
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13904
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13932
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13936
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13940
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13944
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 13948
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13948
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13952
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13948
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13944
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13956
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13960
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13936
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13964
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13968
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 13972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13972
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13976
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 13980
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 13984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13980
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13984
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 13980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13980
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 13988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13988
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 13992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13992
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 13996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 13968
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 13996
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14000
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14004
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14008
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 14012
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14012
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14016
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14012
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14008
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14020
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14024
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14000
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14028
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14032
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14036
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14040
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 14044
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14044
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14048
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14044
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14040
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14052
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14056
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14032
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14060
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14064
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14068
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14072
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 14076
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14076
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14080
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14076
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14072
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14084
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14088
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14064
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14092
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14096
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14100
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 14108
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14108
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14112
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14108
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14116
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14120
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14096
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14124
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14128
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14132
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14136
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 14140
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14140
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14144
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14140
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14148
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14152
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14128
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14156
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14160
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14164
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14168
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 85
	li t6, 14172
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14176
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14172
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14180
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14184
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14160
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14188
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14192
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14196
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14200
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 14204
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14204
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14208
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14204
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14200
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14212
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14216
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14192
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14220
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14224
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14228
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14232
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 14236
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14240
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14236
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14232
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14244
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14248
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14252
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14256
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14260
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 14268
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14268
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14272
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14268
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14276
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14280
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14256
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14284
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14288
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14292
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14296
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 14300
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14304
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14300
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14308
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14312
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14316
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14320
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14324
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14328
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 14332
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14332
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14336
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14332
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14340
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14344
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14320
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14348
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14352
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14356
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14360
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 14364
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14368
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14364
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14360
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14372
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14376
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14352
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14380
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14384
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14388
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14392
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 14396
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14396
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14400
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14396
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14404
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14408
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14384
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14412
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14416
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14420
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14424
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 14428
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14428
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14432
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14428
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14424
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14436
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14440
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14416
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14444
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14448
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14452
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14456
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 14460
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14460
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14464
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14460
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14468
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14472
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14448
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14476
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14480
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14484
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14488
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 20
	li t6, 14492
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14492
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14496
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14492
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14488
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14500
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14504
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14508
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14512
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14516
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 21
	li t6, 14524
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14528
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14524
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14532
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14536
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14540
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14544
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14548
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14552
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 14556
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14556
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14560
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14556
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14552
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14564
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14568
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14544
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14572
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14576
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14580
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 14588
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14588
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14592
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14588
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14596
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14600
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14576
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14604
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14608
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14612
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14616
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 14620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14620
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 14628
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14632
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14628
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14636
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14640
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14644
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14648
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14652
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 14656
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14656
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14660
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14656
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14664
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14668
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14672
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14676
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14680
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14684
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 14688
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14688
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14692
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14688
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14684
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14696
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14700
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14704
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14708
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14712
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14716
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 14720
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14720
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14724
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14720
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14716
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14728
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14732
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14736
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14740
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14744
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14748
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 14752
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14752
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14756
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14752
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14748
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14760
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14764
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14768
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14772
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14776
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14780
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 14784
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14784
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14788
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14784
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14780
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14792
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14796
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14800
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14804
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14808
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14812
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 14816
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14816
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14820
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14816
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14812
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14824
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14828
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14832
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14836
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14840
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14844
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 14848
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14852
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14848
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14844
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14856
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14860
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14864
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14868
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14872
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14876
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 14880
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14880
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14884
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14880
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14876
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14888
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14892
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14896
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14900
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14904
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14908
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 14912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14916
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14912
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14908
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14920
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14924
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14928
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14932
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14936
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14940
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 14944
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14944
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14948
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14944
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14940
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14952
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14956
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14960
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14964
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 14968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14968
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14972
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 14976
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 14980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14980
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 14976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14976
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 14984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14972
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14984
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14988
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 14992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 14992
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 14996
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15000
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15004
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 15008
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15008
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15012
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15008
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15004
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15016
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15020
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 14996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15024
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15028
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15032
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15036
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 15040
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15040
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15044
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15040
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15036
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15048
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15052
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15056
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15060
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15064
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15068
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 15072
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15072
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15076
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15072
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15068
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15080
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15084
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15088
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15092
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15096
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15100
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 15104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15108
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15104
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15100
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15112
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15116
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15120
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15124
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15128
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 15136
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15140
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15136
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15144
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15148
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15124
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15152
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15156
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15160
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15164
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 89
	li t6, 15168
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15172
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15168
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15176
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15180
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15184
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15188
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15192
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15196
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 15200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15200
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15204
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 15208
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15208
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15212
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15208
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15204
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15216
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15220
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15224
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15228
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15232
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 15236
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15240
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15236
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15232
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15244
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15248
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15252
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15256
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15260
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 15268
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15268
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15272
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15268
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15276
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15280
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15256
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15284
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15288
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15292
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15296
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 15300
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15304
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15300
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15308
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15312
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15316
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15320
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15324
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15328
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 15332
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15332
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15336
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15332
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15340
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15344
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15320
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15348
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15352
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15356
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15360
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 27
	li t6, 15364
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15368
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15364
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15360
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15372
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15376
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15352
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15380
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15384
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15388
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15392
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 15396
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15396
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15400
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15396
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15404
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15408
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15384
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15412
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15416
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15420
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15424
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 24
	li t6, 15428
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15428
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15432
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15428
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15424
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15436
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15440
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15416
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15444
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15448
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15452
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15456
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 15460
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15460
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15464
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15460
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15468
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15472
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15448
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15476
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15480
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15484
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15488
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 15492
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15492
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15496
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15492
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15488
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15500
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15504
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15508
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15512
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15516
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 15524
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15528
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15524
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15532
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15536
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15540
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15544
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15548
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15552
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 15556
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15556
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15560
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15556
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15552
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15564
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15568
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15544
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15572
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15576
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15580
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 15588
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15588
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15592
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15588
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15596
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15600
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15576
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15604
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15608
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15612
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15616
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 15620
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15620
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15624
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15620
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15628
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15632
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15608
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15636
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15640
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15644
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15648
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 15652
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15656
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15652
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15648
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15660
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15664
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15640
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15668
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15672
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15676
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15680
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 15684
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15684
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15688
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15684
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15680
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15692
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15696
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15672
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15700
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15704
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 15708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15708
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15712
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15716
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15720
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15724
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 15728
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15728
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15732
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15728
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15724
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15736
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15740
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15716
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15744
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15748
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15752
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15756
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 15760
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15760
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15764
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15760
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15756
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15768
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15772
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15748
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15776
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15780
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 15784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15784
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15780
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15788
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15792
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15796
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15800
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 15804
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15808
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15804
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15800
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15812
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15816
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15792
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15820
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15824
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15828
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15832
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 66
	li t6, 15836
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15840
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15836
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15832
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15844
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15848
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15824
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15852
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15856
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15860
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15864
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 15868
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15872
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15868
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15864
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15876
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15880
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15856
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15884
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15888
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15892
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15896
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 15900
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15904
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15900
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15896
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15908
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15912
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15888
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15916
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15920
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15924
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15928
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 15932
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15936
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15932
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15928
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15940
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15944
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15920
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15948
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15952
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15956
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15960
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 15964
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 15968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15968
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15964
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 15972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15960
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15972
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15976
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 15980
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 15984
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 15988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15988
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 15992
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 15996
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16000
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 15996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15996
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15992
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16004
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16008
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 15984
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16012
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16016
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16020
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16024
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 16028
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16032
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16028
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16024
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16036
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16040
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16016
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16044
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16048
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16052
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16056
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 16060
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16064
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16060
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16056
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16068
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16072
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16048
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16076
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16080
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16084
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16088
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 16092
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16096
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16092
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16088
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16100
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16104
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16080
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16108
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16112
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 16116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16116
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16112
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16120
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16124
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16128
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 16136
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16140
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16136
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16144
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16148
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16124
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16152
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16156
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16160
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16164
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 16168
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16172
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16168
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16176
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16180
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16184
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16188
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 16192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16192
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16188
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16196
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16200
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16204
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16208
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 16212
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16212
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16216
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16212
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16208
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16220
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16224
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16200
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16228
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16232
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16236
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16240
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 16244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16244
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16248
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 16252
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16252
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16256
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16252
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16248
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16260
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16264
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16268
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16272
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16276
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 16280
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16280
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16284
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16280
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16276
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16288
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16292
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16268
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16296
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16300
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16304
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16308
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 16312
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16312
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16316
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16312
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16308
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16320
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16324
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16328
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16332
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16336
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 16344
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16344
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16348
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16344
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16352
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16356
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16332
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16360
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16364
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16368
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16372
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 16376
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16376
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16380
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16376
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16372
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16384
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16388
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16364
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16392
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16396
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16400
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16404
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 16408
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16408
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16412
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16408
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16404
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16416
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16420
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16396
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16424
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16428
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16432
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16436
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 16440
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16440
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16444
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16440
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16436
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16448
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16452
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16428
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16456
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16460
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 16464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16464
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16460
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16468
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16472
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16476
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16480
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 16484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16488
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16484
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16492
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16496
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16500
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16504
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16508
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16512
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 16516
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16520
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16516
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16524
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16528
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16504
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16532
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16536
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 16540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16540
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16536
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16544
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16548
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16552
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16556
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 16560
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16560
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16564
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16560
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16556
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16568
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16572
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16576
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16580
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16584
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16588
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 66
	li t6, 16592
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16592
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16596
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16592
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16588
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16600
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16604
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16608
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16612
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16616
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16620
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 16624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16628
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16624
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16620
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16632
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16636
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16640
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16644
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16648
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16652
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 16656
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16656
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16660
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16656
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16664
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16668
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16672
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16676
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16680
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16684
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 16688
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16688
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16692
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16688
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16684
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16696
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16700
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16704
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16708
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16712
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16716
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 16720
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16720
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16724
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16720
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16716
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16728
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16732
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16736
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16740
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16744
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16748
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 16752
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16752
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16756
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16752
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16748
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16760
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16764
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16768
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16772
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16776
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16780
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 16784
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16784
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16788
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16784
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16780
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16792
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16796
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16800
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16804
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16808
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16812
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 14
	li t6, 16816
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16816
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16820
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16816
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16812
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16824
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16828
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16832
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16836
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16840
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16844
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 16
	li t6, 16848
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16852
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16848
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16844
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16856
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16860
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16864
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16868
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16872
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16876
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 16880
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16880
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16884
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16880
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16876
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16888
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16892
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16896
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16900
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16904
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16908
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 16912
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16916
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16912
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16908
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16920
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16924
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16928
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16932
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16936
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16940
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 16944
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16944
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16948
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16944
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16940
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16952
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16956
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16960
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16964
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 16968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16968
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16972
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 66
	li t6, 16976
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 16980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16980
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 16976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16976
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 16984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16972
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16984
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16988
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 16992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 16992
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 16996
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17000
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17004
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 17008
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17008
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17012
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17008
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17004
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17016
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17020
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 16996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17024
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17028
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17032
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17036
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 17040
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17040
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17044
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17040
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17036
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17048
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17052
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17056
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17060
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17064
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17068
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 17072
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17072
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17076
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17072
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17068
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17080
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17084
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17088
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17092
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17096
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17100
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 17104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17108
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17104
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17100
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17112
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17116
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17120
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17124
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17128
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 17136
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17140
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17136
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17144
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17148
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17124
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17152
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17156
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17160
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17164
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 17168
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17172
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17168
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17176
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17180
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17184
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17188
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17192
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17200
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17200
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17204
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17200
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17208
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17212
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17188
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17216
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17220
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17224
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17228
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 16
	li t6, 17232
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17232
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17236
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17232
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17240
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17244
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17220
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17248
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17252
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17256
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17260
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 17264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17268
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17264
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17272
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17276
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17252
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17280
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17284
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17288
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17292
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 17296
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17300
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17296
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17304
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17308
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17284
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17312
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17316
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17320
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17324
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 17328
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17332
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17328
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17336
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17340
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17316
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17344
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17348
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 17352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17352
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17348
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17356
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17360
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17364
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17368
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 17372
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17372
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17376
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17372
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17368
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17380
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17384
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17360
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17388
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17392
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17396
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17400
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 17404
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17404
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17408
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17404
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17400
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17412
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17416
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17420
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17424
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 17428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17428
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17424
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17432
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17436
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17440
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17444
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 17448
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17448
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17452
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17448
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17456
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17460
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17436
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17464
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17468
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17472
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17476
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 17480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17480
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 91
	li t6, 17488
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17488
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17492
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17488
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17496
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17500
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17504
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17508
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17512
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 17516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17516
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 17524
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17524
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17528
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17524
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17532
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17536
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17540
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17544
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 17552
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17552
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17556
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17552
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17560
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17564
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17540
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17568
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17572
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17576
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17580
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 17584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17588
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17584
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17592
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17596
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17572
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17600
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17604
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17608
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17612
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 17616
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17620
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17616
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17624
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17628
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17604
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17632
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17636
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17640
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17644
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 17648
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17648
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17652
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17648
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17656
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17660
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17636
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17664
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17668
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17672
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17676
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 17680
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17680
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17684
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17680
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17688
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17692
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17668
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17696
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17700
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17704
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17708
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 17712
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17712
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17716
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17712
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17720
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17724
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17700
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17728
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17732
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17736
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17740
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 17744
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17748
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17744
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17752
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17756
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17732
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17760
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17764
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17768
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17772
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 17776
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17776
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17780
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17776
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17784
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17788
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17764
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17792
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17796
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17800
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17804
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 17808
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17812
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17808
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17816
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17820
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17796
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17824
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17828
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17832
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17836
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 17840
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17840
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17844
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17840
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17848
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17852
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17828
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17856
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17860
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17864
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17868
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 17872
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17872
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17876
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17872
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17880
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17884
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17888
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17892
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17896
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17900
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 17904
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17904
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17908
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17904
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17912
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17916
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17892
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17920
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17924
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17928
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17932
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 17936
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17936
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17940
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17936
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17944
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17948
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17952
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17956
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17960
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17964
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 17968
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 17972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17968
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17972
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 17968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17968
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 17976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17976
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17980
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17956
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 17984
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 17988
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 17992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17992
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 17996
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 18000
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18000
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18004
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18000
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18008
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18012
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 17988
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18016
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18020
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18024
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18028
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 18032
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18032
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18036
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18032
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18040
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18044
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18020
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18048
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18052
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18056
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18060
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 89
	li t6, 18064
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18064
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18068
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18064
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18072
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18076
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18080
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18084
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18088
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18092
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 18096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18096
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18100
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 18104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18108
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18104
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18100
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18112
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18116
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18120
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18124
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18128
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 68
	li t6, 18132
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18132
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18136
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18132
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18128
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18140
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18144
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18120
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18148
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18152
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18156
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18160
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 18164
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18168
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18164
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18160
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18172
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18176
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18152
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18180
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18184
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18188
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18192
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 18196
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18200
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18196
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18192
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18204
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18208
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18184
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18212
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18216
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18220
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18224
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 18228
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18232
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18228
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18236
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18240
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18216
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18244
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18248
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18252
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18256
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 27
	li t6, 18260
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18264
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18260
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18256
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18268
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18272
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18248
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18276
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18280
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18284
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18288
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 18292
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18296
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18292
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18300
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18304
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18280
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18308
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18312
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18316
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18320
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 24
	li t6, 18324
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18328
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18324
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18320
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18332
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18336
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18312
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18340
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18344
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18348
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18352
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 18356
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18356
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18360
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18356
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18352
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18364
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18368
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18344
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18372
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18376
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18380
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18384
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 18388
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18388
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18392
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18388
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18384
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18396
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18400
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18376
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18404
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18408
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18412
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18416
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 18420
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18424
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18420
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18416
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18428
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18432
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18408
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18436
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18440
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18444
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18444
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18448
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 18452
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18452
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18456
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18452
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18448
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18460
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18464
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18440
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18468
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18472
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18476
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18476
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18480
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 18484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18488
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18484
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18492
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18496
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18472
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18500
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18504
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18508
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18508
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18512
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 18516
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18520
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18516
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18524
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18528
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18504
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18532
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18536
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18540
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18540
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18544
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 18548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18552
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18548
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18544
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18556
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18560
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18536
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18564
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18568
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18572
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18572
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18576
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 18580
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18584
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18580
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18576
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18588
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18592
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18568
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18596
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18600
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 18604
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18604
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18600
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18608
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18612
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18616
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18620
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 18624
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18624
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18628
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18624
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18620
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18632
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18636
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18640
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18644
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18648
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18652
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 18656
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18656
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18660
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18656
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18664
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18668
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18672
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18676
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 18680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18680
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18684
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18688
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18692
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18696
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 18700
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18700
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18704
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18700
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18700
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18696
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18708
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18712
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18688
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18716
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18720
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18724
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18728
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 66
	li t6, 18732
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18732
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18736
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18732
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18728
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18740
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18744
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18720
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18748
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18752
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18756
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18760
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 18764
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18764
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18768
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18764
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18760
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18772
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18776
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18752
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18780
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18784
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18788
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18792
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 18796
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18796
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18800
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18796
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18792
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18804
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18808
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18784
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18812
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18816
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18820
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18824
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 18828
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18828
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18832
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18828
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18824
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18836
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18840
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18816
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18844
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18848
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18852
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18856
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 18860
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18864
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18860
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18856
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18868
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18872
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18876
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18880
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18884
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18888
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 18892
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18892
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18896
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18892
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18888
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18900
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18904
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18880
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18908
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18912
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18916
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18920
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 18924
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18928
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18924
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18920
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18932
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18936
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18940
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18944
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18948
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18952
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 18956
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18956
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18960
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18956
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18964
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18968
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18944
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18972
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 18976
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 18980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18980
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 18984
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 18988
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 18992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18988
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18992
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 18988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18988
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 18996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18984
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 18996
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19000
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 18976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19004
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19008
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 19012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19012
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19008
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19016
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19020
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19024
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19028
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 19032
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19032
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19036
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19032
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19040
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19044
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19020
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19048
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19052
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19056
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19060
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 19064
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19064
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19068
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19064
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19072
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19076
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19080
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19084
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 19088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19088
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19084
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19092
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19096
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19100
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19104
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 19108
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19108
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19112
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19108
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19116
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19120
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19096
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19124
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19128
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19132
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19136
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 19140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19140
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19144
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 19148
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19148
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19152
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19148
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19144
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19156
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19160
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19164
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19168
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19172
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 67
	li t6, 19176
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19180
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19176
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19180
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19176
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19172
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19184
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19188
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19164
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19192
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19196
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19200
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19204
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 19208
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19208
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19212
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19208
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19204
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19216
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19220
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19196
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19224
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19228
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19232
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19236
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 83
	li t6, 19240
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19240
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19244
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19240
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19236
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19248
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19252
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19256
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19260
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19264
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19264
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19268
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 19272
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19272
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19276
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19272
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19268
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19280
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19284
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19260
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19288
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19292
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19296
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19300
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 19304
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19304
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19308
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19304
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19312
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19316
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19320
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19324
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19328
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19332
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 19336
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19336
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19340
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19336
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19332
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19344
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19348
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19352
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19356
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 19360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19360
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19356
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19364
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19368
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19372
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19376
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 19380
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19384
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19380
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19380
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19376
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19388
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19392
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19368
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19396
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19400
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19404
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19408
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 58
	li t6, 19412
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19412
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19416
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19412
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19408
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19420
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19424
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19400
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19428
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19432
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 19436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19436
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19432
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19440
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19444
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19448
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19452
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 19456
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19460
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19456
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19452
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19464
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19468
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19472
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19476
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19480
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 66
	li t6, 19488
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19488
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19492
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19488
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19496
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19500
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19476
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19504
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19508
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19512
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19516
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 19520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19524
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19520
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19528
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19532
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19508
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19536
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19540
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19544
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 19552
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19552
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19556
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19552
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19560
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19564
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19540
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19568
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19572
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19576
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19580
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 19584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19588
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19584
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19592
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19596
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19572
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19600
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19604
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19608
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19612
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 19616
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19620
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19616
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19612
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19624
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19628
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19628
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19604
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19632
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19636
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19640
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19644
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 19648
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19648
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19652
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19648
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19644
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19656
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19660
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19660
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19636
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19664
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19668
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19672
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19676
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 19680
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19680
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19684
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19680
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19676
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19688
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19692
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19668
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19696
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19700
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19704
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19708
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 14
	li t6, 19712
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19712
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19716
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19712
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19708
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19720
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19724
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19700
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19728
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19732
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19736
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19740
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 16
	li t6, 19744
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19748
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19744
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19744
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19752
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19756
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19732
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19760
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19764
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19768
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19772
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 19776
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19780
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19776
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19780
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19776
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19772
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19784
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19788
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19764
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19792
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19796
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19800
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19804
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 19808
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19808
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19812
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19808
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19816
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19820
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19796
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19824
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19828
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19832
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19836
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 19840
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19840
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19844
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19840
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19848
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19836
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19848
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19852
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19828
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19856
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19860
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19864
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19868
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 66
	li t6, 19872
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19872
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19876
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19872
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19880
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19884
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19888
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19892
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19896
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19900
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 19904
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19904
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19908
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19904
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19900
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19912
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19916
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19892
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19920
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19924
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19928
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19932
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 19936
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19936
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19940
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19936
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19932
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19944
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19948
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19952
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19952
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19956
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19960
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19964
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 19968
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 19972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19968
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19972
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 19968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19968
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 19976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19964
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19976
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19980
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19984
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19956
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 19984
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 19988
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 19992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19992
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 19996
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 7
	li t6, 20000
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20000
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20004
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20000
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19996
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20008
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20012
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 19988
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20016
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20020
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20024
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20028
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 20032
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20032
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20036
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20032
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20040
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20028
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20040
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20044
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20048
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20020
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20048
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20052
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20056
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20060
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 20064
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20064
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20068
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20064
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20072
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20060
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20072
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20076
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20080
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20080
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20084
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20088
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20092
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20096
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20096
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20100
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20096
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20104
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20092
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20104
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20108
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20112
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20084
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20112
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20116
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20120
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20124
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 16
	li t6, 20128
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20128
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20132
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20128
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20136
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20124
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20136
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20140
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20144
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20116
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20144
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20148
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20152
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20156
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 15
	li t6, 20160
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20160
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20164
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20160
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20168
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20156
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20168
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20172
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20148
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20176
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20180
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20184
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20188
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 8
	li t6, 20192
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20192
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20196
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20192
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20192
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20188
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20200
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20204
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20204
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20180
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20208
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20212
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20216
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20216
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20220
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 10
	li t6, 20224
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20228
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20224
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20224
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20220
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20232
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20236
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20212
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20240
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20244
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 20248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20248
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20244
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20252
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20256
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20260
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 59
	li t6, 20268
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20268
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20272
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20268
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20276
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20280
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20284
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20256
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20284
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20288
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20292
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20292
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20296
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 20300
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20300
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20304
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20300
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20308
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20312
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20316
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20288
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20316
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20320
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 20324
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20324
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20320
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20328
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20332
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20336
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20340
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 20344
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20348
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20344
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20348
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20344
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20340
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20352
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20356
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20356
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20332
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20360
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20364
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20368
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20372
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 20376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20376
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20380
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 91
	li t6, 20384
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20388
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20384
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20388
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20384
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20392
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20396
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20400
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20404
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20408
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 20412
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20412
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20416
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 20420
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20424
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20420
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20420
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20416
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20428
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20432
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20436
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20440
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20444
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 20448
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20452
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20448
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20452
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20448
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20456
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20460
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20436
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20464
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20468
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20472
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20476
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 20480
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20484
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20480
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20484
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20480
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20476
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20488
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20492
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20468
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20496
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20500
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20504
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20508
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 20512
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20516
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20512
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20516
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20512
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20508
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20520
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20524
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20500
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20528
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20532
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20536
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20540
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 20544
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20548
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20544
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20548
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20544
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20540
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20552
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20556
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20532
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20560
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20564
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20568
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20572
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 20576
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20580
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20576
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20580
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20576
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20572
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20584
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20588
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20564
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20592
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20596
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20600
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20604
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 20608
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20608
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20612
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20608
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20616
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20604
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20616
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20620
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20596
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20624
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20628
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20632
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20636
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 65
	li t6, 20640
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20640
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20644
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20640
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20640
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20636
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20648
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20652
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20652
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20656
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20660
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20664
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20668
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 77
	li t6, 20672
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20672
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20676
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20672
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20668
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20680
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20684
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20660
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20688
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20692
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20696
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20700
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 20704
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20708
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20704
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20700
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20712
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20716
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20692
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20720
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20724
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 20728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20728
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20732
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20724
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20732
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20736
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20740
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20740
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20744
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 20748
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20752
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20748
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20752
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20748
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20744
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20756
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20760
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20760
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20764
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20736
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20764
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20768
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 20772
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20772
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20768
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20776
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20780
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20784
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20784
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20788
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 20792
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20792
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20796
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20792
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20788
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20800
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20804
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20804
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20780
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20808
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20812
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20816
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20820
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 20824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20824
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20828
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 20832
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20832
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20836
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20832
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20828
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20840
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20844
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20848
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20852
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20856
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 20860
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20860
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20864
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20860
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20860
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20868
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20856
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20868
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20872
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20848
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20876
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20880
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20884
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20888
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 20892
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20892
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20896
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20892
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20892
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20888
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20900
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20904
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20904
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20880
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20908
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20912
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20916
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20920
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 20924
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20924
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20928
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20924
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20920
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20932
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20936
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20940
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20912
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20940
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20944
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20948
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20952
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 20956
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20960
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20956
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20960
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20956
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20952
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20964
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20968
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20944
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20972
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 20976
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 20980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20980
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 20984
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 20988
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 20992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20988
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20992
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 20988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20988
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 20996
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20984
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 20996
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21000
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 20976
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21004
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21008
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21012
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21016
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 21020
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21020
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21024
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21020
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21028
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21016
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21028
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21032
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21032
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21036
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21008
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21036
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21040
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21044
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21044
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21048
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 63
	li t6, 21052
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21056
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21052
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21056
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21052
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21052
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21060
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21048
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21060
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21064
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21064
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21068
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21040
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21068
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21072
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21076
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21076
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21080
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 21084
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21088
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21084
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21088
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21084
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21084
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21092
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21080
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21092
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21096
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21096
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21100
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21072
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21100
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21104
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21108
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21108
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21112
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 79
	li t6, 21116
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21120
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21116
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21120
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21116
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21116
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21124
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21112
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21124
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21128
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21128
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21132
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21104
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21132
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21136
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21140
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21140
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21144
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 21148
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21152
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21148
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21152
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21148
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21148
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21156
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21144
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21156
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21160
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21160
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21164
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21136
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21164
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21168
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21172
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21172
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21176
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21168
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21176
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21180
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2b
	li t6, 21184
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21184
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21188
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21180
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21188
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21192
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21196
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21196
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21200
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21192
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21200
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21204
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21208
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21208
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21212
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21204
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21212
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21216
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21220
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21220
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21224
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 21228
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21232
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21228
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21232
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21228
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21228
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21236
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21224
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21236
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21240
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21240
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21244
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21216
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21244
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21248
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21248
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21252
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21252
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21256
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21256
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, c
	li t6, 21260
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21260
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21264
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 81
	li t6, 21268
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21272
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21268
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21272
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21268
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21268
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21276
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21264
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21276
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21280
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21280
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21284
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21288
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21288
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21292
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 82
	li t6, 21296
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21300
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21296
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21300
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21296
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21296
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21304
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21292
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21304
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21308
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21308
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21312
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21284
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21312
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21316
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21320
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21320
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21324
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 80
	li t6, 21328
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21332
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21328
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21332
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21328
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21328
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21336
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21324
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21336
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21340
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21340
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21344
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21316
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21344
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21348
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21352
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21352
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21356
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 71
	li t6, 21360
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21364
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21360
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21364
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21360
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21360
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21368
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21356
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21368
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21372
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21372
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21376
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21348
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21376
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21380
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21384
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21384
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21388
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 76
	li t6, 21392
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21396
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21392
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21396
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21392
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21392
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21400
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21388
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21400
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21404
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21404
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21408
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21380
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21408
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21412
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21416
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21416
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21420
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 69
	li t6, 21424
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21428
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21424
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21428
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21424
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21424
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21432
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21420
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21432
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21436
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21436
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21440
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21412
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21440
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21444
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21448
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21448
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21452
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 21456
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21460
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21456
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21460
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21456
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21456
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21464
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21452
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21464
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21468
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21468
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21472
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21444
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21472
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21476
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21480
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21480
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21484
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 63
	li t6, 21488
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21492
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21488
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21492
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21488
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21488
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21496
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21484
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21496
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21500
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21500
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21504
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21476
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21504
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21508
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21512
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21512
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21516
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 17
	li t6, 21520
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21524
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21520
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21524
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21520
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21520
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21528
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21516
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21528
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21532
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21532
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21536
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21508
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21536
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21540
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21544
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21544
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21548
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 64
	li t6, 21552
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21556
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21552
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21556
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21552
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21552
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21560
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21548
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21560
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21564
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21564
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21568
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21540
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21568
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21572
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21576
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21576
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21580
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 28
	li t6, 21584
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21588
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21584
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21588
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21584
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21584
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21592
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21580
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21592
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21596
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21596
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21600
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21572
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21600
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21604
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21608
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21608
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21612
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21604
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21612
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21616
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2b
	li t6, 21620
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21620
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21624
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21616
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21624
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21628
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2b
	li t6, 21632
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21632
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21636
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21628
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21636
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21640
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21644
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21644
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21648
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21640
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21648
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21652
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21656
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21656
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21660
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 26
	li t6, 21664
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21668
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21664
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21668
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21664
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21664
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21672
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21660
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21672
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21676
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21676
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21680
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21652
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21680
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21684
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21684
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21688
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21688
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21692
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21692
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	la t2, s
	li t6, 21696
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21696
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21700
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 0
	li t6, 21704
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 4
	li t6, 21708
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21704
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21708
	add t6, t6, sp
	lw t1, 0(t6)
	mul t2, t0, t1
	li t6, 21704
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21704
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21712
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21700
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21712
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21716
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21716
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21720
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21720
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21724
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21724
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21728
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21728
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	addi t2, zero, 0
	li t6, 21736
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21736
	add t6, t6, sp
	lw t0, 0(t6)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB8_1
.LibroBB8_1: 
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21740
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 93
	li t6, 21748
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21740
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21748
	add t6, t6, sp
	lw t1, 0(t6)
	bge t0, t1, .LibroBB8_3
	j .LibroBB8_2
.LibroBB8_2: 
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21936
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21936
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call c2
	mv t2, a0
	li t6, 21940
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21944
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21944
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21948
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21940
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	li t6, 21948
	add t6, t6, sp
	lw t0, 0(t6)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	li t6, 21952
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, c
	li t6, 21956
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21956
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21960
	add t6, t6, sp
	sw t2, 0(t6)
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21964
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21964
	add t6, t6, sp
	lw t0, 0(t6)
	slli t2, t0, 2
	li t6, 21968
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21968
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21972
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21960
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21972
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21976
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21976
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21980
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21952
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	li t6, 21980
	add t6, t6, sp
	lw t0, 0(t6)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	li t6, 21984
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21988
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21988
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21992
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21984
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	li t6, 21992
	add t6, t6, sp
	lw t0, 0(t6)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	li t6, 21996
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, co
	li t6, 22000
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 22000
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 22004
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21996
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	li t6, 22004
	add t6, t6, sp
	lw t0, 0(t6)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	li t6, 22008
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 22008
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 22012
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 22012
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 22016
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 22016
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	j .LibroBB8_4
.LibroBB8_3: 
	addi t2, zero, 0
	li t6, 21756
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21756
	add t6, t6, sp
	lw t0, 0(t6)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB8_5
.LibroBB8_4: 
	lw t0, 4(sp)
	mv t2, t0
	li t6, 22020
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 22020
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 1
	li t6, 22024
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 22024
	add t6, t6, sp
	lw t0, 0(t6)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB8_1
.LibroBB8_5: 
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21760
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 32
	li t6, 21768
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21760
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21768
	add t6, t6, sp
	lw t1, 0(t6)
	bge t0, t1, .LibroBB8_7
	j .LibroBB8_6
.LibroBB8_6: 
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21844
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21844
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call s2
	mv t2, a0
	li t6, 21848
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21852
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21852
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21856
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21848
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	li t6, 21856
	add t6, t6, sp
	lw t0, 0(t6)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	li t6, 21860
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, s
	li t6, 21864
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21864
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21868
	add t6, t6, sp
	sw t2, 0(t6)
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21872
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21872
	add t6, t6, sp
	lw t0, 0(t6)
	slli t2, t0, 2
	li t6, 21876
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21876
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21880
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21868
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21880
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21884
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21884
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21888
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21860
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	li t6, 21888
	add t6, t6, sp
	lw t0, 0(t6)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	li t6, 21892
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, a2q
	li t6, 21896
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21896
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21900
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21892
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	li t6, 21900
	add t6, t6, sp
	lw t0, 0(t6)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	li t6, 21904
	add t6, t6, sp
	sw t2, 0(t6)
	la t2, co
	li t6, 21908
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21908
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21912
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21904
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	li t6, 21912
	add t6, t6, sp
	lw t0, 0(t6)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	li t6, 21916
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21916
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21920
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21920
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21924
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21924
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	j .LibroBB8_8
.LibroBB8_7: 
	addi t2, zero, 1
	li t6, 21776
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21776
	add t6, t6, sp
	lw t0, 0(t6)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB8_9
.LibroBB8_8: 
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21928
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21928
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 1
	li t6, 21932
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21932
	add t6, t6, sp
	lw t0, 0(t6)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB8_5
.LibroBB8_9: 
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21780
	add t6, t6, sp
	sw t2, 0(t6)
	addi t2, zero, 32
	li t6, 21788
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21780
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21788
	add t6, t6, sp
	lw t1, 0(t6)
	bge t0, t1, .LibroBB8_10
	j .LibroBB8_11
.LibroBB8_10: 
	addi t2, zero, 0
	li t6, 21792
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21792
	add t6, t6, sp
	lw t0, 0(t6)
	mv t2, t0
	sw t2, 0(sp)
	j .LibroBB8_12
.LibroBB8_11: 
	la t2, s
	li t6, 21800
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21800
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21804
	add t6, t6, sp
	sw t2, 0(t6)
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21808
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21808
	add t6, t6, sp
	lw t0, 0(t6)
	slli t2, t0, 2
	li t6, 21812
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21812
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21816
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21804
	add t6, t6, sp
	lw t0, 0(t6)
	li t6, 21816
	add t6, t6, sp
	lw t1, 0(t6)
	add t2, t0, t1
	li t6, 21820
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21820
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21824
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21824
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 4
	li t6, 21828
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21828
	add t6, t6, sp
	lw t0, 0(t6)
	lw t2, 0(t0)
	li t6, 21832
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21832
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	call println
	j .LibroBB8_13
.LibroBB8_12: 
	lw t0, 0(sp)
	mv t2, t0
	li t6, 21796
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21796
	add t6, t6, sp
	lw t0, 0(t6)
	mv a0, t0
	lui t6, 5
	add t6, sp, t6
	lw s0, 1548(t6)
	lui t6, 5
	add t6, sp, t6
	lw ra, 1552(t6)
	lui t6, 5
	addi t6, t6, 1556
	add sp, sp, t6
	ret
.LibroBB8_13: 
	lw t0, 4(sp)
	mv t2, t0
	li t6, 21836
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21836
	add t6, t6, sp
	lw t0, 0(t6)
	addi t2, t0, 1
	li t6, 21840
	add t6, t6, sp
	sw t2, 0(t6)
	li t6, 21840
	add t6, t6, sp
	lw t0, 0(t6)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB8_9
_GLOBAL_: 
	addi sp, sp, -8
	sw s0, 0(sp)
	sw ra, 4(sp)
	addi s0, sp, 8
	call _global_var_init.0
	call _global_var_init.1
	call _global_var_init.2
	call _global_var_init.3
	call _global_var_init.4
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	s,@object
s:
	.word	0
	.size	s, 4

	.type	c,@object
c:
	.word	0
	.size	c, 4

	.type	co,@object
co:
	.word	0
	.size	co, 4

	.type	a2q,@object
a2q:
	.word	0
	.size	a2q, 4

	.type	a2b,@object
a2b:
	.word	0
	.size	a2b, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	"0"
	.size	.libro.str, 2

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"1"
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	"2"
	.size	.libro.str.2, 2

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	"3"
	.size	.libro.str.3, 2

	.type	.libro.str.4,@object
.libro.str.4:
	.asciz	"4"
	.size	.libro.str.4, 2

	.type	.libro.str.5,@object
.libro.str.5:
	.asciz	"5"
	.size	.libro.str.5, 2

	.type	.libro.str.6,@object
.libro.str.6:
	.asciz	"6"
	.size	.libro.str.6, 2

	.type	.libro.str.7,@object
.libro.str.7:
	.asciz	"7"
	.size	.libro.str.7, 2

	.type	.libro.str.8,@object
.libro.str.8:
	.asciz	"8"
	.size	.libro.str.8, 2

	.type	.libro.str.9,@object
.libro.str.9:
	.asciz	"9"
	.size	.libro.str.9, 2

	.type	.libro.str.10,@object
.libro.str.10:
	.asciz	"0"
	.size	.libro.str.10, 2

	.type	.libro.str.11,@object
.libro.str.11:
	.asciz	"s["
	.size	.libro.str.11, 3

	.type	.libro.str.12,@object
.libro.str.12:
	.asciz	"]="
	.size	.libro.str.12, 3

	.type	.libro.str.13,@object
.libro.str.13:
	.asciz	"s["
	.size	.libro.str.13, 3

	.type	.libro.str.14,@object
.libro.str.14:
	.asciz	"]="
	.size	.libro.str.14, 3

	.type	.libro.str.15,@object
.libro.str.15:
	.asciz	"c["
	.size	.libro.str.15, 3

	.type	.libro.str.16,@object
.libro.str.16:
	.asciz	"]="
	.size	.libro.str.16, 3

	.type	.libro.str.17,@object
.libro.str.17:
	.asciz	"c["
	.size	.libro.str.17, 3

	.type	.libro.str.18,@object
.libro.str.18:
	.asciz	"]="
	.size	.libro.str.18, 3

	.type	.libro.str.19,@object
.libro.str.19:
	.asciz	";"
	.size	.libro.str.19, 2

	.type	.libro.str.20,@object
.libro.str.20:
	.asciz	"\""
	.size	.libro.str.20, 2

	.type	.libro.str.21,@object
.libro.str.21:
	.asciz	"\\"
	.size	.libro.str.21, 2

	.type	.libro.str.22,@object
.libro.str.22:
	.asciz	" "
	.size	.libro.str.22, 2

	.type	.libro.str.23,@object
.libro.str.23:
	.asciz	"!"
	.size	.libro.str.23, 2

	.type	.libro.str.24,@object
.libro.str.24:
	.asciz	"#"
	.size	.libro.str.24, 2

	.type	.libro.str.25,@object
.libro.str.25:
	.asciz	"$"
	.size	.libro.str.25, 2

	.type	.libro.str.26,@object
.libro.str.26:
	.asciz	"%"
	.size	.libro.str.26, 2

	.type	.libro.str.27,@object
.libro.str.27:
	.asciz	"&"
	.size	.libro.str.27, 2

	.type	.libro.str.28,@object
.libro.str.28:
	.asciz	"'"
	.size	.libro.str.28, 2

	.type	.libro.str.29,@object
.libro.str.29:
	.asciz	"("
	.size	.libro.str.29, 2

	.type	.libro.str.30,@object
.libro.str.30:
	.asciz	")"
	.size	.libro.str.30, 2

	.type	.libro.str.31,@object
.libro.str.31:
	.asciz	"*"
	.size	.libro.str.31, 2

	.type	.libro.str.32,@object
.libro.str.32:
	.asciz	"+"
	.size	.libro.str.32, 2

	.type	.libro.str.33,@object
.libro.str.33:
	.asciz	","
	.size	.libro.str.33, 2

	.type	.libro.str.34,@object
.libro.str.34:
	.asciz	"-"
	.size	.libro.str.34, 2

	.type	.libro.str.35,@object
.libro.str.35:
	.asciz	"."
	.size	.libro.str.35, 2

	.type	.libro.str.36,@object
.libro.str.36:
	.asciz	"/"
	.size	.libro.str.36, 2

	.type	.libro.str.37,@object
.libro.str.37:
	.asciz	"0"
	.size	.libro.str.37, 2

	.type	.libro.str.38,@object
.libro.str.38:
	.asciz	"1"
	.size	.libro.str.38, 2

	.type	.libro.str.39,@object
.libro.str.39:
	.asciz	"2"
	.size	.libro.str.39, 2

	.type	.libro.str.40,@object
.libro.str.40:
	.asciz	"3"
	.size	.libro.str.40, 2

	.type	.libro.str.41,@object
.libro.str.41:
	.asciz	"4"
	.size	.libro.str.41, 2

	.type	.libro.str.42,@object
.libro.str.42:
	.asciz	"5"
	.size	.libro.str.42, 2

	.type	.libro.str.43,@object
.libro.str.43:
	.asciz	"6"
	.size	.libro.str.43, 2

	.type	.libro.str.44,@object
.libro.str.44:
	.asciz	"7"
	.size	.libro.str.44, 2

	.type	.libro.str.45,@object
.libro.str.45:
	.asciz	"8"
	.size	.libro.str.45, 2

	.type	.libro.str.46,@object
.libro.str.46:
	.asciz	"9"
	.size	.libro.str.46, 2

	.type	.libro.str.47,@object
.libro.str.47:
	.asciz	":"
	.size	.libro.str.47, 2

	.type	.libro.str.48,@object
.libro.str.48:
	.asciz	";"
	.size	.libro.str.48, 2

	.type	.libro.str.49,@object
.libro.str.49:
	.asciz	"<"
	.size	.libro.str.49, 2

	.type	.libro.str.50,@object
.libro.str.50:
	.asciz	"="
	.size	.libro.str.50, 2

	.type	.libro.str.51,@object
.libro.str.51:
	.asciz	">"
	.size	.libro.str.51, 2

	.type	.libro.str.52,@object
.libro.str.52:
	.asciz	"?"
	.size	.libro.str.52, 2

	.type	.libro.str.53,@object
.libro.str.53:
	.asciz	"@"
	.size	.libro.str.53, 2

	.type	.libro.str.54,@object
.libro.str.54:
	.asciz	"A"
	.size	.libro.str.54, 2

	.type	.libro.str.55,@object
.libro.str.55:
	.asciz	"B"
	.size	.libro.str.55, 2

	.type	.libro.str.56,@object
.libro.str.56:
	.asciz	"C"
	.size	.libro.str.56, 2

	.type	.libro.str.57,@object
.libro.str.57:
	.asciz	"D"
	.size	.libro.str.57, 2

	.type	.libro.str.58,@object
.libro.str.58:
	.asciz	"E"
	.size	.libro.str.58, 2

	.type	.libro.str.59,@object
.libro.str.59:
	.asciz	"F"
	.size	.libro.str.59, 2

	.type	.libro.str.60,@object
.libro.str.60:
	.asciz	"G"
	.size	.libro.str.60, 2

	.type	.libro.str.61,@object
.libro.str.61:
	.asciz	"H"
	.size	.libro.str.61, 2

	.type	.libro.str.62,@object
.libro.str.62:
	.asciz	"I"
	.size	.libro.str.62, 2

	.type	.libro.str.63,@object
.libro.str.63:
	.asciz	"J"
	.size	.libro.str.63, 2

	.type	.libro.str.64,@object
.libro.str.64:
	.asciz	"K"
	.size	.libro.str.64, 2

	.type	.libro.str.65,@object
.libro.str.65:
	.asciz	"L"
	.size	.libro.str.65, 2

	.type	.libro.str.66,@object
.libro.str.66:
	.asciz	"M"
	.size	.libro.str.66, 2

	.type	.libro.str.67,@object
.libro.str.67:
	.asciz	"N"
	.size	.libro.str.67, 2

	.type	.libro.str.68,@object
.libro.str.68:
	.asciz	"O"
	.size	.libro.str.68, 2

	.type	.libro.str.69,@object
.libro.str.69:
	.asciz	"P"
	.size	.libro.str.69, 2

	.type	.libro.str.70,@object
.libro.str.70:
	.asciz	"Q"
	.size	.libro.str.70, 2

	.type	.libro.str.71,@object
.libro.str.71:
	.asciz	"R"
	.size	.libro.str.71, 2

	.type	.libro.str.72,@object
.libro.str.72:
	.asciz	"S"
	.size	.libro.str.72, 2

	.type	.libro.str.73,@object
.libro.str.73:
	.asciz	"T"
	.size	.libro.str.73, 2

	.type	.libro.str.74,@object
.libro.str.74:
	.asciz	"U"
	.size	.libro.str.74, 2

	.type	.libro.str.75,@object
.libro.str.75:
	.asciz	"V"
	.size	.libro.str.75, 2

	.type	.libro.str.76,@object
.libro.str.76:
	.asciz	"W"
	.size	.libro.str.76, 2

	.type	.libro.str.77,@object
.libro.str.77:
	.asciz	"X"
	.size	.libro.str.77, 2

	.type	.libro.str.78,@object
.libro.str.78:
	.asciz	"Y"
	.size	.libro.str.78, 2

	.type	.libro.str.79,@object
.libro.str.79:
	.asciz	"Z"
	.size	.libro.str.79, 2

	.type	.libro.str.80,@object
.libro.str.80:
	.asciz	"["
	.size	.libro.str.80, 2

	.type	.libro.str.81,@object
.libro.str.81:
	.asciz	"]"
	.size	.libro.str.81, 2

	.type	.libro.str.82,@object
.libro.str.82:
	.asciz	"^"
	.size	.libro.str.82, 2

	.type	.libro.str.83,@object
.libro.str.83:
	.asciz	"_"
	.size	.libro.str.83, 2

	.type	.libro.str.84,@object
.libro.str.84:
	.asciz	"`"
	.size	.libro.str.84, 2

	.type	.libro.str.85,@object
.libro.str.85:
	.asciz	"a"
	.size	.libro.str.85, 2

	.type	.libro.str.86,@object
.libro.str.86:
	.asciz	"b"
	.size	.libro.str.86, 2

	.type	.libro.str.87,@object
.libro.str.87:
	.asciz	"c"
	.size	.libro.str.87, 2

	.type	.libro.str.88,@object
.libro.str.88:
	.asciz	"d"
	.size	.libro.str.88, 2

	.type	.libro.str.89,@object
.libro.str.89:
	.asciz	"e"
	.size	.libro.str.89, 2

	.type	.libro.str.90,@object
.libro.str.90:
	.asciz	"f"
	.size	.libro.str.90, 2

	.type	.libro.str.91,@object
.libro.str.91:
	.asciz	"g"
	.size	.libro.str.91, 2

	.type	.libro.str.92,@object
.libro.str.92:
	.asciz	"h"
	.size	.libro.str.92, 2

	.type	.libro.str.93,@object
.libro.str.93:
	.asciz	"i"
	.size	.libro.str.93, 2

	.type	.libro.str.94,@object
.libro.str.94:
	.asciz	"j"
	.size	.libro.str.94, 2

	.type	.libro.str.95,@object
.libro.str.95:
	.asciz	"k"
	.size	.libro.str.95, 2

	.type	.libro.str.96,@object
.libro.str.96:
	.asciz	"l"
	.size	.libro.str.96, 2

	.type	.libro.str.97,@object
.libro.str.97:
	.asciz	"m"
	.size	.libro.str.97, 2

	.type	.libro.str.98,@object
.libro.str.98:
	.asciz	"n"
	.size	.libro.str.98, 2

	.type	.libro.str.99,@object
.libro.str.99:
	.asciz	"o"
	.size	.libro.str.99, 2

	.type	.libro.str.100,@object
.libro.str.100:
	.asciz	"p"
	.size	.libro.str.100, 2

	.type	.libro.str.101,@object
.libro.str.101:
	.asciz	"q"
	.size	.libro.str.101, 2

	.type	.libro.str.102,@object
.libro.str.102:
	.asciz	"r"
	.size	.libro.str.102, 2

	.type	.libro.str.103,@object
.libro.str.103:
	.asciz	"s"
	.size	.libro.str.103, 2

	.type	.libro.str.104,@object
.libro.str.104:
	.asciz	"t"
	.size	.libro.str.104, 2

	.type	.libro.str.105,@object
.libro.str.105:
	.asciz	"u"
	.size	.libro.str.105, 2

	.type	.libro.str.106,@object
.libro.str.106:
	.asciz	"v"
	.size	.libro.str.106, 2

	.type	.libro.str.107,@object
.libro.str.107:
	.asciz	"w"
	.size	.libro.str.107, 2

	.type	.libro.str.108,@object
.libro.str.108:
	.asciz	"x"
	.size	.libro.str.108, 2

	.type	.libro.str.109,@object
.libro.str.109:
	.asciz	"y"
	.size	.libro.str.109, 2

	.type	.libro.str.110,@object
.libro.str.110:
	.asciz	"z"
	.size	.libro.str.110, 2

	.type	.libro.str.111,@object
.libro.str.111:
	.asciz	"{"
	.size	.libro.str.111, 2

	.type	.libro.str.112,@object
.libro.str.112:
	.asciz	"|"
	.size	.libro.str.112, 2

	.type	.libro.str.113,@object
.libro.str.113:
	.asciz	"}"
	.size	.libro.str.113, 2

	.type	.libro.str.114,@object
.libro.str.114:
	.asciz	"~"
	.size	.libro.str.114, 2

	.type	.libro.str.115,@object
.libro.str.115:
	.asciz	"int main(){int i=0;// Quine is a a program that produces its source code as output."
	.size	.libro.str.115, 84

	.type	.libro.str.116,@object
.libro.str.116:
	.asciz	"println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[66]+c[71]+c[69]+c[82]+c[7]+c[71]+c[76]+c[82]+c[0]+c[86]+c[8]+c[89]);"
	.size	.libro.str.116, 120

	.type	.libro.str.117,@object
.libro.str.117:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[15]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[15]+a2q+c[26]);"
	.size	.libro.str.117, 117

	.type	.libro.str.118,@object
.libro.str.118:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[16]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[16]+a2q+c[26]);"
	.size	.libro.str.118, 117

	.type	.libro.str.119,@object
.libro.str.119:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[17]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[17]+a2q+c[26]);"
	.size	.libro.str.119, 117

	.type	.libro.str.120,@object
.libro.str.120:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[18]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[18]+a2q+c[26]);"
	.size	.libro.str.120, 117

	.type	.libro.str.121,@object
.libro.str.121:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[19]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[19]+a2q+c[26]);"
	.size	.libro.str.121, 117

	.type	.libro.str.122,@object
.libro.str.122:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[20]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[20]+a2q+c[26]);"
	.size	.libro.str.122, 117

	.type	.libro.str.123,@object
.libro.str.123:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[21]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[21]+a2q+c[26]);"
	.size	.libro.str.123, 117

	.type	.libro.str.124,@object
.libro.str.124:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[22]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[22]+a2q+c[26]);"
	.size	.libro.str.124, 117

	.type	.libro.str.125,@object
.libro.str.125:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[23]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[23]+a2q+c[26]);"
	.size	.libro.str.125, 117

	.type	.libro.str.126,@object
.libro.str.126:
	.asciz	"println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[24]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[24]+a2q+c[26]);"
	.size	.libro.str.126, 117

	.type	.libro.str.127,@object
.libro.str.127:
	.asciz	"println(c[91]);"
	.size	.libro.str.127, 16

	.type	.libro.str.128,@object
.libro.str.128:
	.asciz	"println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[58]+c[59]+c[0]+c[81]+c[28]+c[76]+c[67]+c[85]+c[0]+c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[58]+c[17]+c[20]+c[21]+c[59]+c[26]);"
	.size	.libro.str.128, 170

	.type	.libro.str.129,@object
.libro.str.129:
	.asciz	"println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[58]+c[59]+c[0]+c[65]+c[28]+c[76]+c[67]+c[85]+c[0]+c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[58]+c[17]+c[20]+c[21]+c[59]+c[26]);"
	.size	.libro.str.129, 170

	.type	.libro.str.130,@object
.libro.str.130:
	.asciz	"println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[81]+c[17]+c[7]+c[71]+c[76]+c[82]+c[0]+c[81]+c[81]+c[8]+c[89]);"
	.size	.libro.str.130, 114

	.type	.libro.str.131,@object
.libro.str.131:
	.asciz	"println(c[71]+c[68]+c[7]+c[81]+c[81]+c[27]+c[28]+c[24]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[81]+c[58]+a2q+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[81]+c[81]+c[8]+c[10]+a2q+c[59]+c[28]+a2q+c[26]);"
	.size	.libro.str.131, 207

	.type	.libro.str.132,@object
.libro.str.132:
	.asciz	"println(c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[81]+c[58]+a2q+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[81]+c[81]+c[14]+c[16]+c[15]+c[8]+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[81]+c[81]+c[4]+c[16]+c[15]+c[8]+c[10]+a2q+c[59]+c[28]+a2q+c[26]);"
	.size	.libro.str.132, 242

	.type	.libro.str.133,@object
.libro.str.133:
	.asciz	"println(c[91]);"
	.size	.libro.str.133, 16

	.type	.libro.str.134,@object
.libro.str.134:
	.asciz	"println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[65]+c[17]+c[7]+c[71]+c[76]+c[82]+c[0]+c[65]+c[65]+c[8]+c[89]);"
	.size	.libro.str.134, 114

	.type	.libro.str.135,@object
.libro.str.135:
	.asciz	"println(c[71]+c[68]+c[7]+c[65]+c[65]+c[27]+c[28]+c[24]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[65]+c[58]+a2q+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[65]+c[65]+c[8]+c[10]+a2q+c[59]+c[28]+a2q+c[26]);"
	.size	.libro.str.135, 207

	.type	.libro.str.136,@object
.libro.str.136:
	.asciz	"println(c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[65]+c[58]+a2q+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[65]+c[65]+c[14]+c[16]+c[15]+c[8]+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[65]+c[65]+c[4]+c[16]+c[15]+c[8]+c[10]+a2q+c[59]+c[28]+a2q+c[26]);"
	.size	.libro.str.136, 242

	.type	.libro.str.137,@object
.libro.str.137:
	.asciz	"println(c[91]);"
	.size	.libro.str.137, 16

	.type	.libro.str.138,@object
.libro.str.138:
	.asciz	"println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[65]+c[77]+c[28]+a2q+c[26]+a2q+c[26]);"
	.size	.libro.str.138, 89

	.type	.libro.str.139,@object
.libro.str.139:
	.asciz	"println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[63]+c[17]+c[79]+c[28]+a2q+a2b+a2q+a2q+c[26]);"
	.size	.libro.str.139, 97

	.type	.libro.str.140,@object
.libro.str.140:
	.asciz	"println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[63]+c[17]+c[64]+c[28]+a2q+a2b+a2b+a2q+c[26]);"
	.size	.libro.str.140, 97

	.type	.libro.str.141,@object
.libro.str.141:
	.asciz	"println(s[0]);"
	.size	.libro.str.141, 15

	.type	.libro.str.142,@object
.libro.str.142:
	.asciz	"for(i=0;i<93;i++)println(c2(i)+a2q+c[i]+a2q+co);"
	.size	.libro.str.142, 49

	.type	.libro.str.143,@object
.libro.str.143:
	.asciz	"for(i=0;i<32;i++)println(s2(i)+a2q+s[i]+a2q+co);"
	.size	.libro.str.143, 49

	.type	.libro.str.144,@object
.libro.str.144:
	.asciz	"for(i=1;i<32;i++)println(s[i]);"
	.size	.libro.str.144, 32

	.type	.libro.str.145,@object
.libro.str.145:
	.asciz	"return 0;"
	.size	.libro.str.145, 10

	.type	.libro.str.146,@object
.libro.str.146:
	.asciz	"}"
	.size	.libro.str.146, 2

