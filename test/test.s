	.text
	.globl main
	.p2align	2
	.type	main,@function
check: 
	addi sp, sp, -56
	sw s0, 48(sp)
	sw ra, 52(sp)
	addi s0, sp, 56
	mv t2, a0
	sw t2, 0(sp)
	mv t2, a1
	sw t2, 4(sp)
	addi t4, zero, 0
	sb t4, -12(s0)
	lw t1, 0(sp)
	sw t1, -16(s0)
	lw t1, 4(sp)
	sw t1, -20(s0)
	lw t2, -16(s0)
	sw t2, 8(sp)
	lw t2, -20(s0)
	sw t2, 12(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	slt t2, t0, t1
	sw t2, 16(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 28(sp)
	lw t0, 16(sp)
	beqz t0, .LibroBB0_2
	j .LibroBB0_1
.LibroBB0_1: 
	lw t2, -16(s0)
	sw t2, 20(sp)
	addi t4, zero, 0
	lw t0, 20(sp)
	slt t5, t0, t4
	seqz t2, t5
	sw t2, 24(sp)
	lw t0, 24(sp)
	mv t2, t0
	sw t2, 28(sp)
	j .LibroBB0_2
.LibroBB0_2: 
	lw t1, 28(sp)
	sb t1, -12(s0)
	j .LibroBB0_3
.LibroBB0_3: 
	lb t2, -12(s0)
	sw t2, 32(sp)
	lw t0, 32(sp)
	mv a0, t0
	lw s0, 48(sp)
	lw ra, 52(sp)
	addi sp, sp, 56
	ret

main: 
	lui t4, 1048575
	addi t4, t4, 936
	add sp, sp, t4
	lui t4, 1
	add t4, sp, t4
	sw s0, -944(t4)
	lui t4, 1
	add t4, sp, t4
	sw ra, -940(t4)
	lui t4, 1
	addi t4, t4, -936
	add s0, sp, t4
	addi t4, zero, 0
	sw t4, -12(s0)
	call getInt
	mv t2, a0
	sw t2, 0(sp)
	lw t2, -16(s0)
	sw t2, 4(sp)
	lw t1, 0(sp)
	sw t1, -16(s0)
	lw t2, -20(s0)
	sw t2, 8(sp)
	addi t4, zero, 0
	sw t4, -20(s0)
	lw t2, -40(s0)
	sw t2, 12(sp)
	addi t4, zero, 0
	sw t4, -40(s0)
	lw t2, -24(s0)
	sw t2, 16(sp)
	addi t4, zero, 0
	sw t4, -24(s0)
	lw t2, -28(s0)
	sw t2, 20(sp)
	addi t4, zero, 0
	sw t4, -28(s0)
	lw t2, -16(s0)
	sw t2, 24(sp)
	addi t2, zero, 1
	sw t2, 28(sp)
	lw t0, 24(sp)
	lw t1, 28(sp)
	sub t2, t0, t1
	sw t2, 28(sp)
	lw t2, -32(s0)
	sw t2, 32(sp)
	lw t1, 28(sp)
	sw t1, -32(s0)
	lw t2, -16(s0)
	sw t2, 36(sp)
	addi t2, zero, 1
	sw t2, 40(sp)
	lw t0, 36(sp)
	lw t1, 40(sp)
	sub t2, t0, t1
	sw t2, 40(sp)
	lw t2, -36(s0)
	sw t2, 44(sp)
	lw t1, 40(sp)
	sw t1, -36(s0)
	lw t2, -52(s0)
	sw t2, 48(sp)
	addi t4, zero, 0
	sw t4, -52(s0)
	lw t2, -56(s0)
	sw t2, 52(sp)
	addi t4, zero, 0
	sw t4, -56(s0)
	lw t2, -48(s0)
	sw t2, 56(sp)
	addi t4, zero, 0
	sw t4, -48(s0)
	lw t2, -44(s0)
	sw t2, 60(sp)
	addi t4, zero, 0
	sw t4, -44(s0)
	lw t2, -16(s0)
	sw t2, 64(sp)
	lw t2, -16(s0)
	sw t2, 68(sp)
	lw t0, 64(sp)
	lw t1, 68(sp)
	mul t2, t0, t1
	sw t2, 72(sp)
	addi t2, zero, 4
	sw t2, 76(sp)
	lw t0, 72(sp)
	lw t1, 76(sp)
	mul t2, t0, t1
	sw t2, 76(sp)
	addi t2, zero, 4
	sw t2, 80(sp)
	lw t0, 76(sp)
	lw t1, 80(sp)
	add t2, t0, t1
	sw t2, 80(sp)
	lw t0, 80(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 84(sp)
	lw t0, 84(sp)
	lw t1, 72(sp)
	sw t1, 0(t0)
	lw t2, -60(s0)
	sw t2, 88(sp)
	lw t1, 84(sp)
	sw t1, -60(s0)
	lw t2, -72(s0)
	sw t2, 92(sp)
	addi t4, zero, 0
	sw t4, -72(s0)
	j .LibroBB1_4
.LibroBB1_1: 
	lw t2, -72(s0)
	sw t2, 140(sp)
	addi t2, zero, 1
	sw t2, 144(sp)
	lw t0, 140(sp)
	lw t1, 144(sp)
	add t2, t0, t1
	sw t2, 144(sp)
	lw t1, 144(sp)
	sw t1, -72(s0)
	j .LibroBB1_4
.LibroBB1_2: 
	lw t2, -60(s0)
	sw t2, 116(sp)
	lw t2, -72(s0)
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
	addi t4, zero, 0
	lw t0, 132(sp)
	sw t4, 0(t0)
	j .LibroBB1_1
.LibroBB1_3: 
	lw t2, -16(s0)
	sw t2, 148(sp)
	lw t2, -16(s0)
	sw t2, 152(sp)
	lw t0, 148(sp)
	lw t1, 152(sp)
	mul t2, t0, t1
	sw t2, 156(sp)
	addi t2, zero, 4
	sw t2, 160(sp)
	lw t0, 156(sp)
	lw t1, 160(sp)
	mul t2, t0, t1
	sw t2, 160(sp)
	addi t2, zero, 4
	sw t2, 164(sp)
	lw t0, 160(sp)
	lw t1, 164(sp)
	add t2, t0, t1
	sw t2, 164(sp)
	lw t0, 164(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 168(sp)
	lw t0, 168(sp)
	lw t1, 156(sp)
	sw t1, 0(t0)
	lw t2, -64(s0)
	sw t2, 172(sp)
	lw t1, 168(sp)
	sw t1, -64(s0)
	lw t2, -72(s0)
	sw t2, 176(sp)
	addi t4, zero, 0
	sw t4, -72(s0)
	j .LibroBB1_6
.LibroBB1_4: 
	lw t2, -72(s0)
	sw t2, 96(sp)
	lw t2, -16(s0)
	sw t2, 100(sp)
	lw t2, -16(s0)
	sw t2, 104(sp)
	lw t0, 100(sp)
	lw t1, 104(sp)
	mul t2, t0, t1
	sw t2, 108(sp)
	lw t0, 96(sp)
	lw t1, 108(sp)
	slt t2, t0, t1
	sw t2, 112(sp)
	lw t0, 112(sp)
	beqz t0, .LibroBB1_3
	j .LibroBB1_2
.LibroBB1_5: 
	lw t2, -64(s0)
	sw t2, 200(sp)
	lw t2, -72(s0)
	sw t2, 204(sp)
	addi t2, zero, 4
	sw t2, 208(sp)
	lw t0, 204(sp)
	lw t1, 208(sp)
	mul t2, t0, t1
	sw t2, 208(sp)
	addi t2, zero, 4
	sw t2, 212(sp)
	lw t0, 208(sp)
	lw t1, 212(sp)
	add t2, t0, t1
	sw t2, 212(sp)
	lw t0, 200(sp)
	lw t1, 212(sp)
	add t2, t0, t1
	sw t2, 216(sp)
	lw t0, 216(sp)
	lw t2, 0(t0)
	sw t2, 220(sp)
	addi t4, zero, 0
	lw t0, 216(sp)
	sw t4, 0(t0)
	j .LibroBB1_8
.LibroBB1_6: 
	lw t2, -72(s0)
	sw t2, 180(sp)
	lw t2, -16(s0)
	sw t2, 184(sp)
	lw t2, -16(s0)
	sw t2, 188(sp)
	lw t0, 184(sp)
	lw t1, 188(sp)
	mul t2, t0, t1
	sw t2, 192(sp)
	lw t0, 180(sp)
	lw t1, 192(sp)
	slt t2, t0, t1
	sw t2, 196(sp)
	lw t0, 196(sp)
	beqz t0, .LibroBB1_7
	j .LibroBB1_5
.LibroBB1_7: 
	lw t2, -16(s0)
	sw t2, 232(sp)
	addi t2, zero, 4
	sw t2, 236(sp)
	lw t0, 232(sp)
	lw t1, 236(sp)
	mul t2, t0, t1
	sw t2, 236(sp)
	addi t2, zero, 4
	sw t2, 240(sp)
	lw t0, 236(sp)
	lw t1, 240(sp)
	add t2, t0, t1
	sw t2, 240(sp)
	lw t0, 240(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 244(sp)
	lw t0, 244(sp)
	lw t1, 232(sp)
	sw t1, 0(t0)
	lw t2, -68(s0)
	sw t2, 248(sp)
	lw t1, 244(sp)
	sw t1, -68(s0)
	lw t2, -72(s0)
	sw t2, 252(sp)
	addi t4, zero, 0
	sw t4, -72(s0)
	j .LibroBB1_10
.LibroBB1_8: 
	lw t2, -72(s0)
	sw t2, 224(sp)
	addi t2, zero, 1
	sw t2, 228(sp)
	lw t0, 224(sp)
	lw t1, 228(sp)
	add t2, t0, t1
	sw t2, 228(sp)
	lw t1, 228(sp)
	sw t1, -72(s0)
	j .LibroBB1_6
.LibroBB1_9: 
	lw t2, -72(s0)
	sw t2, 384(sp)
	addi t2, zero, 1
	sw t2, 388(sp)
	lw t0, 384(sp)
	lw t1, 388(sp)
	add t2, t0, t1
	sw t2, 388(sp)
	lw t1, 388(sp)
	sw t1, -72(s0)
	j .LibroBB1_10
.LibroBB1_10: 
	lw t2, -72(s0)
	sw t2, 256(sp)
	lw t2, -16(s0)
	sw t2, 260(sp)
	lw t0, 256(sp)
	lw t1, 260(sp)
	slt t2, t0, t1
	sw t2, 264(sp)
	lw t0, 264(sp)
	beqz t0, .LibroBB1_12
	j .LibroBB1_11
.LibroBB1_11: 
	lw t2, -16(s0)
	sw t2, 268(sp)
	addi t2, zero, 4
	sw t2, 272(sp)
	lw t0, 268(sp)
	lw t1, 272(sp)
	mul t2, t0, t1
	sw t2, 272(sp)
	addi t2, zero, 4
	sw t2, 276(sp)
	lw t0, 272(sp)
	lw t1, 276(sp)
	add t2, t0, t1
	sw t2, 276(sp)
	lw t0, 276(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 280(sp)
	lw t0, 280(sp)
	lw t1, 268(sp)
	sw t1, 0(t0)
	lw t2, -68(s0)
	sw t2, 284(sp)
	lw t2, -72(s0)
	sw t2, 288(sp)
	addi t2, zero, 4
	sw t2, 292(sp)
	lw t0, 288(sp)
	lw t1, 292(sp)
	mul t2, t0, t1
	sw t2, 292(sp)
	addi t2, zero, 4
	sw t2, 296(sp)
	lw t0, 292(sp)
	lw t1, 296(sp)
	add t2, t0, t1
	sw t2, 296(sp)
	lw t0, 284(sp)
	lw t1, 296(sp)
	add t2, t0, t1
	sw t2, 300(sp)
	lw t0, 300(sp)
	lw t2, 0(t0)
	sw t2, 304(sp)
	lw t0, 300(sp)
	lw t1, 280(sp)
	sw t1, 0(t0)
	lw t2, -76(s0)
	sw t2, 308(sp)
	addi t4, zero, 0
	sw t4, -76(s0)
	j .LibroBB1_13
.LibroBB1_12: 
	lw t2, -24(s0)
	sw t2, 392(sp)
	lw t2, -60(s0)
	sw t2, 396(sp)
	addi t2, zero, 0
	sw t2, 400(sp)
	addi t2, zero, 4
	sw t2, 404(sp)
	lw t0, 400(sp)
	lw t1, 404(sp)
	mul t2, t0, t1
	sw t2, 400(sp)
	addi t2, zero, 4
	sw t2, 408(sp)
	lw t0, 400(sp)
	lw t1, 408(sp)
	add t2, t0, t1
	sw t2, 408(sp)
	lw t0, 396(sp)
	lw t1, 408(sp)
	add t2, t0, t1
	sw t2, 412(sp)
	lw t0, 412(sp)
	lw t2, 0(t0)
	sw t2, 416(sp)
	lw t0, 412(sp)
	lw t1, 392(sp)
	sw t1, 0(t0)
	lw t2, -28(s0)
	sw t2, 420(sp)
	lw t2, -64(s0)
	sw t2, 424(sp)
	addi t2, zero, 0
	sw t2, 428(sp)
	addi t2, zero, 4
	sw t2, 432(sp)
	lw t0, 428(sp)
	lw t1, 432(sp)
	mul t2, t0, t1
	sw t2, 428(sp)
	addi t2, zero, 4
	sw t2, 436(sp)
	lw t0, 428(sp)
	lw t1, 436(sp)
	add t2, t0, t1
	sw t2, 436(sp)
	lw t0, 424(sp)
	lw t1, 436(sp)
	add t2, t0, t1
	sw t2, 440(sp)
	lw t0, 440(sp)
	lw t2, 0(t0)
	sw t2, 444(sp)
	lw t0, 440(sp)
	lw t1, 420(sp)
	sw t1, 0(t0)
	lw t2, -68(s0)
	sw t2, 448(sp)
	lw t2, -24(s0)
	sw t2, 452(sp)
	addi t2, zero, 4
	sw t2, 456(sp)
	lw t0, 452(sp)
	lw t1, 456(sp)
	mul t2, t0, t1
	sw t2, 456(sp)
	addi t2, zero, 4
	sw t2, 460(sp)
	lw t0, 456(sp)
	lw t1, 460(sp)
	add t2, t0, t1
	sw t2, 460(sp)
	lw t0, 448(sp)
	lw t1, 460(sp)
	add t2, t0, t1
	sw t2, 464(sp)
	lw t0, 464(sp)
	lw t2, 0(t0)
	sw t2, 468(sp)
	lw t2, -28(s0)
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
	addi t4, zero, 0
	lw t0, 484(sp)
	sw t4, 0(t0)
	j .LibroBB1_19
.LibroBB1_13: 
	lw t2, -76(s0)
	sw t2, 312(sp)
	lw t2, -16(s0)
	sw t2, 316(sp)
	lw t0, 312(sp)
	lw t1, 316(sp)
	slt t2, t0, t1
	sw t2, 320(sp)
	lw t0, 320(sp)
	beqz t0, .LibroBB1_16
	j .LibroBB1_14
.LibroBB1_14: 
	addi t2, zero, 0
	sw t2, 324(sp)
	addi t2, zero, 1
	sw t2, 328(sp)
	lw t0, 324(sp)
	lw t1, 328(sp)
	sub t2, t0, t1
	sw t2, 324(sp)
	lw t2, -68(s0)
	sw t2, 332(sp)
	lw t2, -72(s0)
	sw t2, 336(sp)
	addi t2, zero, 4
	sw t2, 340(sp)
	lw t0, 336(sp)
	lw t1, 340(sp)
	mul t2, t0, t1
	sw t2, 340(sp)
	addi t2, zero, 4
	sw t2, 344(sp)
	lw t0, 340(sp)
	lw t1, 344(sp)
	add t2, t0, t1
	sw t2, 344(sp)
	lw t0, 332(sp)
	lw t1, 344(sp)
	add t2, t0, t1
	sw t2, 348(sp)
	lw t0, 348(sp)
	lw t2, 0(t0)
	sw t2, 352(sp)
	lw t2, -76(s0)
	sw t2, 356(sp)
	addi t2, zero, 4
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
	lw t2, 0(t0)
	sw t2, 372(sp)
	lw t0, 368(sp)
	lw t1, 324(sp)
	sw t1, 0(t0)
	j .LibroBB1_15
.LibroBB1_15: 
	lw t2, -76(s0)
	sw t2, 376(sp)
	addi t2, zero, 1
	sw t2, 380(sp)
	lw t0, 376(sp)
	lw t1, 380(sp)
	add t2, t0, t1
	sw t2, 380(sp)
	lw t1, 380(sp)
	sw t1, -76(s0)
	j .LibroBB1_13
.LibroBB1_16: 
	j .LibroBB1_9
.LibroBB1_17: 
	lw t2, -68(s0)
	sw t2, 504(sp)
	lw t2, -60(s0)
	sw t2, 508(sp)
	lw t2, -20(s0)
	sw t2, 512(sp)
	addi t2, zero, 4
	sw t2, 516(sp)
	lw t0, 512(sp)
	lw t1, 516(sp)
	mul t2, t0, t1
	sw t2, 516(sp)
	addi t2, zero, 4
	sw t2, 520(sp)
	lw t0, 516(sp)
	lw t1, 520(sp)
	add t2, t0, t1
	sw t2, 520(sp)
	lw t0, 508(sp)
	lw t1, 520(sp)
	add t2, t0, t1
	sw t2, 524(sp)
	lw t0, 524(sp)
	lw t2, 0(t0)
	sw t2, 528(sp)
	addi t2, zero, 4
	sw t2, 532(sp)
	lw t0, 528(sp)
	lw t1, 532(sp)
	mul t2, t0, t1
	sw t2, 532(sp)
	addi t2, zero, 4
	sw t2, 536(sp)
	lw t0, 532(sp)
	lw t1, 536(sp)
	add t2, t0, t1
	sw t2, 536(sp)
	lw t0, 504(sp)
	lw t1, 536(sp)
	add t2, t0, t1
	sw t2, 540(sp)
	lw t0, 540(sp)
	lw t2, 0(t0)
	sw t2, 544(sp)
	lw t2, -64(s0)
	sw t2, 548(sp)
	lw t2, -20(s0)
	sw t2, 552(sp)
	addi t2, zero, 4
	sw t2, 556(sp)
	lw t0, 552(sp)
	lw t1, 556(sp)
	mul t2, t0, t1
	sw t2, 556(sp)
	addi t2, zero, 4
	sw t2, 560(sp)
	lw t0, 556(sp)
	lw t1, 560(sp)
	add t2, t0, t1
	sw t2, 560(sp)
	lw t0, 548(sp)
	lw t1, 560(sp)
	add t2, t0, t1
	sw t2, 564(sp)
	lw t0, 564(sp)
	lw t2, 0(t0)
	sw t2, 568(sp)
	addi t2, zero, 4
	sw t2, 572(sp)
	lw t0, 568(sp)
	lw t1, 572(sp)
	mul t2, t0, t1
	sw t2, 572(sp)
	addi t2, zero, 4
	sw t2, 576(sp)
	lw t0, 572(sp)
	lw t1, 576(sp)
	add t2, t0, t1
	sw t2, 576(sp)
	lw t0, 544(sp)
	lw t1, 576(sp)
	add t2, t0, t1
	sw t2, 580(sp)
	lw t0, 580(sp)
	lw t2, 0(t0)
	sw t2, 584(sp)
	lw t2, -48(s0)
	sw t2, 588(sp)
	lw t1, 584(sp)
	sw t1, -48(s0)
	lw t2, -60(s0)
	sw t2, 592(sp)
	lw t2, -20(s0)
	sw t2, 596(sp)
	addi t2, zero, 4
	sw t2, 600(sp)
	lw t0, 596(sp)
	lw t1, 600(sp)
	mul t2, t0, t1
	sw t2, 600(sp)
	addi t2, zero, 4
	sw t2, 604(sp)
	lw t0, 600(sp)
	lw t1, 604(sp)
	add t2, t0, t1
	sw t2, 604(sp)
	lw t0, 592(sp)
	lw t1, 604(sp)
	add t2, t0, t1
	sw t2, 608(sp)
	lw t0, 608(sp)
	lw t2, 0(t0)
	sw t2, 612(sp)
	addi t2, zero, 1
	sw t2, 616(sp)
	lw t0, 612(sp)
	lw t1, 616(sp)
	sub t2, t0, t1
	sw t2, 616(sp)
	lw t2, -52(s0)
	sw t2, 620(sp)
	lw t1, 616(sp)
	sw t1, -52(s0)
	lw t2, -64(s0)
	sw t2, 624(sp)
	lw t2, -20(s0)
	sw t2, 628(sp)
	addi t2, zero, 4
	sw t2, 632(sp)
	lw t0, 628(sp)
	lw t1, 632(sp)
	mul t2, t0, t1
	sw t2, 632(sp)
	addi t2, zero, 4
	sw t2, 636(sp)
	lw t0, 632(sp)
	lw t1, 636(sp)
	add t2, t0, t1
	sw t2, 636(sp)
	lw t0, 624(sp)
	lw t1, 636(sp)
	add t2, t0, t1
	sw t2, 640(sp)
	lw t0, 640(sp)
	lw t2, 0(t0)
	sw t2, 644(sp)
	addi t2, zero, 2
	sw t2, 648(sp)
	lw t0, 644(sp)
	lw t1, 648(sp)
	sub t2, t0, t1
	sw t2, 648(sp)
	lw t2, -56(s0)
	sw t2, 652(sp)
	lw t1, 648(sp)
	sw t1, -56(s0)
	lw t2, -52(s0)
	sw t2, 656(sp)
	lw t2, -16(s0)
	sw t2, 660(sp)
	lw t0, 656(sp)
	mv a0, t0
	lw t0, 660(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 664(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 736(sp)
	lw t0, 664(sp)
	beqz t0, .LibroBB1_26
	j .LibroBB1_20
.LibroBB1_18: 
	lw t2, -44(s0)
	li t4, 3012
	add t4, t4, sp
	sw t2, 0(t4)
	addi t4, zero, 1
	li t4, 3012
	add t4, t4, sp
	lw t0, 0(t4)
	xor t5, t0, t4
	seqz t2, t5
	li t4, 3016
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3016
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_22
	j .LibroBB1_21
.LibroBB1_19: 
	lw t2, -20(s0)
	sw t2, 492(sp)
	lw t2, -40(s0)
	sw t2, 496(sp)
	lw t0, 496(sp)
	lw t1, 492(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 500(sp)
	lw t0, 500(sp)
	beqz t0, .LibroBB1_18
	j .LibroBB1_17
.LibroBB1_20: 
	lw t2, -56(s0)
	sw t2, 668(sp)
	lw t2, -16(s0)
	sw t2, 672(sp)
	lw t0, 668(sp)
	mv a0, t0
	lw t0, 672(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 676(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 736(sp)
	lw t0, 676(sp)
	beqz t0, .LibroBB1_26
	j .LibroBB1_24
.LibroBB1_21: 
	lw t2, -68(s0)
	li t4, 3020
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -32(s0)
	li t4, 3024
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 3028
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3024
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 3028
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 3028
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 3032
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3028
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 3032
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 3032
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3020
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 3032
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 3036
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3036
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 3040
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -36(s0)
	li t4, 3044
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 3048
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3044
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 3048
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 3048
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 3052
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3048
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 3052
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 3052
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3040
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 3052
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 3056
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3056
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 3060
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3060
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	call toString
	mv t2, a0
	li t4, 3064
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3064
	add t4, t4, sp
	lw t0, 0(t4)
	addi t2, t0, 4
	li t4, 3068
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3068
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 3072
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3072
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	call println
	j .LibroBB1_23
.LibroBB1_22: 
	la t2, .libro.str
	li t4, 3076
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3076
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	call print
	j .LibroBB1_23
.LibroBB1_23: 
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB1_25
.LibroBB1_24: 
	lw t2, -68(s0)
	sw t2, 680(sp)
	lw t2, -52(s0)
	sw t2, 684(sp)
	addi t2, zero, 4
	sw t2, 688(sp)
	lw t0, 684(sp)
	lw t1, 688(sp)
	mul t2, t0, t1
	sw t2, 688(sp)
	addi t2, zero, 4
	sw t2, 692(sp)
	lw t0, 688(sp)
	lw t1, 692(sp)
	add t2, t0, t1
	sw t2, 692(sp)
	lw t0, 680(sp)
	lw t1, 692(sp)
	add t2, t0, t1
	sw t2, 696(sp)
	lw t0, 696(sp)
	lw t2, 0(t0)
	sw t2, 700(sp)
	lw t2, -56(s0)
	sw t2, 704(sp)
	addi t2, zero, 4
	sw t2, 708(sp)
	lw t0, 704(sp)
	lw t1, 708(sp)
	mul t2, t0, t1
	sw t2, 708(sp)
	addi t2, zero, 4
	sw t2, 712(sp)
	lw t0, 708(sp)
	lw t1, 712(sp)
	add t2, t0, t1
	sw t2, 712(sp)
	lw t0, 700(sp)
	lw t1, 712(sp)
	add t2, t0, t1
	sw t2, 716(sp)
	lw t0, 716(sp)
	lw t2, 0(t0)
	sw t2, 720(sp)
	addi t2, zero, 0
	sw t2, 724(sp)
	addi t2, zero, 1
	sw t2, 728(sp)
	lw t0, 724(sp)
	lw t1, 728(sp)
	sub t2, t0, t1
	sw t2, 724(sp)
	lw t0, 720(sp)
	lw t1, 724(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 732(sp)
	lw t0, 732(sp)
	mv t2, t0
	sw t2, 736(sp)
	j .LibroBB1_26
.LibroBB1_25: 
	lw t2, -12(s0)
	li t4, 3080
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3080
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	lui t4, 1
	add t4, sp, t4
	lw s0, -944(t4)
	lui t4, 1
	add t4, sp, t4
	lw ra, -940(t4)
	lui t4, 1
	addi t4, t4, -936
	add sp, sp, t4
	ret

.LibroBB1_26: 
	lw t0, 736(sp)
	beqz t0, .LibroBB1_28
	j .LibroBB1_27
.LibroBB1_27: 
	lw t2, -40(s0)
	sw t2, 740(sp)
	addi t2, zero, 1
	sw t2, 744(sp)
	lw t0, 740(sp)
	lw t1, 744(sp)
	add t2, t0, t1
	sw t2, 744(sp)
	lw t2, -40(s0)
	sw t2, 748(sp)
	lw t1, 744(sp)
	sw t1, -40(s0)
	lw t2, -52(s0)
	sw t2, 752(sp)
	lw t2, -60(s0)
	sw t2, 756(sp)
	lw t2, -40(s0)
	sw t2, 760(sp)
	addi t2, zero, 4
	sw t2, 764(sp)
	lw t0, 760(sp)
	lw t1, 764(sp)
	mul t2, t0, t1
	sw t2, 764(sp)
	addi t2, zero, 4
	sw t2, 768(sp)
	lw t0, 764(sp)
	lw t1, 768(sp)
	add t2, t0, t1
	sw t2, 768(sp)
	lw t0, 756(sp)
	lw t1, 768(sp)
	add t2, t0, t1
	sw t2, 772(sp)
	lw t0, 772(sp)
	lw t2, 0(t0)
	sw t2, 776(sp)
	lw t0, 772(sp)
	lw t1, 752(sp)
	sw t1, 0(t0)
	lw t2, -56(s0)
	sw t2, 780(sp)
	lw t2, -64(s0)
	sw t2, 784(sp)
	lw t2, -40(s0)
	sw t2, 788(sp)
	addi t2, zero, 4
	sw t2, 792(sp)
	lw t0, 788(sp)
	lw t1, 792(sp)
	mul t2, t0, t1
	sw t2, 792(sp)
	addi t2, zero, 4
	sw t2, 796(sp)
	lw t0, 792(sp)
	lw t1, 796(sp)
	add t2, t0, t1
	sw t2, 796(sp)
	lw t0, 784(sp)
	lw t1, 796(sp)
	add t2, t0, t1
	sw t2, 800(sp)
	lw t0, 800(sp)
	lw t2, 0(t0)
	sw t2, 804(sp)
	lw t0, 800(sp)
	lw t1, 780(sp)
	sw t1, 0(t0)
	lw t2, -48(s0)
	sw t2, 808(sp)
	addi t2, zero, 1
	sw t2, 812(sp)
	lw t0, 808(sp)
	lw t1, 812(sp)
	add t2, t0, t1
	sw t2, 812(sp)
	lw t2, -68(s0)
	sw t2, 816(sp)
	lw t2, -52(s0)
	sw t2, 820(sp)
	addi t2, zero, 4
	sw t2, 824(sp)
	lw t0, 820(sp)
	lw t1, 824(sp)
	mul t2, t0, t1
	sw t2, 824(sp)
	addi t2, zero, 4
	sw t2, 828(sp)
	lw t0, 824(sp)
	lw t1, 828(sp)
	add t2, t0, t1
	sw t2, 828(sp)
	lw t0, 816(sp)
	lw t1, 828(sp)
	add t2, t0, t1
	sw t2, 832(sp)
	lw t0, 832(sp)
	lw t2, 0(t0)
	sw t2, 836(sp)
	lw t2, -56(s0)
	sw t2, 840(sp)
	addi t2, zero, 4
	sw t2, 844(sp)
	lw t0, 840(sp)
	lw t1, 844(sp)
	mul t2, t0, t1
	sw t2, 844(sp)
	addi t2, zero, 4
	sw t2, 848(sp)
	lw t0, 844(sp)
	lw t1, 848(sp)
	add t2, t0, t1
	sw t2, 848(sp)
	lw t0, 836(sp)
	lw t1, 848(sp)
	add t2, t0, t1
	sw t2, 852(sp)
	lw t0, 852(sp)
	lw t2, 0(t0)
	sw t2, 856(sp)
	lw t0, 852(sp)
	lw t1, 812(sp)
	sw t1, 0(t0)
	lw t2, -52(s0)
	sw t2, 860(sp)
	lw t2, -32(s0)
	sw t2, 864(sp)
	lw t0, 860(sp)
	lw t1, 864(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 868(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 884(sp)
	lw t0, 868(sp)
	beqz t0, .LibroBB1_31
	j .LibroBB1_29
.LibroBB1_28: 
	lw t2, -60(s0)
	sw t2, 892(sp)
	lw t2, -20(s0)
	sw t2, 896(sp)
	addi t2, zero, 4
	sw t2, 900(sp)
	lw t0, 896(sp)
	lw t1, 900(sp)
	mul t2, t0, t1
	sw t2, 900(sp)
	addi t2, zero, 4
	sw t2, 904(sp)
	lw t0, 900(sp)
	lw t1, 904(sp)
	add t2, t0, t1
	sw t2, 904(sp)
	lw t0, 892(sp)
	lw t1, 904(sp)
	add t2, t0, t1
	sw t2, 908(sp)
	lw t0, 908(sp)
	lw t2, 0(t0)
	sw t2, 912(sp)
	addi t2, zero, 1
	sw t2, 916(sp)
	lw t0, 912(sp)
	lw t1, 916(sp)
	sub t2, t0, t1
	sw t2, 916(sp)
	lw t2, -52(s0)
	sw t2, 920(sp)
	lw t1, 916(sp)
	sw t1, -52(s0)
	lw t2, -64(s0)
	sw t2, 924(sp)
	lw t2, -20(s0)
	sw t2, 928(sp)
	addi t2, zero, 4
	sw t2, 932(sp)
	lw t0, 928(sp)
	lw t1, 932(sp)
	mul t2, t0, t1
	sw t2, 932(sp)
	addi t2, zero, 4
	sw t2, 936(sp)
	lw t0, 932(sp)
	lw t1, 936(sp)
	add t2, t0, t1
	sw t2, 936(sp)
	lw t0, 924(sp)
	lw t1, 936(sp)
	add t2, t0, t1
	sw t2, 940(sp)
	lw t0, 940(sp)
	lw t2, 0(t0)
	sw t2, 944(sp)
	addi t2, zero, 2
	sw t2, 948(sp)
	lw t0, 944(sp)
	lw t1, 948(sp)
	add t2, t0, t1
	sw t2, 948(sp)
	lw t2, -56(s0)
	sw t2, 952(sp)
	lw t1, 948(sp)
	sw t1, -56(s0)
	lw t2, -52(s0)
	sw t2, 956(sp)
	lw t2, -16(s0)
	sw t2, 960(sp)
	lw t0, 956(sp)
	mv a0, t0
	lw t0, 960(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 964(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1036(sp)
	lw t0, 964(sp)
	beqz t0, .LibroBB1_35
	j .LibroBB1_30
.LibroBB1_29: 
	lw t2, -56(s0)
	sw t2, 872(sp)
	lw t2, -36(s0)
	sw t2, 876(sp)
	lw t0, 872(sp)
	lw t1, 876(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 880(sp)
	lw t0, 880(sp)
	mv t2, t0
	sw t2, 884(sp)
	j .LibroBB1_31
.LibroBB1_30: 
	lw t2, -56(s0)
	sw t2, 968(sp)
	lw t2, -16(s0)
	sw t2, 972(sp)
	lw t0, 968(sp)
	mv a0, t0
	lw t0, 972(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 976(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1036(sp)
	lw t0, 976(sp)
	beqz t0, .LibroBB1_35
	j .LibroBB1_32
.LibroBB1_31: 
	lw t0, 884(sp)
	beqz t0, .LibroBB1_33
	j .LibroBB1_34
.LibroBB1_32: 
	lw t2, -68(s0)
	sw t2, 980(sp)
	lw t2, -52(s0)
	sw t2, 984(sp)
	addi t2, zero, 4
	sw t2, 988(sp)
	lw t0, 984(sp)
	lw t1, 988(sp)
	mul t2, t0, t1
	sw t2, 988(sp)
	addi t2, zero, 4
	sw t2, 992(sp)
	lw t0, 988(sp)
	lw t1, 992(sp)
	add t2, t0, t1
	sw t2, 992(sp)
	lw t0, 980(sp)
	lw t1, 992(sp)
	add t2, t0, t1
	sw t2, 996(sp)
	lw t0, 996(sp)
	lw t2, 0(t0)
	sw t2, 1000(sp)
	lw t2, -56(s0)
	sw t2, 1004(sp)
	addi t2, zero, 4
	sw t2, 1008(sp)
	lw t0, 1004(sp)
	lw t1, 1008(sp)
	mul t2, t0, t1
	sw t2, 1008(sp)
	addi t2, zero, 4
	sw t2, 1012(sp)
	lw t0, 1008(sp)
	lw t1, 1012(sp)
	add t2, t0, t1
	sw t2, 1012(sp)
	lw t0, 1000(sp)
	lw t1, 1012(sp)
	add t2, t0, t1
	sw t2, 1016(sp)
	lw t0, 1016(sp)
	lw t2, 0(t0)
	sw t2, 1020(sp)
	addi t2, zero, 0
	sw t2, 1024(sp)
	addi t2, zero, 1
	sw t2, 1028(sp)
	lw t0, 1024(sp)
	lw t1, 1028(sp)
	sub t2, t0, t1
	sw t2, 1024(sp)
	lw t0, 1020(sp)
	lw t1, 1024(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1032(sp)
	lw t0, 1032(sp)
	mv t2, t0
	sw t2, 1036(sp)
	j .LibroBB1_35
.LibroBB1_33: 
	j .LibroBB1_28
.LibroBB1_34: 
	lw t2, -44(s0)
	sw t2, 888(sp)
	addi t4, zero, 1
	sw t4, -44(s0)
	j .LibroBB1_33
.LibroBB1_35: 
	lw t0, 1036(sp)
	beqz t0, .LibroBB1_36
	j .LibroBB1_37
.LibroBB1_36: 
	lw t2, -60(s0)
	sw t2, 1192(sp)
	lw t2, -20(s0)
	sw t2, 1196(sp)
	addi t2, zero, 4
	sw t2, 1200(sp)
	lw t0, 1196(sp)
	lw t1, 1200(sp)
	mul t2, t0, t1
	sw t2, 1200(sp)
	addi t2, zero, 4
	sw t2, 1204(sp)
	lw t0, 1200(sp)
	lw t1, 1204(sp)
	add t2, t0, t1
	sw t2, 1204(sp)
	lw t0, 1192(sp)
	lw t1, 1204(sp)
	add t2, t0, t1
	sw t2, 1208(sp)
	lw t0, 1208(sp)
	lw t2, 0(t0)
	sw t2, 1212(sp)
	addi t2, zero, 1
	sw t2, 1216(sp)
	lw t0, 1212(sp)
	lw t1, 1216(sp)
	add t2, t0, t1
	sw t2, 1216(sp)
	lw t2, -52(s0)
	sw t2, 1220(sp)
	lw t1, 1216(sp)
	sw t1, -52(s0)
	lw t2, -64(s0)
	sw t2, 1224(sp)
	lw t2, -20(s0)
	sw t2, 1228(sp)
	addi t2, zero, 4
	sw t2, 1232(sp)
	lw t0, 1228(sp)
	lw t1, 1232(sp)
	mul t2, t0, t1
	sw t2, 1232(sp)
	addi t2, zero, 4
	sw t2, 1236(sp)
	lw t0, 1232(sp)
	lw t1, 1236(sp)
	add t2, t0, t1
	sw t2, 1236(sp)
	lw t0, 1224(sp)
	lw t1, 1236(sp)
	add t2, t0, t1
	sw t2, 1240(sp)
	lw t0, 1240(sp)
	lw t2, 0(t0)
	sw t2, 1244(sp)
	addi t2, zero, 2
	sw t2, 1248(sp)
	lw t0, 1244(sp)
	lw t1, 1248(sp)
	sub t2, t0, t1
	sw t2, 1248(sp)
	lw t2, -56(s0)
	sw t2, 1252(sp)
	lw t1, 1248(sp)
	sw t1, -56(s0)
	lw t2, -52(s0)
	sw t2, 1256(sp)
	lw t2, -16(s0)
	sw t2, 1260(sp)
	lw t0, 1256(sp)
	mv a0, t0
	lw t0, 1260(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1264(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1336(sp)
	lw t0, 1264(sp)
	beqz t0, .LibroBB1_42
	j .LibroBB1_38
.LibroBB1_37: 
	lw t2, -40(s0)
	sw t2, 1040(sp)
	addi t2, zero, 1
	sw t2, 1044(sp)
	lw t0, 1040(sp)
	lw t1, 1044(sp)
	add t2, t0, t1
	sw t2, 1044(sp)
	lw t2, -40(s0)
	sw t2, 1048(sp)
	lw t1, 1044(sp)
	sw t1, -40(s0)
	lw t2, -52(s0)
	sw t2, 1052(sp)
	lw t2, -60(s0)
	sw t2, 1056(sp)
	lw t2, -40(s0)
	sw t2, 1060(sp)
	addi t2, zero, 4
	sw t2, 1064(sp)
	lw t0, 1060(sp)
	lw t1, 1064(sp)
	mul t2, t0, t1
	sw t2, 1064(sp)
	addi t2, zero, 4
	sw t2, 1068(sp)
	lw t0, 1064(sp)
	lw t1, 1068(sp)
	add t2, t0, t1
	sw t2, 1068(sp)
	lw t0, 1056(sp)
	lw t1, 1068(sp)
	add t2, t0, t1
	sw t2, 1072(sp)
	lw t0, 1072(sp)
	lw t2, 0(t0)
	sw t2, 1076(sp)
	lw t0, 1072(sp)
	lw t1, 1052(sp)
	sw t1, 0(t0)
	lw t2, -56(s0)
	sw t2, 1080(sp)
	lw t2, -64(s0)
	sw t2, 1084(sp)
	lw t2, -40(s0)
	sw t2, 1088(sp)
	addi t2, zero, 4
	sw t2, 1092(sp)
	lw t0, 1088(sp)
	lw t1, 1092(sp)
	mul t2, t0, t1
	sw t2, 1092(sp)
	addi t2, zero, 4
	sw t2, 1096(sp)
	lw t0, 1092(sp)
	lw t1, 1096(sp)
	add t2, t0, t1
	sw t2, 1096(sp)
	lw t0, 1084(sp)
	lw t1, 1096(sp)
	add t2, t0, t1
	sw t2, 1100(sp)
	lw t0, 1100(sp)
	lw t2, 0(t0)
	sw t2, 1104(sp)
	lw t0, 1100(sp)
	lw t1, 1080(sp)
	sw t1, 0(t0)
	lw t2, -48(s0)
	sw t2, 1108(sp)
	addi t2, zero, 1
	sw t2, 1112(sp)
	lw t0, 1108(sp)
	lw t1, 1112(sp)
	add t2, t0, t1
	sw t2, 1112(sp)
	lw t2, -68(s0)
	sw t2, 1116(sp)
	lw t2, -52(s0)
	sw t2, 1120(sp)
	addi t2, zero, 4
	sw t2, 1124(sp)
	lw t0, 1120(sp)
	lw t1, 1124(sp)
	mul t2, t0, t1
	sw t2, 1124(sp)
	addi t2, zero, 4
	sw t2, 1128(sp)
	lw t0, 1124(sp)
	lw t1, 1128(sp)
	add t2, t0, t1
	sw t2, 1128(sp)
	lw t0, 1116(sp)
	lw t1, 1128(sp)
	add t2, t0, t1
	sw t2, 1132(sp)
	lw t0, 1132(sp)
	lw t2, 0(t0)
	sw t2, 1136(sp)
	lw t2, -56(s0)
	sw t2, 1140(sp)
	addi t2, zero, 4
	sw t2, 1144(sp)
	lw t0, 1140(sp)
	lw t1, 1144(sp)
	mul t2, t0, t1
	sw t2, 1144(sp)
	addi t2, zero, 4
	sw t2, 1148(sp)
	lw t0, 1144(sp)
	lw t1, 1148(sp)
	add t2, t0, t1
	sw t2, 1148(sp)
	lw t0, 1136(sp)
	lw t1, 1148(sp)
	add t2, t0, t1
	sw t2, 1152(sp)
	lw t0, 1152(sp)
	lw t2, 0(t0)
	sw t2, 1156(sp)
	lw t0, 1152(sp)
	lw t1, 1112(sp)
	sw t1, 0(t0)
	lw t2, -52(s0)
	sw t2, 1160(sp)
	lw t2, -32(s0)
	sw t2, 1164(sp)
	lw t0, 1160(sp)
	lw t1, 1164(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1168(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1184(sp)
	lw t0, 1168(sp)
	beqz t0, .LibroBB1_41
	j .LibroBB1_39
.LibroBB1_38: 
	lw t2, -56(s0)
	sw t2, 1268(sp)
	lw t2, -16(s0)
	sw t2, 1272(sp)
	lw t0, 1268(sp)
	mv a0, t0
	lw t0, 1272(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1276(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1336(sp)
	lw t0, 1276(sp)
	beqz t0, .LibroBB1_42
	j .LibroBB1_40
.LibroBB1_39: 
	lw t2, -56(s0)
	sw t2, 1172(sp)
	lw t2, -36(s0)
	sw t2, 1176(sp)
	lw t0, 1172(sp)
	lw t1, 1176(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1180(sp)
	lw t0, 1180(sp)
	mv t2, t0
	sw t2, 1184(sp)
	j .LibroBB1_41
.LibroBB1_40: 
	lw t2, -68(s0)
	sw t2, 1280(sp)
	lw t2, -52(s0)
	sw t2, 1284(sp)
	addi t2, zero, 4
	sw t2, 1288(sp)
	lw t0, 1284(sp)
	lw t1, 1288(sp)
	mul t2, t0, t1
	sw t2, 1288(sp)
	addi t2, zero, 4
	sw t2, 1292(sp)
	lw t0, 1288(sp)
	lw t1, 1292(sp)
	add t2, t0, t1
	sw t2, 1292(sp)
	lw t0, 1280(sp)
	lw t1, 1292(sp)
	add t2, t0, t1
	sw t2, 1296(sp)
	lw t0, 1296(sp)
	lw t2, 0(t0)
	sw t2, 1300(sp)
	lw t2, -56(s0)
	sw t2, 1304(sp)
	addi t2, zero, 4
	sw t2, 1308(sp)
	lw t0, 1304(sp)
	lw t1, 1308(sp)
	mul t2, t0, t1
	sw t2, 1308(sp)
	addi t2, zero, 4
	sw t2, 1312(sp)
	lw t0, 1308(sp)
	lw t1, 1312(sp)
	add t2, t0, t1
	sw t2, 1312(sp)
	lw t0, 1300(sp)
	lw t1, 1312(sp)
	add t2, t0, t1
	sw t2, 1316(sp)
	lw t0, 1316(sp)
	lw t2, 0(t0)
	sw t2, 1320(sp)
	addi t2, zero, 0
	sw t2, 1324(sp)
	addi t2, zero, 1
	sw t2, 1328(sp)
	lw t0, 1324(sp)
	lw t1, 1328(sp)
	sub t2, t0, t1
	sw t2, 1324(sp)
	lw t0, 1320(sp)
	lw t1, 1324(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1332(sp)
	lw t0, 1332(sp)
	mv t2, t0
	sw t2, 1336(sp)
	j .LibroBB1_42
.LibroBB1_41: 
	lw t0, 1184(sp)
	beqz t0, .LibroBB1_44
	j .LibroBB1_43
.LibroBB1_42: 
	lw t0, 1336(sp)
	beqz t0, .LibroBB1_45
	j .LibroBB1_46
.LibroBB1_43: 
	lw t2, -44(s0)
	sw t2, 1188(sp)
	addi t4, zero, 1
	sw t4, -44(s0)
	j .LibroBB1_44
.LibroBB1_44: 
	j .LibroBB1_36
.LibroBB1_45: 
	lw t2, -60(s0)
	sw t2, 1492(sp)
	lw t2, -20(s0)
	sw t2, 1496(sp)
	addi t2, zero, 4
	sw t2, 1500(sp)
	lw t0, 1496(sp)
	lw t1, 1500(sp)
	mul t2, t0, t1
	sw t2, 1500(sp)
	addi t2, zero, 4
	sw t2, 1504(sp)
	lw t0, 1500(sp)
	lw t1, 1504(sp)
	add t2, t0, t1
	sw t2, 1504(sp)
	lw t0, 1492(sp)
	lw t1, 1504(sp)
	add t2, t0, t1
	sw t2, 1508(sp)
	lw t0, 1508(sp)
	lw t2, 0(t0)
	sw t2, 1512(sp)
	addi t2, zero, 1
	sw t2, 1516(sp)
	lw t0, 1512(sp)
	lw t1, 1516(sp)
	add t2, t0, t1
	sw t2, 1516(sp)
	lw t2, -52(s0)
	sw t2, 1520(sp)
	lw t1, 1516(sp)
	sw t1, -52(s0)
	lw t2, -64(s0)
	sw t2, 1524(sp)
	lw t2, -20(s0)
	sw t2, 1528(sp)
	addi t2, zero, 4
	sw t2, 1532(sp)
	lw t0, 1528(sp)
	lw t1, 1532(sp)
	mul t2, t0, t1
	sw t2, 1532(sp)
	addi t2, zero, 4
	sw t2, 1536(sp)
	lw t0, 1532(sp)
	lw t1, 1536(sp)
	add t2, t0, t1
	sw t2, 1536(sp)
	lw t0, 1524(sp)
	lw t1, 1536(sp)
	add t2, t0, t1
	sw t2, 1540(sp)
	lw t0, 1540(sp)
	lw t2, 0(t0)
	sw t2, 1544(sp)
	addi t2, zero, 2
	sw t2, 1548(sp)
	lw t0, 1544(sp)
	lw t1, 1548(sp)
	add t2, t0, t1
	sw t2, 1548(sp)
	lw t2, -56(s0)
	sw t2, 1552(sp)
	lw t1, 1548(sp)
	sw t1, -56(s0)
	lw t2, -52(s0)
	sw t2, 1556(sp)
	lw t2, -16(s0)
	sw t2, 1560(sp)
	lw t0, 1556(sp)
	mv a0, t0
	lw t0, 1560(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1564(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1636(sp)
	lw t0, 1564(sp)
	beqz t0, .LibroBB1_51
	j .LibroBB1_47
.LibroBB1_46: 
	lw t2, -40(s0)
	sw t2, 1340(sp)
	addi t2, zero, 1
	sw t2, 1344(sp)
	lw t0, 1340(sp)
	lw t1, 1344(sp)
	add t2, t0, t1
	sw t2, 1344(sp)
	lw t2, -40(s0)
	sw t2, 1348(sp)
	lw t1, 1344(sp)
	sw t1, -40(s0)
	lw t2, -52(s0)
	sw t2, 1352(sp)
	lw t2, -60(s0)
	sw t2, 1356(sp)
	lw t2, -40(s0)
	sw t2, 1360(sp)
	addi t2, zero, 4
	sw t2, 1364(sp)
	lw t0, 1360(sp)
	lw t1, 1364(sp)
	mul t2, t0, t1
	sw t2, 1364(sp)
	addi t2, zero, 4
	sw t2, 1368(sp)
	lw t0, 1364(sp)
	lw t1, 1368(sp)
	add t2, t0, t1
	sw t2, 1368(sp)
	lw t0, 1356(sp)
	lw t1, 1368(sp)
	add t2, t0, t1
	sw t2, 1372(sp)
	lw t0, 1372(sp)
	lw t2, 0(t0)
	sw t2, 1376(sp)
	lw t0, 1372(sp)
	lw t1, 1352(sp)
	sw t1, 0(t0)
	lw t2, -56(s0)
	sw t2, 1380(sp)
	lw t2, -64(s0)
	sw t2, 1384(sp)
	lw t2, -40(s0)
	sw t2, 1388(sp)
	addi t2, zero, 4
	sw t2, 1392(sp)
	lw t0, 1388(sp)
	lw t1, 1392(sp)
	mul t2, t0, t1
	sw t2, 1392(sp)
	addi t2, zero, 4
	sw t2, 1396(sp)
	lw t0, 1392(sp)
	lw t1, 1396(sp)
	add t2, t0, t1
	sw t2, 1396(sp)
	lw t0, 1384(sp)
	lw t1, 1396(sp)
	add t2, t0, t1
	sw t2, 1400(sp)
	lw t0, 1400(sp)
	lw t2, 0(t0)
	sw t2, 1404(sp)
	lw t0, 1400(sp)
	lw t1, 1380(sp)
	sw t1, 0(t0)
	lw t2, -48(s0)
	sw t2, 1408(sp)
	addi t2, zero, 1
	sw t2, 1412(sp)
	lw t0, 1408(sp)
	lw t1, 1412(sp)
	add t2, t0, t1
	sw t2, 1412(sp)
	lw t2, -68(s0)
	sw t2, 1416(sp)
	lw t2, -52(s0)
	sw t2, 1420(sp)
	addi t2, zero, 4
	sw t2, 1424(sp)
	lw t0, 1420(sp)
	lw t1, 1424(sp)
	mul t2, t0, t1
	sw t2, 1424(sp)
	addi t2, zero, 4
	sw t2, 1428(sp)
	lw t0, 1424(sp)
	lw t1, 1428(sp)
	add t2, t0, t1
	sw t2, 1428(sp)
	lw t0, 1416(sp)
	lw t1, 1428(sp)
	add t2, t0, t1
	sw t2, 1432(sp)
	lw t0, 1432(sp)
	lw t2, 0(t0)
	sw t2, 1436(sp)
	lw t2, -56(s0)
	sw t2, 1440(sp)
	addi t2, zero, 4
	sw t2, 1444(sp)
	lw t0, 1440(sp)
	lw t1, 1444(sp)
	mul t2, t0, t1
	sw t2, 1444(sp)
	addi t2, zero, 4
	sw t2, 1448(sp)
	lw t0, 1444(sp)
	lw t1, 1448(sp)
	add t2, t0, t1
	sw t2, 1448(sp)
	lw t0, 1436(sp)
	lw t1, 1448(sp)
	add t2, t0, t1
	sw t2, 1452(sp)
	lw t0, 1452(sp)
	lw t2, 0(t0)
	sw t2, 1456(sp)
	lw t0, 1452(sp)
	lw t1, 1412(sp)
	sw t1, 0(t0)
	lw t2, -52(s0)
	sw t2, 1460(sp)
	lw t2, -32(s0)
	sw t2, 1464(sp)
	lw t0, 1460(sp)
	lw t1, 1464(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1468(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1484(sp)
	lw t0, 1468(sp)
	beqz t0, .LibroBB1_50
	j .LibroBB1_48
.LibroBB1_47: 
	lw t2, -56(s0)
	sw t2, 1568(sp)
	lw t2, -16(s0)
	sw t2, 1572(sp)
	lw t0, 1568(sp)
	mv a0, t0
	lw t0, 1572(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1576(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1636(sp)
	lw t0, 1576(sp)
	beqz t0, .LibroBB1_51
	j .LibroBB1_49
.LibroBB1_48: 
	lw t2, -56(s0)
	sw t2, 1472(sp)
	lw t2, -36(s0)
	sw t2, 1476(sp)
	lw t0, 1472(sp)
	lw t1, 1476(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1480(sp)
	lw t0, 1480(sp)
	mv t2, t0
	sw t2, 1484(sp)
	j .LibroBB1_50
.LibroBB1_49: 
	lw t2, -68(s0)
	sw t2, 1580(sp)
	lw t2, -52(s0)
	sw t2, 1584(sp)
	addi t2, zero, 4
	sw t2, 1588(sp)
	lw t0, 1584(sp)
	lw t1, 1588(sp)
	mul t2, t0, t1
	sw t2, 1588(sp)
	addi t2, zero, 4
	sw t2, 1592(sp)
	lw t0, 1588(sp)
	lw t1, 1592(sp)
	add t2, t0, t1
	sw t2, 1592(sp)
	lw t0, 1580(sp)
	lw t1, 1592(sp)
	add t2, t0, t1
	sw t2, 1596(sp)
	lw t0, 1596(sp)
	lw t2, 0(t0)
	sw t2, 1600(sp)
	lw t2, -56(s0)
	sw t2, 1604(sp)
	addi t2, zero, 4
	sw t2, 1608(sp)
	lw t0, 1604(sp)
	lw t1, 1608(sp)
	mul t2, t0, t1
	sw t2, 1608(sp)
	addi t2, zero, 4
	sw t2, 1612(sp)
	lw t0, 1608(sp)
	lw t1, 1612(sp)
	add t2, t0, t1
	sw t2, 1612(sp)
	lw t0, 1600(sp)
	lw t1, 1612(sp)
	add t2, t0, t1
	sw t2, 1616(sp)
	lw t0, 1616(sp)
	lw t2, 0(t0)
	sw t2, 1620(sp)
	addi t2, zero, 0
	sw t2, 1624(sp)
	addi t2, zero, 1
	sw t2, 1628(sp)
	lw t0, 1624(sp)
	lw t1, 1628(sp)
	sub t2, t0, t1
	sw t2, 1624(sp)
	lw t0, 1620(sp)
	lw t1, 1624(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1632(sp)
	lw t0, 1632(sp)
	mv t2, t0
	sw t2, 1636(sp)
	j .LibroBB1_51
.LibroBB1_50: 
	lw t0, 1484(sp)
	beqz t0, .LibroBB1_53
	j .LibroBB1_52
.LibroBB1_51: 
	lw t0, 1636(sp)
	beqz t0, .LibroBB1_55
	j .LibroBB1_54
.LibroBB1_52: 
	lw t2, -44(s0)
	sw t2, 1488(sp)
	addi t4, zero, 1
	sw t4, -44(s0)
	j .LibroBB1_53
.LibroBB1_53: 
	j .LibroBB1_45
.LibroBB1_54: 
	lw t2, -40(s0)
	sw t2, 1640(sp)
	addi t2, zero, 1
	sw t2, 1644(sp)
	lw t0, 1640(sp)
	lw t1, 1644(sp)
	add t2, t0, t1
	sw t2, 1644(sp)
	lw t2, -40(s0)
	sw t2, 1648(sp)
	lw t1, 1644(sp)
	sw t1, -40(s0)
	lw t2, -52(s0)
	sw t2, 1652(sp)
	lw t2, -60(s0)
	sw t2, 1656(sp)
	lw t2, -40(s0)
	sw t2, 1660(sp)
	addi t2, zero, 4
	sw t2, 1664(sp)
	lw t0, 1660(sp)
	lw t1, 1664(sp)
	mul t2, t0, t1
	sw t2, 1664(sp)
	addi t2, zero, 4
	sw t2, 1668(sp)
	lw t0, 1664(sp)
	lw t1, 1668(sp)
	add t2, t0, t1
	sw t2, 1668(sp)
	lw t0, 1656(sp)
	lw t1, 1668(sp)
	add t2, t0, t1
	sw t2, 1672(sp)
	lw t0, 1672(sp)
	lw t2, 0(t0)
	sw t2, 1676(sp)
	lw t0, 1672(sp)
	lw t1, 1652(sp)
	sw t1, 0(t0)
	lw t2, -56(s0)
	sw t2, 1680(sp)
	lw t2, -64(s0)
	sw t2, 1684(sp)
	lw t2, -40(s0)
	sw t2, 1688(sp)
	addi t2, zero, 4
	sw t2, 1692(sp)
	lw t0, 1688(sp)
	lw t1, 1692(sp)
	mul t2, t0, t1
	sw t2, 1692(sp)
	addi t2, zero, 4
	sw t2, 1696(sp)
	lw t0, 1692(sp)
	lw t1, 1696(sp)
	add t2, t0, t1
	sw t2, 1696(sp)
	lw t0, 1684(sp)
	lw t1, 1696(sp)
	add t2, t0, t1
	sw t2, 1700(sp)
	lw t0, 1700(sp)
	lw t2, 0(t0)
	sw t2, 1704(sp)
	lw t0, 1700(sp)
	lw t1, 1680(sp)
	sw t1, 0(t0)
	lw t2, -48(s0)
	sw t2, 1708(sp)
	addi t2, zero, 1
	sw t2, 1712(sp)
	lw t0, 1708(sp)
	lw t1, 1712(sp)
	add t2, t0, t1
	sw t2, 1712(sp)
	lw t2, -68(s0)
	sw t2, 1716(sp)
	lw t2, -52(s0)
	sw t2, 1720(sp)
	addi t2, zero, 4
	sw t2, 1724(sp)
	lw t0, 1720(sp)
	lw t1, 1724(sp)
	mul t2, t0, t1
	sw t2, 1724(sp)
	addi t2, zero, 4
	sw t2, 1728(sp)
	lw t0, 1724(sp)
	lw t1, 1728(sp)
	add t2, t0, t1
	sw t2, 1728(sp)
	lw t0, 1716(sp)
	lw t1, 1728(sp)
	add t2, t0, t1
	sw t2, 1732(sp)
	lw t0, 1732(sp)
	lw t2, 0(t0)
	sw t2, 1736(sp)
	lw t2, -56(s0)
	sw t2, 1740(sp)
	addi t2, zero, 4
	sw t2, 1744(sp)
	lw t0, 1740(sp)
	lw t1, 1744(sp)
	mul t2, t0, t1
	sw t2, 1744(sp)
	addi t2, zero, 4
	sw t2, 1748(sp)
	lw t0, 1744(sp)
	lw t1, 1748(sp)
	add t2, t0, t1
	sw t2, 1748(sp)
	lw t0, 1736(sp)
	lw t1, 1748(sp)
	add t2, t0, t1
	sw t2, 1752(sp)
	lw t0, 1752(sp)
	lw t2, 0(t0)
	sw t2, 1756(sp)
	lw t0, 1752(sp)
	lw t1, 1712(sp)
	sw t1, 0(t0)
	lw t2, -52(s0)
	sw t2, 1760(sp)
	lw t2, -32(s0)
	sw t2, 1764(sp)
	lw t0, 1760(sp)
	lw t1, 1764(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1768(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1784(sp)
	lw t0, 1768(sp)
	beqz t0, .LibroBB1_58
	j .LibroBB1_56
.LibroBB1_55: 
	lw t2, -60(s0)
	sw t2, 1792(sp)
	lw t2, -20(s0)
	sw t2, 1796(sp)
	addi t2, zero, 4
	sw t2, 1800(sp)
	lw t0, 1796(sp)
	lw t1, 1800(sp)
	mul t2, t0, t1
	sw t2, 1800(sp)
	addi t2, zero, 4
	sw t2, 1804(sp)
	lw t0, 1800(sp)
	lw t1, 1804(sp)
	add t2, t0, t1
	sw t2, 1804(sp)
	lw t0, 1792(sp)
	lw t1, 1804(sp)
	add t2, t0, t1
	sw t2, 1808(sp)
	lw t0, 1808(sp)
	lw t2, 0(t0)
	sw t2, 1812(sp)
	addi t2, zero, 2
	sw t2, 1816(sp)
	lw t0, 1812(sp)
	lw t1, 1816(sp)
	sub t2, t0, t1
	sw t2, 1816(sp)
	lw t2, -52(s0)
	sw t2, 1820(sp)
	lw t1, 1816(sp)
	sw t1, -52(s0)
	lw t2, -64(s0)
	sw t2, 1824(sp)
	lw t2, -20(s0)
	sw t2, 1828(sp)
	addi t2, zero, 4
	sw t2, 1832(sp)
	lw t0, 1828(sp)
	lw t1, 1832(sp)
	mul t2, t0, t1
	sw t2, 1832(sp)
	addi t2, zero, 4
	sw t2, 1836(sp)
	lw t0, 1832(sp)
	lw t1, 1836(sp)
	add t2, t0, t1
	sw t2, 1836(sp)
	lw t0, 1824(sp)
	lw t1, 1836(sp)
	add t2, t0, t1
	sw t2, 1840(sp)
	lw t0, 1840(sp)
	lw t2, 0(t0)
	sw t2, 1844(sp)
	addi t2, zero, 1
	sw t2, 1848(sp)
	lw t0, 1844(sp)
	lw t1, 1848(sp)
	sub t2, t0, t1
	sw t2, 1848(sp)
	lw t2, -56(s0)
	sw t2, 1852(sp)
	lw t1, 1848(sp)
	sw t1, -56(s0)
	lw t2, -52(s0)
	sw t2, 1856(sp)
	lw t2, -16(s0)
	sw t2, 1860(sp)
	lw t0, 1856(sp)
	mv a0, t0
	lw t0, 1860(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1864(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1936(sp)
	lw t0, 1864(sp)
	beqz t0, .LibroBB1_62
	j .LibroBB1_57
.LibroBB1_56: 
	lw t2, -56(s0)
	sw t2, 1772(sp)
	lw t2, -36(s0)
	sw t2, 1776(sp)
	lw t0, 1772(sp)
	lw t1, 1776(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1780(sp)
	lw t0, 1780(sp)
	mv t2, t0
	sw t2, 1784(sp)
	j .LibroBB1_58
.LibroBB1_57: 
	lw t2, -56(s0)
	sw t2, 1868(sp)
	lw t2, -16(s0)
	sw t2, 1872(sp)
	lw t0, 1868(sp)
	mv a0, t0
	lw t0, 1872(sp)
	mv a1, t0
	call check
	mv t2, a0
	sw t2, 1876(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 1936(sp)
	lw t0, 1876(sp)
	beqz t0, .LibroBB1_62
	j .LibroBB1_59
.LibroBB1_58: 
	lw t0, 1784(sp)
	beqz t0, .LibroBB1_60
	j .LibroBB1_61
.LibroBB1_59: 
	lw t2, -68(s0)
	sw t2, 1880(sp)
	lw t2, -52(s0)
	sw t2, 1884(sp)
	addi t2, zero, 4
	sw t2, 1888(sp)
	lw t0, 1884(sp)
	lw t1, 1888(sp)
	mul t2, t0, t1
	sw t2, 1888(sp)
	addi t2, zero, 4
	sw t2, 1892(sp)
	lw t0, 1888(sp)
	lw t1, 1892(sp)
	add t2, t0, t1
	sw t2, 1892(sp)
	lw t0, 1880(sp)
	lw t1, 1892(sp)
	add t2, t0, t1
	sw t2, 1896(sp)
	lw t0, 1896(sp)
	lw t2, 0(t0)
	sw t2, 1900(sp)
	lw t2, -56(s0)
	sw t2, 1904(sp)
	addi t2, zero, 4
	sw t2, 1908(sp)
	lw t0, 1904(sp)
	lw t1, 1908(sp)
	mul t2, t0, t1
	sw t2, 1908(sp)
	addi t2, zero, 4
	sw t2, 1912(sp)
	lw t0, 1908(sp)
	lw t1, 1912(sp)
	add t2, t0, t1
	sw t2, 1912(sp)
	lw t0, 1900(sp)
	lw t1, 1912(sp)
	add t2, t0, t1
	sw t2, 1916(sp)
	lw t0, 1916(sp)
	lw t2, 0(t0)
	sw t2, 1920(sp)
	addi t2, zero, 0
	sw t2, 1924(sp)
	addi t2, zero, 1
	sw t2, 1928(sp)
	lw t0, 1924(sp)
	lw t1, 1928(sp)
	sub t2, t0, t1
	sw t2, 1924(sp)
	lw t0, 1920(sp)
	lw t1, 1924(sp)
	xor t5, t0, t1
	seqz t2, t5
	sw t2, 1932(sp)
	lw t0, 1932(sp)
	mv t2, t0
	sw t2, 1936(sp)
	j .LibroBB1_62
.LibroBB1_60: 
	j .LibroBB1_55
.LibroBB1_61: 
	lw t2, -44(s0)
	sw t2, 1788(sp)
	addi t4, zero, 1
	sw t4, -44(s0)
	j .LibroBB1_60
.LibroBB1_62: 
	lw t0, 1936(sp)
	beqz t0, .LibroBB1_63
	j .LibroBB1_64
.LibroBB1_63: 
	lw t2, -60(s0)
	li t4, 2092
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -20(s0)
	li t4, 2096
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2100
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2096
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2100
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2100
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2104
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2100
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2104
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2104
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2092
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2104
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2108
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2108
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2112
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 2
	li t4, 2116
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2112
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2116
	add t4, t4, sp
	lw t1, 0(t4)
	sub t2, t0, t1
	li t4, 2116
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2120
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2116
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -52(s0)
	lw t2, -64(s0)
	li t4, 2124
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -20(s0)
	li t4, 2128
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2132
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2128
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2132
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2132
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2136
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2132
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2136
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2136
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2124
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2136
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2140
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2140
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2144
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2148
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2144
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2148
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2148
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2152
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2148
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -56(s0)
	lw t2, -52(s0)
	li t4, 2156
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -16(s0)
	li t4, 2160
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2156
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	li t4, 2160
	add t4, t4, sp
	lw t0, 0(t4)
	mv a1, t0
	call check
	mv t2, a0
	li t4, 2164
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2236
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2164
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_69
	j .LibroBB1_65
.LibroBB1_64: 
	lw t2, -40(s0)
	sw t2, 1940(sp)
	addi t2, zero, 1
	sw t2, 1944(sp)
	lw t0, 1940(sp)
	lw t1, 1944(sp)
	add t2, t0, t1
	sw t2, 1944(sp)
	lw t2, -40(s0)
	sw t2, 1948(sp)
	lw t1, 1944(sp)
	sw t1, -40(s0)
	lw t2, -52(s0)
	sw t2, 1952(sp)
	lw t2, -60(s0)
	sw t2, 1956(sp)
	lw t2, -40(s0)
	sw t2, 1960(sp)
	addi t2, zero, 4
	sw t2, 1964(sp)
	lw t0, 1960(sp)
	lw t1, 1964(sp)
	mul t2, t0, t1
	sw t2, 1964(sp)
	addi t2, zero, 4
	sw t2, 1968(sp)
	lw t0, 1964(sp)
	lw t1, 1968(sp)
	add t2, t0, t1
	sw t2, 1968(sp)
	lw t0, 1956(sp)
	lw t1, 1968(sp)
	add t2, t0, t1
	sw t2, 1972(sp)
	lw t0, 1972(sp)
	lw t2, 0(t0)
	sw t2, 1976(sp)
	lw t0, 1972(sp)
	lw t1, 1952(sp)
	sw t1, 0(t0)
	lw t2, -56(s0)
	sw t2, 1980(sp)
	lw t2, -64(s0)
	sw t2, 1984(sp)
	lw t2, -40(s0)
	sw t2, 1988(sp)
	addi t2, zero, 4
	sw t2, 1992(sp)
	lw t0, 1988(sp)
	lw t1, 1992(sp)
	mul t2, t0, t1
	sw t2, 1992(sp)
	addi t2, zero, 4
	sw t2, 1996(sp)
	lw t0, 1992(sp)
	lw t1, 1996(sp)
	add t2, t0, t1
	sw t2, 1996(sp)
	lw t0, 1984(sp)
	lw t1, 1996(sp)
	add t2, t0, t1
	sw t2, 2000(sp)
	lw t0, 2000(sp)
	lw t2, 0(t0)
	sw t2, 2004(sp)
	lw t0, 2000(sp)
	lw t1, 1980(sp)
	sw t1, 0(t0)
	lw t2, -48(s0)
	sw t2, 2008(sp)
	addi t2, zero, 1
	sw t2, 2012(sp)
	lw t0, 2008(sp)
	lw t1, 2012(sp)
	add t2, t0, t1
	sw t2, 2012(sp)
	lw t2, -68(s0)
	sw t2, 2016(sp)
	lw t2, -52(s0)
	sw t2, 2020(sp)
	addi t2, zero, 4
	sw t2, 2024(sp)
	lw t0, 2020(sp)
	lw t1, 2024(sp)
	mul t2, t0, t1
	sw t2, 2024(sp)
	addi t2, zero, 4
	sw t2, 2028(sp)
	lw t0, 2024(sp)
	lw t1, 2028(sp)
	add t2, t0, t1
	sw t2, 2028(sp)
	lw t0, 2016(sp)
	lw t1, 2028(sp)
	add t2, t0, t1
	sw t2, 2032(sp)
	lw t0, 2032(sp)
	lw t2, 0(t0)
	sw t2, 2036(sp)
	lw t2, -56(s0)
	sw t2, 2040(sp)
	addi t2, zero, 4
	sw t2, 2044(sp)
	lw t0, 2040(sp)
	lw t1, 2044(sp)
	mul t2, t0, t1
	sw t2, 2044(sp)
	addi t2, zero, 4
	li t4, 2048
	add t4, t4, sp
	sw t2, 0(t4)
	lw t0, 2044(sp)
	li t4, 2048
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2048
	add t4, t4, sp
	sw t2, 0(t4)
	lw t0, 2036(sp)
	li t4, 2048
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2052
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2052
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2056
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2052
	add t4, t4, sp
	lw t0, 0(t4)
	lw t1, 2012(sp)
	sw t1, 0(t0)
	lw t2, -52(s0)
	li t4, 2060
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -32(s0)
	li t4, 2064
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2060
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2064
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2068
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2084
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2068
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_68
	j .LibroBB1_66
.LibroBB1_65: 
	lw t2, -56(s0)
	li t4, 2168
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -16(s0)
	li t4, 2172
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2168
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	li t4, 2172
	add t4, t4, sp
	lw t0, 0(t4)
	mv a1, t0
	call check
	mv t2, a0
	li t4, 2176
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2236
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2176
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_69
	j .LibroBB1_67
.LibroBB1_66: 
	lw t2, -56(s0)
	li t4, 2072
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -36(s0)
	li t4, 2076
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2072
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2076
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2080
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2080
	add t4, t4, sp
	lw t0, 0(t4)
	mv t2, t0
	li t4, 2084
	add t4, t4, sp
	sw t2, 0(t4)
	j .LibroBB1_68
.LibroBB1_67: 
	lw t2, -68(s0)
	li t4, 2180
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2184
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2188
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2184
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2188
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2188
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2192
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2188
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2192
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2192
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2180
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2192
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2196
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2196
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2200
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2204
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2208
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2204
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2208
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2208
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2212
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2208
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2212
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2212
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2200
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2212
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2216
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2216
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2220
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 0
	li t4, 2224
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2228
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2224
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2228
	add t4, t4, sp
	lw t1, 0(t4)
	sub t2, t0, t1
	li t4, 2224
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2220
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2224
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2232
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2232
	add t4, t4, sp
	lw t0, 0(t4)
	mv t2, t0
	li t4, 2236
	add t4, t4, sp
	sw t2, 0(t4)
	j .LibroBB1_69
.LibroBB1_68: 
	li t4, 2084
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_71
	j .LibroBB1_70
.LibroBB1_69: 
	li t4, 2236
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_73
	j .LibroBB1_72
.LibroBB1_70: 
	lw t2, -44(s0)
	li t4, 2088
	add t4, t4, sp
	sw t2, 0(t4)
	addi t4, zero, 1
	sw t4, -44(s0)
	j .LibroBB1_71
.LibroBB1_71: 
	j .LibroBB1_63
.LibroBB1_72: 
	lw t2, -40(s0)
	li t4, 2240
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2244
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2240
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2244
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2244
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2248
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2244
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -40(s0)
	lw t2, -52(s0)
	li t4, 2252
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -60(s0)
	li t4, 2256
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2260
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2264
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2260
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2264
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2264
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2268
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2264
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2268
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2268
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2256
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2268
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2272
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2272
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2276
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2272
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2252
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -56(s0)
	li t4, 2280
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -64(s0)
	li t4, 2284
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2288
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2292
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2288
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2292
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2292
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2296
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2292
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2296
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2296
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2284
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2296
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2300
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2300
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2304
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2300
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2280
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -48(s0)
	li t4, 2308
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2312
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2308
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2312
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2312
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -68(s0)
	li t4, 2316
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2320
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2324
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2320
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2324
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2324
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2328
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2324
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2328
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2328
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2316
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2328
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2332
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2332
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2336
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2340
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2344
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2340
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2344
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2344
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2348
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2344
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2348
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2348
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2336
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2348
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2352
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2352
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2356
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2352
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2312
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -52(s0)
	li t4, 2360
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -32(s0)
	li t4, 2364
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2360
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2364
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2368
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2384
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2368
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_76
	j .LibroBB1_74
.LibroBB1_73: 
	lw t2, -60(s0)
	li t4, 2392
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -20(s0)
	li t4, 2396
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2400
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2396
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2400
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2400
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2404
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2400
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2404
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2404
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2392
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2404
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2408
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2408
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2412
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 2
	li t4, 2416
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2412
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2416
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2416
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2420
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2416
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -52(s0)
	lw t2, -64(s0)
	li t4, 2424
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -20(s0)
	li t4, 2428
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2432
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2428
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2432
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2432
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2436
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2432
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2436
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2436
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2424
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2436
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2440
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2440
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2444
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2448
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2444
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2448
	add t4, t4, sp
	lw t1, 0(t4)
	sub t2, t0, t1
	li t4, 2448
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2452
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2448
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -56(s0)
	lw t2, -52(s0)
	li t4, 2456
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -16(s0)
	li t4, 2460
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2456
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	li t4, 2460
	add t4, t4, sp
	lw t0, 0(t4)
	mv a1, t0
	call check
	mv t2, a0
	li t4, 2464
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2536
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2464
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_80
	j .LibroBB1_75
.LibroBB1_74: 
	lw t2, -56(s0)
	li t4, 2372
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -36(s0)
	li t4, 2376
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2372
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2376
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2380
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2380
	add t4, t4, sp
	lw t0, 0(t4)
	mv t2, t0
	li t4, 2384
	add t4, t4, sp
	sw t2, 0(t4)
	j .LibroBB1_76
.LibroBB1_75: 
	lw t2, -56(s0)
	li t4, 2468
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -16(s0)
	li t4, 2472
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2468
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	li t4, 2472
	add t4, t4, sp
	lw t0, 0(t4)
	mv a1, t0
	call check
	mv t2, a0
	li t4, 2476
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2536
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2476
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_80
	j .LibroBB1_77
.LibroBB1_76: 
	li t4, 2384
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_79
	j .LibroBB1_78
.LibroBB1_77: 
	lw t2, -68(s0)
	li t4, 2480
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2484
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2488
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2484
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2488
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2488
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2492
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2488
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2492
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2492
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2480
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2492
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2496
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2496
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2500
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2504
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2508
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2504
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2508
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2508
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2512
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2508
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2512
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2512
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2500
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2512
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2516
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2516
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2520
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 0
	li t4, 2524
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2528
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2524
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2528
	add t4, t4, sp
	lw t1, 0(t4)
	sub t2, t0, t1
	li t4, 2524
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2520
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2524
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2532
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2532
	add t4, t4, sp
	lw t0, 0(t4)
	mv t2, t0
	li t4, 2536
	add t4, t4, sp
	sw t2, 0(t4)
	j .LibroBB1_80
.LibroBB1_78: 
	lw t2, -44(s0)
	li t4, 2388
	add t4, t4, sp
	sw t2, 0(t4)
	addi t4, zero, 1
	sw t4, -44(s0)
	j .LibroBB1_79
.LibroBB1_79: 
	j .LibroBB1_73
.LibroBB1_80: 
	li t4, 2536
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_82
	j .LibroBB1_81
.LibroBB1_81: 
	lw t2, -40(s0)
	li t4, 2540
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2544
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2540
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2544
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2544
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2548
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2544
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -40(s0)
	lw t2, -52(s0)
	li t4, 2552
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -60(s0)
	li t4, 2556
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2560
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2564
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2560
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2564
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2564
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2568
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2564
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2568
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2568
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2556
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2568
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2572
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2572
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2576
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2572
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2552
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -56(s0)
	li t4, 2580
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -64(s0)
	li t4, 2584
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2588
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2592
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2588
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2592
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2592
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2596
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2592
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2596
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2596
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2584
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2596
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2600
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2600
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2604
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2600
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2580
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -48(s0)
	li t4, 2608
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2612
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2608
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2612
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2612
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -68(s0)
	li t4, 2616
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2620
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2624
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2620
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2624
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2624
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2628
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2624
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2628
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2628
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2616
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2628
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2632
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2632
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2636
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2640
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2644
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2640
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2644
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2644
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2648
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2644
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2648
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2648
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2636
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2648
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2652
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2652
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2656
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2652
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2612
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -52(s0)
	li t4, 2660
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -32(s0)
	li t4, 2664
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2660
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2664
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2668
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2684
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2668
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_85
	j .LibroBB1_83
.LibroBB1_82: 
	lw t2, -60(s0)
	li t4, 2692
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -20(s0)
	li t4, 2696
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2700
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2696
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2700
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2700
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2704
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2700
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2704
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2704
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2692
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2704
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2708
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2708
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2712
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 2
	li t4, 2716
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2712
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2716
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2716
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2720
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2716
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -52(s0)
	lw t2, -64(s0)
	li t4, 2724
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -20(s0)
	li t4, 2728
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2732
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2728
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2732
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2732
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2736
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2732
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2736
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2736
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2724
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2736
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2740
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2740
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2744
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2748
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2744
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2748
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2748
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2752
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2748
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -56(s0)
	lw t2, -52(s0)
	li t4, 2756
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -16(s0)
	li t4, 2760
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2756
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	li t4, 2760
	add t4, t4, sp
	lw t0, 0(t4)
	mv a1, t0
	call check
	mv t2, a0
	li t4, 2764
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2836
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2764
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_89
	j .LibroBB1_84
.LibroBB1_83: 
	lw t2, -56(s0)
	li t4, 2672
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -36(s0)
	li t4, 2676
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2672
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2676
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2680
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2680
	add t4, t4, sp
	lw t0, 0(t4)
	mv t2, t0
	li t4, 2684
	add t4, t4, sp
	sw t2, 0(t4)
	j .LibroBB1_85
.LibroBB1_84: 
	lw t2, -56(s0)
	li t4, 2768
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -16(s0)
	li t4, 2772
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2768
	add t4, t4, sp
	lw t0, 0(t4)
	mv a0, t0
	li t4, 2772
	add t4, t4, sp
	lw t0, 0(t4)
	mv a1, t0
	call check
	mv t2, a0
	li t4, 2776
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2836
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2776
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_89
	j .LibroBB1_86
.LibroBB1_85: 
	li t4, 2684
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_88
	j .LibroBB1_87
.LibroBB1_86: 
	lw t2, -68(s0)
	li t4, 2780
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2784
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2788
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2784
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2788
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2788
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2792
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2788
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2792
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2792
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2780
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2792
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2796
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2796
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2800
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2804
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2808
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2804
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2808
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2808
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2812
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2808
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2812
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2812
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2800
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2812
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2816
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2816
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2820
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 0
	li t4, 2824
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2828
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2824
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2828
	add t4, t4, sp
	lw t1, 0(t4)
	sub t2, t0, t1
	li t4, 2824
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2820
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2824
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2832
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2832
	add t4, t4, sp
	lw t0, 0(t4)
	mv t2, t0
	li t4, 2836
	add t4, t4, sp
	sw t2, 0(t4)
	j .LibroBB1_89
.LibroBB1_87: 
	lw t2, -44(s0)
	li t4, 2688
	add t4, t4, sp
	sw t2, 0(t4)
	addi t4, zero, 1
	sw t4, -44(s0)
	j .LibroBB1_88
.LibroBB1_88: 
	j .LibroBB1_82
.LibroBB1_89: 
	li t4, 2836
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_90
	j .LibroBB1_91
.LibroBB1_90: 
	lw t2, -44(s0)
	li t4, 2992
	add t4, t4, sp
	sw t2, 0(t4)
	addi t4, zero, 1
	li t4, 2992
	add t4, t4, sp
	lw t0, 0(t4)
	xor t5, t0, t4
	seqz t2, t5
	li t4, 2996
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2996
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_93
	j .LibroBB1_92
.LibroBB1_91: 
	lw t2, -40(s0)
	li t4, 2840
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2844
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2840
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2844
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2844
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2848
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2844
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -40(s0)
	lw t2, -52(s0)
	li t4, 2852
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -60(s0)
	li t4, 2856
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2860
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2864
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2860
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2864
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2864
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2868
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2864
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2868
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2868
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2856
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2868
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2872
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2872
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2876
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2872
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2852
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -56(s0)
	li t4, 2880
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -64(s0)
	li t4, 2884
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -40(s0)
	li t4, 2888
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2892
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2888
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2892
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2892
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2896
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2892
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2896
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2896
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2884
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2896
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2900
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2900
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2904
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2900
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2880
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -48(s0)
	li t4, 2908
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 2912
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2908
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2912
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2912
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -68(s0)
	li t4, 2916
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -52(s0)
	li t4, 2920
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2924
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2920
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2924
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2924
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2928
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2924
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2928
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2928
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2916
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2928
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2932
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2932
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2936
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -56(s0)
	li t4, 2940
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2944
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2940
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2944
	add t4, t4, sp
	lw t1, 0(t4)
	mul t2, t0, t1
	li t4, 2944
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 4
	li t4, 2948
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2944
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2948
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2948
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2936
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2948
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 2952
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2952
	add t4, t4, sp
	lw t0, 0(t4)
	lw t2, 0(t0)
	li t4, 2956
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2952
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2912
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, 0(t0)
	lw t2, -52(s0)
	li t4, 2960
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -32(s0)
	li t4, 2964
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2960
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2964
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2968
	add t4, t4, sp
	sw t2, 0(t4)
	addi t3, zero, 0
	mv t2, t3
	li t4, 2984
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2968
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_95
	j .LibroBB1_94
.LibroBB1_92: 
	j .LibroBB1_18
.LibroBB1_93: 
	lw t2, -20(s0)
	li t4, 3000
	add t4, t4, sp
	sw t2, 0(t4)
	addi t2, zero, 1
	li t4, 3004
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3000
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 3004
	add t4, t4, sp
	lw t1, 0(t4)
	add t2, t0, t1
	li t4, 3004
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -20(s0)
	li t4, 3008
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 3004
	add t4, t4, sp
	lw t1, 0(t4)
	sw t1, -20(s0)
	j .LibroBB1_19
.LibroBB1_94: 
	lw t2, -56(s0)
	li t4, 2972
	add t4, t4, sp
	sw t2, 0(t4)
	lw t2, -36(s0)
	li t4, 2976
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2972
	add t4, t4, sp
	lw t0, 0(t4)
	li t4, 2976
	add t4, t4, sp
	lw t1, 0(t4)
	xor t5, t0, t1
	seqz t2, t5
	li t4, 2980
	add t4, t4, sp
	sw t2, 0(t4)
	li t4, 2980
	add t4, t4, sp
	lw t0, 0(t4)
	mv t2, t0
	li t4, 2984
	add t4, t4, sp
	sw t2, 0(t4)
	j .LibroBB1_95
.LibroBB1_95: 
	li t4, 2984
	add t4, t4, sp
	lw t0, 0(t4)
	beqz t0, .LibroBB1_97
	j .LibroBB1_96
.LibroBB1_96: 
	lw t2, -44(s0)
	li t4, 2988
	add t4, t4, sp
	sw t2, 0(t4)
	addi t4, zero, 1
	sw t4, -44(s0)
	j .LibroBB1_97
.LibroBB1_97: 
	j .LibroBB1_90
.data
	.type	.libro.str,@object
.libro.str:
	.asciz	"no solution!\n"
	.size	.libro.str, 14

