	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -712
	sw s0, 704(sp)
	sw ra, 708(sp)
	addi s0, sp, 712
	call _GLOBAL_
	addi t4, zero, 0
	sw t4, -12(s0)
	call getInt
	mv t2, a0
	sw t2, 0(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 4(sp)
	la t3, N
	lw t1, 0(sp)
	sw t1, 0(t3)
	lw t2, -16(s0)
	sw t2, 8(sp)
	addi t4, zero, 1
	sw t4, -16(s0)
	j .LibroBB0_3
.LibroBB0_1: 
	lw t2, -20(s0)
	sw t2, 24(sp)
	addi t4, zero, 1
	sw t4, -20(s0)
	j .LibroBB0_7
.LibroBB0_2: 
	lw t2, -16(s0)
	sw t2, 648(sp)
	addi t2, zero, 1
	sw t2, 652(sp)
	lw t0, 648(sp)
	lw t1, 652(sp)
	add t2, t0, t1
	sw t2, 652(sp)
	lw t1, 652(sp)
	sw t1, -16(s0)
	j .LibroBB0_3
.LibroBB0_3: 
	lw t2, -16(s0)
	sw t2, 12(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 16(sp)
	lw t0, 16(sp)
	lw t1, 12(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 20(sp)
	lw t0, 20(sp)
	beqz t0, .LibroBB0_4
	j .LibroBB0_1
.LibroBB0_4: 
	la t3, total
	lw t2, 0(t3)
	sw t2, 656(sp)
	lw t0, 656(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 660(sp)
	lw t0, 660(sp)
	addi t2, t0, 4
	sw t2, 664(sp)
	lw t0, 664(sp)
	lw t2, 0(t0)
	sw t2, 668(sp)
	lw t0, 668(sp)
	mv a0, t0
	call println
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB0_9
.LibroBB0_5: 
	lw t2, -24(s0)
	sw t2, 40(sp)
	addi t4, zero, 1
	sw t4, -24(s0)
	j .LibroBB0_10
.LibroBB0_6: 
	lw t2, -20(s0)
	sw t2, 640(sp)
	addi t2, zero, 1
	sw t2, 644(sp)
	lw t0, 640(sp)
	lw t1, 644(sp)
	add t2, t0, t1
	sw t2, 644(sp)
	lw t1, 644(sp)
	sw t1, -20(s0)
	j .LibroBB0_7
.LibroBB0_7: 
	lw t2, -20(s0)
	sw t2, 28(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 32(sp)
	lw t0, 32(sp)
	lw t1, 28(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 36(sp)
	lw t0, 36(sp)
	beqz t0, .LibroBB0_8
	j .LibroBB0_5
.LibroBB0_8: 
	j .LibroBB0_2
.LibroBB0_9: 
	lw t2, -12(s0)
	sw t2, 672(sp)
	lw t0, 672(sp)
	mv a0, t0
	lw s0, 704(sp)
	lw ra, 708(sp)
	addi sp, sp, 712
	ret

.LibroBB0_10: 
	lw t2, -24(s0)
	sw t2, 44(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 48(sp)
	lw t0, 48(sp)
	lw t1, 44(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 52(sp)
	lw t0, 52(sp)
	beqz t0, .LibroBB0_12
	j .LibroBB0_13
.LibroBB0_11: 
	lw t2, -24(s0)
	sw t2, 632(sp)
	addi t2, zero, 1
	sw t2, 636(sp)
	lw t0, 632(sp)
	lw t1, 636(sp)
	add t2, t0, t1
	sw t2, 636(sp)
	lw t1, 636(sp)
	sw t1, -24(s0)
	j .LibroBB0_10
.LibroBB0_12: 
	j .LibroBB0_6
.LibroBB0_13: 
	lw t2, -28(s0)
	sw t2, 56(sp)
	addi t4, zero, 1
	sw t4, -28(s0)
	j .LibroBB0_15
.LibroBB0_14: 
	lw t2, -32(s0)
	sw t2, 72(sp)
	addi t4, zero, 1
	sw t4, -32(s0)
	j .LibroBB0_18
.LibroBB0_15: 
	lw t2, -28(s0)
	sw t2, 60(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 64(sp)
	lw t0, 64(sp)
	lw t1, 60(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 68(sp)
	lw t0, 68(sp)
	beqz t0, .LibroBB0_16
	j .LibroBB0_14
.LibroBB0_16: 
	j .LibroBB0_11
.LibroBB0_17: 
	lw t2, -28(s0)
	sw t2, 624(sp)
	addi t2, zero, 1
	sw t2, 628(sp)
	lw t0, 624(sp)
	lw t1, 628(sp)
	add t2, t0, t1
	sw t2, 628(sp)
	lw t1, 628(sp)
	sw t1, -28(s0)
	j .LibroBB0_15
.LibroBB0_18: 
	lw t2, -32(s0)
	sw t2, 76(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 80(sp)
	lw t0, 80(sp)
	lw t1, 76(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 84(sp)
	lw t0, 84(sp)
	beqz t0, .LibroBB0_19
	j .LibroBB0_21
.LibroBB0_19: 
	j .LibroBB0_17
.LibroBB0_20: 
	lw t2, -32(s0)
	sw t2, 616(sp)
	addi t2, zero, 1
	sw t2, 620(sp)
	lw t0, 616(sp)
	lw t1, 620(sp)
	add t2, t0, t1
	sw t2, 620(sp)
	lw t1, 620(sp)
	sw t1, -32(s0)
	j .LibroBB0_18
.LibroBB0_21: 
	lw t2, -36(s0)
	sw t2, 88(sp)
	addi t4, zero, 1
	sw t4, -36(s0)
	j .LibroBB0_24
.LibroBB0_22: 
	lw t2, -16(s0)
	sw t2, 104(sp)
	lw t2, -20(s0)
	sw t2, 108(sp)
	lw t0, 104(sp)
	lw t1, 108(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 112(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 112(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_26
.LibroBB0_23: 
	lw t2, -36(s0)
	sw t2, 608(sp)
	addi t2, zero, 1
	sw t2, 612(sp)
	lw t0, 608(sp)
	lw t1, 612(sp)
	add t2, t0, t1
	sw t2, 612(sp)
	lw t1, 612(sp)
	sw t1, -36(s0)
	j .LibroBB0_24
.LibroBB0_24: 
	lw t2, -36(s0)
	sw t2, 92(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 96(sp)
	lw t0, 96(sp)
	lw t1, 92(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 100(sp)
	lw t0, 100(sp)
	beqz t0, .LibroBB0_25
	j .LibroBB0_22
.LibroBB0_25: 
	j .LibroBB0_20
.LibroBB0_26: 
	lw t2, -16(s0)
	sw t2, 116(sp)
	lw t2, -24(s0)
	sw t2, 120(sp)
	lw t0, 116(sp)
	lw t1, 120(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 124(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 124(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_27
.LibroBB0_27: 
	lw t2, -16(s0)
	sw t2, 128(sp)
	lw t2, -28(s0)
	sw t2, 132(sp)
	lw t0, 128(sp)
	lw t1, 132(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 136(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 136(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_28
.LibroBB0_28: 
	lw t2, -16(s0)
	sw t2, 140(sp)
	lw t2, -32(s0)
	sw t2, 144(sp)
	lw t0, 140(sp)
	lw t1, 144(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 148(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 148(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_29
.LibroBB0_29: 
	lw t2, -16(s0)
	sw t2, 152(sp)
	lw t2, -36(s0)
	sw t2, 156(sp)
	lw t0, 152(sp)
	lw t1, 156(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 160(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 160(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_30
.LibroBB0_30: 
	lw t2, -16(s0)
	sw t2, 164(sp)
	la t3, h
	lw t2, 0(t3)
	sw t2, 168(sp)
	lw t0, 164(sp)
	lw t1, 168(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 172(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 172(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_31
.LibroBB0_31: 
	lw t2, -16(s0)
	sw t2, 176(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 180(sp)
	lw t0, 176(sp)
	lw t1, 180(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 184(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 184(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_32
.LibroBB0_32: 
	lw t2, -16(s0)
	sw t2, 188(sp)
	la t3, j
	lw t2, 0(t3)
	sw t2, 192(sp)
	lw t0, 188(sp)
	lw t1, 192(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 196(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 196(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_33
.LibroBB0_33: 
	lw t2, -16(s0)
	sw t2, 200(sp)
	la t3, k
	lw t2, 0(t3)
	sw t2, 204(sp)
	lw t0, 200(sp)
	lw t1, 204(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 208(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 208(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_34
.LibroBB0_34: 
	lw t2, -20(s0)
	sw t2, 212(sp)
	lw t2, -24(s0)
	sw t2, 216(sp)
	lw t0, 212(sp)
	lw t1, 216(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 220(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 220(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_35
.LibroBB0_35: 
	lw t2, -20(s0)
	sw t2, 224(sp)
	lw t2, -28(s0)
	sw t2, 228(sp)
	lw t0, 224(sp)
	lw t1, 228(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 232(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 232(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_36
.LibroBB0_36: 
	lw t2, -20(s0)
	sw t2, 236(sp)
	lw t2, -32(s0)
	sw t2, 240(sp)
	lw t0, 236(sp)
	lw t1, 240(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 244(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 244(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_37
.LibroBB0_37: 
	lw t2, -20(s0)
	sw t2, 248(sp)
	lw t2, -36(s0)
	sw t2, 252(sp)
	lw t0, 248(sp)
	lw t1, 252(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 256(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 256(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_38
.LibroBB0_38: 
	lw t2, -20(s0)
	sw t2, 260(sp)
	la t3, h
	lw t2, 0(t3)
	sw t2, 264(sp)
	lw t0, 260(sp)
	lw t1, 264(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 268(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 268(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_39
.LibroBB0_39: 
	lw t2, -20(s0)
	sw t2, 272(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 276(sp)
	lw t0, 272(sp)
	lw t1, 276(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 280(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 280(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_40
.LibroBB0_40: 
	lw t2, -20(s0)
	sw t2, 284(sp)
	la t3, j
	lw t2, 0(t3)
	sw t2, 288(sp)
	lw t0, 284(sp)
	lw t1, 288(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 292(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 292(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_41
.LibroBB0_41: 
	lw t2, -20(s0)
	sw t2, 296(sp)
	la t3, k
	lw t2, 0(t3)
	sw t2, 300(sp)
	lw t0, 296(sp)
	lw t1, 300(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 304(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 304(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_42
.LibroBB0_42: 
	lw t2, -24(s0)
	sw t2, 308(sp)
	lw t2, -28(s0)
	sw t2, 312(sp)
	lw t0, 308(sp)
	lw t1, 312(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 316(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 316(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_43
.LibroBB0_43: 
	lw t2, -24(s0)
	sw t2, 320(sp)
	lw t2, -32(s0)
	sw t2, 324(sp)
	lw t0, 320(sp)
	lw t1, 324(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 328(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 328(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_44
.LibroBB0_44: 
	lw t2, -24(s0)
	sw t2, 332(sp)
	lw t2, -36(s0)
	sw t2, 336(sp)
	lw t0, 332(sp)
	lw t1, 336(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 340(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 340(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_45
.LibroBB0_45: 
	lw t2, -24(s0)
	sw t2, 344(sp)
	la t3, h
	lw t2, 0(t3)
	sw t2, 348(sp)
	lw t0, 344(sp)
	lw t1, 348(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 352(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 352(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_46
.LibroBB0_46: 
	lw t2, -24(s0)
	sw t2, 356(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 360(sp)
	lw t0, 356(sp)
	lw t1, 360(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 364(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 364(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_47
.LibroBB0_47: 
	lw t2, -24(s0)
	sw t2, 368(sp)
	la t3, j
	lw t2, 0(t3)
	sw t2, 372(sp)
	lw t0, 368(sp)
	lw t1, 372(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 376(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 376(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_48
.LibroBB0_48: 
	lw t2, -24(s0)
	sw t2, 380(sp)
	la t3, k
	lw t2, 0(t3)
	sw t2, 384(sp)
	lw t0, 380(sp)
	lw t1, 384(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 388(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 388(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_49
.LibroBB0_49: 
	lw t2, -28(s0)
	sw t2, 392(sp)
	lw t2, -32(s0)
	sw t2, 396(sp)
	lw t0, 392(sp)
	lw t1, 396(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 400(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 400(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_50
.LibroBB0_50: 
	lw t2, -28(s0)
	sw t2, 404(sp)
	lw t2, -36(s0)
	sw t2, 408(sp)
	lw t0, 404(sp)
	lw t1, 408(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 412(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 412(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_51
.LibroBB0_51: 
	lw t2, -28(s0)
	sw t2, 416(sp)
	la t3, h
	lw t2, 0(t3)
	sw t2, 420(sp)
	lw t0, 416(sp)
	lw t1, 420(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 424(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 424(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_52
.LibroBB0_52: 
	lw t2, -28(s0)
	sw t2, 428(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 432(sp)
	lw t0, 428(sp)
	lw t1, 432(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 436(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 436(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_53
.LibroBB0_53: 
	lw t2, -28(s0)
	sw t2, 440(sp)
	la t3, j
	lw t2, 0(t3)
	sw t2, 444(sp)
	lw t0, 440(sp)
	lw t1, 444(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 448(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 448(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_54
.LibroBB0_54: 
	lw t2, -28(s0)
	sw t2, 452(sp)
	la t3, k
	lw t2, 0(t3)
	sw t2, 456(sp)
	lw t0, 452(sp)
	lw t1, 456(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 460(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 460(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_55
.LibroBB0_55: 
	lw t2, -32(s0)
	sw t2, 464(sp)
	lw t2, -36(s0)
	sw t2, 468(sp)
	lw t0, 464(sp)
	lw t1, 468(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 472(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 472(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_56
.LibroBB0_56: 
	lw t2, -32(s0)
	sw t2, 476(sp)
	la t3, h
	lw t2, 0(t3)
	sw t2, 480(sp)
	lw t0, 476(sp)
	lw t1, 480(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 484(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 484(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_57
.LibroBB0_57: 
	lw t2, -32(s0)
	sw t2, 488(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 492(sp)
	lw t0, 488(sp)
	lw t1, 492(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 496(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 496(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_58
.LibroBB0_58: 
	lw t2, -32(s0)
	sw t2, 500(sp)
	la t3, j
	lw t2, 0(t3)
	sw t2, 504(sp)
	lw t0, 500(sp)
	lw t1, 504(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 508(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 508(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_59
.LibroBB0_59: 
	lw t2, -32(s0)
	sw t2, 512(sp)
	la t3, k
	lw t2, 0(t3)
	sw t2, 516(sp)
	lw t0, 512(sp)
	lw t1, 516(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 520(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 520(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_60
.LibroBB0_60: 
	lw t2, -36(s0)
	sw t2, 524(sp)
	la t3, h
	lw t2, 0(t3)
	sw t2, 528(sp)
	lw t0, 524(sp)
	lw t1, 528(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 532(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 532(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_61
.LibroBB0_61: 
	lw t2, -36(s0)
	sw t2, 536(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 540(sp)
	lw t0, 536(sp)
	lw t1, 540(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 544(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 544(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_62
.LibroBB0_62: 
	lw t2, -36(s0)
	sw t2, 548(sp)
	la t3, j
	lw t2, 0(t3)
	sw t2, 552(sp)
	lw t0, 548(sp)
	lw t1, 552(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 556(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 556(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_63
.LibroBB0_63: 
	lw t2, -36(s0)
	sw t2, 560(sp)
	la t3, k
	lw t2, 0(t3)
	sw t2, 564(sp)
	lw t0, 560(sp)
	lw t1, 564(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 568(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 568(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_64
.LibroBB0_64: 
	la t3, i
	lw t2, 0(t3)
	sw t2, 572(sp)
	la t3, j
	lw t2, 0(t3)
	sw t2, 576(sp)
	lw t0, 572(sp)
	lw t1, 576(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 580(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 596(sp)
	lw t0, 580(sp)
	beqz t0, .LibroBB0_66
	j .LibroBB0_65
.LibroBB0_65: 
	la t3, h
	lw t2, 0(t3)
	sw t2, 584(sp)
	la t3, k
	lw t2, 0(t3)
	sw t2, 588(sp)
	lw t0, 584(sp)
	lw t1, 588(sp)
	xor t5, t0, t1
	snez t2, t5
	sw t2, 592(sp)
	lw t0, 592(sp)
	mv t2, t0
	sw t2, 596(sp)
	j .LibroBB0_66
.LibroBB0_66: 
	lw t0, 596(sp)
	beqz t0, .LibroBB0_67
	j .LibroBB0_68
.LibroBB0_67: 
	j .LibroBB0_23
.LibroBB0_68: 
	la t3, total
	lw t2, 0(t3)
	sw t2, 600(sp)
	addi t2, zero, 1
	sw t2, 604(sp)
	lw t0, 600(sp)
	lw t1, 604(sp)
	add t2, t0, t1
	sw t2, 604(sp)
	la t3, total
	lw t1, 604(sp)
	sw t1, 0(t3)
	j .LibroBB0_67
_GLOBAL_: 
	addi sp, sp, -8
	sw s0, 0(sp)
	sw ra, 4(sp)
	addi s0, sp, 8
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
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

