	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -692
	sw ra, 688(sp)
	sw s0, 684(sp)
	addi s0, sp, 692
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
	la t3, N
	lw t2, 0(t3)
	sw t2, 8(sp)
	addi t2, zero, 5
	sw t2, 12(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	add t2, t0, t1
	sw t2, 12(sp)
	addi t2, zero, 1
	sw t2, 16(sp)
	lw t0, 12(sp)
	lw t1, 16(sp)
	mul t2, t0, t1
	sw t2, 16(sp)
	addi t2, zero, 4
	sw t2, 20(sp)
	lw t0, 16(sp)
	lw t1, 20(sp)
	add t2, t0, t1
	sw t2, 20(sp)
	lw t0, 20(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t1, 12(sp)
	sw t1, 0(t0)
	la t3, check
	lw t2, 0(t3)
	sw t2, 28(sp)
	la t3, check
	lw t1, 24(sp)
	sw t1, 0(t3)
	addi t4, zero, 0
	sw t4, -16(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw t2, -16(s0)
	sw t2, 32(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 36(sp)
	lw t0, 36(sp)
	lw t1, 32(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 40(sp)
	lw t0, 40(sp)
	beqz t0, .LibroBB0_2
	j .LibroBB0_3
.LibroBB0_2: 
	la t3, N
	lw t2, 0(t3)
	sw t2, 76(sp)
	addi t2, zero, 5
	sw t2, 80(sp)
	lw t0, 76(sp)
	lw t1, 80(sp)
	add t2, t0, t1
	sw t2, 80(sp)
	addi t2, zero, 4
	sw t2, 84(sp)
	lw t0, 80(sp)
	lw t1, 84(sp)
	mul t2, t0, t1
	sw t2, 84(sp)
	addi t2, zero, 4
	sw t2, 88(sp)
	lw t0, 84(sp)
	lw t1, 88(sp)
	add t2, t0, t1
	sw t2, 88(sp)
	lw t0, 88(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 92(sp)
	lw t0, 92(sp)
	lw t1, 80(sp)
	sw t1, 0(t0)
	lw t1, 92(sp)
	sw t1, -20(s0)
	la t3, N
	lw t2, 0(t3)
	sw t2, 96(sp)
	addi t2, zero, 5
	sw t2, 100(sp)
	lw t0, 96(sp)
	lw t1, 100(sp)
	add t2, t0, t1
	sw t2, 100(sp)
	addi t2, zero, 4
	sw t2, 104(sp)
	lw t0, 100(sp)
	lw t1, 104(sp)
	mul t2, t0, t1
	sw t2, 104(sp)
	addi t2, zero, 4
	sw t2, 108(sp)
	lw t0, 104(sp)
	lw t1, 108(sp)
	add t2, t0, t1
	sw t2, 108(sp)
	lw t0, 108(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 112(sp)
	lw t0, 112(sp)
	lw t1, 100(sp)
	sw t1, 0(t0)
	lw t1, 112(sp)
	sw t1, -24(s0)
	lw t2, -20(s0)
	sw t2, 116(sp)
	addi t3, zero, 1
	mv t2, t3
	sw t2, 120(sp)
	addi t2, zero, 4
	sw t2, 124(sp)
	lw t0, 120(sp)
	lw t1, 124(sp)
	mul t2, t0, t1
	sw t2, 124(sp)
	addi t2, zero, 4
	sw t2, 128(sp)
	lw t0, 124(sp)
	lw t1, 128(sp)
	add t2, t0, t1
	sw t2, 128(sp)
	lw t0, 116(sp)
	lw t1, 128(sp)
	add t2, t0, t1
	sw t2, 132(sp)
	lw t0, 132(sp)
	lw t2, 0(t0)
	sw t2, 136(sp)
	addi t4, zero, 1
	lw t0, 132(sp)
	sw t4, 0(t0)
	lw t2, -16(s0)
	sw t2, 140(sp)
	addi t4, zero, 2
	sw t4, -16(s0)
	j .LibroBB0_7
.LibroBB0_3: 
	la t3, check
	lw t2, 0(t3)
	sw t2, 44(sp)
	lw t2, -16(s0)
	sw t2, 48(sp)
	addi t2, zero, 1
	sw t2, 52(sp)
	lw t0, 48(sp)
	lw t1, 52(sp)
	add t2, t0, t1
	sw t2, 52(sp)
	lw t1, 52(sp)
	sw t1, -16(s0)
	addi t2, zero, 1
	sw t2, 56(sp)
	lw t0, 48(sp)
	lw t1, 56(sp)
	mul t2, t0, t1
	sw t2, 56(sp)
	addi t2, zero, 4
	sw t2, 60(sp)
	lw t0, 56(sp)
	lw t1, 60(sp)
	add t2, t0, t1
	sw t2, 60(sp)
	lw t0, 44(sp)
	lw t1, 60(sp)
	add t2, t0, t1
	sw t2, 64(sp)
	lw t0, 64(sp)
	lb t2, 0(t0)
	sw t2, 68(sp)
	addi t3, zero, 1
	mv t2, t3
	sw t2, 72(sp)
	lw t0, 64(sp)
	lw t1, 72(sp)
	sb t1, 0(t0)
	j .LibroBB0_1
.LibroBB0_4: 
	lw t2, -16(s0)
	sw t2, 644(sp)
	addi t2, zero, 1
	sw t2, 648(sp)
	lw t0, 644(sp)
	lw t1, 648(sp)
	add t2, t0, t1
	sw t2, 648(sp)
	lw t1, 648(sp)
	sw t1, -16(s0)
	j .LibroBB0_7
.LibroBB0_5: 
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB0_8
.LibroBB0_6: 
	lw t2, -16(s0)
	sw t2, 144(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 148(sp)
	lw t0, 148(sp)
	lw t1, 144(sp)
	slt t2, t0, t1
	sw t2, 152(sp)
	lw t0, 152(sp)
	beqz t0, .LibroBB0_9
	j .LibroBB0_10
.LibroBB0_7: 
	j .LibroBB0_6
.LibroBB0_8: 
	lw t2, -12(s0)
	sw t2, 652(sp)
	lw t0, 652(sp)
	mv a0, t0
	lw s0, 684(sp)
	lw ra, 688(sp)
	addi sp, sp, 692
	ret

.LibroBB0_9: 
	la t3, check
	lw t2, 0(t3)
	sw t2, 156(sp)
	lw t2, -16(s0)
	sw t2, 160(sp)
	addi t2, zero, 1
	sw t2, 164(sp)
	lw t0, 160(sp)
	lw t1, 164(sp)
	mul t2, t0, t1
	sw t2, 164(sp)
	addi t2, zero, 4
	sw t2, 168(sp)
	lw t0, 164(sp)
	lw t1, 168(sp)
	add t2, t0, t1
	sw t2, 168(sp)
	lw t0, 156(sp)
	lw t1, 168(sp)
	add t2, t0, t1
	sw t2, 172(sp)
	lw t0, 172(sp)
	lb t2, 0(t0)
	sw t2, 176(sp)
	lw t0, 176(sp)
	beqz t0, .LibroBB0_12
	j .LibroBB0_11
.LibroBB0_10: 
	j .LibroBB0_5
.LibroBB0_11: 
	lw t2, -16(s0)
	sw t2, 180(sp)
	lw t2, -24(s0)
	sw t2, 184(sp)
	la t3, M
	lw t2, 0(t3)
	sw t2, 188(sp)
	addi t2, zero, 1
	sw t2, 192(sp)
	lw t0, 188(sp)
	lw t1, 192(sp)
	add t2, t0, t1
	sw t2, 192(sp)
	la t3, M
	lw t1, 192(sp)
	sw t1, 0(t3)
	addi t2, zero, 4
	sw t2, 196(sp)
	lw t0, 192(sp)
	lw t1, 196(sp)
	mul t2, t0, t1
	sw t2, 196(sp)
	addi t2, zero, 4
	sw t2, 200(sp)
	lw t0, 196(sp)
	lw t1, 200(sp)
	add t2, t0, t1
	sw t2, 200(sp)
	lw t0, 184(sp)
	lw t1, 200(sp)
	add t2, t0, t1
	sw t2, 204(sp)
	lw t0, 204(sp)
	lw t2, 0(t0)
	sw t2, 208(sp)
	lw t0, 204(sp)
	lw t1, 180(sp)
	sw t1, 0(t0)
	lw t2, -16(s0)
	sw t2, 212(sp)
	addi t2, zero, 1
	sw t2, 216(sp)
	lw t0, 212(sp)
	lw t1, 216(sp)
	sub t2, t0, t1
	sw t2, 216(sp)
	lw t2, -20(s0)
	sw t2, 220(sp)
	lw t2, -16(s0)
	sw t2, 224(sp)
	addi t2, zero, 4
	sw t2, 228(sp)
	lw t0, 224(sp)
	lw t1, 228(sp)
	mul t2, t0, t1
	sw t2, 228(sp)
	addi t2, zero, 4
	sw t2, 232(sp)
	lw t0, 228(sp)
	lw t1, 232(sp)
	add t2, t0, t1
	sw t2, 232(sp)
	lw t0, 220(sp)
	lw t1, 232(sp)
	add t2, t0, t1
	sw t2, 236(sp)
	lw t0, 236(sp)
	lw t2, 0(t0)
	sw t2, 240(sp)
	lw t0, 236(sp)
	lw t1, 216(sp)
	sw t1, 0(t0)
	j .LibroBB0_12
.LibroBB0_12: 
	lw t2, -16(s0)
	sw t2, 244(sp)
	lw t1, 244(sp)
	sw t1, -28(s0)
	lw t2, -32(s0)
	sw t2, 248(sp)
	addi t4, zero, 1
	sw t4, -32(s0)
	j .LibroBB0_15
.LibroBB0_13: 
	lw t2, -28(s0)
	sw t2, 308(sp)
	lw t2, -24(s0)
	sw t2, 312(sp)
	lw t2, -32(s0)
	sw t2, 316(sp)
	addi t2, zero, 4
	sw t2, 320(sp)
	lw t0, 316(sp)
	lw t1, 320(sp)
	mul t2, t0, t1
	sw t2, 320(sp)
	addi t2, zero, 4
	sw t2, 324(sp)
	lw t0, 320(sp)
	lw t1, 324(sp)
	add t2, t0, t1
	sw t2, 324(sp)
	lw t0, 312(sp)
	lw t1, 324(sp)
	add t2, t0, t1
	sw t2, 328(sp)
	lw t0, 328(sp)
	lw t2, 0(t0)
	sw t2, 332(sp)
	lw t0, 308(sp)
	lw t1, 332(sp)
	mul t2, t0, t1
	sw t2, 336(sp)
	lw t1, 336(sp)
	sw t1, -36(s0)
	lw t2, -36(s0)
	sw t2, 340(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 344(sp)
	lw t0, 344(sp)
	lw t1, 340(sp)
	slt t2, t0, t1
	sw t2, 348(sp)
	lw t0, 348(sp)
	beqz t0, .LibroBB0_18
	j .LibroBB0_17
.LibroBB0_14: 
	lw t2, -32(s0)
	sw t2, 600(sp)
	addi t2, zero, 1
	sw t2, 604(sp)
	lw t0, 600(sp)
	lw t1, 604(sp)
	add t2, t0, t1
	sw t2, 604(sp)
	lw t1, 604(sp)
	sw t1, -32(s0)
	j .LibroBB0_15
.LibroBB0_15: 
	lw t2, -32(s0)
	sw t2, 252(sp)
	la t3, M
	lw t2, 0(t3)
	sw t2, 256(sp)
	lw t0, 256(sp)
	lw t1, 252(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 260(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 304(sp)
	lw t0, 260(sp)
	beqz t0, .LibroBB0_23
	j .LibroBB0_19
.LibroBB0_16: 
	lw t2, -20(s0)
	sw t2, 608(sp)
	lw t2, -28(s0)
	sw t2, 612(sp)
	addi t2, zero, 4
	sw t2, 616(sp)
	lw t0, 612(sp)
	lw t1, 616(sp)
	mul t2, t0, t1
	sw t2, 616(sp)
	addi t2, zero, 4
	sw t2, 620(sp)
	lw t0, 616(sp)
	lw t1, 620(sp)
	add t2, t0, t1
	sw t2, 620(sp)
	lw t0, 608(sp)
	lw t1, 620(sp)
	add t2, t0, t1
	sw t2, 624(sp)
	lw t0, 624(sp)
	lw t2, 0(t0)
	sw t2, 628(sp)
	lw t0, 628(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 632(sp)
	lw t0, 632(sp)
	addi t2, t0, 4
	sw t2, 636(sp)
	lw t0, 636(sp)
	lw t2, 0(t0)
	sw t2, 640(sp)
	lw t0, 640(sp)
	mv a0, t0
	call println
	j .LibroBB0_4
.LibroBB0_17: 
	j .LibroBB0_14
.LibroBB0_18: 
	la t3, check
	lw t2, 0(t3)
	sw t2, 352(sp)
	lw t2, -36(s0)
	sw t2, 356(sp)
	addi t2, zero, 1
	sw t2, 360(sp)
	lw t0, 356(sp)
	lw t1, 360(sp)
	mul t2, t0, t1
	sw t2, 360(sp)
	addi t2, zero, 4
	sw t2, 364(sp)
	lw t0, 360(sp)
	lw t1, 364(sp)
	add t2, t0, t1
	sw t2, 364(sp)
	lw t0, 352(sp)
	lw t1, 364(sp)
	add t2, t0, t1
	sw t2, 368(sp)
	lw t0, 368(sp)
	lb t2, 0(t0)
	sw t2, 372(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 376(sp)
	lw t0, 368(sp)
	lw t1, 376(sp)
	sb t1, 0(t0)
	lw t2, -28(s0)
	sw t2, 380(sp)
	lw t2, -24(s0)
	sw t2, 384(sp)
	lw t2, -32(s0)
	sw t2, 388(sp)
	addi t2, zero, 4
	sw t2, 392(sp)
	lw t0, 388(sp)
	lw t1, 392(sp)
	mul t2, t0, t1
	sw t2, 392(sp)
	addi t2, zero, 4
	sw t2, 396(sp)
	lw t0, 392(sp)
	lw t1, 396(sp)
	add t2, t0, t1
	sw t2, 396(sp)
	lw t0, 384(sp)
	lw t1, 396(sp)
	add t2, t0, t1
	sw t2, 400(sp)
	lw t0, 400(sp)
	lw t2, 0(t0)
	sw t2, 404(sp)
	lw t0, 380(sp)
	lw t1, 404(sp)
	rem t2, t0, t1
	sw t2, 408(sp)
	addi t4, zero, 0
	lw t0, 408(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 412(sp)
	lw t0, 412(sp)
	beqz t0, .LibroBB0_22
	j .LibroBB0_20
.LibroBB0_19: 
	lw t2, -28(s0)
	sw t2, 264(sp)
	lw t2, -24(s0)
	sw t2, 268(sp)
	lw t2, -32(s0)
	sw t2, 272(sp)
	addi t2, zero, 4
	sw t2, 276(sp)
	lw t0, 272(sp)
	lw t1, 276(sp)
	mul t2, t0, t1
	sw t2, 276(sp)
	addi t2, zero, 4
	sw t2, 280(sp)
	lw t0, 276(sp)
	lw t1, 280(sp)
	add t2, t0, t1
	sw t2, 280(sp)
	lw t0, 268(sp)
	lw t1, 280(sp)
	add t2, t0, t1
	sw t2, 284(sp)
	lw t0, 284(sp)
	lw t2, 0(t0)
	sw t2, 288(sp)
	lw t0, 264(sp)
	lw t1, 288(sp)
	mul t2, t0, t1
	sw t2, 292(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 296(sp)
	lw t0, 296(sp)
	lw t1, 292(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 300(sp)
	lw t0, 300(sp)
	mv t2, t0
	sw t2, 304(sp)
	j .LibroBB0_23
.LibroBB0_20: 
	lw t2, -20(s0)
	sw t2, 416(sp)
	lw t2, -28(s0)
	sw t2, 420(sp)
	addi t2, zero, 4
	sw t2, 424(sp)
	lw t0, 420(sp)
	lw t1, 424(sp)
	mul t2, t0, t1
	sw t2, 424(sp)
	addi t2, zero, 4
	sw t2, 428(sp)
	lw t0, 424(sp)
	lw t1, 428(sp)
	add t2, t0, t1
	sw t2, 428(sp)
	lw t0, 416(sp)
	lw t1, 428(sp)
	add t2, t0, t1
	sw t2, 432(sp)
	lw t0, 432(sp)
	lw t2, 0(t0)
	sw t2, 436(sp)
	lw t2, -24(s0)
	sw t2, 440(sp)
	lw t2, -32(s0)
	sw t2, 444(sp)
	addi t2, zero, 4
	sw t2, 448(sp)
	lw t0, 444(sp)
	lw t1, 448(sp)
	mul t2, t0, t1
	sw t2, 448(sp)
	addi t2, zero, 4
	sw t2, 452(sp)
	lw t0, 448(sp)
	lw t1, 452(sp)
	add t2, t0, t1
	sw t2, 452(sp)
	lw t0, 440(sp)
	lw t1, 452(sp)
	add t2, t0, t1
	sw t2, 456(sp)
	lw t0, 456(sp)
	lw t2, 0(t0)
	sw t2, 460(sp)
	lw t0, 436(sp)
	lw t1, 460(sp)
	mul t2, t0, t1
	sw t2, 464(sp)
	lw t2, -20(s0)
	sw t2, 468(sp)
	lw t2, -36(s0)
	sw t2, 472(sp)
	addi t2, zero, 4
	sw t2, 476(sp)
	lw t0, 472(sp)
	lw t1, 476(sp)
	mul t2, t0, t1
	sw t2, 476(sp)
	addi t2, zero, 4
	sw t2, 480(sp)
	lw t0, 476(sp)
	lw t1, 480(sp)
	add t2, t0, t1
	sw t2, 480(sp)
	lw t0, 468(sp)
	lw t1, 480(sp)
	add t2, t0, t1
	sw t2, 484(sp)
	lw t0, 484(sp)
	lw t2, 0(t0)
	sw t2, 488(sp)
	lw t0, 484(sp)
	lw t1, 464(sp)
	sw t1, 0(t0)
	j .LibroBB0_16
.LibroBB0_21: 
	j .LibroBB0_14
.LibroBB0_22: 
	lw t2, -20(s0)
	sw t2, 492(sp)
	lw t2, -28(s0)
	sw t2, 496(sp)
	addi t2, zero, 4
	sw t2, 500(sp)
	lw t0, 496(sp)
	lw t1, 500(sp)
	mul t2, t0, t1
	sw t2, 500(sp)
	addi t2, zero, 4
	sw t2, 504(sp)
	lw t0, 500(sp)
	lw t1, 504(sp)
	add t2, t0, t1
	sw t2, 504(sp)
	lw t0, 492(sp)
	lw t1, 504(sp)
	add t2, t0, t1
	sw t2, 508(sp)
	lw t0, 508(sp)
	lw t2, 0(t0)
	sw t2, 512(sp)
	lw t2, -24(s0)
	sw t2, 516(sp)
	lw t2, -32(s0)
	sw t2, 520(sp)
	addi t2, zero, 4
	sw t2, 524(sp)
	lw t0, 520(sp)
	lw t1, 524(sp)
	mul t2, t0, t1
	sw t2, 524(sp)
	addi t2, zero, 4
	sw t2, 528(sp)
	lw t0, 524(sp)
	lw t1, 528(sp)
	add t2, t0, t1
	sw t2, 528(sp)
	lw t0, 516(sp)
	lw t1, 528(sp)
	add t2, t0, t1
	sw t2, 532(sp)
	lw t0, 532(sp)
	lw t2, 0(t0)
	sw t2, 536(sp)
	addi t2, zero, 1
	sw t2, 540(sp)
	lw t0, 536(sp)
	lw t1, 540(sp)
	sub t2, t0, t1
	sw t2, 540(sp)
	lw t0, 512(sp)
	lw t1, 540(sp)
	mul t2, t0, t1
	sw t2, 544(sp)
	lw t2, -20(s0)
	sw t2, 548(sp)
	lw t2, -28(s0)
	sw t2, 552(sp)
	lw t2, -24(s0)
	sw t2, 556(sp)
	lw t2, -32(s0)
	sw t2, 560(sp)
	addi t2, zero, 4
	sw t2, 564(sp)
	lw t0, 560(sp)
	lw t1, 564(sp)
	mul t2, t0, t1
	sw t2, 564(sp)
	addi t2, zero, 4
	sw t2, 568(sp)
	lw t0, 564(sp)
	lw t1, 568(sp)
	add t2, t0, t1
	sw t2, 568(sp)
	lw t0, 556(sp)
	lw t1, 568(sp)
	add t2, t0, t1
	sw t2, 572(sp)
	lw t0, 572(sp)
	lw t2, 0(t0)
	sw t2, 576(sp)
	lw t0, 552(sp)
	lw t1, 576(sp)
	mul t2, t0, t1
	sw t2, 580(sp)
	addi t2, zero, 4
	sw t2, 584(sp)
	lw t0, 580(sp)
	lw t1, 584(sp)
	mul t2, t0, t1
	sw t2, 584(sp)
	addi t2, zero, 4
	sw t2, 588(sp)
	lw t0, 584(sp)
	lw t1, 588(sp)
	add t2, t0, t1
	sw t2, 588(sp)
	lw t0, 548(sp)
	lw t1, 588(sp)
	add t2, t0, t1
	sw t2, 592(sp)
	lw t0, 592(sp)
	lw t2, 0(t0)
	sw t2, 596(sp)
	lw t0, 592(sp)
	lw t1, 544(sp)
	sw t1, 0(t0)
	j .LibroBB0_21
.LibroBB0_23: 
	lw t0, 304(sp)
	beqz t0, .LibroBB0_16
	j .LibroBB0_13
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
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

	.type	M,@object
M:
	.word	0
	.size	M, 4

	.type	check,@object
check:
	.word	0
	.size	check, 4

