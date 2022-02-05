	.text
	.globl main
	.p2align	2
	.type	main,@function
getcount: 
	addi sp, sp, -52
	sw ra, 48(sp)
	sw s0, 44(sp)
	addi s0, sp, 52
	mv t2, a0
	sw t2, 0(sp)
	addi t4, zero, 0
	sw t4, -12(s0)
	lw t1, 0(sp)
	sw t1, -16(s0)
	lw t2, -16(s0)
	sw t2, 4(sp)
	addi t2, zero, 0
	sw t2, 8(sp)
	addi t2, zero, 4
	sw t2, 12(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	mul t2, t0, t1
	sw t2, 8(sp)
	addi t2, zero, 4
	sw t2, 16(sp)
	lw t0, 8(sp)
	lw t1, 16(sp)
	add t2, t0, t1
	sw t2, 16(sp)
	lw t0, 4(sp)
	lw t1, 16(sp)
	add t2, t0, t1
	sw t2, 20(sp)
	lw t0, 20(sp)
	lw t2, 0(t0)
	sw t2, 24(sp)
	addi t2, zero, 1
	sw t2, 28(sp)
	lw t0, 24(sp)
	lw t1, 28(sp)
	add t2, t0, t1
	sw t2, 28(sp)
	lw t0, 20(sp)
	lw t1, 28(sp)
	sw t1, 0(t0)
	lw t1, 28(sp)
	sw t1, -12(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw t2, -12(s0)
	sw t2, 32(sp)
	lw t0, 32(sp)
	mv a0, t0
	lw s0, 44(sp)
	lw ra, 48(sp)
	addi sp, sp, 52
	ret

main: 
	addi sp, sp, -22584
	sw ra, 22580(sp)
	sw s0, 22576(sp)
	addi s0, sp, 22584
	addi t4, zero, 0
	sw t4, -12(s0)
	addi t3, zero, 8
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 0(sp)
	addi t4, zero, 1
	lw t0, 0(sp)
	sw t4, 0(t0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 4(sp)
	la t3, count
	lw t1, 0(sp)
	sw t1, 0(t3)
	la t3, count
	lw t2, 0(t3)
	sw t2, 8(sp)
	addi t2, zero, 0
	sw t2, 12(sp)
	addi t2, zero, 4
	sw t2, 16(sp)
	lw t0, 12(sp)
	lw t1, 16(sp)
	mul t2, t0, t1
	sw t2, 12(sp)
	addi t2, zero, 4
	sw t2, 20(sp)
	lw t0, 12(sp)
	lw t1, 20(sp)
	add t2, t0, t1
	sw t2, 20(sp)
	lw t0, 8(sp)
	lw t1, 20(sp)
	add t2, t0, t1
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t2, 0(t0)
	sw t2, 28(sp)
	addi t4, zero, 0
	lw t0, 24(sp)
	sw t4, 0(t0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 32(sp)
	lw t0, 32(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 36(sp)
	lw t2, -16(s0)
	sw t2, 40(sp)
	lw t1, 36(sp)
	sw t1, -16(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 44(sp)
	lw t0, 44(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 48(sp)
	lw t2, -20(s0)
	sw t2, 52(sp)
	lw t1, 48(sp)
	sw t1, -20(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 56(sp)
	lw t0, 56(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 60(sp)
	lw t2, -24(s0)
	sw t2, 64(sp)
	lw t1, 60(sp)
	sw t1, -24(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 68(sp)
	lw t0, 68(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 72(sp)
	lw t2, -28(s0)
	sw t2, 76(sp)
	lw t1, 72(sp)
	sw t1, -28(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 80(sp)
	lw t0, 80(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 84(sp)
	lw t2, -32(s0)
	sw t2, 88(sp)
	lw t1, 84(sp)
	sw t1, -32(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 92(sp)
	lw t0, 92(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 96(sp)
	lw t2, -36(s0)
	sw t2, 100(sp)
	lw t1, 96(sp)
	sw t1, -36(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 104(sp)
	lw t0, 104(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 108(sp)
	lw t2, -40(s0)
	sw t2, 112(sp)
	lw t1, 108(sp)
	sw t1, -40(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 116(sp)
	lw t0, 116(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 120(sp)
	lw t2, -44(s0)
	sw t2, 124(sp)
	lw t1, 120(sp)
	sw t1, -44(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 128(sp)
	lw t0, 128(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 132(sp)
	lw t2, -48(s0)
	sw t2, 136(sp)
	lw t1, 132(sp)
	sw t1, -48(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 140(sp)
	lw t0, 140(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 144(sp)
	lw t2, -52(s0)
	sw t2, 148(sp)
	lw t1, 144(sp)
	sw t1, -52(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 152(sp)
	lw t0, 152(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 156(sp)
	lw t2, -56(s0)
	sw t2, 160(sp)
	lw t1, 156(sp)
	sw t1, -56(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 164(sp)
	lw t0, 164(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 168(sp)
	lw t2, -60(s0)
	sw t2, 172(sp)
	lw t1, 168(sp)
	sw t1, -60(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 176(sp)
	lw t0, 176(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 180(sp)
	lw t2, -64(s0)
	sw t2, 184(sp)
	lw t1, 180(sp)
	sw t1, -64(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 188(sp)
	lw t0, 188(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 192(sp)
	lw t2, -68(s0)
	sw t2, 196(sp)
	lw t1, 192(sp)
	sw t1, -68(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 200(sp)
	lw t0, 200(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 204(sp)
	lw t2, -72(s0)
	sw t2, 208(sp)
	lw t1, 204(sp)
	sw t1, -72(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 212(sp)
	lw t0, 212(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 216(sp)
	lw t2, -76(s0)
	sw t2, 220(sp)
	lw t1, 216(sp)
	sw t1, -76(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 224(sp)
	lw t0, 224(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 228(sp)
	lw t2, -80(s0)
	sw t2, 232(sp)
	lw t1, 228(sp)
	sw t1, -80(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 236(sp)
	lw t0, 236(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 240(sp)
	lw t2, -84(s0)
	sw t2, 244(sp)
	lw t1, 240(sp)
	sw t1, -84(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 248(sp)
	lw t0, 248(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 252(sp)
	lw t2, -88(s0)
	sw t2, 256(sp)
	lw t1, 252(sp)
	sw t1, -88(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 260(sp)
	lw t0, 260(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 264(sp)
	lw t2, -92(s0)
	sw t2, 268(sp)
	lw t1, 264(sp)
	sw t1, -92(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 272(sp)
	lw t0, 272(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 276(sp)
	lw t2, -96(s0)
	sw t2, 280(sp)
	lw t1, 276(sp)
	sw t1, -96(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 284(sp)
	lw t0, 284(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 288(sp)
	lw t2, -100(s0)
	sw t2, 292(sp)
	lw t1, 288(sp)
	sw t1, -100(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 296(sp)
	lw t0, 296(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 300(sp)
	lw t2, -104(s0)
	sw t2, 304(sp)
	lw t1, 300(sp)
	sw t1, -104(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 308(sp)
	lw t0, 308(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 312(sp)
	lw t2, -108(s0)
	sw t2, 316(sp)
	lw t1, 312(sp)
	sw t1, -108(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 320(sp)
	lw t0, 320(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 324(sp)
	lw t2, -112(s0)
	sw t2, 328(sp)
	lw t1, 324(sp)
	sw t1, -112(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 332(sp)
	lw t0, 332(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 336(sp)
	lw t2, -116(s0)
	sw t2, 340(sp)
	lw t1, 336(sp)
	sw t1, -116(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 344(sp)
	lw t0, 344(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 348(sp)
	lw t2, -120(s0)
	sw t2, 352(sp)
	lw t1, 348(sp)
	sw t1, -120(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 356(sp)
	lw t0, 356(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 360(sp)
	lw t2, -124(s0)
	sw t2, 364(sp)
	lw t1, 360(sp)
	sw t1, -124(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 368(sp)
	lw t0, 368(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 372(sp)
	lw t2, -128(s0)
	sw t2, 376(sp)
	lw t1, 372(sp)
	sw t1, -128(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 380(sp)
	lw t0, 380(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 384(sp)
	lw t2, -132(s0)
	sw t2, 388(sp)
	lw t1, 384(sp)
	sw t1, -132(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 392(sp)
	lw t0, 392(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 396(sp)
	lw t2, -136(s0)
	sw t2, 400(sp)
	lw t1, 396(sp)
	sw t1, -136(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 404(sp)
	lw t0, 404(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 408(sp)
	lw t2, -140(s0)
	sw t2, 412(sp)
	lw t1, 408(sp)
	sw t1, -140(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 416(sp)
	lw t0, 416(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 420(sp)
	lw t2, -144(s0)
	sw t2, 424(sp)
	lw t1, 420(sp)
	sw t1, -144(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 428(sp)
	lw t0, 428(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 432(sp)
	lw t2, -148(s0)
	sw t2, 436(sp)
	lw t1, 432(sp)
	sw t1, -148(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 440(sp)
	lw t0, 440(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 444(sp)
	lw t2, -152(s0)
	sw t2, 448(sp)
	lw t1, 444(sp)
	sw t1, -152(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 452(sp)
	lw t0, 452(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 456(sp)
	lw t2, -156(s0)
	sw t2, 460(sp)
	lw t1, 456(sp)
	sw t1, -156(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 464(sp)
	lw t0, 464(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 468(sp)
	lw t2, -160(s0)
	sw t2, 472(sp)
	lw t1, 468(sp)
	sw t1, -160(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 476(sp)
	lw t0, 476(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 480(sp)
	lw t2, -164(s0)
	sw t2, 484(sp)
	lw t1, 480(sp)
	sw t1, -164(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 488(sp)
	lw t0, 488(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 492(sp)
	lw t2, -168(s0)
	sw t2, 496(sp)
	lw t1, 492(sp)
	sw t1, -168(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 500(sp)
	lw t0, 500(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 504(sp)
	lw t2, -172(s0)
	sw t2, 508(sp)
	lw t1, 504(sp)
	sw t1, -172(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 512(sp)
	lw t0, 512(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 516(sp)
	lw t2, -176(s0)
	sw t2, 520(sp)
	lw t1, 516(sp)
	sw t1, -176(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 524(sp)
	lw t0, 524(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 528(sp)
	lw t2, -180(s0)
	sw t2, 532(sp)
	lw t1, 528(sp)
	sw t1, -180(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 536(sp)
	lw t0, 536(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 540(sp)
	lw t2, -184(s0)
	sw t2, 544(sp)
	lw t1, 540(sp)
	sw t1, -184(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 548(sp)
	lw t0, 548(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 552(sp)
	lw t2, -188(s0)
	sw t2, 556(sp)
	lw t1, 552(sp)
	sw t1, -188(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 560(sp)
	lw t0, 560(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 564(sp)
	lw t2, -192(s0)
	sw t2, 568(sp)
	lw t1, 564(sp)
	sw t1, -192(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 572(sp)
	lw t0, 572(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 576(sp)
	lw t2, -196(s0)
	sw t2, 580(sp)
	lw t1, 576(sp)
	sw t1, -196(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 584(sp)
	lw t0, 584(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 588(sp)
	lw t2, -200(s0)
	sw t2, 592(sp)
	lw t1, 588(sp)
	sw t1, -200(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 596(sp)
	lw t0, 596(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 600(sp)
	lw t2, -204(s0)
	sw t2, 604(sp)
	lw t1, 600(sp)
	sw t1, -204(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 608(sp)
	lw t0, 608(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 612(sp)
	lw t2, -208(s0)
	sw t2, 616(sp)
	lw t1, 612(sp)
	sw t1, -208(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 620(sp)
	lw t0, 620(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 624(sp)
	lw t2, -212(s0)
	sw t2, 628(sp)
	lw t1, 624(sp)
	sw t1, -212(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 632(sp)
	lw t0, 632(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 636(sp)
	lw t2, -216(s0)
	sw t2, 640(sp)
	lw t1, 636(sp)
	sw t1, -216(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 644(sp)
	lw t0, 644(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 648(sp)
	lw t2, -220(s0)
	sw t2, 652(sp)
	lw t1, 648(sp)
	sw t1, -220(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 656(sp)
	lw t0, 656(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 660(sp)
	lw t2, -224(s0)
	sw t2, 664(sp)
	lw t1, 660(sp)
	sw t1, -224(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 668(sp)
	lw t0, 668(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 672(sp)
	lw t2, -228(s0)
	sw t2, 676(sp)
	lw t1, 672(sp)
	sw t1, -228(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 680(sp)
	lw t0, 680(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 684(sp)
	lw t2, -232(s0)
	sw t2, 688(sp)
	lw t1, 684(sp)
	sw t1, -232(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 692(sp)
	lw t0, 692(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 696(sp)
	lw t2, -236(s0)
	sw t2, 700(sp)
	lw t1, 696(sp)
	sw t1, -236(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 704(sp)
	lw t0, 704(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 708(sp)
	lw t2, -240(s0)
	sw t2, 712(sp)
	lw t1, 708(sp)
	sw t1, -240(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 716(sp)
	lw t0, 716(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 720(sp)
	lw t2, -244(s0)
	sw t2, 724(sp)
	lw t1, 720(sp)
	sw t1, -244(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 728(sp)
	lw t0, 728(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 732(sp)
	lw t2, -248(s0)
	sw t2, 736(sp)
	lw t1, 732(sp)
	sw t1, -248(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 740(sp)
	lw t0, 740(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 744(sp)
	lw t2, -252(s0)
	sw t2, 748(sp)
	lw t1, 744(sp)
	sw t1, -252(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 752(sp)
	lw t0, 752(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 756(sp)
	lw t2, -256(s0)
	sw t2, 760(sp)
	lw t1, 756(sp)
	sw t1, -256(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 764(sp)
	lw t0, 764(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 768(sp)
	lw t2, -260(s0)
	sw t2, 772(sp)
	lw t1, 768(sp)
	sw t1, -260(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 776(sp)
	lw t0, 776(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 780(sp)
	lw t2, -264(s0)
	sw t2, 784(sp)
	lw t1, 780(sp)
	sw t1, -264(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 788(sp)
	lw t0, 788(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 792(sp)
	lw t2, -268(s0)
	sw t2, 796(sp)
	lw t1, 792(sp)
	sw t1, -268(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 800(sp)
	lw t0, 800(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 804(sp)
	lw t2, -272(s0)
	sw t2, 808(sp)
	lw t1, 804(sp)
	sw t1, -272(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 812(sp)
	lw t0, 812(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 816(sp)
	lw t2, -276(s0)
	sw t2, 820(sp)
	lw t1, 816(sp)
	sw t1, -276(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 824(sp)
	lw t0, 824(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 828(sp)
	lw t2, -280(s0)
	sw t2, 832(sp)
	lw t1, 828(sp)
	sw t1, -280(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 836(sp)
	lw t0, 836(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 840(sp)
	lw t2, -284(s0)
	sw t2, 844(sp)
	lw t1, 840(sp)
	sw t1, -284(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 848(sp)
	lw t0, 848(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 852(sp)
	lw t2, -288(s0)
	sw t2, 856(sp)
	lw t1, 852(sp)
	sw t1, -288(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 860(sp)
	lw t0, 860(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 864(sp)
	lw t2, -292(s0)
	sw t2, 868(sp)
	lw t1, 864(sp)
	sw t1, -292(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 872(sp)
	lw t0, 872(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 876(sp)
	lw t2, -296(s0)
	sw t2, 880(sp)
	lw t1, 876(sp)
	sw t1, -296(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 884(sp)
	lw t0, 884(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 888(sp)
	lw t2, -300(s0)
	sw t2, 892(sp)
	lw t1, 888(sp)
	sw t1, -300(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 896(sp)
	lw t0, 896(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 900(sp)
	lw t2, -304(s0)
	sw t2, 904(sp)
	lw t1, 900(sp)
	sw t1, -304(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 908(sp)
	lw t0, 908(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 912(sp)
	lw t2, -308(s0)
	sw t2, 916(sp)
	lw t1, 912(sp)
	sw t1, -308(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 920(sp)
	lw t0, 920(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 924(sp)
	lw t2, -312(s0)
	sw t2, 928(sp)
	lw t1, 924(sp)
	sw t1, -312(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 932(sp)
	lw t0, 932(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 936(sp)
	lw t2, -316(s0)
	sw t2, 940(sp)
	lw t1, 936(sp)
	sw t1, -316(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 944(sp)
	lw t0, 944(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 948(sp)
	lw t2, -320(s0)
	sw t2, 952(sp)
	lw t1, 948(sp)
	sw t1, -320(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 956(sp)
	lw t0, 956(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 960(sp)
	lw t2, -324(s0)
	sw t2, 964(sp)
	lw t1, 960(sp)
	sw t1, -324(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 968(sp)
	lw t0, 968(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 972(sp)
	lw t2, -328(s0)
	sw t2, 976(sp)
	lw t1, 972(sp)
	sw t1, -328(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 980(sp)
	lw t0, 980(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 984(sp)
	lw t2, -332(s0)
	sw t2, 988(sp)
	lw t1, 984(sp)
	sw t1, -332(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 992(sp)
	lw t0, 992(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 996(sp)
	lw t2, -336(s0)
	sw t2, 1000(sp)
	lw t1, 996(sp)
	sw t1, -336(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1004(sp)
	lw t0, 1004(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1008(sp)
	lw t2, -340(s0)
	sw t2, 1012(sp)
	lw t1, 1008(sp)
	sw t1, -340(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1016(sp)
	lw t0, 1016(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1020(sp)
	lw t2, -344(s0)
	sw t2, 1024(sp)
	lw t1, 1020(sp)
	sw t1, -344(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1028(sp)
	lw t0, 1028(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1032(sp)
	lw t2, -348(s0)
	sw t2, 1036(sp)
	lw t1, 1032(sp)
	sw t1, -348(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1040(sp)
	lw t0, 1040(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1044(sp)
	lw t2, -352(s0)
	sw t2, 1048(sp)
	lw t1, 1044(sp)
	sw t1, -352(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1052(sp)
	lw t0, 1052(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1056(sp)
	lw t2, -356(s0)
	sw t2, 1060(sp)
	lw t1, 1056(sp)
	sw t1, -356(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1064(sp)
	lw t0, 1064(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1068(sp)
	lw t2, -360(s0)
	sw t2, 1072(sp)
	lw t1, 1068(sp)
	sw t1, -360(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1076(sp)
	lw t0, 1076(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1080(sp)
	lw t2, -364(s0)
	sw t2, 1084(sp)
	lw t1, 1080(sp)
	sw t1, -364(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1088(sp)
	lw t0, 1088(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1092(sp)
	lw t2, -368(s0)
	sw t2, 1096(sp)
	lw t1, 1092(sp)
	sw t1, -368(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1100(sp)
	lw t0, 1100(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1104(sp)
	lw t2, -372(s0)
	sw t2, 1108(sp)
	lw t1, 1104(sp)
	sw t1, -372(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1112(sp)
	lw t0, 1112(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1116(sp)
	lw t2, -376(s0)
	sw t2, 1120(sp)
	lw t1, 1116(sp)
	sw t1, -376(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1124(sp)
	lw t0, 1124(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1128(sp)
	lw t2, -380(s0)
	sw t2, 1132(sp)
	lw t1, 1128(sp)
	sw t1, -380(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1136(sp)
	lw t0, 1136(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1140(sp)
	lw t2, -384(s0)
	sw t2, 1144(sp)
	lw t1, 1140(sp)
	sw t1, -384(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1148(sp)
	lw t0, 1148(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1152(sp)
	lw t2, -388(s0)
	sw t2, 1156(sp)
	lw t1, 1152(sp)
	sw t1, -388(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1160(sp)
	lw t0, 1160(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1164(sp)
	lw t2, -392(s0)
	sw t2, 1168(sp)
	lw t1, 1164(sp)
	sw t1, -392(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1172(sp)
	lw t0, 1172(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1176(sp)
	lw t2, -396(s0)
	sw t2, 1180(sp)
	lw t1, 1176(sp)
	sw t1, -396(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1184(sp)
	lw t0, 1184(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1188(sp)
	lw t2, -400(s0)
	sw t2, 1192(sp)
	lw t1, 1188(sp)
	sw t1, -400(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1196(sp)
	lw t0, 1196(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1200(sp)
	lw t2, -404(s0)
	sw t2, 1204(sp)
	lw t1, 1200(sp)
	sw t1, -404(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1208(sp)
	lw t0, 1208(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1212(sp)
	lw t2, -408(s0)
	sw t2, 1216(sp)
	lw t1, 1212(sp)
	sw t1, -408(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1220(sp)
	lw t0, 1220(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1224(sp)
	lw t2, -412(s0)
	sw t2, 1228(sp)
	lw t1, 1224(sp)
	sw t1, -412(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1232(sp)
	lw t0, 1232(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1236(sp)
	lw t2, -416(s0)
	sw t2, 1240(sp)
	lw t1, 1236(sp)
	sw t1, -416(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1244(sp)
	lw t0, 1244(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1248(sp)
	lw t2, -420(s0)
	sw t2, 1252(sp)
	lw t1, 1248(sp)
	sw t1, -420(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1256(sp)
	lw t0, 1256(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1260(sp)
	lw t2, -424(s0)
	sw t2, 1264(sp)
	lw t1, 1260(sp)
	sw t1, -424(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1268(sp)
	lw t0, 1268(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1272(sp)
	lw t2, -428(s0)
	sw t2, 1276(sp)
	lw t1, 1272(sp)
	sw t1, -428(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1280(sp)
	lw t0, 1280(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1284(sp)
	lw t2, -432(s0)
	sw t2, 1288(sp)
	lw t1, 1284(sp)
	sw t1, -432(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1292(sp)
	lw t0, 1292(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1296(sp)
	lw t2, -436(s0)
	sw t2, 1300(sp)
	lw t1, 1296(sp)
	sw t1, -436(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1304(sp)
	lw t0, 1304(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1308(sp)
	lw t2, -440(s0)
	sw t2, 1312(sp)
	lw t1, 1308(sp)
	sw t1, -440(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1316(sp)
	lw t0, 1316(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1320(sp)
	lw t2, -444(s0)
	sw t2, 1324(sp)
	lw t1, 1320(sp)
	sw t1, -444(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1328(sp)
	lw t0, 1328(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1332(sp)
	lw t2, -448(s0)
	sw t2, 1336(sp)
	lw t1, 1332(sp)
	sw t1, -448(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1340(sp)
	lw t0, 1340(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1344(sp)
	lw t2, -452(s0)
	sw t2, 1348(sp)
	lw t1, 1344(sp)
	sw t1, -452(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1352(sp)
	lw t0, 1352(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1356(sp)
	lw t2, -456(s0)
	sw t2, 1360(sp)
	lw t1, 1356(sp)
	sw t1, -456(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1364(sp)
	lw t0, 1364(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1368(sp)
	lw t2, -460(s0)
	sw t2, 1372(sp)
	lw t1, 1368(sp)
	sw t1, -460(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1376(sp)
	lw t0, 1376(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1380(sp)
	lw t2, -464(s0)
	sw t2, 1384(sp)
	lw t1, 1380(sp)
	sw t1, -464(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1388(sp)
	lw t0, 1388(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1392(sp)
	lw t2, -468(s0)
	sw t2, 1396(sp)
	lw t1, 1392(sp)
	sw t1, -468(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1400(sp)
	lw t0, 1400(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1404(sp)
	lw t2, -472(s0)
	sw t2, 1408(sp)
	lw t1, 1404(sp)
	sw t1, -472(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1412(sp)
	lw t0, 1412(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1416(sp)
	lw t2, -476(s0)
	sw t2, 1420(sp)
	lw t1, 1416(sp)
	sw t1, -476(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1424(sp)
	lw t0, 1424(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1428(sp)
	lw t2, -480(s0)
	sw t2, 1432(sp)
	lw t1, 1428(sp)
	sw t1, -480(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1436(sp)
	lw t0, 1436(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1440(sp)
	lw t2, -484(s0)
	sw t2, 1444(sp)
	lw t1, 1440(sp)
	sw t1, -484(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1448(sp)
	lw t0, 1448(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1452(sp)
	lw t2, -488(s0)
	sw t2, 1456(sp)
	lw t1, 1452(sp)
	sw t1, -488(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1460(sp)
	lw t0, 1460(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1464(sp)
	lw t2, -492(s0)
	sw t2, 1468(sp)
	lw t1, 1464(sp)
	sw t1, -492(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1472(sp)
	lw t0, 1472(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1476(sp)
	lw t2, -496(s0)
	sw t2, 1480(sp)
	lw t1, 1476(sp)
	sw t1, -496(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1484(sp)
	lw t0, 1484(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1488(sp)
	lw t2, -500(s0)
	sw t2, 1492(sp)
	lw t1, 1488(sp)
	sw t1, -500(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1496(sp)
	lw t0, 1496(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1500(sp)
	lw t2, -504(s0)
	sw t2, 1504(sp)
	lw t1, 1500(sp)
	sw t1, -504(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1508(sp)
	lw t0, 1508(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1512(sp)
	lw t2, -508(s0)
	sw t2, 1516(sp)
	lw t1, 1512(sp)
	sw t1, -508(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1520(sp)
	lw t0, 1520(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1524(sp)
	lw t2, -512(s0)
	sw t2, 1528(sp)
	lw t1, 1524(sp)
	sw t1, -512(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1532(sp)
	lw t0, 1532(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1536(sp)
	lw t2, -516(s0)
	sw t2, 1540(sp)
	lw t1, 1536(sp)
	sw t1, -516(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1544(sp)
	lw t0, 1544(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1548(sp)
	lw t2, -520(s0)
	sw t2, 1552(sp)
	lw t1, 1548(sp)
	sw t1, -520(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1556(sp)
	lw t0, 1556(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1560(sp)
	lw t2, -524(s0)
	sw t2, 1564(sp)
	lw t1, 1560(sp)
	sw t1, -524(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1568(sp)
	lw t0, 1568(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1572(sp)
	lw t2, -528(s0)
	sw t2, 1576(sp)
	lw t1, 1572(sp)
	sw t1, -528(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1580(sp)
	lw t0, 1580(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1584(sp)
	lw t2, -532(s0)
	sw t2, 1588(sp)
	lw t1, 1584(sp)
	sw t1, -532(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1592(sp)
	lw t0, 1592(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1596(sp)
	lw t2, -536(s0)
	sw t2, 1600(sp)
	lw t1, 1596(sp)
	sw t1, -536(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1604(sp)
	lw t0, 1604(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1608(sp)
	lw t2, -540(s0)
	sw t2, 1612(sp)
	lw t1, 1608(sp)
	sw t1, -540(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1616(sp)
	lw t0, 1616(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1620(sp)
	lw t2, -544(s0)
	sw t2, 1624(sp)
	lw t1, 1620(sp)
	sw t1, -544(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1628(sp)
	lw t0, 1628(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1632(sp)
	lw t2, -548(s0)
	sw t2, 1636(sp)
	lw t1, 1632(sp)
	sw t1, -548(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1640(sp)
	lw t0, 1640(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1644(sp)
	lw t2, -552(s0)
	sw t2, 1648(sp)
	lw t1, 1644(sp)
	sw t1, -552(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1652(sp)
	lw t0, 1652(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1656(sp)
	lw t2, -556(s0)
	sw t2, 1660(sp)
	lw t1, 1656(sp)
	sw t1, -556(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1664(sp)
	lw t0, 1664(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1668(sp)
	lw t2, -560(s0)
	sw t2, 1672(sp)
	lw t1, 1668(sp)
	sw t1, -560(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1676(sp)
	lw t0, 1676(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1680(sp)
	lw t2, -564(s0)
	sw t2, 1684(sp)
	lw t1, 1680(sp)
	sw t1, -564(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1688(sp)
	lw t0, 1688(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1692(sp)
	lw t2, -568(s0)
	sw t2, 1696(sp)
	lw t1, 1692(sp)
	sw t1, -568(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1700(sp)
	lw t0, 1700(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1704(sp)
	lw t2, -572(s0)
	sw t2, 1708(sp)
	lw t1, 1704(sp)
	sw t1, -572(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1712(sp)
	lw t0, 1712(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1716(sp)
	lw t2, -576(s0)
	sw t2, 1720(sp)
	lw t1, 1716(sp)
	sw t1, -576(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1724(sp)
	lw t0, 1724(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1728(sp)
	lw t2, -580(s0)
	sw t2, 1732(sp)
	lw t1, 1728(sp)
	sw t1, -580(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1736(sp)
	lw t0, 1736(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1740(sp)
	lw t2, -584(s0)
	sw t2, 1744(sp)
	lw t1, 1740(sp)
	sw t1, -584(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1748(sp)
	lw t0, 1748(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1752(sp)
	lw t2, -588(s0)
	sw t2, 1756(sp)
	lw t1, 1752(sp)
	sw t1, -588(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1760(sp)
	lw t0, 1760(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1764(sp)
	lw t2, -592(s0)
	sw t2, 1768(sp)
	lw t1, 1764(sp)
	sw t1, -592(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1772(sp)
	lw t0, 1772(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1776(sp)
	lw t2, -596(s0)
	sw t2, 1780(sp)
	lw t1, 1776(sp)
	sw t1, -596(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1784(sp)
	lw t0, 1784(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1788(sp)
	lw t2, -600(s0)
	sw t2, 1792(sp)
	lw t1, 1788(sp)
	sw t1, -600(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1796(sp)
	lw t0, 1796(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1800(sp)
	lw t2, -604(s0)
	sw t2, 1804(sp)
	lw t1, 1800(sp)
	sw t1, -604(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1808(sp)
	lw t0, 1808(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1812(sp)
	lw t2, -608(s0)
	sw t2, 1816(sp)
	lw t1, 1812(sp)
	sw t1, -608(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1820(sp)
	lw t0, 1820(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1824(sp)
	lw t2, -612(s0)
	sw t2, 1828(sp)
	lw t1, 1824(sp)
	sw t1, -612(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1832(sp)
	lw t0, 1832(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1836(sp)
	lw t2, -616(s0)
	sw t2, 1840(sp)
	lw t1, 1836(sp)
	sw t1, -616(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1844(sp)
	lw t0, 1844(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1848(sp)
	lw t2, -620(s0)
	sw t2, 1852(sp)
	lw t1, 1848(sp)
	sw t1, -620(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1856(sp)
	lw t0, 1856(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1860(sp)
	lw t2, -624(s0)
	sw t2, 1864(sp)
	lw t1, 1860(sp)
	sw t1, -624(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1868(sp)
	lw t0, 1868(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1872(sp)
	lw t2, -628(s0)
	sw t2, 1876(sp)
	lw t1, 1872(sp)
	sw t1, -628(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1880(sp)
	lw t0, 1880(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1884(sp)
	lw t2, -632(s0)
	sw t2, 1888(sp)
	lw t1, 1884(sp)
	sw t1, -632(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1892(sp)
	lw t0, 1892(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1896(sp)
	lw t2, -636(s0)
	sw t2, 1900(sp)
	lw t1, 1896(sp)
	sw t1, -636(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1904(sp)
	lw t0, 1904(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1908(sp)
	lw t2, -640(s0)
	sw t2, 1912(sp)
	lw t1, 1908(sp)
	sw t1, -640(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1916(sp)
	lw t0, 1916(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1920(sp)
	lw t2, -644(s0)
	sw t2, 1924(sp)
	lw t1, 1920(sp)
	sw t1, -644(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1928(sp)
	lw t0, 1928(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1932(sp)
	lw t2, -648(s0)
	sw t2, 1936(sp)
	lw t1, 1932(sp)
	sw t1, -648(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1940(sp)
	lw t0, 1940(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1944(sp)
	lw t2, -652(s0)
	sw t2, 1948(sp)
	lw t1, 1944(sp)
	sw t1, -652(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1952(sp)
	lw t0, 1952(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1956(sp)
	lw t2, -656(s0)
	sw t2, 1960(sp)
	lw t1, 1956(sp)
	sw t1, -656(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1964(sp)
	lw t0, 1964(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1968(sp)
	lw t2, -660(s0)
	sw t2, 1972(sp)
	lw t1, 1968(sp)
	sw t1, -660(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1976(sp)
	lw t0, 1976(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1980(sp)
	lw t2, -664(s0)
	sw t2, 1984(sp)
	lw t1, 1980(sp)
	sw t1, -664(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 1988(sp)
	lw t0, 1988(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 1992(sp)
	lw t2, -668(s0)
	sw t2, 1996(sp)
	lw t1, 1992(sp)
	sw t1, -668(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2000(sp)
	lw t0, 2000(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2004(sp)
	lw t2, -672(s0)
	sw t2, 2008(sp)
	lw t1, 2004(sp)
	sw t1, -672(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2012(sp)
	lw t0, 2012(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2016(sp)
	lw t2, -676(s0)
	sw t2, 2020(sp)
	lw t1, 2016(sp)
	sw t1, -676(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2024(sp)
	lw t0, 2024(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2028(sp)
	lw t2, -680(s0)
	sw t2, 2032(sp)
	lw t1, 2028(sp)
	sw t1, -680(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2036(sp)
	lw t0, 2036(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2040(sp)
	lw t2, -684(s0)
	sw t2, 2044(sp)
	lw t1, 2040(sp)
	sw t1, -684(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2048(sp)
	lw t0, 2048(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2052(sp)
	lw t2, -688(s0)
	sw t2, 2056(sp)
	lw t1, 2052(sp)
	sw t1, -688(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2060(sp)
	lw t0, 2060(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2064(sp)
	lw t2, -692(s0)
	sw t2, 2068(sp)
	lw t1, 2064(sp)
	sw t1, -692(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2072(sp)
	lw t0, 2072(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2076(sp)
	lw t2, -696(s0)
	sw t2, 2080(sp)
	lw t1, 2076(sp)
	sw t1, -696(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2084(sp)
	lw t0, 2084(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2088(sp)
	lw t2, -700(s0)
	sw t2, 2092(sp)
	lw t1, 2088(sp)
	sw t1, -700(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2096(sp)
	lw t0, 2096(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2100(sp)
	lw t2, -704(s0)
	sw t2, 2104(sp)
	lw t1, 2100(sp)
	sw t1, -704(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2108(sp)
	lw t0, 2108(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2112(sp)
	lw t2, -708(s0)
	sw t2, 2116(sp)
	lw t1, 2112(sp)
	sw t1, -708(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2120(sp)
	lw t0, 2120(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2124(sp)
	lw t2, -712(s0)
	sw t2, 2128(sp)
	lw t1, 2124(sp)
	sw t1, -712(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2132(sp)
	lw t0, 2132(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2136(sp)
	lw t2, -716(s0)
	sw t2, 2140(sp)
	lw t1, 2136(sp)
	sw t1, -716(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2144(sp)
	lw t0, 2144(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2148(sp)
	lw t2, -720(s0)
	sw t2, 2152(sp)
	lw t1, 2148(sp)
	sw t1, -720(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2156(sp)
	lw t0, 2156(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2160(sp)
	lw t2, -724(s0)
	sw t2, 2164(sp)
	lw t1, 2160(sp)
	sw t1, -724(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2168(sp)
	lw t0, 2168(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2172(sp)
	lw t2, -728(s0)
	sw t2, 2176(sp)
	lw t1, 2172(sp)
	sw t1, -728(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2180(sp)
	lw t0, 2180(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2184(sp)
	lw t2, -732(s0)
	sw t2, 2188(sp)
	lw t1, 2184(sp)
	sw t1, -732(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2192(sp)
	lw t0, 2192(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2196(sp)
	lw t2, -736(s0)
	sw t2, 2200(sp)
	lw t1, 2196(sp)
	sw t1, -736(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2204(sp)
	lw t0, 2204(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2208(sp)
	lw t2, -740(s0)
	sw t2, 2212(sp)
	lw t1, 2208(sp)
	sw t1, -740(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2216(sp)
	lw t0, 2216(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2220(sp)
	lw t2, -744(s0)
	sw t2, 2224(sp)
	lw t1, 2220(sp)
	sw t1, -744(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2228(sp)
	lw t0, 2228(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2232(sp)
	lw t2, -748(s0)
	sw t2, 2236(sp)
	lw t1, 2232(sp)
	sw t1, -748(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2240(sp)
	lw t0, 2240(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2244(sp)
	lw t2, -752(s0)
	sw t2, 2248(sp)
	lw t1, 2244(sp)
	sw t1, -752(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2252(sp)
	lw t0, 2252(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2256(sp)
	lw t2, -756(s0)
	sw t2, 2260(sp)
	lw t1, 2256(sp)
	sw t1, -756(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2264(sp)
	lw t0, 2264(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2268(sp)
	lw t2, -760(s0)
	sw t2, 2272(sp)
	lw t1, 2268(sp)
	sw t1, -760(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2276(sp)
	lw t0, 2276(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2280(sp)
	lw t2, -764(s0)
	sw t2, 2284(sp)
	lw t1, 2280(sp)
	sw t1, -764(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2288(sp)
	lw t0, 2288(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2292(sp)
	lw t2, -768(s0)
	sw t2, 2296(sp)
	lw t1, 2292(sp)
	sw t1, -768(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2300(sp)
	lw t0, 2300(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2304(sp)
	lw t2, -772(s0)
	sw t2, 2308(sp)
	lw t1, 2304(sp)
	sw t1, -772(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2312(sp)
	lw t0, 2312(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2316(sp)
	lw t2, -776(s0)
	sw t2, 2320(sp)
	lw t1, 2316(sp)
	sw t1, -776(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2324(sp)
	lw t0, 2324(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2328(sp)
	lw t2, -780(s0)
	sw t2, 2332(sp)
	lw t1, 2328(sp)
	sw t1, -780(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2336(sp)
	lw t0, 2336(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2340(sp)
	lw t2, -784(s0)
	sw t2, 2344(sp)
	lw t1, 2340(sp)
	sw t1, -784(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2348(sp)
	lw t0, 2348(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2352(sp)
	lw t2, -788(s0)
	sw t2, 2356(sp)
	lw t1, 2352(sp)
	sw t1, -788(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2360(sp)
	lw t0, 2360(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2364(sp)
	lw t2, -792(s0)
	sw t2, 2368(sp)
	lw t1, 2364(sp)
	sw t1, -792(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2372(sp)
	lw t0, 2372(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2376(sp)
	lw t2, -796(s0)
	sw t2, 2380(sp)
	lw t1, 2376(sp)
	sw t1, -796(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2384(sp)
	lw t0, 2384(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2388(sp)
	lw t2, -800(s0)
	sw t2, 2392(sp)
	lw t1, 2388(sp)
	sw t1, -800(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2396(sp)
	lw t0, 2396(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2400(sp)
	lw t2, -804(s0)
	sw t2, 2404(sp)
	lw t1, 2400(sp)
	sw t1, -804(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2408(sp)
	lw t0, 2408(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2412(sp)
	lw t2, -808(s0)
	sw t2, 2416(sp)
	lw t1, 2412(sp)
	sw t1, -808(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2420(sp)
	lw t0, 2420(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2424(sp)
	lw t2, -812(s0)
	sw t2, 2428(sp)
	lw t1, 2424(sp)
	sw t1, -812(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2432(sp)
	lw t0, 2432(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2436(sp)
	lw t2, -816(s0)
	sw t2, 2440(sp)
	lw t1, 2436(sp)
	sw t1, -816(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2444(sp)
	lw t0, 2444(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2448(sp)
	lw t2, -820(s0)
	sw t2, 2452(sp)
	lw t1, 2448(sp)
	sw t1, -820(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2456(sp)
	lw t0, 2456(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2460(sp)
	lw t2, -824(s0)
	sw t2, 2464(sp)
	lw t1, 2460(sp)
	sw t1, -824(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2468(sp)
	lw t0, 2468(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2472(sp)
	lw t2, -828(s0)
	sw t2, 2476(sp)
	lw t1, 2472(sp)
	sw t1, -828(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2480(sp)
	lw t0, 2480(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2484(sp)
	lw t2, -832(s0)
	sw t2, 2488(sp)
	lw t1, 2484(sp)
	sw t1, -832(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2492(sp)
	lw t0, 2492(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2496(sp)
	lw t2, -836(s0)
	sw t2, 2500(sp)
	lw t1, 2496(sp)
	sw t1, -836(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2504(sp)
	lw t0, 2504(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2508(sp)
	lw t2, -840(s0)
	sw t2, 2512(sp)
	lw t1, 2508(sp)
	sw t1, -840(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2516(sp)
	lw t0, 2516(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2520(sp)
	lw t2, -844(s0)
	sw t2, 2524(sp)
	lw t1, 2520(sp)
	sw t1, -844(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2528(sp)
	lw t0, 2528(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2532(sp)
	lw t2, -848(s0)
	sw t2, 2536(sp)
	lw t1, 2532(sp)
	sw t1, -848(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2540(sp)
	lw t0, 2540(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2544(sp)
	lw t2, -852(s0)
	sw t2, 2548(sp)
	lw t1, 2544(sp)
	sw t1, -852(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2552(sp)
	lw t0, 2552(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2556(sp)
	lw t2, -856(s0)
	sw t2, 2560(sp)
	lw t1, 2556(sp)
	sw t1, -856(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2564(sp)
	lw t0, 2564(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2568(sp)
	lw t2, -860(s0)
	sw t2, 2572(sp)
	lw t1, 2568(sp)
	sw t1, -860(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2576(sp)
	lw t0, 2576(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2580(sp)
	lw t2, -864(s0)
	sw t2, 2584(sp)
	lw t1, 2580(sp)
	sw t1, -864(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2588(sp)
	lw t0, 2588(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2592(sp)
	lw t2, -868(s0)
	sw t2, 2596(sp)
	lw t1, 2592(sp)
	sw t1, -868(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2600(sp)
	lw t0, 2600(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2604(sp)
	lw t2, -872(s0)
	sw t2, 2608(sp)
	lw t1, 2604(sp)
	sw t1, -872(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2612(sp)
	lw t0, 2612(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2616(sp)
	lw t2, -876(s0)
	sw t2, 2620(sp)
	lw t1, 2616(sp)
	sw t1, -876(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2624(sp)
	lw t0, 2624(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2628(sp)
	lw t2, -880(s0)
	sw t2, 2632(sp)
	lw t1, 2628(sp)
	sw t1, -880(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2636(sp)
	lw t0, 2636(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2640(sp)
	lw t2, -884(s0)
	sw t2, 2644(sp)
	lw t1, 2640(sp)
	sw t1, -884(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2648(sp)
	lw t0, 2648(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2652(sp)
	lw t2, -888(s0)
	sw t2, 2656(sp)
	lw t1, 2652(sp)
	sw t1, -888(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2660(sp)
	lw t0, 2660(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2664(sp)
	lw t2, -892(s0)
	sw t2, 2668(sp)
	lw t1, 2664(sp)
	sw t1, -892(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2672(sp)
	lw t0, 2672(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2676(sp)
	lw t2, -896(s0)
	sw t2, 2680(sp)
	lw t1, 2676(sp)
	sw t1, -896(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2684(sp)
	lw t0, 2684(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2688(sp)
	lw t2, -900(s0)
	sw t2, 2692(sp)
	lw t1, 2688(sp)
	sw t1, -900(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2696(sp)
	lw t0, 2696(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2700(sp)
	lw t2, -904(s0)
	sw t2, 2704(sp)
	lw t1, 2700(sp)
	sw t1, -904(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2708(sp)
	lw t0, 2708(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2712(sp)
	lw t2, -908(s0)
	sw t2, 2716(sp)
	lw t1, 2712(sp)
	sw t1, -908(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2720(sp)
	lw t0, 2720(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2724(sp)
	lw t2, -912(s0)
	sw t2, 2728(sp)
	lw t1, 2724(sp)
	sw t1, -912(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2732(sp)
	lw t0, 2732(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2736(sp)
	lw t2, -916(s0)
	sw t2, 2740(sp)
	lw t1, 2736(sp)
	sw t1, -916(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2744(sp)
	lw t0, 2744(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2748(sp)
	lw t2, -920(s0)
	sw t2, 2752(sp)
	lw t1, 2748(sp)
	sw t1, -920(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2756(sp)
	lw t0, 2756(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2760(sp)
	lw t2, -924(s0)
	sw t2, 2764(sp)
	lw t1, 2760(sp)
	sw t1, -924(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2768(sp)
	lw t0, 2768(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2772(sp)
	lw t2, -928(s0)
	sw t2, 2776(sp)
	lw t1, 2772(sp)
	sw t1, -928(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2780(sp)
	lw t0, 2780(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2784(sp)
	lw t2, -932(s0)
	sw t2, 2788(sp)
	lw t1, 2784(sp)
	sw t1, -932(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2792(sp)
	lw t0, 2792(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2796(sp)
	lw t2, -936(s0)
	sw t2, 2800(sp)
	lw t1, 2796(sp)
	sw t1, -936(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2804(sp)
	lw t0, 2804(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2808(sp)
	lw t2, -940(s0)
	sw t2, 2812(sp)
	lw t1, 2808(sp)
	sw t1, -940(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2816(sp)
	lw t0, 2816(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2820(sp)
	lw t2, -944(s0)
	sw t2, 2824(sp)
	lw t1, 2820(sp)
	sw t1, -944(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2828(sp)
	lw t0, 2828(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2832(sp)
	lw t2, -948(s0)
	sw t2, 2836(sp)
	lw t1, 2832(sp)
	sw t1, -948(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2840(sp)
	lw t0, 2840(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2844(sp)
	lw t2, -952(s0)
	sw t2, 2848(sp)
	lw t1, 2844(sp)
	sw t1, -952(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2852(sp)
	lw t0, 2852(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2856(sp)
	lw t2, -956(s0)
	sw t2, 2860(sp)
	lw t1, 2856(sp)
	sw t1, -956(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2864(sp)
	lw t0, 2864(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2868(sp)
	lw t2, -960(s0)
	sw t2, 2872(sp)
	lw t1, 2868(sp)
	sw t1, -960(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2876(sp)
	lw t0, 2876(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2880(sp)
	lw t2, -964(s0)
	sw t2, 2884(sp)
	lw t1, 2880(sp)
	sw t1, -964(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2888(sp)
	lw t0, 2888(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2892(sp)
	lw t2, -968(s0)
	sw t2, 2896(sp)
	lw t1, 2892(sp)
	sw t1, -968(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2900(sp)
	lw t0, 2900(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2904(sp)
	lw t2, -972(s0)
	sw t2, 2908(sp)
	lw t1, 2904(sp)
	sw t1, -972(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2912(sp)
	lw t0, 2912(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2916(sp)
	lw t2, -976(s0)
	sw t2, 2920(sp)
	lw t1, 2916(sp)
	sw t1, -976(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2924(sp)
	lw t0, 2924(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2928(sp)
	lw t2, -980(s0)
	sw t2, 2932(sp)
	lw t1, 2928(sp)
	sw t1, -980(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2936(sp)
	lw t0, 2936(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2940(sp)
	lw t2, -984(s0)
	sw t2, 2944(sp)
	lw t1, 2940(sp)
	sw t1, -984(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2948(sp)
	lw t0, 2948(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2952(sp)
	lw t2, -988(s0)
	sw t2, 2956(sp)
	lw t1, 2952(sp)
	sw t1, -988(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2960(sp)
	lw t0, 2960(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2964(sp)
	lw t2, -992(s0)
	sw t2, 2968(sp)
	lw t1, 2964(sp)
	sw t1, -992(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2972(sp)
	lw t0, 2972(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2976(sp)
	lw t2, -996(s0)
	sw t2, 2980(sp)
	lw t1, 2976(sp)
	sw t1, -996(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2984(sp)
	lw t0, 2984(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 2988(sp)
	lw t2, -1000(s0)
	sw t2, 2992(sp)
	lw t1, 2988(sp)
	sw t1, -1000(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 2996(sp)
	lw t0, 2996(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3000(sp)
	lw t2, -1004(s0)
	sw t2, 3004(sp)
	lw t1, 3000(sp)
	sw t1, -1004(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 3008(sp)
	lw t0, 3008(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3012(sp)
	lw t2, -1008(s0)
	sw t2, 3016(sp)
	lw t1, 3012(sp)
	sw t1, -1008(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 3020(sp)
	lw t0, 3020(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3024(sp)
	lw t2, -1012(s0)
	sw t2, 3028(sp)
	lw t1, 3024(sp)
	sw t1, -1012(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 3032(sp)
	lw t0, 3032(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3036(sp)
	lw t2, -1016(s0)
	sw t2, 3040(sp)
	lw t1, 3036(sp)
	sw t1, -1016(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 3044(sp)
	lw t0, 3044(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3048(sp)
	lw t2, -1020(s0)
	sw t2, 3052(sp)
	lw t1, 3048(sp)
	sw t1, -1020(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 3056(sp)
	lw t0, 3056(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3060(sp)
	lw t2, -1024(s0)
	sw t2, 3064(sp)
	lw t1, 3060(sp)
	sw t1, -1024(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 3068(sp)
	lw t0, 3068(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3072(sp)
	lw t2, -1028(s0)
	sw t2, 3076(sp)
	lw t1, 3072(sp)
	sw t1, -1028(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 3080(sp)
	lw t0, 3080(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3084(sp)
	lw t2, -1032(s0)
	sw t2, 3088(sp)
	lw t1, 3084(sp)
	sw t1, -1032(s0)
	la t3, count
	lw t2, 0(t3)
	sw t2, 3092(sp)
	lw t0, 3092(sp)
	mv a0, t0
	call getcount
	mv t2, a0
	sw t2, 3096(sp)
	lw t2, -1036(s0)
	sw t2, 3100(sp)
	lw t1, 3096(sp)
	sw t1, -1036(s0)
	lw t2, -16(s0)
	sw t2, 3104(sp)
	lw t0, 3104(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3108(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3112(sp)
	lw t0, 3112(sp)
	addi t2, t0, 0
	sw t2, 3116(sp)
	addi t4, zero, 1
	lw t0, 3116(sp)
	sw t4, 0(t0)
	la t2, .libro.str
	sw t2, 3120(sp)
	lw t0, 3112(sp)
	addi t2, t0, 4
	sw t2, 3124(sp)
	lw t0, 3124(sp)
	lw t1, 3120(sp)
	sw t1, 0(t0)
	lw t0, 3108(sp)
	mv a0, t0
	lw t0, 3112(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3128(sp)
	lw t0, 3128(sp)
	addi t2, t0, 4
	sw t2, 3132(sp)
	lw t0, 3132(sp)
	lw t2, 0(t0)
	sw t2, 3136(sp)
	lw t0, 3136(sp)
	mv a0, t0
	call print
	lw t2, -20(s0)
	sw t2, 3140(sp)
	lw t0, 3140(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3144(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3148(sp)
	lw t0, 3148(sp)
	addi t2, t0, 0
	sw t2, 3152(sp)
	addi t4, zero, 1
	lw t0, 3152(sp)
	sw t4, 0(t0)
	la t2, .libro.str.1
	sw t2, 3156(sp)
	lw t0, 3148(sp)
	addi t2, t0, 4
	sw t2, 3160(sp)
	lw t0, 3160(sp)
	lw t1, 3156(sp)
	sw t1, 0(t0)
	lw t0, 3144(sp)
	mv a0, t0
	lw t0, 3148(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3164(sp)
	lw t0, 3164(sp)
	addi t2, t0, 4
	sw t2, 3168(sp)
	lw t0, 3168(sp)
	lw t2, 0(t0)
	sw t2, 3172(sp)
	lw t0, 3172(sp)
	mv a0, t0
	call print
	lw t2, -24(s0)
	sw t2, 3176(sp)
	lw t0, 3176(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3180(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3184(sp)
	lw t0, 3184(sp)
	addi t2, t0, 0
	sw t2, 3188(sp)
	addi t4, zero, 1
	lw t0, 3188(sp)
	sw t4, 0(t0)
	la t2, .libro.str.2
	sw t2, 3192(sp)
	lw t0, 3184(sp)
	addi t2, t0, 4
	sw t2, 3196(sp)
	lw t0, 3196(sp)
	lw t1, 3192(sp)
	sw t1, 0(t0)
	lw t0, 3180(sp)
	mv a0, t0
	lw t0, 3184(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3200(sp)
	lw t0, 3200(sp)
	addi t2, t0, 4
	sw t2, 3204(sp)
	lw t0, 3204(sp)
	lw t2, 0(t0)
	sw t2, 3208(sp)
	lw t0, 3208(sp)
	mv a0, t0
	call print
	lw t2, -28(s0)
	sw t2, 3212(sp)
	lw t0, 3212(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3216(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3220(sp)
	lw t0, 3220(sp)
	addi t2, t0, 0
	sw t2, 3224(sp)
	addi t4, zero, 1
	lw t0, 3224(sp)
	sw t4, 0(t0)
	la t2, .libro.str.3
	sw t2, 3228(sp)
	lw t0, 3220(sp)
	addi t2, t0, 4
	sw t2, 3232(sp)
	lw t0, 3232(sp)
	lw t1, 3228(sp)
	sw t1, 0(t0)
	lw t0, 3216(sp)
	mv a0, t0
	lw t0, 3220(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3236(sp)
	lw t0, 3236(sp)
	addi t2, t0, 4
	sw t2, 3240(sp)
	lw t0, 3240(sp)
	lw t2, 0(t0)
	sw t2, 3244(sp)
	lw t0, 3244(sp)
	mv a0, t0
	call print
	lw t2, -32(s0)
	sw t2, 3248(sp)
	lw t0, 3248(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3252(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3256(sp)
	lw t0, 3256(sp)
	addi t2, t0, 0
	sw t2, 3260(sp)
	addi t4, zero, 1
	lw t0, 3260(sp)
	sw t4, 0(t0)
	la t2, .libro.str.4
	sw t2, 3264(sp)
	lw t0, 3256(sp)
	addi t2, t0, 4
	sw t2, 3268(sp)
	lw t0, 3268(sp)
	lw t1, 3264(sp)
	sw t1, 0(t0)
	lw t0, 3252(sp)
	mv a0, t0
	lw t0, 3256(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3272(sp)
	lw t0, 3272(sp)
	addi t2, t0, 4
	sw t2, 3276(sp)
	lw t0, 3276(sp)
	lw t2, 0(t0)
	sw t2, 3280(sp)
	lw t0, 3280(sp)
	mv a0, t0
	call print
	lw t2, -36(s0)
	sw t2, 3284(sp)
	lw t0, 3284(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3288(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3292(sp)
	lw t0, 3292(sp)
	addi t2, t0, 0
	sw t2, 3296(sp)
	addi t4, zero, 1
	lw t0, 3296(sp)
	sw t4, 0(t0)
	la t2, .libro.str.5
	sw t2, 3300(sp)
	lw t0, 3292(sp)
	addi t2, t0, 4
	sw t2, 3304(sp)
	lw t0, 3304(sp)
	lw t1, 3300(sp)
	sw t1, 0(t0)
	lw t0, 3288(sp)
	mv a0, t0
	lw t0, 3292(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3308(sp)
	lw t0, 3308(sp)
	addi t2, t0, 4
	sw t2, 3312(sp)
	lw t0, 3312(sp)
	lw t2, 0(t0)
	sw t2, 3316(sp)
	lw t0, 3316(sp)
	mv a0, t0
	call print
	lw t2, -40(s0)
	sw t2, 3320(sp)
	lw t0, 3320(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3324(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3328(sp)
	lw t0, 3328(sp)
	addi t2, t0, 0
	sw t2, 3332(sp)
	addi t4, zero, 1
	lw t0, 3332(sp)
	sw t4, 0(t0)
	la t2, .libro.str.6
	sw t2, 3336(sp)
	lw t0, 3328(sp)
	addi t2, t0, 4
	sw t2, 3340(sp)
	lw t0, 3340(sp)
	lw t1, 3336(sp)
	sw t1, 0(t0)
	lw t0, 3324(sp)
	mv a0, t0
	lw t0, 3328(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3344(sp)
	lw t0, 3344(sp)
	addi t2, t0, 4
	sw t2, 3348(sp)
	lw t0, 3348(sp)
	lw t2, 0(t0)
	sw t2, 3352(sp)
	lw t0, 3352(sp)
	mv a0, t0
	call print
	lw t2, -44(s0)
	sw t2, 3356(sp)
	lw t0, 3356(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3360(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3364(sp)
	lw t0, 3364(sp)
	addi t2, t0, 0
	sw t2, 3368(sp)
	addi t4, zero, 1
	lw t0, 3368(sp)
	sw t4, 0(t0)
	la t2, .libro.str.7
	sw t2, 3372(sp)
	lw t0, 3364(sp)
	addi t2, t0, 4
	sw t2, 3376(sp)
	lw t0, 3376(sp)
	lw t1, 3372(sp)
	sw t1, 0(t0)
	lw t0, 3360(sp)
	mv a0, t0
	lw t0, 3364(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3380(sp)
	lw t0, 3380(sp)
	addi t2, t0, 4
	sw t2, 3384(sp)
	lw t0, 3384(sp)
	lw t2, 0(t0)
	sw t2, 3388(sp)
	lw t0, 3388(sp)
	mv a0, t0
	call print
	lw t2, -48(s0)
	sw t2, 3392(sp)
	lw t0, 3392(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3396(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3400(sp)
	lw t0, 3400(sp)
	addi t2, t0, 0
	sw t2, 3404(sp)
	addi t4, zero, 1
	lw t0, 3404(sp)
	sw t4, 0(t0)
	la t2, .libro.str.8
	sw t2, 3408(sp)
	lw t0, 3400(sp)
	addi t2, t0, 4
	sw t2, 3412(sp)
	lw t0, 3412(sp)
	lw t1, 3408(sp)
	sw t1, 0(t0)
	lw t0, 3396(sp)
	mv a0, t0
	lw t0, 3400(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3416(sp)
	lw t0, 3416(sp)
	addi t2, t0, 4
	sw t2, 3420(sp)
	lw t0, 3420(sp)
	lw t2, 0(t0)
	sw t2, 3424(sp)
	lw t0, 3424(sp)
	mv a0, t0
	call print
	lw t2, -52(s0)
	sw t2, 3428(sp)
	lw t0, 3428(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3432(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3436(sp)
	lw t0, 3436(sp)
	addi t2, t0, 0
	sw t2, 3440(sp)
	addi t4, zero, 1
	lw t0, 3440(sp)
	sw t4, 0(t0)
	la t2, .libro.str.9
	sw t2, 3444(sp)
	lw t0, 3436(sp)
	addi t2, t0, 4
	sw t2, 3448(sp)
	lw t0, 3448(sp)
	lw t1, 3444(sp)
	sw t1, 0(t0)
	lw t0, 3432(sp)
	mv a0, t0
	lw t0, 3436(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3452(sp)
	lw t0, 3452(sp)
	addi t2, t0, 4
	sw t2, 3456(sp)
	lw t0, 3456(sp)
	lw t2, 0(t0)
	sw t2, 3460(sp)
	lw t0, 3460(sp)
	mv a0, t0
	call print
	lw t2, -56(s0)
	sw t2, 3464(sp)
	lw t0, 3464(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3468(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3472(sp)
	lw t0, 3472(sp)
	addi t2, t0, 0
	sw t2, 3476(sp)
	addi t4, zero, 1
	lw t0, 3476(sp)
	sw t4, 0(t0)
	la t2, .libro.str.10
	sw t2, 3480(sp)
	lw t0, 3472(sp)
	addi t2, t0, 4
	sw t2, 3484(sp)
	lw t0, 3484(sp)
	lw t1, 3480(sp)
	sw t1, 0(t0)
	lw t0, 3468(sp)
	mv a0, t0
	lw t0, 3472(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3488(sp)
	lw t0, 3488(sp)
	addi t2, t0, 4
	sw t2, 3492(sp)
	lw t0, 3492(sp)
	lw t2, 0(t0)
	sw t2, 3496(sp)
	lw t0, 3496(sp)
	mv a0, t0
	call print
	lw t2, -60(s0)
	sw t2, 3500(sp)
	lw t0, 3500(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3504(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3508(sp)
	lw t0, 3508(sp)
	addi t2, t0, 0
	sw t2, 3512(sp)
	addi t4, zero, 1
	lw t0, 3512(sp)
	sw t4, 0(t0)
	la t2, .libro.str.11
	sw t2, 3516(sp)
	lw t0, 3508(sp)
	addi t2, t0, 4
	sw t2, 3520(sp)
	lw t0, 3520(sp)
	lw t1, 3516(sp)
	sw t1, 0(t0)
	lw t0, 3504(sp)
	mv a0, t0
	lw t0, 3508(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3524(sp)
	lw t0, 3524(sp)
	addi t2, t0, 4
	sw t2, 3528(sp)
	lw t0, 3528(sp)
	lw t2, 0(t0)
	sw t2, 3532(sp)
	lw t0, 3532(sp)
	mv a0, t0
	call print
	lw t2, -64(s0)
	sw t2, 3536(sp)
	lw t0, 3536(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3540(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3544(sp)
	lw t0, 3544(sp)
	addi t2, t0, 0
	sw t2, 3548(sp)
	addi t4, zero, 1
	lw t0, 3548(sp)
	sw t4, 0(t0)
	la t2, .libro.str.12
	sw t2, 3552(sp)
	lw t0, 3544(sp)
	addi t2, t0, 4
	sw t2, 3556(sp)
	lw t0, 3556(sp)
	lw t1, 3552(sp)
	sw t1, 0(t0)
	lw t0, 3540(sp)
	mv a0, t0
	lw t0, 3544(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3560(sp)
	lw t0, 3560(sp)
	addi t2, t0, 4
	sw t2, 3564(sp)
	lw t0, 3564(sp)
	lw t2, 0(t0)
	sw t2, 3568(sp)
	lw t0, 3568(sp)
	mv a0, t0
	call print
	lw t2, -68(s0)
	sw t2, 3572(sp)
	lw t0, 3572(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3576(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3580(sp)
	lw t0, 3580(sp)
	addi t2, t0, 0
	sw t2, 3584(sp)
	addi t4, zero, 1
	lw t0, 3584(sp)
	sw t4, 0(t0)
	la t2, .libro.str.13
	sw t2, 3588(sp)
	lw t0, 3580(sp)
	addi t2, t0, 4
	sw t2, 3592(sp)
	lw t0, 3592(sp)
	lw t1, 3588(sp)
	sw t1, 0(t0)
	lw t0, 3576(sp)
	mv a0, t0
	lw t0, 3580(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3596(sp)
	lw t0, 3596(sp)
	addi t2, t0, 4
	sw t2, 3600(sp)
	lw t0, 3600(sp)
	lw t2, 0(t0)
	sw t2, 3604(sp)
	lw t0, 3604(sp)
	mv a0, t0
	call print
	lw t2, -72(s0)
	sw t2, 3608(sp)
	lw t0, 3608(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3612(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3616(sp)
	lw t0, 3616(sp)
	addi t2, t0, 0
	sw t2, 3620(sp)
	addi t4, zero, 1
	lw t0, 3620(sp)
	sw t4, 0(t0)
	la t2, .libro.str.14
	sw t2, 3624(sp)
	lw t0, 3616(sp)
	addi t2, t0, 4
	sw t2, 3628(sp)
	lw t0, 3628(sp)
	lw t1, 3624(sp)
	sw t1, 0(t0)
	lw t0, 3612(sp)
	mv a0, t0
	lw t0, 3616(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3632(sp)
	lw t0, 3632(sp)
	addi t2, t0, 4
	sw t2, 3636(sp)
	lw t0, 3636(sp)
	lw t2, 0(t0)
	sw t2, 3640(sp)
	lw t0, 3640(sp)
	mv a0, t0
	call print
	lw t2, -76(s0)
	sw t2, 3644(sp)
	lw t0, 3644(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3648(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3652(sp)
	lw t0, 3652(sp)
	addi t2, t0, 0
	sw t2, 3656(sp)
	addi t4, zero, 1
	lw t0, 3656(sp)
	sw t4, 0(t0)
	la t2, .libro.str.15
	sw t2, 3660(sp)
	lw t0, 3652(sp)
	addi t2, t0, 4
	sw t2, 3664(sp)
	lw t0, 3664(sp)
	lw t1, 3660(sp)
	sw t1, 0(t0)
	lw t0, 3648(sp)
	mv a0, t0
	lw t0, 3652(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3668(sp)
	lw t0, 3668(sp)
	addi t2, t0, 4
	sw t2, 3672(sp)
	lw t0, 3672(sp)
	lw t2, 0(t0)
	sw t2, 3676(sp)
	lw t0, 3676(sp)
	mv a0, t0
	call print
	lw t2, -80(s0)
	sw t2, 3680(sp)
	lw t0, 3680(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3684(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3688(sp)
	lw t0, 3688(sp)
	addi t2, t0, 0
	sw t2, 3692(sp)
	addi t4, zero, 1
	lw t0, 3692(sp)
	sw t4, 0(t0)
	la t2, .libro.str.16
	sw t2, 3696(sp)
	lw t0, 3688(sp)
	addi t2, t0, 4
	sw t2, 3700(sp)
	lw t0, 3700(sp)
	lw t1, 3696(sp)
	sw t1, 0(t0)
	lw t0, 3684(sp)
	mv a0, t0
	lw t0, 3688(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3704(sp)
	lw t0, 3704(sp)
	addi t2, t0, 4
	sw t2, 3708(sp)
	lw t0, 3708(sp)
	lw t2, 0(t0)
	sw t2, 3712(sp)
	lw t0, 3712(sp)
	mv a0, t0
	call print
	lw t2, -84(s0)
	sw t2, 3716(sp)
	lw t0, 3716(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3720(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3724(sp)
	lw t0, 3724(sp)
	addi t2, t0, 0
	sw t2, 3728(sp)
	addi t4, zero, 1
	lw t0, 3728(sp)
	sw t4, 0(t0)
	la t2, .libro.str.17
	sw t2, 3732(sp)
	lw t0, 3724(sp)
	addi t2, t0, 4
	sw t2, 3736(sp)
	lw t0, 3736(sp)
	lw t1, 3732(sp)
	sw t1, 0(t0)
	lw t0, 3720(sp)
	mv a0, t0
	lw t0, 3724(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3740(sp)
	lw t0, 3740(sp)
	addi t2, t0, 4
	sw t2, 3744(sp)
	lw t0, 3744(sp)
	lw t2, 0(t0)
	sw t2, 3748(sp)
	lw t0, 3748(sp)
	mv a0, t0
	call print
	lw t2, -88(s0)
	sw t2, 3752(sp)
	lw t0, 3752(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3756(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3760(sp)
	lw t0, 3760(sp)
	addi t2, t0, 0
	sw t2, 3764(sp)
	addi t4, zero, 1
	lw t0, 3764(sp)
	sw t4, 0(t0)
	la t2, .libro.str.18
	sw t2, 3768(sp)
	lw t0, 3760(sp)
	addi t2, t0, 4
	sw t2, 3772(sp)
	lw t0, 3772(sp)
	lw t1, 3768(sp)
	sw t1, 0(t0)
	lw t0, 3756(sp)
	mv a0, t0
	lw t0, 3760(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3776(sp)
	lw t0, 3776(sp)
	addi t2, t0, 4
	sw t2, 3780(sp)
	lw t0, 3780(sp)
	lw t2, 0(t0)
	sw t2, 3784(sp)
	lw t0, 3784(sp)
	mv a0, t0
	call print
	lw t2, -92(s0)
	sw t2, 3788(sp)
	lw t0, 3788(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3792(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3796(sp)
	lw t0, 3796(sp)
	addi t2, t0, 0
	sw t2, 3800(sp)
	addi t4, zero, 1
	lw t0, 3800(sp)
	sw t4, 0(t0)
	la t2, .libro.str.19
	sw t2, 3804(sp)
	lw t0, 3796(sp)
	addi t2, t0, 4
	sw t2, 3808(sp)
	lw t0, 3808(sp)
	lw t1, 3804(sp)
	sw t1, 0(t0)
	lw t0, 3792(sp)
	mv a0, t0
	lw t0, 3796(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3812(sp)
	lw t0, 3812(sp)
	addi t2, t0, 4
	sw t2, 3816(sp)
	lw t0, 3816(sp)
	lw t2, 0(t0)
	sw t2, 3820(sp)
	lw t0, 3820(sp)
	mv a0, t0
	call print
	lw t2, -96(s0)
	sw t2, 3824(sp)
	lw t0, 3824(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3828(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3832(sp)
	lw t0, 3832(sp)
	addi t2, t0, 0
	sw t2, 3836(sp)
	addi t4, zero, 1
	lw t0, 3836(sp)
	sw t4, 0(t0)
	la t2, .libro.str.20
	sw t2, 3840(sp)
	lw t0, 3832(sp)
	addi t2, t0, 4
	sw t2, 3844(sp)
	lw t0, 3844(sp)
	lw t1, 3840(sp)
	sw t1, 0(t0)
	lw t0, 3828(sp)
	mv a0, t0
	lw t0, 3832(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3848(sp)
	lw t0, 3848(sp)
	addi t2, t0, 4
	sw t2, 3852(sp)
	lw t0, 3852(sp)
	lw t2, 0(t0)
	sw t2, 3856(sp)
	lw t0, 3856(sp)
	mv a0, t0
	call print
	lw t2, -100(s0)
	sw t2, 3860(sp)
	lw t0, 3860(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3864(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3868(sp)
	lw t0, 3868(sp)
	addi t2, t0, 0
	sw t2, 3872(sp)
	addi t4, zero, 1
	lw t0, 3872(sp)
	sw t4, 0(t0)
	la t2, .libro.str.21
	sw t2, 3876(sp)
	lw t0, 3868(sp)
	addi t2, t0, 4
	sw t2, 3880(sp)
	lw t0, 3880(sp)
	lw t1, 3876(sp)
	sw t1, 0(t0)
	lw t0, 3864(sp)
	mv a0, t0
	lw t0, 3868(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3884(sp)
	lw t0, 3884(sp)
	addi t2, t0, 4
	sw t2, 3888(sp)
	lw t0, 3888(sp)
	lw t2, 0(t0)
	sw t2, 3892(sp)
	lw t0, 3892(sp)
	mv a0, t0
	call print
	lw t2, -104(s0)
	sw t2, 3896(sp)
	lw t0, 3896(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3900(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3904(sp)
	lw t0, 3904(sp)
	addi t2, t0, 0
	sw t2, 3908(sp)
	addi t4, zero, 1
	lw t0, 3908(sp)
	sw t4, 0(t0)
	la t2, .libro.str.22
	sw t2, 3912(sp)
	lw t0, 3904(sp)
	addi t2, t0, 4
	sw t2, 3916(sp)
	lw t0, 3916(sp)
	lw t1, 3912(sp)
	sw t1, 0(t0)
	lw t0, 3900(sp)
	mv a0, t0
	lw t0, 3904(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3920(sp)
	lw t0, 3920(sp)
	addi t2, t0, 4
	sw t2, 3924(sp)
	lw t0, 3924(sp)
	lw t2, 0(t0)
	sw t2, 3928(sp)
	lw t0, 3928(sp)
	mv a0, t0
	call print
	lw t2, -108(s0)
	sw t2, 3932(sp)
	lw t0, 3932(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3936(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3940(sp)
	lw t0, 3940(sp)
	addi t2, t0, 0
	sw t2, 3944(sp)
	addi t4, zero, 1
	lw t0, 3944(sp)
	sw t4, 0(t0)
	la t2, .libro.str.23
	sw t2, 3948(sp)
	lw t0, 3940(sp)
	addi t2, t0, 4
	sw t2, 3952(sp)
	lw t0, 3952(sp)
	lw t1, 3948(sp)
	sw t1, 0(t0)
	lw t0, 3936(sp)
	mv a0, t0
	lw t0, 3940(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3956(sp)
	lw t0, 3956(sp)
	addi t2, t0, 4
	sw t2, 3960(sp)
	lw t0, 3960(sp)
	lw t2, 0(t0)
	sw t2, 3964(sp)
	lw t0, 3964(sp)
	mv a0, t0
	call print
	lw t2, -112(s0)
	sw t2, 3968(sp)
	lw t0, 3968(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 3972(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 3976(sp)
	lw t0, 3976(sp)
	addi t2, t0, 0
	sw t2, 3980(sp)
	addi t4, zero, 1
	lw t0, 3980(sp)
	sw t4, 0(t0)
	la t2, .libro.str.24
	sw t2, 3984(sp)
	lw t0, 3976(sp)
	addi t2, t0, 4
	sw t2, 3988(sp)
	lw t0, 3988(sp)
	lw t1, 3984(sp)
	sw t1, 0(t0)
	lw t0, 3972(sp)
	mv a0, t0
	lw t0, 3976(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 3992(sp)
	lw t0, 3992(sp)
	addi t2, t0, 4
	sw t2, 3996(sp)
	lw t0, 3996(sp)
	lw t2, 0(t0)
	sw t2, 4000(sp)
	lw t0, 4000(sp)
	mv a0, t0
	call print
	lw t2, -116(s0)
	sw t2, 4004(sp)
	lw t0, 4004(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4008(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4012(sp)
	lw t0, 4012(sp)
	addi t2, t0, 0
	sw t2, 4016(sp)
	addi t4, zero, 1
	lw t0, 4016(sp)
	sw t4, 0(t0)
	la t2, .libro.str.25
	sw t2, 4020(sp)
	lw t0, 4012(sp)
	addi t2, t0, 4
	sw t2, 4024(sp)
	lw t0, 4024(sp)
	lw t1, 4020(sp)
	sw t1, 0(t0)
	lw t0, 4008(sp)
	mv a0, t0
	lw t0, 4012(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4028(sp)
	lw t0, 4028(sp)
	addi t2, t0, 4
	sw t2, 4032(sp)
	lw t0, 4032(sp)
	lw t2, 0(t0)
	sw t2, 4036(sp)
	lw t0, 4036(sp)
	mv a0, t0
	call print
	lw t2, -120(s0)
	sw t2, 4040(sp)
	lw t0, 4040(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4044(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4048(sp)
	lw t0, 4048(sp)
	addi t2, t0, 0
	sw t2, 4052(sp)
	addi t4, zero, 1
	lw t0, 4052(sp)
	sw t4, 0(t0)
	la t2, .libro.str.26
	sw t2, 4056(sp)
	lw t0, 4048(sp)
	addi t2, t0, 4
	sw t2, 4060(sp)
	lw t0, 4060(sp)
	lw t1, 4056(sp)
	sw t1, 0(t0)
	lw t0, 4044(sp)
	mv a0, t0
	lw t0, 4048(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4064(sp)
	lw t0, 4064(sp)
	addi t2, t0, 4
	sw t2, 4068(sp)
	lw t0, 4068(sp)
	lw t2, 0(t0)
	sw t2, 4072(sp)
	lw t0, 4072(sp)
	mv a0, t0
	call print
	lw t2, -124(s0)
	sw t2, 4076(sp)
	lw t0, 4076(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4080(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4084(sp)
	lw t0, 4084(sp)
	addi t2, t0, 0
	sw t2, 4088(sp)
	addi t4, zero, 1
	lw t0, 4088(sp)
	sw t4, 0(t0)
	la t2, .libro.str.27
	sw t2, 4092(sp)
	lw t0, 4084(sp)
	addi t2, t0, 4
	sw t2, 4096(sp)
	lw t0, 4096(sp)
	lw t1, 4092(sp)
	sw t1, 0(t0)
	lw t0, 4080(sp)
	mv a0, t0
	lw t0, 4084(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4100(sp)
	lw t0, 4100(sp)
	addi t2, t0, 4
	sw t2, 4104(sp)
	lw t0, 4104(sp)
	lw t2, 0(t0)
	sw t2, 4108(sp)
	lw t0, 4108(sp)
	mv a0, t0
	call print
	lw t2, -128(s0)
	sw t2, 4112(sp)
	lw t0, 4112(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4116(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4120(sp)
	lw t0, 4120(sp)
	addi t2, t0, 0
	sw t2, 4124(sp)
	addi t4, zero, 1
	lw t0, 4124(sp)
	sw t4, 0(t0)
	la t2, .libro.str.28
	sw t2, 4128(sp)
	lw t0, 4120(sp)
	addi t2, t0, 4
	sw t2, 4132(sp)
	lw t0, 4132(sp)
	lw t1, 4128(sp)
	sw t1, 0(t0)
	lw t0, 4116(sp)
	mv a0, t0
	lw t0, 4120(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4136(sp)
	lw t0, 4136(sp)
	addi t2, t0, 4
	sw t2, 4140(sp)
	lw t0, 4140(sp)
	lw t2, 0(t0)
	sw t2, 4144(sp)
	lw t0, 4144(sp)
	mv a0, t0
	call print
	lw t2, -132(s0)
	sw t2, 4148(sp)
	lw t0, 4148(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4152(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4156(sp)
	lw t0, 4156(sp)
	addi t2, t0, 0
	sw t2, 4160(sp)
	addi t4, zero, 1
	lw t0, 4160(sp)
	sw t4, 0(t0)
	la t2, .libro.str.29
	sw t2, 4164(sp)
	lw t0, 4156(sp)
	addi t2, t0, 4
	sw t2, 4168(sp)
	lw t0, 4168(sp)
	lw t1, 4164(sp)
	sw t1, 0(t0)
	lw t0, 4152(sp)
	mv a0, t0
	lw t0, 4156(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4172(sp)
	lw t0, 4172(sp)
	addi t2, t0, 4
	sw t2, 4176(sp)
	lw t0, 4176(sp)
	lw t2, 0(t0)
	sw t2, 4180(sp)
	lw t0, 4180(sp)
	mv a0, t0
	call print
	lw t2, -136(s0)
	sw t2, 4184(sp)
	lw t0, 4184(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4188(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4192(sp)
	lw t0, 4192(sp)
	addi t2, t0, 0
	sw t2, 4196(sp)
	addi t4, zero, 1
	lw t0, 4196(sp)
	sw t4, 0(t0)
	la t2, .libro.str.30
	sw t2, 4200(sp)
	lw t0, 4192(sp)
	addi t2, t0, 4
	sw t2, 4204(sp)
	lw t0, 4204(sp)
	lw t1, 4200(sp)
	sw t1, 0(t0)
	lw t0, 4188(sp)
	mv a0, t0
	lw t0, 4192(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4208(sp)
	lw t0, 4208(sp)
	addi t2, t0, 4
	sw t2, 4212(sp)
	lw t0, 4212(sp)
	lw t2, 0(t0)
	sw t2, 4216(sp)
	lw t0, 4216(sp)
	mv a0, t0
	call print
	lw t2, -140(s0)
	sw t2, 4220(sp)
	lw t0, 4220(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4224(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4228(sp)
	lw t0, 4228(sp)
	addi t2, t0, 0
	sw t2, 4232(sp)
	addi t4, zero, 1
	lw t0, 4232(sp)
	sw t4, 0(t0)
	la t2, .libro.str.31
	sw t2, 4236(sp)
	lw t0, 4228(sp)
	addi t2, t0, 4
	sw t2, 4240(sp)
	lw t0, 4240(sp)
	lw t1, 4236(sp)
	sw t1, 0(t0)
	lw t0, 4224(sp)
	mv a0, t0
	lw t0, 4228(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4244(sp)
	lw t0, 4244(sp)
	addi t2, t0, 4
	sw t2, 4248(sp)
	lw t0, 4248(sp)
	lw t2, 0(t0)
	sw t2, 4252(sp)
	lw t0, 4252(sp)
	mv a0, t0
	call print
	lw t2, -144(s0)
	sw t2, 4256(sp)
	lw t0, 4256(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4260(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4264(sp)
	lw t0, 4264(sp)
	addi t2, t0, 0
	sw t2, 4268(sp)
	addi t4, zero, 1
	lw t0, 4268(sp)
	sw t4, 0(t0)
	la t2, .libro.str.32
	sw t2, 4272(sp)
	lw t0, 4264(sp)
	addi t2, t0, 4
	sw t2, 4276(sp)
	lw t0, 4276(sp)
	lw t1, 4272(sp)
	sw t1, 0(t0)
	lw t0, 4260(sp)
	mv a0, t0
	lw t0, 4264(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4280(sp)
	lw t0, 4280(sp)
	addi t2, t0, 4
	sw t2, 4284(sp)
	lw t0, 4284(sp)
	lw t2, 0(t0)
	sw t2, 4288(sp)
	lw t0, 4288(sp)
	mv a0, t0
	call print
	lw t2, -148(s0)
	sw t2, 4292(sp)
	lw t0, 4292(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4296(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4300(sp)
	lw t0, 4300(sp)
	addi t2, t0, 0
	sw t2, 4304(sp)
	addi t4, zero, 1
	lw t0, 4304(sp)
	sw t4, 0(t0)
	la t2, .libro.str.33
	sw t2, 4308(sp)
	lw t0, 4300(sp)
	addi t2, t0, 4
	sw t2, 4312(sp)
	lw t0, 4312(sp)
	lw t1, 4308(sp)
	sw t1, 0(t0)
	lw t0, 4296(sp)
	mv a0, t0
	lw t0, 4300(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4316(sp)
	lw t0, 4316(sp)
	addi t2, t0, 4
	sw t2, 4320(sp)
	lw t0, 4320(sp)
	lw t2, 0(t0)
	sw t2, 4324(sp)
	lw t0, 4324(sp)
	mv a0, t0
	call print
	lw t2, -152(s0)
	sw t2, 4328(sp)
	lw t0, 4328(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4332(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4336(sp)
	lw t0, 4336(sp)
	addi t2, t0, 0
	sw t2, 4340(sp)
	addi t4, zero, 1
	lw t0, 4340(sp)
	sw t4, 0(t0)
	la t2, .libro.str.34
	sw t2, 4344(sp)
	lw t0, 4336(sp)
	addi t2, t0, 4
	sw t2, 4348(sp)
	lw t0, 4348(sp)
	lw t1, 4344(sp)
	sw t1, 0(t0)
	lw t0, 4332(sp)
	mv a0, t0
	lw t0, 4336(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4352(sp)
	lw t0, 4352(sp)
	addi t2, t0, 4
	sw t2, 4356(sp)
	lw t0, 4356(sp)
	lw t2, 0(t0)
	sw t2, 4360(sp)
	lw t0, 4360(sp)
	mv a0, t0
	call print
	lw t2, -156(s0)
	sw t2, 4364(sp)
	lw t0, 4364(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4368(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4372(sp)
	lw t0, 4372(sp)
	addi t2, t0, 0
	sw t2, 4376(sp)
	addi t4, zero, 1
	lw t0, 4376(sp)
	sw t4, 0(t0)
	la t2, .libro.str.35
	sw t2, 4380(sp)
	lw t0, 4372(sp)
	addi t2, t0, 4
	sw t2, 4384(sp)
	lw t0, 4384(sp)
	lw t1, 4380(sp)
	sw t1, 0(t0)
	lw t0, 4368(sp)
	mv a0, t0
	lw t0, 4372(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4388(sp)
	lw t0, 4388(sp)
	addi t2, t0, 4
	sw t2, 4392(sp)
	lw t0, 4392(sp)
	lw t2, 0(t0)
	sw t2, 4396(sp)
	lw t0, 4396(sp)
	mv a0, t0
	call print
	lw t2, -160(s0)
	sw t2, 4400(sp)
	lw t0, 4400(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4404(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4408(sp)
	lw t0, 4408(sp)
	addi t2, t0, 0
	sw t2, 4412(sp)
	addi t4, zero, 1
	lw t0, 4412(sp)
	sw t4, 0(t0)
	la t2, .libro.str.36
	sw t2, 4416(sp)
	lw t0, 4408(sp)
	addi t2, t0, 4
	sw t2, 4420(sp)
	lw t0, 4420(sp)
	lw t1, 4416(sp)
	sw t1, 0(t0)
	lw t0, 4404(sp)
	mv a0, t0
	lw t0, 4408(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4424(sp)
	lw t0, 4424(sp)
	addi t2, t0, 4
	sw t2, 4428(sp)
	lw t0, 4428(sp)
	lw t2, 0(t0)
	sw t2, 4432(sp)
	lw t0, 4432(sp)
	mv a0, t0
	call print
	lw t2, -164(s0)
	sw t2, 4436(sp)
	lw t0, 4436(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4440(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4444(sp)
	lw t0, 4444(sp)
	addi t2, t0, 0
	sw t2, 4448(sp)
	addi t4, zero, 1
	lw t0, 4448(sp)
	sw t4, 0(t0)
	la t2, .libro.str.37
	sw t2, 4452(sp)
	lw t0, 4444(sp)
	addi t2, t0, 4
	sw t2, 4456(sp)
	lw t0, 4456(sp)
	lw t1, 4452(sp)
	sw t1, 0(t0)
	lw t0, 4440(sp)
	mv a0, t0
	lw t0, 4444(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4460(sp)
	lw t0, 4460(sp)
	addi t2, t0, 4
	sw t2, 4464(sp)
	lw t0, 4464(sp)
	lw t2, 0(t0)
	sw t2, 4468(sp)
	lw t0, 4468(sp)
	mv a0, t0
	call print
	lw t2, -168(s0)
	sw t2, 4472(sp)
	lw t0, 4472(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4476(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4480(sp)
	lw t0, 4480(sp)
	addi t2, t0, 0
	sw t2, 4484(sp)
	addi t4, zero, 1
	lw t0, 4484(sp)
	sw t4, 0(t0)
	la t2, .libro.str.38
	sw t2, 4488(sp)
	lw t0, 4480(sp)
	addi t2, t0, 4
	sw t2, 4492(sp)
	lw t0, 4492(sp)
	lw t1, 4488(sp)
	sw t1, 0(t0)
	lw t0, 4476(sp)
	mv a0, t0
	lw t0, 4480(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4496(sp)
	lw t0, 4496(sp)
	addi t2, t0, 4
	sw t2, 4500(sp)
	lw t0, 4500(sp)
	lw t2, 0(t0)
	sw t2, 4504(sp)
	lw t0, 4504(sp)
	mv a0, t0
	call print
	lw t2, -172(s0)
	sw t2, 4508(sp)
	lw t0, 4508(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4512(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4516(sp)
	lw t0, 4516(sp)
	addi t2, t0, 0
	sw t2, 4520(sp)
	addi t4, zero, 1
	lw t0, 4520(sp)
	sw t4, 0(t0)
	la t2, .libro.str.39
	sw t2, 4524(sp)
	lw t0, 4516(sp)
	addi t2, t0, 4
	sw t2, 4528(sp)
	lw t0, 4528(sp)
	lw t1, 4524(sp)
	sw t1, 0(t0)
	lw t0, 4512(sp)
	mv a0, t0
	lw t0, 4516(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4532(sp)
	lw t0, 4532(sp)
	addi t2, t0, 4
	sw t2, 4536(sp)
	lw t0, 4536(sp)
	lw t2, 0(t0)
	sw t2, 4540(sp)
	lw t0, 4540(sp)
	mv a0, t0
	call print
	lw t2, -176(s0)
	sw t2, 4544(sp)
	lw t0, 4544(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4548(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4552(sp)
	lw t0, 4552(sp)
	addi t2, t0, 0
	sw t2, 4556(sp)
	addi t4, zero, 1
	lw t0, 4556(sp)
	sw t4, 0(t0)
	la t2, .libro.str.40
	sw t2, 4560(sp)
	lw t0, 4552(sp)
	addi t2, t0, 4
	sw t2, 4564(sp)
	lw t0, 4564(sp)
	lw t1, 4560(sp)
	sw t1, 0(t0)
	lw t0, 4548(sp)
	mv a0, t0
	lw t0, 4552(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4568(sp)
	lw t0, 4568(sp)
	addi t2, t0, 4
	sw t2, 4572(sp)
	lw t0, 4572(sp)
	lw t2, 0(t0)
	sw t2, 4576(sp)
	lw t0, 4576(sp)
	mv a0, t0
	call print
	lw t2, -180(s0)
	sw t2, 4580(sp)
	lw t0, 4580(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4584(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4588(sp)
	lw t0, 4588(sp)
	addi t2, t0, 0
	sw t2, 4592(sp)
	addi t4, zero, 1
	lw t0, 4592(sp)
	sw t4, 0(t0)
	la t2, .libro.str.41
	sw t2, 4596(sp)
	lw t0, 4588(sp)
	addi t2, t0, 4
	sw t2, 4600(sp)
	lw t0, 4600(sp)
	lw t1, 4596(sp)
	sw t1, 0(t0)
	lw t0, 4584(sp)
	mv a0, t0
	lw t0, 4588(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4604(sp)
	lw t0, 4604(sp)
	addi t2, t0, 4
	sw t2, 4608(sp)
	lw t0, 4608(sp)
	lw t2, 0(t0)
	sw t2, 4612(sp)
	lw t0, 4612(sp)
	mv a0, t0
	call print
	lw t2, -184(s0)
	sw t2, 4616(sp)
	lw t0, 4616(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4620(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4624(sp)
	lw t0, 4624(sp)
	addi t2, t0, 0
	sw t2, 4628(sp)
	addi t4, zero, 1
	lw t0, 4628(sp)
	sw t4, 0(t0)
	la t2, .libro.str.42
	sw t2, 4632(sp)
	lw t0, 4624(sp)
	addi t2, t0, 4
	sw t2, 4636(sp)
	lw t0, 4636(sp)
	lw t1, 4632(sp)
	sw t1, 0(t0)
	lw t0, 4620(sp)
	mv a0, t0
	lw t0, 4624(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4640(sp)
	lw t0, 4640(sp)
	addi t2, t0, 4
	sw t2, 4644(sp)
	lw t0, 4644(sp)
	lw t2, 0(t0)
	sw t2, 4648(sp)
	lw t0, 4648(sp)
	mv a0, t0
	call print
	lw t2, -188(s0)
	sw t2, 4652(sp)
	lw t0, 4652(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4656(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4660(sp)
	lw t0, 4660(sp)
	addi t2, t0, 0
	sw t2, 4664(sp)
	addi t4, zero, 1
	lw t0, 4664(sp)
	sw t4, 0(t0)
	la t2, .libro.str.43
	sw t2, 4668(sp)
	lw t0, 4660(sp)
	addi t2, t0, 4
	sw t2, 4672(sp)
	lw t0, 4672(sp)
	lw t1, 4668(sp)
	sw t1, 0(t0)
	lw t0, 4656(sp)
	mv a0, t0
	lw t0, 4660(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4676(sp)
	lw t0, 4676(sp)
	addi t2, t0, 4
	sw t2, 4680(sp)
	lw t0, 4680(sp)
	lw t2, 0(t0)
	sw t2, 4684(sp)
	lw t0, 4684(sp)
	mv a0, t0
	call print
	lw t2, -192(s0)
	sw t2, 4688(sp)
	lw t0, 4688(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4692(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4696(sp)
	lw t0, 4696(sp)
	addi t2, t0, 0
	sw t2, 4700(sp)
	addi t4, zero, 1
	lw t0, 4700(sp)
	sw t4, 0(t0)
	la t2, .libro.str.44
	sw t2, 4704(sp)
	lw t0, 4696(sp)
	addi t2, t0, 4
	sw t2, 4708(sp)
	lw t0, 4708(sp)
	lw t1, 4704(sp)
	sw t1, 0(t0)
	lw t0, 4692(sp)
	mv a0, t0
	lw t0, 4696(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4712(sp)
	lw t0, 4712(sp)
	addi t2, t0, 4
	sw t2, 4716(sp)
	lw t0, 4716(sp)
	lw t2, 0(t0)
	sw t2, 4720(sp)
	lw t0, 4720(sp)
	mv a0, t0
	call print
	lw t2, -196(s0)
	sw t2, 4724(sp)
	lw t0, 4724(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4728(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4732(sp)
	lw t0, 4732(sp)
	addi t2, t0, 0
	sw t2, 4736(sp)
	addi t4, zero, 1
	lw t0, 4736(sp)
	sw t4, 0(t0)
	la t2, .libro.str.45
	sw t2, 4740(sp)
	lw t0, 4732(sp)
	addi t2, t0, 4
	sw t2, 4744(sp)
	lw t0, 4744(sp)
	lw t1, 4740(sp)
	sw t1, 0(t0)
	lw t0, 4728(sp)
	mv a0, t0
	lw t0, 4732(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4748(sp)
	lw t0, 4748(sp)
	addi t2, t0, 4
	sw t2, 4752(sp)
	lw t0, 4752(sp)
	lw t2, 0(t0)
	sw t2, 4756(sp)
	lw t0, 4756(sp)
	mv a0, t0
	call print
	lw t2, -200(s0)
	sw t2, 4760(sp)
	lw t0, 4760(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4764(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4768(sp)
	lw t0, 4768(sp)
	addi t2, t0, 0
	sw t2, 4772(sp)
	addi t4, zero, 1
	lw t0, 4772(sp)
	sw t4, 0(t0)
	la t2, .libro.str.46
	sw t2, 4776(sp)
	lw t0, 4768(sp)
	addi t2, t0, 4
	sw t2, 4780(sp)
	lw t0, 4780(sp)
	lw t1, 4776(sp)
	sw t1, 0(t0)
	lw t0, 4764(sp)
	mv a0, t0
	lw t0, 4768(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4784(sp)
	lw t0, 4784(sp)
	addi t2, t0, 4
	sw t2, 4788(sp)
	lw t0, 4788(sp)
	lw t2, 0(t0)
	sw t2, 4792(sp)
	lw t0, 4792(sp)
	mv a0, t0
	call print
	lw t2, -204(s0)
	sw t2, 4796(sp)
	lw t0, 4796(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4800(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4804(sp)
	lw t0, 4804(sp)
	addi t2, t0, 0
	sw t2, 4808(sp)
	addi t4, zero, 1
	lw t0, 4808(sp)
	sw t4, 0(t0)
	la t2, .libro.str.47
	sw t2, 4812(sp)
	lw t0, 4804(sp)
	addi t2, t0, 4
	sw t2, 4816(sp)
	lw t0, 4816(sp)
	lw t1, 4812(sp)
	sw t1, 0(t0)
	lw t0, 4800(sp)
	mv a0, t0
	lw t0, 4804(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4820(sp)
	lw t0, 4820(sp)
	addi t2, t0, 4
	sw t2, 4824(sp)
	lw t0, 4824(sp)
	lw t2, 0(t0)
	sw t2, 4828(sp)
	lw t0, 4828(sp)
	mv a0, t0
	call print
	lw t2, -208(s0)
	sw t2, 4832(sp)
	lw t0, 4832(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4836(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4840(sp)
	lw t0, 4840(sp)
	addi t2, t0, 0
	sw t2, 4844(sp)
	addi t4, zero, 1
	lw t0, 4844(sp)
	sw t4, 0(t0)
	la t2, .libro.str.48
	sw t2, 4848(sp)
	lw t0, 4840(sp)
	addi t2, t0, 4
	sw t2, 4852(sp)
	lw t0, 4852(sp)
	lw t1, 4848(sp)
	sw t1, 0(t0)
	lw t0, 4836(sp)
	mv a0, t0
	lw t0, 4840(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4856(sp)
	lw t0, 4856(sp)
	addi t2, t0, 4
	sw t2, 4860(sp)
	lw t0, 4860(sp)
	lw t2, 0(t0)
	sw t2, 4864(sp)
	lw t0, 4864(sp)
	mv a0, t0
	call print
	lw t2, -212(s0)
	sw t2, 4868(sp)
	lw t0, 4868(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4872(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4876(sp)
	lw t0, 4876(sp)
	addi t2, t0, 0
	sw t2, 4880(sp)
	addi t4, zero, 1
	lw t0, 4880(sp)
	sw t4, 0(t0)
	la t2, .libro.str.49
	sw t2, 4884(sp)
	lw t0, 4876(sp)
	addi t2, t0, 4
	sw t2, 4888(sp)
	lw t0, 4888(sp)
	lw t1, 4884(sp)
	sw t1, 0(t0)
	lw t0, 4872(sp)
	mv a0, t0
	lw t0, 4876(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4892(sp)
	lw t0, 4892(sp)
	addi t2, t0, 4
	sw t2, 4896(sp)
	lw t0, 4896(sp)
	lw t2, 0(t0)
	sw t2, 4900(sp)
	lw t0, 4900(sp)
	mv a0, t0
	call print
	lw t2, -216(s0)
	sw t2, 4904(sp)
	lw t0, 4904(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4908(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4912(sp)
	lw t0, 4912(sp)
	addi t2, t0, 0
	sw t2, 4916(sp)
	addi t4, zero, 1
	lw t0, 4916(sp)
	sw t4, 0(t0)
	la t2, .libro.str.50
	sw t2, 4920(sp)
	lw t0, 4912(sp)
	addi t2, t0, 4
	sw t2, 4924(sp)
	lw t0, 4924(sp)
	lw t1, 4920(sp)
	sw t1, 0(t0)
	lw t0, 4908(sp)
	mv a0, t0
	lw t0, 4912(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4928(sp)
	lw t0, 4928(sp)
	addi t2, t0, 4
	sw t2, 4932(sp)
	lw t0, 4932(sp)
	lw t2, 0(t0)
	sw t2, 4936(sp)
	lw t0, 4936(sp)
	mv a0, t0
	call print
	lw t2, -220(s0)
	sw t2, 4940(sp)
	lw t0, 4940(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4944(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4948(sp)
	lw t0, 4948(sp)
	addi t2, t0, 0
	sw t2, 4952(sp)
	addi t4, zero, 1
	lw t0, 4952(sp)
	sw t4, 0(t0)
	la t2, .libro.str.51
	sw t2, 4956(sp)
	lw t0, 4948(sp)
	addi t2, t0, 4
	sw t2, 4960(sp)
	lw t0, 4960(sp)
	lw t1, 4956(sp)
	sw t1, 0(t0)
	lw t0, 4944(sp)
	mv a0, t0
	lw t0, 4948(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 4964(sp)
	lw t0, 4964(sp)
	addi t2, t0, 4
	sw t2, 4968(sp)
	lw t0, 4968(sp)
	lw t2, 0(t0)
	sw t2, 4972(sp)
	lw t0, 4972(sp)
	mv a0, t0
	call print
	lw t2, -224(s0)
	sw t2, 4976(sp)
	lw t0, 4976(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 4980(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 4984(sp)
	lw t0, 4984(sp)
	addi t2, t0, 0
	sw t2, 4988(sp)
	addi t4, zero, 1
	lw t0, 4988(sp)
	sw t4, 0(t0)
	la t2, .libro.str.52
	sw t2, 4992(sp)
	lw t0, 4984(sp)
	addi t2, t0, 4
	sw t2, 4996(sp)
	lw t0, 4996(sp)
	lw t1, 4992(sp)
	sw t1, 0(t0)
	lw t0, 4980(sp)
	mv a0, t0
	lw t0, 4984(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5000(sp)
	lw t0, 5000(sp)
	addi t2, t0, 4
	sw t2, 5004(sp)
	lw t0, 5004(sp)
	lw t2, 0(t0)
	sw t2, 5008(sp)
	lw t0, 5008(sp)
	mv a0, t0
	call print
	lw t2, -228(s0)
	sw t2, 5012(sp)
	lw t0, 5012(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5016(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5020(sp)
	lw t0, 5020(sp)
	addi t2, t0, 0
	sw t2, 5024(sp)
	addi t4, zero, 1
	lw t0, 5024(sp)
	sw t4, 0(t0)
	la t2, .libro.str.53
	sw t2, 5028(sp)
	lw t0, 5020(sp)
	addi t2, t0, 4
	sw t2, 5032(sp)
	lw t0, 5032(sp)
	lw t1, 5028(sp)
	sw t1, 0(t0)
	lw t0, 5016(sp)
	mv a0, t0
	lw t0, 5020(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5036(sp)
	lw t0, 5036(sp)
	addi t2, t0, 4
	sw t2, 5040(sp)
	lw t0, 5040(sp)
	lw t2, 0(t0)
	sw t2, 5044(sp)
	lw t0, 5044(sp)
	mv a0, t0
	call print
	lw t2, -232(s0)
	sw t2, 5048(sp)
	lw t0, 5048(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5052(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5056(sp)
	lw t0, 5056(sp)
	addi t2, t0, 0
	sw t2, 5060(sp)
	addi t4, zero, 1
	lw t0, 5060(sp)
	sw t4, 0(t0)
	la t2, .libro.str.54
	sw t2, 5064(sp)
	lw t0, 5056(sp)
	addi t2, t0, 4
	sw t2, 5068(sp)
	lw t0, 5068(sp)
	lw t1, 5064(sp)
	sw t1, 0(t0)
	lw t0, 5052(sp)
	mv a0, t0
	lw t0, 5056(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5072(sp)
	lw t0, 5072(sp)
	addi t2, t0, 4
	sw t2, 5076(sp)
	lw t0, 5076(sp)
	lw t2, 0(t0)
	sw t2, 5080(sp)
	lw t0, 5080(sp)
	mv a0, t0
	call print
	lw t2, -236(s0)
	sw t2, 5084(sp)
	lw t0, 5084(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5088(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5092(sp)
	lw t0, 5092(sp)
	addi t2, t0, 0
	sw t2, 5096(sp)
	addi t4, zero, 1
	lw t0, 5096(sp)
	sw t4, 0(t0)
	la t2, .libro.str.55
	sw t2, 5100(sp)
	lw t0, 5092(sp)
	addi t2, t0, 4
	sw t2, 5104(sp)
	lw t0, 5104(sp)
	lw t1, 5100(sp)
	sw t1, 0(t0)
	lw t0, 5088(sp)
	mv a0, t0
	lw t0, 5092(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5108(sp)
	lw t0, 5108(sp)
	addi t2, t0, 4
	sw t2, 5112(sp)
	lw t0, 5112(sp)
	lw t2, 0(t0)
	sw t2, 5116(sp)
	lw t0, 5116(sp)
	mv a0, t0
	call print
	lw t2, -240(s0)
	sw t2, 5120(sp)
	lw t0, 5120(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5124(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5128(sp)
	lw t0, 5128(sp)
	addi t2, t0, 0
	sw t2, 5132(sp)
	addi t4, zero, 1
	lw t0, 5132(sp)
	sw t4, 0(t0)
	la t2, .libro.str.56
	sw t2, 5136(sp)
	lw t0, 5128(sp)
	addi t2, t0, 4
	sw t2, 5140(sp)
	lw t0, 5140(sp)
	lw t1, 5136(sp)
	sw t1, 0(t0)
	lw t0, 5124(sp)
	mv a0, t0
	lw t0, 5128(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5144(sp)
	lw t0, 5144(sp)
	addi t2, t0, 4
	sw t2, 5148(sp)
	lw t0, 5148(sp)
	lw t2, 0(t0)
	sw t2, 5152(sp)
	lw t0, 5152(sp)
	mv a0, t0
	call print
	lw t2, -244(s0)
	sw t2, 5156(sp)
	lw t0, 5156(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5160(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5164(sp)
	lw t0, 5164(sp)
	addi t2, t0, 0
	sw t2, 5168(sp)
	addi t4, zero, 1
	lw t0, 5168(sp)
	sw t4, 0(t0)
	la t2, .libro.str.57
	sw t2, 5172(sp)
	lw t0, 5164(sp)
	addi t2, t0, 4
	sw t2, 5176(sp)
	lw t0, 5176(sp)
	lw t1, 5172(sp)
	sw t1, 0(t0)
	lw t0, 5160(sp)
	mv a0, t0
	lw t0, 5164(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5180(sp)
	lw t0, 5180(sp)
	addi t2, t0, 4
	sw t2, 5184(sp)
	lw t0, 5184(sp)
	lw t2, 0(t0)
	sw t2, 5188(sp)
	lw t0, 5188(sp)
	mv a0, t0
	call print
	lw t2, -248(s0)
	sw t2, 5192(sp)
	lw t0, 5192(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5196(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5200(sp)
	lw t0, 5200(sp)
	addi t2, t0, 0
	sw t2, 5204(sp)
	addi t4, zero, 1
	lw t0, 5204(sp)
	sw t4, 0(t0)
	la t2, .libro.str.58
	sw t2, 5208(sp)
	lw t0, 5200(sp)
	addi t2, t0, 4
	sw t2, 5212(sp)
	lw t0, 5212(sp)
	lw t1, 5208(sp)
	sw t1, 0(t0)
	lw t0, 5196(sp)
	mv a0, t0
	lw t0, 5200(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5216(sp)
	lw t0, 5216(sp)
	addi t2, t0, 4
	sw t2, 5220(sp)
	lw t0, 5220(sp)
	lw t2, 0(t0)
	sw t2, 5224(sp)
	lw t0, 5224(sp)
	mv a0, t0
	call print
	lw t2, -252(s0)
	sw t2, 5228(sp)
	lw t0, 5228(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5232(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5236(sp)
	lw t0, 5236(sp)
	addi t2, t0, 0
	sw t2, 5240(sp)
	addi t4, zero, 1
	lw t0, 5240(sp)
	sw t4, 0(t0)
	la t2, .libro.str.59
	sw t2, 5244(sp)
	lw t0, 5236(sp)
	addi t2, t0, 4
	sw t2, 5248(sp)
	lw t0, 5248(sp)
	lw t1, 5244(sp)
	sw t1, 0(t0)
	lw t0, 5232(sp)
	mv a0, t0
	lw t0, 5236(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5252(sp)
	lw t0, 5252(sp)
	addi t2, t0, 4
	sw t2, 5256(sp)
	lw t0, 5256(sp)
	lw t2, 0(t0)
	sw t2, 5260(sp)
	lw t0, 5260(sp)
	mv a0, t0
	call print
	lw t2, -256(s0)
	sw t2, 5264(sp)
	lw t0, 5264(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5268(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5272(sp)
	lw t0, 5272(sp)
	addi t2, t0, 0
	sw t2, 5276(sp)
	addi t4, zero, 1
	lw t0, 5276(sp)
	sw t4, 0(t0)
	la t2, .libro.str.60
	sw t2, 5280(sp)
	lw t0, 5272(sp)
	addi t2, t0, 4
	sw t2, 5284(sp)
	lw t0, 5284(sp)
	lw t1, 5280(sp)
	sw t1, 0(t0)
	lw t0, 5268(sp)
	mv a0, t0
	lw t0, 5272(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5288(sp)
	lw t0, 5288(sp)
	addi t2, t0, 4
	sw t2, 5292(sp)
	lw t0, 5292(sp)
	lw t2, 0(t0)
	sw t2, 5296(sp)
	lw t0, 5296(sp)
	mv a0, t0
	call print
	lw t2, -260(s0)
	sw t2, 5300(sp)
	lw t0, 5300(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5304(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5308(sp)
	lw t0, 5308(sp)
	addi t2, t0, 0
	sw t2, 5312(sp)
	addi t4, zero, 1
	lw t0, 5312(sp)
	sw t4, 0(t0)
	la t2, .libro.str.61
	sw t2, 5316(sp)
	lw t0, 5308(sp)
	addi t2, t0, 4
	sw t2, 5320(sp)
	lw t0, 5320(sp)
	lw t1, 5316(sp)
	sw t1, 0(t0)
	lw t0, 5304(sp)
	mv a0, t0
	lw t0, 5308(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5324(sp)
	lw t0, 5324(sp)
	addi t2, t0, 4
	sw t2, 5328(sp)
	lw t0, 5328(sp)
	lw t2, 0(t0)
	sw t2, 5332(sp)
	lw t0, 5332(sp)
	mv a0, t0
	call print
	lw t2, -264(s0)
	sw t2, 5336(sp)
	lw t0, 5336(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5340(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5344(sp)
	lw t0, 5344(sp)
	addi t2, t0, 0
	sw t2, 5348(sp)
	addi t4, zero, 1
	lw t0, 5348(sp)
	sw t4, 0(t0)
	la t2, .libro.str.62
	sw t2, 5352(sp)
	lw t0, 5344(sp)
	addi t2, t0, 4
	sw t2, 5356(sp)
	lw t0, 5356(sp)
	lw t1, 5352(sp)
	sw t1, 0(t0)
	lw t0, 5340(sp)
	mv a0, t0
	lw t0, 5344(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5360(sp)
	lw t0, 5360(sp)
	addi t2, t0, 4
	sw t2, 5364(sp)
	lw t0, 5364(sp)
	lw t2, 0(t0)
	sw t2, 5368(sp)
	lw t0, 5368(sp)
	mv a0, t0
	call print
	lw t2, -268(s0)
	sw t2, 5372(sp)
	lw t0, 5372(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5376(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5380(sp)
	lw t0, 5380(sp)
	addi t2, t0, 0
	sw t2, 5384(sp)
	addi t4, zero, 1
	lw t0, 5384(sp)
	sw t4, 0(t0)
	la t2, .libro.str.63
	sw t2, 5388(sp)
	lw t0, 5380(sp)
	addi t2, t0, 4
	sw t2, 5392(sp)
	lw t0, 5392(sp)
	lw t1, 5388(sp)
	sw t1, 0(t0)
	lw t0, 5376(sp)
	mv a0, t0
	lw t0, 5380(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5396(sp)
	lw t0, 5396(sp)
	addi t2, t0, 4
	sw t2, 5400(sp)
	lw t0, 5400(sp)
	lw t2, 0(t0)
	sw t2, 5404(sp)
	lw t0, 5404(sp)
	mv a0, t0
	call print
	lw t2, -272(s0)
	sw t2, 5408(sp)
	lw t0, 5408(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5412(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5416(sp)
	lw t0, 5416(sp)
	addi t2, t0, 0
	sw t2, 5420(sp)
	addi t4, zero, 1
	lw t0, 5420(sp)
	sw t4, 0(t0)
	la t2, .libro.str.64
	sw t2, 5424(sp)
	lw t0, 5416(sp)
	addi t2, t0, 4
	sw t2, 5428(sp)
	lw t0, 5428(sp)
	lw t1, 5424(sp)
	sw t1, 0(t0)
	lw t0, 5412(sp)
	mv a0, t0
	lw t0, 5416(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5432(sp)
	lw t0, 5432(sp)
	addi t2, t0, 4
	sw t2, 5436(sp)
	lw t0, 5436(sp)
	lw t2, 0(t0)
	sw t2, 5440(sp)
	lw t0, 5440(sp)
	mv a0, t0
	call print
	lw t2, -276(s0)
	sw t2, 5444(sp)
	lw t0, 5444(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5448(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5452(sp)
	lw t0, 5452(sp)
	addi t2, t0, 0
	sw t2, 5456(sp)
	addi t4, zero, 1
	lw t0, 5456(sp)
	sw t4, 0(t0)
	la t2, .libro.str.65
	sw t2, 5460(sp)
	lw t0, 5452(sp)
	addi t2, t0, 4
	sw t2, 5464(sp)
	lw t0, 5464(sp)
	lw t1, 5460(sp)
	sw t1, 0(t0)
	lw t0, 5448(sp)
	mv a0, t0
	lw t0, 5452(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5468(sp)
	lw t0, 5468(sp)
	addi t2, t0, 4
	sw t2, 5472(sp)
	lw t0, 5472(sp)
	lw t2, 0(t0)
	sw t2, 5476(sp)
	lw t0, 5476(sp)
	mv a0, t0
	call print
	lw t2, -280(s0)
	sw t2, 5480(sp)
	lw t0, 5480(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5484(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5488(sp)
	lw t0, 5488(sp)
	addi t2, t0, 0
	sw t2, 5492(sp)
	addi t4, zero, 1
	lw t0, 5492(sp)
	sw t4, 0(t0)
	la t2, .libro.str.66
	sw t2, 5496(sp)
	lw t0, 5488(sp)
	addi t2, t0, 4
	sw t2, 5500(sp)
	lw t0, 5500(sp)
	lw t1, 5496(sp)
	sw t1, 0(t0)
	lw t0, 5484(sp)
	mv a0, t0
	lw t0, 5488(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5504(sp)
	lw t0, 5504(sp)
	addi t2, t0, 4
	sw t2, 5508(sp)
	lw t0, 5508(sp)
	lw t2, 0(t0)
	sw t2, 5512(sp)
	lw t0, 5512(sp)
	mv a0, t0
	call print
	lw t2, -284(s0)
	sw t2, 5516(sp)
	lw t0, 5516(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5520(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5524(sp)
	lw t0, 5524(sp)
	addi t2, t0, 0
	sw t2, 5528(sp)
	addi t4, zero, 1
	lw t0, 5528(sp)
	sw t4, 0(t0)
	la t2, .libro.str.67
	sw t2, 5532(sp)
	lw t0, 5524(sp)
	addi t2, t0, 4
	sw t2, 5536(sp)
	lw t0, 5536(sp)
	lw t1, 5532(sp)
	sw t1, 0(t0)
	lw t0, 5520(sp)
	mv a0, t0
	lw t0, 5524(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5540(sp)
	lw t0, 5540(sp)
	addi t2, t0, 4
	sw t2, 5544(sp)
	lw t0, 5544(sp)
	lw t2, 0(t0)
	sw t2, 5548(sp)
	lw t0, 5548(sp)
	mv a0, t0
	call print
	lw t2, -288(s0)
	sw t2, 5552(sp)
	lw t0, 5552(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5556(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5560(sp)
	lw t0, 5560(sp)
	addi t2, t0, 0
	sw t2, 5564(sp)
	addi t4, zero, 1
	lw t0, 5564(sp)
	sw t4, 0(t0)
	la t2, .libro.str.68
	sw t2, 5568(sp)
	lw t0, 5560(sp)
	addi t2, t0, 4
	sw t2, 5572(sp)
	lw t0, 5572(sp)
	lw t1, 5568(sp)
	sw t1, 0(t0)
	lw t0, 5556(sp)
	mv a0, t0
	lw t0, 5560(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5576(sp)
	lw t0, 5576(sp)
	addi t2, t0, 4
	sw t2, 5580(sp)
	lw t0, 5580(sp)
	lw t2, 0(t0)
	sw t2, 5584(sp)
	lw t0, 5584(sp)
	mv a0, t0
	call print
	lw t2, -292(s0)
	sw t2, 5588(sp)
	lw t0, 5588(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5592(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5596(sp)
	lw t0, 5596(sp)
	addi t2, t0, 0
	sw t2, 5600(sp)
	addi t4, zero, 1
	lw t0, 5600(sp)
	sw t4, 0(t0)
	la t2, .libro.str.69
	sw t2, 5604(sp)
	lw t0, 5596(sp)
	addi t2, t0, 4
	sw t2, 5608(sp)
	lw t0, 5608(sp)
	lw t1, 5604(sp)
	sw t1, 0(t0)
	lw t0, 5592(sp)
	mv a0, t0
	lw t0, 5596(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5612(sp)
	lw t0, 5612(sp)
	addi t2, t0, 4
	sw t2, 5616(sp)
	lw t0, 5616(sp)
	lw t2, 0(t0)
	sw t2, 5620(sp)
	lw t0, 5620(sp)
	mv a0, t0
	call print
	lw t2, -296(s0)
	sw t2, 5624(sp)
	lw t0, 5624(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5628(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5632(sp)
	lw t0, 5632(sp)
	addi t2, t0, 0
	sw t2, 5636(sp)
	addi t4, zero, 1
	lw t0, 5636(sp)
	sw t4, 0(t0)
	la t2, .libro.str.70
	sw t2, 5640(sp)
	lw t0, 5632(sp)
	addi t2, t0, 4
	sw t2, 5644(sp)
	lw t0, 5644(sp)
	lw t1, 5640(sp)
	sw t1, 0(t0)
	lw t0, 5628(sp)
	mv a0, t0
	lw t0, 5632(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5648(sp)
	lw t0, 5648(sp)
	addi t2, t0, 4
	sw t2, 5652(sp)
	lw t0, 5652(sp)
	lw t2, 0(t0)
	sw t2, 5656(sp)
	lw t0, 5656(sp)
	mv a0, t0
	call print
	lw t2, -300(s0)
	sw t2, 5660(sp)
	lw t0, 5660(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5664(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5668(sp)
	lw t0, 5668(sp)
	addi t2, t0, 0
	sw t2, 5672(sp)
	addi t4, zero, 1
	lw t0, 5672(sp)
	sw t4, 0(t0)
	la t2, .libro.str.71
	sw t2, 5676(sp)
	lw t0, 5668(sp)
	addi t2, t0, 4
	sw t2, 5680(sp)
	lw t0, 5680(sp)
	lw t1, 5676(sp)
	sw t1, 0(t0)
	lw t0, 5664(sp)
	mv a0, t0
	lw t0, 5668(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5684(sp)
	lw t0, 5684(sp)
	addi t2, t0, 4
	sw t2, 5688(sp)
	lw t0, 5688(sp)
	lw t2, 0(t0)
	sw t2, 5692(sp)
	lw t0, 5692(sp)
	mv a0, t0
	call print
	lw t2, -304(s0)
	sw t2, 5696(sp)
	lw t0, 5696(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5700(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5704(sp)
	lw t0, 5704(sp)
	addi t2, t0, 0
	sw t2, 5708(sp)
	addi t4, zero, 1
	lw t0, 5708(sp)
	sw t4, 0(t0)
	la t2, .libro.str.72
	sw t2, 5712(sp)
	lw t0, 5704(sp)
	addi t2, t0, 4
	sw t2, 5716(sp)
	lw t0, 5716(sp)
	lw t1, 5712(sp)
	sw t1, 0(t0)
	lw t0, 5700(sp)
	mv a0, t0
	lw t0, 5704(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5720(sp)
	lw t0, 5720(sp)
	addi t2, t0, 4
	sw t2, 5724(sp)
	lw t0, 5724(sp)
	lw t2, 0(t0)
	sw t2, 5728(sp)
	lw t0, 5728(sp)
	mv a0, t0
	call print
	lw t2, -308(s0)
	sw t2, 5732(sp)
	lw t0, 5732(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5736(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5740(sp)
	lw t0, 5740(sp)
	addi t2, t0, 0
	sw t2, 5744(sp)
	addi t4, zero, 1
	lw t0, 5744(sp)
	sw t4, 0(t0)
	la t2, .libro.str.73
	sw t2, 5748(sp)
	lw t0, 5740(sp)
	addi t2, t0, 4
	sw t2, 5752(sp)
	lw t0, 5752(sp)
	lw t1, 5748(sp)
	sw t1, 0(t0)
	lw t0, 5736(sp)
	mv a0, t0
	lw t0, 5740(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5756(sp)
	lw t0, 5756(sp)
	addi t2, t0, 4
	sw t2, 5760(sp)
	lw t0, 5760(sp)
	lw t2, 0(t0)
	sw t2, 5764(sp)
	lw t0, 5764(sp)
	mv a0, t0
	call print
	lw t2, -312(s0)
	sw t2, 5768(sp)
	lw t0, 5768(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5772(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5776(sp)
	lw t0, 5776(sp)
	addi t2, t0, 0
	sw t2, 5780(sp)
	addi t4, zero, 1
	lw t0, 5780(sp)
	sw t4, 0(t0)
	la t2, .libro.str.74
	sw t2, 5784(sp)
	lw t0, 5776(sp)
	addi t2, t0, 4
	sw t2, 5788(sp)
	lw t0, 5788(sp)
	lw t1, 5784(sp)
	sw t1, 0(t0)
	lw t0, 5772(sp)
	mv a0, t0
	lw t0, 5776(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5792(sp)
	lw t0, 5792(sp)
	addi t2, t0, 4
	sw t2, 5796(sp)
	lw t0, 5796(sp)
	lw t2, 0(t0)
	sw t2, 5800(sp)
	lw t0, 5800(sp)
	mv a0, t0
	call print
	lw t2, -316(s0)
	sw t2, 5804(sp)
	lw t0, 5804(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5808(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5812(sp)
	lw t0, 5812(sp)
	addi t2, t0, 0
	sw t2, 5816(sp)
	addi t4, zero, 1
	lw t0, 5816(sp)
	sw t4, 0(t0)
	la t2, .libro.str.75
	sw t2, 5820(sp)
	lw t0, 5812(sp)
	addi t2, t0, 4
	sw t2, 5824(sp)
	lw t0, 5824(sp)
	lw t1, 5820(sp)
	sw t1, 0(t0)
	lw t0, 5808(sp)
	mv a0, t0
	lw t0, 5812(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5828(sp)
	lw t0, 5828(sp)
	addi t2, t0, 4
	sw t2, 5832(sp)
	lw t0, 5832(sp)
	lw t2, 0(t0)
	sw t2, 5836(sp)
	lw t0, 5836(sp)
	mv a0, t0
	call print
	lw t2, -320(s0)
	sw t2, 5840(sp)
	lw t0, 5840(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5844(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5848(sp)
	lw t0, 5848(sp)
	addi t2, t0, 0
	sw t2, 5852(sp)
	addi t4, zero, 1
	lw t0, 5852(sp)
	sw t4, 0(t0)
	la t2, .libro.str.76
	sw t2, 5856(sp)
	lw t0, 5848(sp)
	addi t2, t0, 4
	sw t2, 5860(sp)
	lw t0, 5860(sp)
	lw t1, 5856(sp)
	sw t1, 0(t0)
	lw t0, 5844(sp)
	mv a0, t0
	lw t0, 5848(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5864(sp)
	lw t0, 5864(sp)
	addi t2, t0, 4
	sw t2, 5868(sp)
	lw t0, 5868(sp)
	lw t2, 0(t0)
	sw t2, 5872(sp)
	lw t0, 5872(sp)
	mv a0, t0
	call print
	lw t2, -324(s0)
	sw t2, 5876(sp)
	lw t0, 5876(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5880(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5884(sp)
	lw t0, 5884(sp)
	addi t2, t0, 0
	sw t2, 5888(sp)
	addi t4, zero, 1
	lw t0, 5888(sp)
	sw t4, 0(t0)
	la t2, .libro.str.77
	sw t2, 5892(sp)
	lw t0, 5884(sp)
	addi t2, t0, 4
	sw t2, 5896(sp)
	lw t0, 5896(sp)
	lw t1, 5892(sp)
	sw t1, 0(t0)
	lw t0, 5880(sp)
	mv a0, t0
	lw t0, 5884(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5900(sp)
	lw t0, 5900(sp)
	addi t2, t0, 4
	sw t2, 5904(sp)
	lw t0, 5904(sp)
	lw t2, 0(t0)
	sw t2, 5908(sp)
	lw t0, 5908(sp)
	mv a0, t0
	call print
	lw t2, -328(s0)
	sw t2, 5912(sp)
	lw t0, 5912(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5916(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5920(sp)
	lw t0, 5920(sp)
	addi t2, t0, 0
	sw t2, 5924(sp)
	addi t4, zero, 1
	lw t0, 5924(sp)
	sw t4, 0(t0)
	la t2, .libro.str.78
	sw t2, 5928(sp)
	lw t0, 5920(sp)
	addi t2, t0, 4
	sw t2, 5932(sp)
	lw t0, 5932(sp)
	lw t1, 5928(sp)
	sw t1, 0(t0)
	lw t0, 5916(sp)
	mv a0, t0
	lw t0, 5920(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5936(sp)
	lw t0, 5936(sp)
	addi t2, t0, 4
	sw t2, 5940(sp)
	lw t0, 5940(sp)
	lw t2, 0(t0)
	sw t2, 5944(sp)
	lw t0, 5944(sp)
	mv a0, t0
	call print
	lw t2, -332(s0)
	sw t2, 5948(sp)
	lw t0, 5948(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5952(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5956(sp)
	lw t0, 5956(sp)
	addi t2, t0, 0
	sw t2, 5960(sp)
	addi t4, zero, 1
	lw t0, 5960(sp)
	sw t4, 0(t0)
	la t2, .libro.str.79
	sw t2, 5964(sp)
	lw t0, 5956(sp)
	addi t2, t0, 4
	sw t2, 5968(sp)
	lw t0, 5968(sp)
	lw t1, 5964(sp)
	sw t1, 0(t0)
	lw t0, 5952(sp)
	mv a0, t0
	lw t0, 5956(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 5972(sp)
	lw t0, 5972(sp)
	addi t2, t0, 4
	sw t2, 5976(sp)
	lw t0, 5976(sp)
	lw t2, 0(t0)
	sw t2, 5980(sp)
	lw t0, 5980(sp)
	mv a0, t0
	call print
	lw t2, -336(s0)
	sw t2, 5984(sp)
	lw t0, 5984(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 5988(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 5992(sp)
	lw t0, 5992(sp)
	addi t2, t0, 0
	sw t2, 5996(sp)
	addi t4, zero, 1
	lw t0, 5996(sp)
	sw t4, 0(t0)
	la t2, .libro.str.80
	sw t2, 6000(sp)
	lw t0, 5992(sp)
	addi t2, t0, 4
	sw t2, 6004(sp)
	lw t0, 6004(sp)
	lw t1, 6000(sp)
	sw t1, 0(t0)
	lw t0, 5988(sp)
	mv a0, t0
	lw t0, 5992(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6008(sp)
	lw t0, 6008(sp)
	addi t2, t0, 4
	sw t2, 6012(sp)
	lw t0, 6012(sp)
	lw t2, 0(t0)
	sw t2, 6016(sp)
	lw t0, 6016(sp)
	mv a0, t0
	call print
	lw t2, -340(s0)
	sw t2, 6020(sp)
	lw t0, 6020(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6024(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6028(sp)
	lw t0, 6028(sp)
	addi t2, t0, 0
	sw t2, 6032(sp)
	addi t4, zero, 1
	lw t0, 6032(sp)
	sw t4, 0(t0)
	la t2, .libro.str.81
	sw t2, 6036(sp)
	lw t0, 6028(sp)
	addi t2, t0, 4
	sw t2, 6040(sp)
	lw t0, 6040(sp)
	lw t1, 6036(sp)
	sw t1, 0(t0)
	lw t0, 6024(sp)
	mv a0, t0
	lw t0, 6028(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6044(sp)
	lw t0, 6044(sp)
	addi t2, t0, 4
	sw t2, 6048(sp)
	lw t0, 6048(sp)
	lw t2, 0(t0)
	sw t2, 6052(sp)
	lw t0, 6052(sp)
	mv a0, t0
	call print
	lw t2, -344(s0)
	sw t2, 6056(sp)
	lw t0, 6056(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6060(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6064(sp)
	lw t0, 6064(sp)
	addi t2, t0, 0
	sw t2, 6068(sp)
	addi t4, zero, 1
	lw t0, 6068(sp)
	sw t4, 0(t0)
	la t2, .libro.str.82
	sw t2, 6072(sp)
	lw t0, 6064(sp)
	addi t2, t0, 4
	sw t2, 6076(sp)
	lw t0, 6076(sp)
	lw t1, 6072(sp)
	sw t1, 0(t0)
	lw t0, 6060(sp)
	mv a0, t0
	lw t0, 6064(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6080(sp)
	lw t0, 6080(sp)
	addi t2, t0, 4
	sw t2, 6084(sp)
	lw t0, 6084(sp)
	lw t2, 0(t0)
	sw t2, 6088(sp)
	lw t0, 6088(sp)
	mv a0, t0
	call print
	lw t2, -348(s0)
	sw t2, 6092(sp)
	lw t0, 6092(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6096(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6100(sp)
	lw t0, 6100(sp)
	addi t2, t0, 0
	sw t2, 6104(sp)
	addi t4, zero, 1
	lw t0, 6104(sp)
	sw t4, 0(t0)
	la t2, .libro.str.83
	sw t2, 6108(sp)
	lw t0, 6100(sp)
	addi t2, t0, 4
	sw t2, 6112(sp)
	lw t0, 6112(sp)
	lw t1, 6108(sp)
	sw t1, 0(t0)
	lw t0, 6096(sp)
	mv a0, t0
	lw t0, 6100(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6116(sp)
	lw t0, 6116(sp)
	addi t2, t0, 4
	sw t2, 6120(sp)
	lw t0, 6120(sp)
	lw t2, 0(t0)
	sw t2, 6124(sp)
	lw t0, 6124(sp)
	mv a0, t0
	call print
	lw t2, -352(s0)
	sw t2, 6128(sp)
	lw t0, 6128(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6132(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6136(sp)
	lw t0, 6136(sp)
	addi t2, t0, 0
	sw t2, 6140(sp)
	addi t4, zero, 1
	lw t0, 6140(sp)
	sw t4, 0(t0)
	la t2, .libro.str.84
	sw t2, 6144(sp)
	lw t0, 6136(sp)
	addi t2, t0, 4
	sw t2, 6148(sp)
	lw t0, 6148(sp)
	lw t1, 6144(sp)
	sw t1, 0(t0)
	lw t0, 6132(sp)
	mv a0, t0
	lw t0, 6136(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6152(sp)
	lw t0, 6152(sp)
	addi t2, t0, 4
	sw t2, 6156(sp)
	lw t0, 6156(sp)
	lw t2, 0(t0)
	sw t2, 6160(sp)
	lw t0, 6160(sp)
	mv a0, t0
	call print
	lw t2, -356(s0)
	sw t2, 6164(sp)
	lw t0, 6164(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6168(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6172(sp)
	lw t0, 6172(sp)
	addi t2, t0, 0
	sw t2, 6176(sp)
	addi t4, zero, 1
	lw t0, 6176(sp)
	sw t4, 0(t0)
	la t2, .libro.str.85
	sw t2, 6180(sp)
	lw t0, 6172(sp)
	addi t2, t0, 4
	sw t2, 6184(sp)
	lw t0, 6184(sp)
	lw t1, 6180(sp)
	sw t1, 0(t0)
	lw t0, 6168(sp)
	mv a0, t0
	lw t0, 6172(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6188(sp)
	lw t0, 6188(sp)
	addi t2, t0, 4
	sw t2, 6192(sp)
	lw t0, 6192(sp)
	lw t2, 0(t0)
	sw t2, 6196(sp)
	lw t0, 6196(sp)
	mv a0, t0
	call print
	lw t2, -360(s0)
	sw t2, 6200(sp)
	lw t0, 6200(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6204(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6208(sp)
	lw t0, 6208(sp)
	addi t2, t0, 0
	sw t2, 6212(sp)
	addi t4, zero, 1
	lw t0, 6212(sp)
	sw t4, 0(t0)
	la t2, .libro.str.86
	sw t2, 6216(sp)
	lw t0, 6208(sp)
	addi t2, t0, 4
	sw t2, 6220(sp)
	lw t0, 6220(sp)
	lw t1, 6216(sp)
	sw t1, 0(t0)
	lw t0, 6204(sp)
	mv a0, t0
	lw t0, 6208(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6224(sp)
	lw t0, 6224(sp)
	addi t2, t0, 4
	sw t2, 6228(sp)
	lw t0, 6228(sp)
	lw t2, 0(t0)
	sw t2, 6232(sp)
	lw t0, 6232(sp)
	mv a0, t0
	call print
	lw t2, -364(s0)
	sw t2, 6236(sp)
	lw t0, 6236(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6240(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6244(sp)
	lw t0, 6244(sp)
	addi t2, t0, 0
	sw t2, 6248(sp)
	addi t4, zero, 1
	lw t0, 6248(sp)
	sw t4, 0(t0)
	la t2, .libro.str.87
	sw t2, 6252(sp)
	lw t0, 6244(sp)
	addi t2, t0, 4
	sw t2, 6256(sp)
	lw t0, 6256(sp)
	lw t1, 6252(sp)
	sw t1, 0(t0)
	lw t0, 6240(sp)
	mv a0, t0
	lw t0, 6244(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6260(sp)
	lw t0, 6260(sp)
	addi t2, t0, 4
	sw t2, 6264(sp)
	lw t0, 6264(sp)
	lw t2, 0(t0)
	sw t2, 6268(sp)
	lw t0, 6268(sp)
	mv a0, t0
	call print
	lw t2, -368(s0)
	sw t2, 6272(sp)
	lw t0, 6272(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6276(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6280(sp)
	lw t0, 6280(sp)
	addi t2, t0, 0
	sw t2, 6284(sp)
	addi t4, zero, 1
	lw t0, 6284(sp)
	sw t4, 0(t0)
	la t2, .libro.str.88
	sw t2, 6288(sp)
	lw t0, 6280(sp)
	addi t2, t0, 4
	sw t2, 6292(sp)
	lw t0, 6292(sp)
	lw t1, 6288(sp)
	sw t1, 0(t0)
	lw t0, 6276(sp)
	mv a0, t0
	lw t0, 6280(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6296(sp)
	lw t0, 6296(sp)
	addi t2, t0, 4
	sw t2, 6300(sp)
	lw t0, 6300(sp)
	lw t2, 0(t0)
	sw t2, 6304(sp)
	lw t0, 6304(sp)
	mv a0, t0
	call print
	lw t2, -372(s0)
	sw t2, 6308(sp)
	lw t0, 6308(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6312(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6316(sp)
	lw t0, 6316(sp)
	addi t2, t0, 0
	sw t2, 6320(sp)
	addi t4, zero, 1
	lw t0, 6320(sp)
	sw t4, 0(t0)
	la t2, .libro.str.89
	sw t2, 6324(sp)
	lw t0, 6316(sp)
	addi t2, t0, 4
	sw t2, 6328(sp)
	lw t0, 6328(sp)
	lw t1, 6324(sp)
	sw t1, 0(t0)
	lw t0, 6312(sp)
	mv a0, t0
	lw t0, 6316(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6332(sp)
	lw t0, 6332(sp)
	addi t2, t0, 4
	sw t2, 6336(sp)
	lw t0, 6336(sp)
	lw t2, 0(t0)
	sw t2, 6340(sp)
	lw t0, 6340(sp)
	mv a0, t0
	call print
	lw t2, -376(s0)
	sw t2, 6344(sp)
	lw t0, 6344(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6348(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6352(sp)
	lw t0, 6352(sp)
	addi t2, t0, 0
	sw t2, 6356(sp)
	addi t4, zero, 1
	lw t0, 6356(sp)
	sw t4, 0(t0)
	la t2, .libro.str.90
	sw t2, 6360(sp)
	lw t0, 6352(sp)
	addi t2, t0, 4
	sw t2, 6364(sp)
	lw t0, 6364(sp)
	lw t1, 6360(sp)
	sw t1, 0(t0)
	lw t0, 6348(sp)
	mv a0, t0
	lw t0, 6352(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6368(sp)
	lw t0, 6368(sp)
	addi t2, t0, 4
	sw t2, 6372(sp)
	lw t0, 6372(sp)
	lw t2, 0(t0)
	sw t2, 6376(sp)
	lw t0, 6376(sp)
	mv a0, t0
	call print
	lw t2, -380(s0)
	sw t2, 6380(sp)
	lw t0, 6380(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6384(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6388(sp)
	lw t0, 6388(sp)
	addi t2, t0, 0
	sw t2, 6392(sp)
	addi t4, zero, 1
	lw t0, 6392(sp)
	sw t4, 0(t0)
	la t2, .libro.str.91
	sw t2, 6396(sp)
	lw t0, 6388(sp)
	addi t2, t0, 4
	sw t2, 6400(sp)
	lw t0, 6400(sp)
	lw t1, 6396(sp)
	sw t1, 0(t0)
	lw t0, 6384(sp)
	mv a0, t0
	lw t0, 6388(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6404(sp)
	lw t0, 6404(sp)
	addi t2, t0, 4
	sw t2, 6408(sp)
	lw t0, 6408(sp)
	lw t2, 0(t0)
	sw t2, 6412(sp)
	lw t0, 6412(sp)
	mv a0, t0
	call print
	lw t2, -384(s0)
	sw t2, 6416(sp)
	lw t0, 6416(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6420(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6424(sp)
	lw t0, 6424(sp)
	addi t2, t0, 0
	sw t2, 6428(sp)
	addi t4, zero, 1
	lw t0, 6428(sp)
	sw t4, 0(t0)
	la t2, .libro.str.92
	sw t2, 6432(sp)
	lw t0, 6424(sp)
	addi t2, t0, 4
	sw t2, 6436(sp)
	lw t0, 6436(sp)
	lw t1, 6432(sp)
	sw t1, 0(t0)
	lw t0, 6420(sp)
	mv a0, t0
	lw t0, 6424(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6440(sp)
	lw t0, 6440(sp)
	addi t2, t0, 4
	sw t2, 6444(sp)
	lw t0, 6444(sp)
	lw t2, 0(t0)
	sw t2, 6448(sp)
	lw t0, 6448(sp)
	mv a0, t0
	call print
	lw t2, -388(s0)
	sw t2, 6452(sp)
	lw t0, 6452(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6456(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6460(sp)
	lw t0, 6460(sp)
	addi t2, t0, 0
	sw t2, 6464(sp)
	addi t4, zero, 1
	lw t0, 6464(sp)
	sw t4, 0(t0)
	la t2, .libro.str.93
	sw t2, 6468(sp)
	lw t0, 6460(sp)
	addi t2, t0, 4
	sw t2, 6472(sp)
	lw t0, 6472(sp)
	lw t1, 6468(sp)
	sw t1, 0(t0)
	lw t0, 6456(sp)
	mv a0, t0
	lw t0, 6460(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6476(sp)
	lw t0, 6476(sp)
	addi t2, t0, 4
	sw t2, 6480(sp)
	lw t0, 6480(sp)
	lw t2, 0(t0)
	sw t2, 6484(sp)
	lw t0, 6484(sp)
	mv a0, t0
	call print
	lw t2, -392(s0)
	sw t2, 6488(sp)
	lw t0, 6488(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6492(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6496(sp)
	lw t0, 6496(sp)
	addi t2, t0, 0
	sw t2, 6500(sp)
	addi t4, zero, 1
	lw t0, 6500(sp)
	sw t4, 0(t0)
	la t2, .libro.str.94
	sw t2, 6504(sp)
	lw t0, 6496(sp)
	addi t2, t0, 4
	sw t2, 6508(sp)
	lw t0, 6508(sp)
	lw t1, 6504(sp)
	sw t1, 0(t0)
	lw t0, 6492(sp)
	mv a0, t0
	lw t0, 6496(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6512(sp)
	lw t0, 6512(sp)
	addi t2, t0, 4
	sw t2, 6516(sp)
	lw t0, 6516(sp)
	lw t2, 0(t0)
	sw t2, 6520(sp)
	lw t0, 6520(sp)
	mv a0, t0
	call print
	lw t2, -396(s0)
	sw t2, 6524(sp)
	lw t0, 6524(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6528(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6532(sp)
	lw t0, 6532(sp)
	addi t2, t0, 0
	sw t2, 6536(sp)
	addi t4, zero, 1
	lw t0, 6536(sp)
	sw t4, 0(t0)
	la t2, .libro.str.95
	sw t2, 6540(sp)
	lw t0, 6532(sp)
	addi t2, t0, 4
	sw t2, 6544(sp)
	lw t0, 6544(sp)
	lw t1, 6540(sp)
	sw t1, 0(t0)
	lw t0, 6528(sp)
	mv a0, t0
	lw t0, 6532(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6548(sp)
	lw t0, 6548(sp)
	addi t2, t0, 4
	sw t2, 6552(sp)
	lw t0, 6552(sp)
	lw t2, 0(t0)
	sw t2, 6556(sp)
	lw t0, 6556(sp)
	mv a0, t0
	call print
	lw t2, -400(s0)
	sw t2, 6560(sp)
	lw t0, 6560(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6564(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6568(sp)
	lw t0, 6568(sp)
	addi t2, t0, 0
	sw t2, 6572(sp)
	addi t4, zero, 1
	lw t0, 6572(sp)
	sw t4, 0(t0)
	la t2, .libro.str.96
	sw t2, 6576(sp)
	lw t0, 6568(sp)
	addi t2, t0, 4
	sw t2, 6580(sp)
	lw t0, 6580(sp)
	lw t1, 6576(sp)
	sw t1, 0(t0)
	lw t0, 6564(sp)
	mv a0, t0
	lw t0, 6568(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6584(sp)
	lw t0, 6584(sp)
	addi t2, t0, 4
	sw t2, 6588(sp)
	lw t0, 6588(sp)
	lw t2, 0(t0)
	sw t2, 6592(sp)
	lw t0, 6592(sp)
	mv a0, t0
	call print
	lw t2, -404(s0)
	sw t2, 6596(sp)
	lw t0, 6596(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6600(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6604(sp)
	lw t0, 6604(sp)
	addi t2, t0, 0
	sw t2, 6608(sp)
	addi t4, zero, 1
	lw t0, 6608(sp)
	sw t4, 0(t0)
	la t2, .libro.str.97
	sw t2, 6612(sp)
	lw t0, 6604(sp)
	addi t2, t0, 4
	sw t2, 6616(sp)
	lw t0, 6616(sp)
	lw t1, 6612(sp)
	sw t1, 0(t0)
	lw t0, 6600(sp)
	mv a0, t0
	lw t0, 6604(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6620(sp)
	lw t0, 6620(sp)
	addi t2, t0, 4
	sw t2, 6624(sp)
	lw t0, 6624(sp)
	lw t2, 0(t0)
	sw t2, 6628(sp)
	lw t0, 6628(sp)
	mv a0, t0
	call print
	lw t2, -408(s0)
	sw t2, 6632(sp)
	lw t0, 6632(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6636(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6640(sp)
	lw t0, 6640(sp)
	addi t2, t0, 0
	sw t2, 6644(sp)
	addi t4, zero, 1
	lw t0, 6644(sp)
	sw t4, 0(t0)
	la t2, .libro.str.98
	sw t2, 6648(sp)
	lw t0, 6640(sp)
	addi t2, t0, 4
	sw t2, 6652(sp)
	lw t0, 6652(sp)
	lw t1, 6648(sp)
	sw t1, 0(t0)
	lw t0, 6636(sp)
	mv a0, t0
	lw t0, 6640(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6656(sp)
	lw t0, 6656(sp)
	addi t2, t0, 4
	sw t2, 6660(sp)
	lw t0, 6660(sp)
	lw t2, 0(t0)
	sw t2, 6664(sp)
	lw t0, 6664(sp)
	mv a0, t0
	call print
	lw t2, -412(s0)
	sw t2, 6668(sp)
	lw t0, 6668(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6672(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6676(sp)
	lw t0, 6676(sp)
	addi t2, t0, 0
	sw t2, 6680(sp)
	addi t4, zero, 1
	lw t0, 6680(sp)
	sw t4, 0(t0)
	la t2, .libro.str.99
	sw t2, 6684(sp)
	lw t0, 6676(sp)
	addi t2, t0, 4
	sw t2, 6688(sp)
	lw t0, 6688(sp)
	lw t1, 6684(sp)
	sw t1, 0(t0)
	lw t0, 6672(sp)
	mv a0, t0
	lw t0, 6676(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6692(sp)
	lw t0, 6692(sp)
	addi t2, t0, 4
	sw t2, 6696(sp)
	lw t0, 6696(sp)
	lw t2, 0(t0)
	sw t2, 6700(sp)
	lw t0, 6700(sp)
	mv a0, t0
	call print
	lw t2, -416(s0)
	sw t2, 6704(sp)
	lw t0, 6704(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6708(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6712(sp)
	lw t0, 6712(sp)
	addi t2, t0, 0
	sw t2, 6716(sp)
	addi t4, zero, 1
	lw t0, 6716(sp)
	sw t4, 0(t0)
	la t2, .libro.str.100
	sw t2, 6720(sp)
	lw t0, 6712(sp)
	addi t2, t0, 4
	sw t2, 6724(sp)
	lw t0, 6724(sp)
	lw t1, 6720(sp)
	sw t1, 0(t0)
	lw t0, 6708(sp)
	mv a0, t0
	lw t0, 6712(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6728(sp)
	lw t0, 6728(sp)
	addi t2, t0, 4
	sw t2, 6732(sp)
	lw t0, 6732(sp)
	lw t2, 0(t0)
	sw t2, 6736(sp)
	lw t0, 6736(sp)
	mv a0, t0
	call print
	lw t2, -420(s0)
	sw t2, 6740(sp)
	lw t0, 6740(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6744(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6748(sp)
	lw t0, 6748(sp)
	addi t2, t0, 0
	sw t2, 6752(sp)
	addi t4, zero, 1
	lw t0, 6752(sp)
	sw t4, 0(t0)
	la t2, .libro.str.101
	sw t2, 6756(sp)
	lw t0, 6748(sp)
	addi t2, t0, 4
	sw t2, 6760(sp)
	lw t0, 6760(sp)
	lw t1, 6756(sp)
	sw t1, 0(t0)
	lw t0, 6744(sp)
	mv a0, t0
	lw t0, 6748(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6764(sp)
	lw t0, 6764(sp)
	addi t2, t0, 4
	sw t2, 6768(sp)
	lw t0, 6768(sp)
	lw t2, 0(t0)
	sw t2, 6772(sp)
	lw t0, 6772(sp)
	mv a0, t0
	call print
	lw t2, -424(s0)
	sw t2, 6776(sp)
	lw t0, 6776(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6780(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6784(sp)
	lw t0, 6784(sp)
	addi t2, t0, 0
	sw t2, 6788(sp)
	addi t4, zero, 1
	lw t0, 6788(sp)
	sw t4, 0(t0)
	la t2, .libro.str.102
	sw t2, 6792(sp)
	lw t0, 6784(sp)
	addi t2, t0, 4
	sw t2, 6796(sp)
	lw t0, 6796(sp)
	lw t1, 6792(sp)
	sw t1, 0(t0)
	lw t0, 6780(sp)
	mv a0, t0
	lw t0, 6784(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6800(sp)
	lw t0, 6800(sp)
	addi t2, t0, 4
	sw t2, 6804(sp)
	lw t0, 6804(sp)
	lw t2, 0(t0)
	sw t2, 6808(sp)
	lw t0, 6808(sp)
	mv a0, t0
	call print
	lw t2, -428(s0)
	sw t2, 6812(sp)
	lw t0, 6812(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6816(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6820(sp)
	lw t0, 6820(sp)
	addi t2, t0, 0
	sw t2, 6824(sp)
	addi t4, zero, 1
	lw t0, 6824(sp)
	sw t4, 0(t0)
	la t2, .libro.str.103
	sw t2, 6828(sp)
	lw t0, 6820(sp)
	addi t2, t0, 4
	sw t2, 6832(sp)
	lw t0, 6832(sp)
	lw t1, 6828(sp)
	sw t1, 0(t0)
	lw t0, 6816(sp)
	mv a0, t0
	lw t0, 6820(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6836(sp)
	lw t0, 6836(sp)
	addi t2, t0, 4
	sw t2, 6840(sp)
	lw t0, 6840(sp)
	lw t2, 0(t0)
	sw t2, 6844(sp)
	lw t0, 6844(sp)
	mv a0, t0
	call print
	lw t2, -432(s0)
	sw t2, 6848(sp)
	lw t0, 6848(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6852(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6856(sp)
	lw t0, 6856(sp)
	addi t2, t0, 0
	sw t2, 6860(sp)
	addi t4, zero, 1
	lw t0, 6860(sp)
	sw t4, 0(t0)
	la t2, .libro.str.104
	sw t2, 6864(sp)
	lw t0, 6856(sp)
	addi t2, t0, 4
	sw t2, 6868(sp)
	lw t0, 6868(sp)
	lw t1, 6864(sp)
	sw t1, 0(t0)
	lw t0, 6852(sp)
	mv a0, t0
	lw t0, 6856(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6872(sp)
	lw t0, 6872(sp)
	addi t2, t0, 4
	sw t2, 6876(sp)
	lw t0, 6876(sp)
	lw t2, 0(t0)
	sw t2, 6880(sp)
	lw t0, 6880(sp)
	mv a0, t0
	call print
	lw t2, -436(s0)
	sw t2, 6884(sp)
	lw t0, 6884(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6888(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6892(sp)
	lw t0, 6892(sp)
	addi t2, t0, 0
	sw t2, 6896(sp)
	addi t4, zero, 1
	lw t0, 6896(sp)
	sw t4, 0(t0)
	la t2, .libro.str.105
	sw t2, 6900(sp)
	lw t0, 6892(sp)
	addi t2, t0, 4
	sw t2, 6904(sp)
	lw t0, 6904(sp)
	lw t1, 6900(sp)
	sw t1, 0(t0)
	lw t0, 6888(sp)
	mv a0, t0
	lw t0, 6892(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6908(sp)
	lw t0, 6908(sp)
	addi t2, t0, 4
	sw t2, 6912(sp)
	lw t0, 6912(sp)
	lw t2, 0(t0)
	sw t2, 6916(sp)
	lw t0, 6916(sp)
	mv a0, t0
	call print
	lw t2, -440(s0)
	sw t2, 6920(sp)
	lw t0, 6920(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6924(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6928(sp)
	lw t0, 6928(sp)
	addi t2, t0, 0
	sw t2, 6932(sp)
	addi t4, zero, 1
	lw t0, 6932(sp)
	sw t4, 0(t0)
	la t2, .libro.str.106
	sw t2, 6936(sp)
	lw t0, 6928(sp)
	addi t2, t0, 4
	sw t2, 6940(sp)
	lw t0, 6940(sp)
	lw t1, 6936(sp)
	sw t1, 0(t0)
	lw t0, 6924(sp)
	mv a0, t0
	lw t0, 6928(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6944(sp)
	lw t0, 6944(sp)
	addi t2, t0, 4
	sw t2, 6948(sp)
	lw t0, 6948(sp)
	lw t2, 0(t0)
	sw t2, 6952(sp)
	lw t0, 6952(sp)
	mv a0, t0
	call print
	lw t2, -444(s0)
	sw t2, 6956(sp)
	lw t0, 6956(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6960(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 6964(sp)
	lw t0, 6964(sp)
	addi t2, t0, 0
	sw t2, 6968(sp)
	addi t4, zero, 1
	lw t0, 6968(sp)
	sw t4, 0(t0)
	la t2, .libro.str.107
	sw t2, 6972(sp)
	lw t0, 6964(sp)
	addi t2, t0, 4
	sw t2, 6976(sp)
	lw t0, 6976(sp)
	lw t1, 6972(sp)
	sw t1, 0(t0)
	lw t0, 6960(sp)
	mv a0, t0
	lw t0, 6964(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 6980(sp)
	lw t0, 6980(sp)
	addi t2, t0, 4
	sw t2, 6984(sp)
	lw t0, 6984(sp)
	lw t2, 0(t0)
	sw t2, 6988(sp)
	lw t0, 6988(sp)
	mv a0, t0
	call print
	lw t2, -448(s0)
	sw t2, 6992(sp)
	lw t0, 6992(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 6996(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7000(sp)
	lw t0, 7000(sp)
	addi t2, t0, 0
	sw t2, 7004(sp)
	addi t4, zero, 1
	lw t0, 7004(sp)
	sw t4, 0(t0)
	la t2, .libro.str.108
	sw t2, 7008(sp)
	lw t0, 7000(sp)
	addi t2, t0, 4
	sw t2, 7012(sp)
	lw t0, 7012(sp)
	lw t1, 7008(sp)
	sw t1, 0(t0)
	lw t0, 6996(sp)
	mv a0, t0
	lw t0, 7000(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7016(sp)
	lw t0, 7016(sp)
	addi t2, t0, 4
	sw t2, 7020(sp)
	lw t0, 7020(sp)
	lw t2, 0(t0)
	sw t2, 7024(sp)
	lw t0, 7024(sp)
	mv a0, t0
	call print
	lw t2, -452(s0)
	sw t2, 7028(sp)
	lw t0, 7028(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7032(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7036(sp)
	lw t0, 7036(sp)
	addi t2, t0, 0
	sw t2, 7040(sp)
	addi t4, zero, 1
	lw t0, 7040(sp)
	sw t4, 0(t0)
	la t2, .libro.str.109
	sw t2, 7044(sp)
	lw t0, 7036(sp)
	addi t2, t0, 4
	sw t2, 7048(sp)
	lw t0, 7048(sp)
	lw t1, 7044(sp)
	sw t1, 0(t0)
	lw t0, 7032(sp)
	mv a0, t0
	lw t0, 7036(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7052(sp)
	lw t0, 7052(sp)
	addi t2, t0, 4
	sw t2, 7056(sp)
	lw t0, 7056(sp)
	lw t2, 0(t0)
	sw t2, 7060(sp)
	lw t0, 7060(sp)
	mv a0, t0
	call print
	lw t2, -456(s0)
	sw t2, 7064(sp)
	lw t0, 7064(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7068(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7072(sp)
	lw t0, 7072(sp)
	addi t2, t0, 0
	sw t2, 7076(sp)
	addi t4, zero, 1
	lw t0, 7076(sp)
	sw t4, 0(t0)
	la t2, .libro.str.110
	sw t2, 7080(sp)
	lw t0, 7072(sp)
	addi t2, t0, 4
	sw t2, 7084(sp)
	lw t0, 7084(sp)
	lw t1, 7080(sp)
	sw t1, 0(t0)
	lw t0, 7068(sp)
	mv a0, t0
	lw t0, 7072(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7088(sp)
	lw t0, 7088(sp)
	addi t2, t0, 4
	sw t2, 7092(sp)
	lw t0, 7092(sp)
	lw t2, 0(t0)
	sw t2, 7096(sp)
	lw t0, 7096(sp)
	mv a0, t0
	call print
	lw t2, -460(s0)
	sw t2, 7100(sp)
	lw t0, 7100(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7104(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7108(sp)
	lw t0, 7108(sp)
	addi t2, t0, 0
	sw t2, 7112(sp)
	addi t4, zero, 1
	lw t0, 7112(sp)
	sw t4, 0(t0)
	la t2, .libro.str.111
	sw t2, 7116(sp)
	lw t0, 7108(sp)
	addi t2, t0, 4
	sw t2, 7120(sp)
	lw t0, 7120(sp)
	lw t1, 7116(sp)
	sw t1, 0(t0)
	lw t0, 7104(sp)
	mv a0, t0
	lw t0, 7108(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7124(sp)
	lw t0, 7124(sp)
	addi t2, t0, 4
	sw t2, 7128(sp)
	lw t0, 7128(sp)
	lw t2, 0(t0)
	sw t2, 7132(sp)
	lw t0, 7132(sp)
	mv a0, t0
	call print
	lw t2, -464(s0)
	sw t2, 7136(sp)
	lw t0, 7136(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7140(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7144(sp)
	lw t0, 7144(sp)
	addi t2, t0, 0
	sw t2, 7148(sp)
	addi t4, zero, 1
	lw t0, 7148(sp)
	sw t4, 0(t0)
	la t2, .libro.str.112
	sw t2, 7152(sp)
	lw t0, 7144(sp)
	addi t2, t0, 4
	sw t2, 7156(sp)
	lw t0, 7156(sp)
	lw t1, 7152(sp)
	sw t1, 0(t0)
	lw t0, 7140(sp)
	mv a0, t0
	lw t0, 7144(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7160(sp)
	lw t0, 7160(sp)
	addi t2, t0, 4
	sw t2, 7164(sp)
	lw t0, 7164(sp)
	lw t2, 0(t0)
	sw t2, 7168(sp)
	lw t0, 7168(sp)
	mv a0, t0
	call print
	lw t2, -468(s0)
	sw t2, 7172(sp)
	lw t0, 7172(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7176(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7180(sp)
	lw t0, 7180(sp)
	addi t2, t0, 0
	sw t2, 7184(sp)
	addi t4, zero, 1
	lw t0, 7184(sp)
	sw t4, 0(t0)
	la t2, .libro.str.113
	sw t2, 7188(sp)
	lw t0, 7180(sp)
	addi t2, t0, 4
	sw t2, 7192(sp)
	lw t0, 7192(sp)
	lw t1, 7188(sp)
	sw t1, 0(t0)
	lw t0, 7176(sp)
	mv a0, t0
	lw t0, 7180(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7196(sp)
	lw t0, 7196(sp)
	addi t2, t0, 4
	sw t2, 7200(sp)
	lw t0, 7200(sp)
	lw t2, 0(t0)
	sw t2, 7204(sp)
	lw t0, 7204(sp)
	mv a0, t0
	call print
	lw t2, -472(s0)
	sw t2, 7208(sp)
	lw t0, 7208(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7212(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7216(sp)
	lw t0, 7216(sp)
	addi t2, t0, 0
	sw t2, 7220(sp)
	addi t4, zero, 1
	lw t0, 7220(sp)
	sw t4, 0(t0)
	la t2, .libro.str.114
	sw t2, 7224(sp)
	lw t0, 7216(sp)
	addi t2, t0, 4
	sw t2, 7228(sp)
	lw t0, 7228(sp)
	lw t1, 7224(sp)
	sw t1, 0(t0)
	lw t0, 7212(sp)
	mv a0, t0
	lw t0, 7216(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7232(sp)
	lw t0, 7232(sp)
	addi t2, t0, 4
	sw t2, 7236(sp)
	lw t0, 7236(sp)
	lw t2, 0(t0)
	sw t2, 7240(sp)
	lw t0, 7240(sp)
	mv a0, t0
	call print
	lw t2, -476(s0)
	sw t2, 7244(sp)
	lw t0, 7244(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7248(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7252(sp)
	lw t0, 7252(sp)
	addi t2, t0, 0
	sw t2, 7256(sp)
	addi t4, zero, 1
	lw t0, 7256(sp)
	sw t4, 0(t0)
	la t2, .libro.str.115
	sw t2, 7260(sp)
	lw t0, 7252(sp)
	addi t2, t0, 4
	sw t2, 7264(sp)
	lw t0, 7264(sp)
	lw t1, 7260(sp)
	sw t1, 0(t0)
	lw t0, 7248(sp)
	mv a0, t0
	lw t0, 7252(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7268(sp)
	lw t0, 7268(sp)
	addi t2, t0, 4
	sw t2, 7272(sp)
	lw t0, 7272(sp)
	lw t2, 0(t0)
	sw t2, 7276(sp)
	lw t0, 7276(sp)
	mv a0, t0
	call print
	lw t2, -480(s0)
	sw t2, 7280(sp)
	lw t0, 7280(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7284(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7288(sp)
	lw t0, 7288(sp)
	addi t2, t0, 0
	sw t2, 7292(sp)
	addi t4, zero, 1
	lw t0, 7292(sp)
	sw t4, 0(t0)
	la t2, .libro.str.116
	sw t2, 7296(sp)
	lw t0, 7288(sp)
	addi t2, t0, 4
	sw t2, 7300(sp)
	lw t0, 7300(sp)
	lw t1, 7296(sp)
	sw t1, 0(t0)
	lw t0, 7284(sp)
	mv a0, t0
	lw t0, 7288(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7304(sp)
	lw t0, 7304(sp)
	addi t2, t0, 4
	sw t2, 7308(sp)
	lw t0, 7308(sp)
	lw t2, 0(t0)
	sw t2, 7312(sp)
	lw t0, 7312(sp)
	mv a0, t0
	call print
	lw t2, -484(s0)
	sw t2, 7316(sp)
	lw t0, 7316(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7320(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7324(sp)
	lw t0, 7324(sp)
	addi t2, t0, 0
	sw t2, 7328(sp)
	addi t4, zero, 1
	lw t0, 7328(sp)
	sw t4, 0(t0)
	la t2, .libro.str.117
	sw t2, 7332(sp)
	lw t0, 7324(sp)
	addi t2, t0, 4
	sw t2, 7336(sp)
	lw t0, 7336(sp)
	lw t1, 7332(sp)
	sw t1, 0(t0)
	lw t0, 7320(sp)
	mv a0, t0
	lw t0, 7324(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7340(sp)
	lw t0, 7340(sp)
	addi t2, t0, 4
	sw t2, 7344(sp)
	lw t0, 7344(sp)
	lw t2, 0(t0)
	sw t2, 7348(sp)
	lw t0, 7348(sp)
	mv a0, t0
	call print
	lw t2, -488(s0)
	sw t2, 7352(sp)
	lw t0, 7352(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7356(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7360(sp)
	lw t0, 7360(sp)
	addi t2, t0, 0
	sw t2, 7364(sp)
	addi t4, zero, 1
	lw t0, 7364(sp)
	sw t4, 0(t0)
	la t2, .libro.str.118
	sw t2, 7368(sp)
	lw t0, 7360(sp)
	addi t2, t0, 4
	sw t2, 7372(sp)
	lw t0, 7372(sp)
	lw t1, 7368(sp)
	sw t1, 0(t0)
	lw t0, 7356(sp)
	mv a0, t0
	lw t0, 7360(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7376(sp)
	lw t0, 7376(sp)
	addi t2, t0, 4
	sw t2, 7380(sp)
	lw t0, 7380(sp)
	lw t2, 0(t0)
	sw t2, 7384(sp)
	lw t0, 7384(sp)
	mv a0, t0
	call print
	lw t2, -492(s0)
	sw t2, 7388(sp)
	lw t0, 7388(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7392(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7396(sp)
	lw t0, 7396(sp)
	addi t2, t0, 0
	sw t2, 7400(sp)
	addi t4, zero, 1
	lw t0, 7400(sp)
	sw t4, 0(t0)
	la t2, .libro.str.119
	sw t2, 7404(sp)
	lw t0, 7396(sp)
	addi t2, t0, 4
	sw t2, 7408(sp)
	lw t0, 7408(sp)
	lw t1, 7404(sp)
	sw t1, 0(t0)
	lw t0, 7392(sp)
	mv a0, t0
	lw t0, 7396(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7412(sp)
	lw t0, 7412(sp)
	addi t2, t0, 4
	sw t2, 7416(sp)
	lw t0, 7416(sp)
	lw t2, 0(t0)
	sw t2, 7420(sp)
	lw t0, 7420(sp)
	mv a0, t0
	call print
	lw t2, -496(s0)
	sw t2, 7424(sp)
	lw t0, 7424(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7428(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7432(sp)
	lw t0, 7432(sp)
	addi t2, t0, 0
	sw t2, 7436(sp)
	addi t4, zero, 1
	lw t0, 7436(sp)
	sw t4, 0(t0)
	la t2, .libro.str.120
	sw t2, 7440(sp)
	lw t0, 7432(sp)
	addi t2, t0, 4
	sw t2, 7444(sp)
	lw t0, 7444(sp)
	lw t1, 7440(sp)
	sw t1, 0(t0)
	lw t0, 7428(sp)
	mv a0, t0
	lw t0, 7432(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7448(sp)
	lw t0, 7448(sp)
	addi t2, t0, 4
	sw t2, 7452(sp)
	lw t0, 7452(sp)
	lw t2, 0(t0)
	sw t2, 7456(sp)
	lw t0, 7456(sp)
	mv a0, t0
	call print
	lw t2, -500(s0)
	sw t2, 7460(sp)
	lw t0, 7460(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7464(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7468(sp)
	lw t0, 7468(sp)
	addi t2, t0, 0
	sw t2, 7472(sp)
	addi t4, zero, 1
	lw t0, 7472(sp)
	sw t4, 0(t0)
	la t2, .libro.str.121
	sw t2, 7476(sp)
	lw t0, 7468(sp)
	addi t2, t0, 4
	sw t2, 7480(sp)
	lw t0, 7480(sp)
	lw t1, 7476(sp)
	sw t1, 0(t0)
	lw t0, 7464(sp)
	mv a0, t0
	lw t0, 7468(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7484(sp)
	lw t0, 7484(sp)
	addi t2, t0, 4
	sw t2, 7488(sp)
	lw t0, 7488(sp)
	lw t2, 0(t0)
	sw t2, 7492(sp)
	lw t0, 7492(sp)
	mv a0, t0
	call print
	lw t2, -504(s0)
	sw t2, 7496(sp)
	lw t0, 7496(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7500(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7504(sp)
	lw t0, 7504(sp)
	addi t2, t0, 0
	sw t2, 7508(sp)
	addi t4, zero, 1
	lw t0, 7508(sp)
	sw t4, 0(t0)
	la t2, .libro.str.122
	sw t2, 7512(sp)
	lw t0, 7504(sp)
	addi t2, t0, 4
	sw t2, 7516(sp)
	lw t0, 7516(sp)
	lw t1, 7512(sp)
	sw t1, 0(t0)
	lw t0, 7500(sp)
	mv a0, t0
	lw t0, 7504(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7520(sp)
	lw t0, 7520(sp)
	addi t2, t0, 4
	sw t2, 7524(sp)
	lw t0, 7524(sp)
	lw t2, 0(t0)
	sw t2, 7528(sp)
	lw t0, 7528(sp)
	mv a0, t0
	call print
	lw t2, -508(s0)
	sw t2, 7532(sp)
	lw t0, 7532(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7536(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7540(sp)
	lw t0, 7540(sp)
	addi t2, t0, 0
	sw t2, 7544(sp)
	addi t4, zero, 1
	lw t0, 7544(sp)
	sw t4, 0(t0)
	la t2, .libro.str.123
	sw t2, 7548(sp)
	lw t0, 7540(sp)
	addi t2, t0, 4
	sw t2, 7552(sp)
	lw t0, 7552(sp)
	lw t1, 7548(sp)
	sw t1, 0(t0)
	lw t0, 7536(sp)
	mv a0, t0
	lw t0, 7540(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7556(sp)
	lw t0, 7556(sp)
	addi t2, t0, 4
	sw t2, 7560(sp)
	lw t0, 7560(sp)
	lw t2, 0(t0)
	sw t2, 7564(sp)
	lw t0, 7564(sp)
	mv a0, t0
	call print
	lw t2, -512(s0)
	sw t2, 7568(sp)
	lw t0, 7568(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7572(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7576(sp)
	lw t0, 7576(sp)
	addi t2, t0, 0
	sw t2, 7580(sp)
	addi t4, zero, 1
	lw t0, 7580(sp)
	sw t4, 0(t0)
	la t2, .libro.str.124
	sw t2, 7584(sp)
	lw t0, 7576(sp)
	addi t2, t0, 4
	sw t2, 7588(sp)
	lw t0, 7588(sp)
	lw t1, 7584(sp)
	sw t1, 0(t0)
	lw t0, 7572(sp)
	mv a0, t0
	lw t0, 7576(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7592(sp)
	lw t0, 7592(sp)
	addi t2, t0, 4
	sw t2, 7596(sp)
	lw t0, 7596(sp)
	lw t2, 0(t0)
	sw t2, 7600(sp)
	lw t0, 7600(sp)
	mv a0, t0
	call print
	lw t2, -516(s0)
	sw t2, 7604(sp)
	lw t0, 7604(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7608(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7612(sp)
	lw t0, 7612(sp)
	addi t2, t0, 0
	sw t2, 7616(sp)
	addi t4, zero, 1
	lw t0, 7616(sp)
	sw t4, 0(t0)
	la t2, .libro.str.125
	sw t2, 7620(sp)
	lw t0, 7612(sp)
	addi t2, t0, 4
	sw t2, 7624(sp)
	lw t0, 7624(sp)
	lw t1, 7620(sp)
	sw t1, 0(t0)
	lw t0, 7608(sp)
	mv a0, t0
	lw t0, 7612(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7628(sp)
	lw t0, 7628(sp)
	addi t2, t0, 4
	sw t2, 7632(sp)
	lw t0, 7632(sp)
	lw t2, 0(t0)
	sw t2, 7636(sp)
	lw t0, 7636(sp)
	mv a0, t0
	call print
	lw t2, -520(s0)
	sw t2, 7640(sp)
	lw t0, 7640(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7644(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7648(sp)
	lw t0, 7648(sp)
	addi t2, t0, 0
	sw t2, 7652(sp)
	addi t4, zero, 1
	lw t0, 7652(sp)
	sw t4, 0(t0)
	la t2, .libro.str.126
	sw t2, 7656(sp)
	lw t0, 7648(sp)
	addi t2, t0, 4
	sw t2, 7660(sp)
	lw t0, 7660(sp)
	lw t1, 7656(sp)
	sw t1, 0(t0)
	lw t0, 7644(sp)
	mv a0, t0
	lw t0, 7648(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7664(sp)
	lw t0, 7664(sp)
	addi t2, t0, 4
	sw t2, 7668(sp)
	lw t0, 7668(sp)
	lw t2, 0(t0)
	sw t2, 7672(sp)
	lw t0, 7672(sp)
	mv a0, t0
	call print
	lw t2, -524(s0)
	sw t2, 7676(sp)
	lw t0, 7676(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7680(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7684(sp)
	lw t0, 7684(sp)
	addi t2, t0, 0
	sw t2, 7688(sp)
	addi t4, zero, 1
	lw t0, 7688(sp)
	sw t4, 0(t0)
	la t2, .libro.str.127
	sw t2, 7692(sp)
	lw t0, 7684(sp)
	addi t2, t0, 4
	sw t2, 7696(sp)
	lw t0, 7696(sp)
	lw t1, 7692(sp)
	sw t1, 0(t0)
	lw t0, 7680(sp)
	mv a0, t0
	lw t0, 7684(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7700(sp)
	lw t0, 7700(sp)
	addi t2, t0, 4
	sw t2, 7704(sp)
	lw t0, 7704(sp)
	lw t2, 0(t0)
	sw t2, 7708(sp)
	lw t0, 7708(sp)
	mv a0, t0
	call print
	lw t2, -528(s0)
	sw t2, 7712(sp)
	lw t0, 7712(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7716(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7720(sp)
	lw t0, 7720(sp)
	addi t2, t0, 0
	sw t2, 7724(sp)
	addi t4, zero, 1
	lw t0, 7724(sp)
	sw t4, 0(t0)
	la t2, .libro.str.128
	sw t2, 7728(sp)
	lw t0, 7720(sp)
	addi t2, t0, 4
	sw t2, 7732(sp)
	lw t0, 7732(sp)
	lw t1, 7728(sp)
	sw t1, 0(t0)
	lw t0, 7716(sp)
	mv a0, t0
	lw t0, 7720(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7736(sp)
	lw t0, 7736(sp)
	addi t2, t0, 4
	sw t2, 7740(sp)
	lw t0, 7740(sp)
	lw t2, 0(t0)
	sw t2, 7744(sp)
	lw t0, 7744(sp)
	mv a0, t0
	call print
	lw t2, -532(s0)
	sw t2, 7748(sp)
	lw t0, 7748(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7752(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7756(sp)
	lw t0, 7756(sp)
	addi t2, t0, 0
	sw t2, 7760(sp)
	addi t4, zero, 1
	lw t0, 7760(sp)
	sw t4, 0(t0)
	la t2, .libro.str.129
	sw t2, 7764(sp)
	lw t0, 7756(sp)
	addi t2, t0, 4
	sw t2, 7768(sp)
	lw t0, 7768(sp)
	lw t1, 7764(sp)
	sw t1, 0(t0)
	lw t0, 7752(sp)
	mv a0, t0
	lw t0, 7756(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7772(sp)
	lw t0, 7772(sp)
	addi t2, t0, 4
	sw t2, 7776(sp)
	lw t0, 7776(sp)
	lw t2, 0(t0)
	sw t2, 7780(sp)
	lw t0, 7780(sp)
	mv a0, t0
	call print
	lw t2, -536(s0)
	sw t2, 7784(sp)
	lw t0, 7784(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7788(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7792(sp)
	lw t0, 7792(sp)
	addi t2, t0, 0
	sw t2, 7796(sp)
	addi t4, zero, 1
	lw t0, 7796(sp)
	sw t4, 0(t0)
	la t2, .libro.str.130
	sw t2, 7800(sp)
	lw t0, 7792(sp)
	addi t2, t0, 4
	sw t2, 7804(sp)
	lw t0, 7804(sp)
	lw t1, 7800(sp)
	sw t1, 0(t0)
	lw t0, 7788(sp)
	mv a0, t0
	lw t0, 7792(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7808(sp)
	lw t0, 7808(sp)
	addi t2, t0, 4
	sw t2, 7812(sp)
	lw t0, 7812(sp)
	lw t2, 0(t0)
	sw t2, 7816(sp)
	lw t0, 7816(sp)
	mv a0, t0
	call print
	lw t2, -540(s0)
	sw t2, 7820(sp)
	lw t0, 7820(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7824(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7828(sp)
	lw t0, 7828(sp)
	addi t2, t0, 0
	sw t2, 7832(sp)
	addi t4, zero, 1
	lw t0, 7832(sp)
	sw t4, 0(t0)
	la t2, .libro.str.131
	sw t2, 7836(sp)
	lw t0, 7828(sp)
	addi t2, t0, 4
	sw t2, 7840(sp)
	lw t0, 7840(sp)
	lw t1, 7836(sp)
	sw t1, 0(t0)
	lw t0, 7824(sp)
	mv a0, t0
	lw t0, 7828(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7844(sp)
	lw t0, 7844(sp)
	addi t2, t0, 4
	sw t2, 7848(sp)
	lw t0, 7848(sp)
	lw t2, 0(t0)
	sw t2, 7852(sp)
	lw t0, 7852(sp)
	mv a0, t0
	call print
	lw t2, -544(s0)
	sw t2, 7856(sp)
	lw t0, 7856(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7860(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7864(sp)
	lw t0, 7864(sp)
	addi t2, t0, 0
	sw t2, 7868(sp)
	addi t4, zero, 1
	lw t0, 7868(sp)
	sw t4, 0(t0)
	la t2, .libro.str.132
	sw t2, 7872(sp)
	lw t0, 7864(sp)
	addi t2, t0, 4
	sw t2, 7876(sp)
	lw t0, 7876(sp)
	lw t1, 7872(sp)
	sw t1, 0(t0)
	lw t0, 7860(sp)
	mv a0, t0
	lw t0, 7864(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7880(sp)
	lw t0, 7880(sp)
	addi t2, t0, 4
	sw t2, 7884(sp)
	lw t0, 7884(sp)
	lw t2, 0(t0)
	sw t2, 7888(sp)
	lw t0, 7888(sp)
	mv a0, t0
	call print
	lw t2, -548(s0)
	sw t2, 7892(sp)
	lw t0, 7892(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7896(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7900(sp)
	lw t0, 7900(sp)
	addi t2, t0, 0
	sw t2, 7904(sp)
	addi t4, zero, 1
	lw t0, 7904(sp)
	sw t4, 0(t0)
	la t2, .libro.str.133
	sw t2, 7908(sp)
	lw t0, 7900(sp)
	addi t2, t0, 4
	sw t2, 7912(sp)
	lw t0, 7912(sp)
	lw t1, 7908(sp)
	sw t1, 0(t0)
	lw t0, 7896(sp)
	mv a0, t0
	lw t0, 7900(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7916(sp)
	lw t0, 7916(sp)
	addi t2, t0, 4
	sw t2, 7920(sp)
	lw t0, 7920(sp)
	lw t2, 0(t0)
	sw t2, 7924(sp)
	lw t0, 7924(sp)
	mv a0, t0
	call print
	lw t2, -552(s0)
	sw t2, 7928(sp)
	lw t0, 7928(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7932(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7936(sp)
	lw t0, 7936(sp)
	addi t2, t0, 0
	sw t2, 7940(sp)
	addi t4, zero, 1
	lw t0, 7940(sp)
	sw t4, 0(t0)
	la t2, .libro.str.134
	sw t2, 7944(sp)
	lw t0, 7936(sp)
	addi t2, t0, 4
	sw t2, 7948(sp)
	lw t0, 7948(sp)
	lw t1, 7944(sp)
	sw t1, 0(t0)
	lw t0, 7932(sp)
	mv a0, t0
	lw t0, 7936(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7952(sp)
	lw t0, 7952(sp)
	addi t2, t0, 4
	sw t2, 7956(sp)
	lw t0, 7956(sp)
	lw t2, 0(t0)
	sw t2, 7960(sp)
	lw t0, 7960(sp)
	mv a0, t0
	call print
	lw t2, -556(s0)
	sw t2, 7964(sp)
	lw t0, 7964(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 7968(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 7972(sp)
	lw t0, 7972(sp)
	addi t2, t0, 0
	sw t2, 7976(sp)
	addi t4, zero, 1
	lw t0, 7976(sp)
	sw t4, 0(t0)
	la t2, .libro.str.135
	sw t2, 7980(sp)
	lw t0, 7972(sp)
	addi t2, t0, 4
	sw t2, 7984(sp)
	lw t0, 7984(sp)
	lw t1, 7980(sp)
	sw t1, 0(t0)
	lw t0, 7968(sp)
	mv a0, t0
	lw t0, 7972(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 7988(sp)
	lw t0, 7988(sp)
	addi t2, t0, 4
	sw t2, 7992(sp)
	lw t0, 7992(sp)
	lw t2, 0(t0)
	sw t2, 7996(sp)
	lw t0, 7996(sp)
	mv a0, t0
	call print
	lw t2, -560(s0)
	sw t2, 8000(sp)
	lw t0, 8000(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8004(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8008(sp)
	lw t0, 8008(sp)
	addi t2, t0, 0
	sw t2, 8012(sp)
	addi t4, zero, 1
	lw t0, 8012(sp)
	sw t4, 0(t0)
	la t2, .libro.str.136
	sw t2, 8016(sp)
	lw t0, 8008(sp)
	addi t2, t0, 4
	sw t2, 8020(sp)
	lw t0, 8020(sp)
	lw t1, 8016(sp)
	sw t1, 0(t0)
	lw t0, 8004(sp)
	mv a0, t0
	lw t0, 8008(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8024(sp)
	lw t0, 8024(sp)
	addi t2, t0, 4
	sw t2, 8028(sp)
	lw t0, 8028(sp)
	lw t2, 0(t0)
	sw t2, 8032(sp)
	lw t0, 8032(sp)
	mv a0, t0
	call print
	lw t2, -564(s0)
	sw t2, 8036(sp)
	lw t0, 8036(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8040(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8044(sp)
	lw t0, 8044(sp)
	addi t2, t0, 0
	sw t2, 8048(sp)
	addi t4, zero, 1
	lw t0, 8048(sp)
	sw t4, 0(t0)
	la t2, .libro.str.137
	sw t2, 8052(sp)
	lw t0, 8044(sp)
	addi t2, t0, 4
	sw t2, 8056(sp)
	lw t0, 8056(sp)
	lw t1, 8052(sp)
	sw t1, 0(t0)
	lw t0, 8040(sp)
	mv a0, t0
	lw t0, 8044(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8060(sp)
	lw t0, 8060(sp)
	addi t2, t0, 4
	sw t2, 8064(sp)
	lw t0, 8064(sp)
	lw t2, 0(t0)
	sw t2, 8068(sp)
	lw t0, 8068(sp)
	mv a0, t0
	call print
	lw t2, -568(s0)
	sw t2, 8072(sp)
	lw t0, 8072(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8076(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8080(sp)
	lw t0, 8080(sp)
	addi t2, t0, 0
	sw t2, 8084(sp)
	addi t4, zero, 1
	lw t0, 8084(sp)
	sw t4, 0(t0)
	la t2, .libro.str.138
	sw t2, 8088(sp)
	lw t0, 8080(sp)
	addi t2, t0, 4
	sw t2, 8092(sp)
	lw t0, 8092(sp)
	lw t1, 8088(sp)
	sw t1, 0(t0)
	lw t0, 8076(sp)
	mv a0, t0
	lw t0, 8080(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8096(sp)
	lw t0, 8096(sp)
	addi t2, t0, 4
	sw t2, 8100(sp)
	lw t0, 8100(sp)
	lw t2, 0(t0)
	sw t2, 8104(sp)
	lw t0, 8104(sp)
	mv a0, t0
	call print
	lw t2, -572(s0)
	sw t2, 8108(sp)
	lw t0, 8108(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8112(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8116(sp)
	lw t0, 8116(sp)
	addi t2, t0, 0
	sw t2, 8120(sp)
	addi t4, zero, 1
	lw t0, 8120(sp)
	sw t4, 0(t0)
	la t2, .libro.str.139
	sw t2, 8124(sp)
	lw t0, 8116(sp)
	addi t2, t0, 4
	sw t2, 8128(sp)
	lw t0, 8128(sp)
	lw t1, 8124(sp)
	sw t1, 0(t0)
	lw t0, 8112(sp)
	mv a0, t0
	lw t0, 8116(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8132(sp)
	lw t0, 8132(sp)
	addi t2, t0, 4
	sw t2, 8136(sp)
	lw t0, 8136(sp)
	lw t2, 0(t0)
	sw t2, 8140(sp)
	lw t0, 8140(sp)
	mv a0, t0
	call print
	lw t2, -576(s0)
	sw t2, 8144(sp)
	lw t0, 8144(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8148(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8152(sp)
	lw t0, 8152(sp)
	addi t2, t0, 0
	sw t2, 8156(sp)
	addi t4, zero, 1
	lw t0, 8156(sp)
	sw t4, 0(t0)
	la t2, .libro.str.140
	sw t2, 8160(sp)
	lw t0, 8152(sp)
	addi t2, t0, 4
	sw t2, 8164(sp)
	lw t0, 8164(sp)
	lw t1, 8160(sp)
	sw t1, 0(t0)
	lw t0, 8148(sp)
	mv a0, t0
	lw t0, 8152(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8168(sp)
	lw t0, 8168(sp)
	addi t2, t0, 4
	sw t2, 8172(sp)
	lw t0, 8172(sp)
	lw t2, 0(t0)
	sw t2, 8176(sp)
	lw t0, 8176(sp)
	mv a0, t0
	call print
	lw t2, -580(s0)
	sw t2, 8180(sp)
	lw t0, 8180(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8184(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8188(sp)
	lw t0, 8188(sp)
	addi t2, t0, 0
	sw t2, 8192(sp)
	addi t4, zero, 1
	lw t0, 8192(sp)
	sw t4, 0(t0)
	la t2, .libro.str.141
	sw t2, 8196(sp)
	lw t0, 8188(sp)
	addi t2, t0, 4
	sw t2, 8200(sp)
	lw t0, 8200(sp)
	lw t1, 8196(sp)
	sw t1, 0(t0)
	lw t0, 8184(sp)
	mv a0, t0
	lw t0, 8188(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8204(sp)
	lw t0, 8204(sp)
	addi t2, t0, 4
	sw t2, 8208(sp)
	lw t0, 8208(sp)
	lw t2, 0(t0)
	sw t2, 8212(sp)
	lw t0, 8212(sp)
	mv a0, t0
	call print
	lw t2, -584(s0)
	sw t2, 8216(sp)
	lw t0, 8216(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8220(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8224(sp)
	lw t0, 8224(sp)
	addi t2, t0, 0
	sw t2, 8228(sp)
	addi t4, zero, 1
	lw t0, 8228(sp)
	sw t4, 0(t0)
	la t2, .libro.str.142
	sw t2, 8232(sp)
	lw t0, 8224(sp)
	addi t2, t0, 4
	sw t2, 8236(sp)
	lw t0, 8236(sp)
	lw t1, 8232(sp)
	sw t1, 0(t0)
	lw t0, 8220(sp)
	mv a0, t0
	lw t0, 8224(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8240(sp)
	lw t0, 8240(sp)
	addi t2, t0, 4
	sw t2, 8244(sp)
	lw t0, 8244(sp)
	lw t2, 0(t0)
	sw t2, 8248(sp)
	lw t0, 8248(sp)
	mv a0, t0
	call print
	lw t2, -588(s0)
	sw t2, 8252(sp)
	lw t0, 8252(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8256(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8260(sp)
	lw t0, 8260(sp)
	addi t2, t0, 0
	sw t2, 8264(sp)
	addi t4, zero, 1
	lw t0, 8264(sp)
	sw t4, 0(t0)
	la t2, .libro.str.143
	sw t2, 8268(sp)
	lw t0, 8260(sp)
	addi t2, t0, 4
	sw t2, 8272(sp)
	lw t0, 8272(sp)
	lw t1, 8268(sp)
	sw t1, 0(t0)
	lw t0, 8256(sp)
	mv a0, t0
	lw t0, 8260(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8276(sp)
	lw t0, 8276(sp)
	addi t2, t0, 4
	sw t2, 8280(sp)
	lw t0, 8280(sp)
	lw t2, 0(t0)
	sw t2, 8284(sp)
	lw t0, 8284(sp)
	mv a0, t0
	call print
	lw t2, -592(s0)
	sw t2, 8288(sp)
	lw t0, 8288(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8292(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8296(sp)
	lw t0, 8296(sp)
	addi t2, t0, 0
	sw t2, 8300(sp)
	addi t4, zero, 1
	lw t0, 8300(sp)
	sw t4, 0(t0)
	la t2, .libro.str.144
	sw t2, 8304(sp)
	lw t0, 8296(sp)
	addi t2, t0, 4
	sw t2, 8308(sp)
	lw t0, 8308(sp)
	lw t1, 8304(sp)
	sw t1, 0(t0)
	lw t0, 8292(sp)
	mv a0, t0
	lw t0, 8296(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8312(sp)
	lw t0, 8312(sp)
	addi t2, t0, 4
	sw t2, 8316(sp)
	lw t0, 8316(sp)
	lw t2, 0(t0)
	sw t2, 8320(sp)
	lw t0, 8320(sp)
	mv a0, t0
	call print
	lw t2, -596(s0)
	sw t2, 8324(sp)
	lw t0, 8324(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8328(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8332(sp)
	lw t0, 8332(sp)
	addi t2, t0, 0
	sw t2, 8336(sp)
	addi t4, zero, 1
	lw t0, 8336(sp)
	sw t4, 0(t0)
	la t2, .libro.str.145
	sw t2, 8340(sp)
	lw t0, 8332(sp)
	addi t2, t0, 4
	sw t2, 8344(sp)
	lw t0, 8344(sp)
	lw t1, 8340(sp)
	sw t1, 0(t0)
	lw t0, 8328(sp)
	mv a0, t0
	lw t0, 8332(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8348(sp)
	lw t0, 8348(sp)
	addi t2, t0, 4
	sw t2, 8352(sp)
	lw t0, 8352(sp)
	lw t2, 0(t0)
	sw t2, 8356(sp)
	lw t0, 8356(sp)
	mv a0, t0
	call print
	lw t2, -600(s0)
	sw t2, 8360(sp)
	lw t0, 8360(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8364(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8368(sp)
	lw t0, 8368(sp)
	addi t2, t0, 0
	sw t2, 8372(sp)
	addi t4, zero, 1
	lw t0, 8372(sp)
	sw t4, 0(t0)
	la t2, .libro.str.146
	sw t2, 8376(sp)
	lw t0, 8368(sp)
	addi t2, t0, 4
	sw t2, 8380(sp)
	lw t0, 8380(sp)
	lw t1, 8376(sp)
	sw t1, 0(t0)
	lw t0, 8364(sp)
	mv a0, t0
	lw t0, 8368(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8384(sp)
	lw t0, 8384(sp)
	addi t2, t0, 4
	sw t2, 8388(sp)
	lw t0, 8388(sp)
	lw t2, 0(t0)
	sw t2, 8392(sp)
	lw t0, 8392(sp)
	mv a0, t0
	call print
	lw t2, -604(s0)
	sw t2, 8396(sp)
	lw t0, 8396(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8400(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8404(sp)
	lw t0, 8404(sp)
	addi t2, t0, 0
	sw t2, 8408(sp)
	addi t4, zero, 1
	lw t0, 8408(sp)
	sw t4, 0(t0)
	la t2, .libro.str.147
	sw t2, 8412(sp)
	lw t0, 8404(sp)
	addi t2, t0, 4
	sw t2, 8416(sp)
	lw t0, 8416(sp)
	lw t1, 8412(sp)
	sw t1, 0(t0)
	lw t0, 8400(sp)
	mv a0, t0
	lw t0, 8404(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8420(sp)
	lw t0, 8420(sp)
	addi t2, t0, 4
	sw t2, 8424(sp)
	lw t0, 8424(sp)
	lw t2, 0(t0)
	sw t2, 8428(sp)
	lw t0, 8428(sp)
	mv a0, t0
	call print
	lw t2, -608(s0)
	sw t2, 8432(sp)
	lw t0, 8432(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8436(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8440(sp)
	lw t0, 8440(sp)
	addi t2, t0, 0
	sw t2, 8444(sp)
	addi t4, zero, 1
	lw t0, 8444(sp)
	sw t4, 0(t0)
	la t2, .libro.str.148
	sw t2, 8448(sp)
	lw t0, 8440(sp)
	addi t2, t0, 4
	sw t2, 8452(sp)
	lw t0, 8452(sp)
	lw t1, 8448(sp)
	sw t1, 0(t0)
	lw t0, 8436(sp)
	mv a0, t0
	lw t0, 8440(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8456(sp)
	lw t0, 8456(sp)
	addi t2, t0, 4
	sw t2, 8460(sp)
	lw t0, 8460(sp)
	lw t2, 0(t0)
	sw t2, 8464(sp)
	lw t0, 8464(sp)
	mv a0, t0
	call print
	lw t2, -612(s0)
	sw t2, 8468(sp)
	lw t0, 8468(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8472(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8476(sp)
	lw t0, 8476(sp)
	addi t2, t0, 0
	sw t2, 8480(sp)
	addi t4, zero, 1
	lw t0, 8480(sp)
	sw t4, 0(t0)
	la t2, .libro.str.149
	sw t2, 8484(sp)
	lw t0, 8476(sp)
	addi t2, t0, 4
	sw t2, 8488(sp)
	lw t0, 8488(sp)
	lw t1, 8484(sp)
	sw t1, 0(t0)
	lw t0, 8472(sp)
	mv a0, t0
	lw t0, 8476(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8492(sp)
	lw t0, 8492(sp)
	addi t2, t0, 4
	sw t2, 8496(sp)
	lw t0, 8496(sp)
	lw t2, 0(t0)
	sw t2, 8500(sp)
	lw t0, 8500(sp)
	mv a0, t0
	call print
	lw t2, -616(s0)
	sw t2, 8504(sp)
	lw t0, 8504(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8508(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8512(sp)
	lw t0, 8512(sp)
	addi t2, t0, 0
	sw t2, 8516(sp)
	addi t4, zero, 1
	lw t0, 8516(sp)
	sw t4, 0(t0)
	la t2, .libro.str.150
	sw t2, 8520(sp)
	lw t0, 8512(sp)
	addi t2, t0, 4
	sw t2, 8524(sp)
	lw t0, 8524(sp)
	lw t1, 8520(sp)
	sw t1, 0(t0)
	lw t0, 8508(sp)
	mv a0, t0
	lw t0, 8512(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8528(sp)
	lw t0, 8528(sp)
	addi t2, t0, 4
	sw t2, 8532(sp)
	lw t0, 8532(sp)
	lw t2, 0(t0)
	sw t2, 8536(sp)
	lw t0, 8536(sp)
	mv a0, t0
	call print
	lw t2, -620(s0)
	sw t2, 8540(sp)
	lw t0, 8540(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8544(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8548(sp)
	lw t0, 8548(sp)
	addi t2, t0, 0
	sw t2, 8552(sp)
	addi t4, zero, 1
	lw t0, 8552(sp)
	sw t4, 0(t0)
	la t2, .libro.str.151
	sw t2, 8556(sp)
	lw t0, 8548(sp)
	addi t2, t0, 4
	sw t2, 8560(sp)
	lw t0, 8560(sp)
	lw t1, 8556(sp)
	sw t1, 0(t0)
	lw t0, 8544(sp)
	mv a0, t0
	lw t0, 8548(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8564(sp)
	lw t0, 8564(sp)
	addi t2, t0, 4
	sw t2, 8568(sp)
	lw t0, 8568(sp)
	lw t2, 0(t0)
	sw t2, 8572(sp)
	lw t0, 8572(sp)
	mv a0, t0
	call print
	lw t2, -624(s0)
	sw t2, 8576(sp)
	lw t0, 8576(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8580(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8584(sp)
	lw t0, 8584(sp)
	addi t2, t0, 0
	sw t2, 8588(sp)
	addi t4, zero, 1
	lw t0, 8588(sp)
	sw t4, 0(t0)
	la t2, .libro.str.152
	sw t2, 8592(sp)
	lw t0, 8584(sp)
	addi t2, t0, 4
	sw t2, 8596(sp)
	lw t0, 8596(sp)
	lw t1, 8592(sp)
	sw t1, 0(t0)
	lw t0, 8580(sp)
	mv a0, t0
	lw t0, 8584(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8600(sp)
	lw t0, 8600(sp)
	addi t2, t0, 4
	sw t2, 8604(sp)
	lw t0, 8604(sp)
	lw t2, 0(t0)
	sw t2, 8608(sp)
	lw t0, 8608(sp)
	mv a0, t0
	call print
	lw t2, -628(s0)
	sw t2, 8612(sp)
	lw t0, 8612(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8616(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8620(sp)
	lw t0, 8620(sp)
	addi t2, t0, 0
	sw t2, 8624(sp)
	addi t4, zero, 1
	lw t0, 8624(sp)
	sw t4, 0(t0)
	la t2, .libro.str.153
	sw t2, 8628(sp)
	lw t0, 8620(sp)
	addi t2, t0, 4
	sw t2, 8632(sp)
	lw t0, 8632(sp)
	lw t1, 8628(sp)
	sw t1, 0(t0)
	lw t0, 8616(sp)
	mv a0, t0
	lw t0, 8620(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8636(sp)
	lw t0, 8636(sp)
	addi t2, t0, 4
	sw t2, 8640(sp)
	lw t0, 8640(sp)
	lw t2, 0(t0)
	sw t2, 8644(sp)
	lw t0, 8644(sp)
	mv a0, t0
	call print
	lw t2, -632(s0)
	sw t2, 8648(sp)
	lw t0, 8648(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8652(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8656(sp)
	lw t0, 8656(sp)
	addi t2, t0, 0
	sw t2, 8660(sp)
	addi t4, zero, 1
	lw t0, 8660(sp)
	sw t4, 0(t0)
	la t2, .libro.str.154
	sw t2, 8664(sp)
	lw t0, 8656(sp)
	addi t2, t0, 4
	sw t2, 8668(sp)
	lw t0, 8668(sp)
	lw t1, 8664(sp)
	sw t1, 0(t0)
	lw t0, 8652(sp)
	mv a0, t0
	lw t0, 8656(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8672(sp)
	lw t0, 8672(sp)
	addi t2, t0, 4
	sw t2, 8676(sp)
	lw t0, 8676(sp)
	lw t2, 0(t0)
	sw t2, 8680(sp)
	lw t0, 8680(sp)
	mv a0, t0
	call print
	lw t2, -636(s0)
	sw t2, 8684(sp)
	lw t0, 8684(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8688(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8692(sp)
	lw t0, 8692(sp)
	addi t2, t0, 0
	sw t2, 8696(sp)
	addi t4, zero, 1
	lw t0, 8696(sp)
	sw t4, 0(t0)
	la t2, .libro.str.155
	sw t2, 8700(sp)
	lw t0, 8692(sp)
	addi t2, t0, 4
	sw t2, 8704(sp)
	lw t0, 8704(sp)
	lw t1, 8700(sp)
	sw t1, 0(t0)
	lw t0, 8688(sp)
	mv a0, t0
	lw t0, 8692(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8708(sp)
	lw t0, 8708(sp)
	addi t2, t0, 4
	sw t2, 8712(sp)
	lw t0, 8712(sp)
	lw t2, 0(t0)
	sw t2, 8716(sp)
	lw t0, 8716(sp)
	mv a0, t0
	call print
	lw t2, -640(s0)
	sw t2, 8720(sp)
	lw t0, 8720(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8724(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8728(sp)
	lw t0, 8728(sp)
	addi t2, t0, 0
	sw t2, 8732(sp)
	addi t4, zero, 1
	lw t0, 8732(sp)
	sw t4, 0(t0)
	la t2, .libro.str.156
	sw t2, 8736(sp)
	lw t0, 8728(sp)
	addi t2, t0, 4
	sw t2, 8740(sp)
	lw t0, 8740(sp)
	lw t1, 8736(sp)
	sw t1, 0(t0)
	lw t0, 8724(sp)
	mv a0, t0
	lw t0, 8728(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8744(sp)
	lw t0, 8744(sp)
	addi t2, t0, 4
	sw t2, 8748(sp)
	lw t0, 8748(sp)
	lw t2, 0(t0)
	sw t2, 8752(sp)
	lw t0, 8752(sp)
	mv a0, t0
	call print
	lw t2, -644(s0)
	sw t2, 8756(sp)
	lw t0, 8756(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8760(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8764(sp)
	lw t0, 8764(sp)
	addi t2, t0, 0
	sw t2, 8768(sp)
	addi t4, zero, 1
	lw t0, 8768(sp)
	sw t4, 0(t0)
	la t2, .libro.str.157
	sw t2, 8772(sp)
	lw t0, 8764(sp)
	addi t2, t0, 4
	sw t2, 8776(sp)
	lw t0, 8776(sp)
	lw t1, 8772(sp)
	sw t1, 0(t0)
	lw t0, 8760(sp)
	mv a0, t0
	lw t0, 8764(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8780(sp)
	lw t0, 8780(sp)
	addi t2, t0, 4
	sw t2, 8784(sp)
	lw t0, 8784(sp)
	lw t2, 0(t0)
	sw t2, 8788(sp)
	lw t0, 8788(sp)
	mv a0, t0
	call print
	lw t2, -648(s0)
	sw t2, 8792(sp)
	lw t0, 8792(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8796(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8800(sp)
	lw t0, 8800(sp)
	addi t2, t0, 0
	sw t2, 8804(sp)
	addi t4, zero, 1
	lw t0, 8804(sp)
	sw t4, 0(t0)
	la t2, .libro.str.158
	sw t2, 8808(sp)
	lw t0, 8800(sp)
	addi t2, t0, 4
	sw t2, 8812(sp)
	lw t0, 8812(sp)
	lw t1, 8808(sp)
	sw t1, 0(t0)
	lw t0, 8796(sp)
	mv a0, t0
	lw t0, 8800(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8816(sp)
	lw t0, 8816(sp)
	addi t2, t0, 4
	sw t2, 8820(sp)
	lw t0, 8820(sp)
	lw t2, 0(t0)
	sw t2, 8824(sp)
	lw t0, 8824(sp)
	mv a0, t0
	call print
	lw t2, -652(s0)
	sw t2, 8828(sp)
	lw t0, 8828(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8832(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8836(sp)
	lw t0, 8836(sp)
	addi t2, t0, 0
	sw t2, 8840(sp)
	addi t4, zero, 1
	lw t0, 8840(sp)
	sw t4, 0(t0)
	la t2, .libro.str.159
	sw t2, 8844(sp)
	lw t0, 8836(sp)
	addi t2, t0, 4
	sw t2, 8848(sp)
	lw t0, 8848(sp)
	lw t1, 8844(sp)
	sw t1, 0(t0)
	lw t0, 8832(sp)
	mv a0, t0
	lw t0, 8836(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8852(sp)
	lw t0, 8852(sp)
	addi t2, t0, 4
	sw t2, 8856(sp)
	lw t0, 8856(sp)
	lw t2, 0(t0)
	sw t2, 8860(sp)
	lw t0, 8860(sp)
	mv a0, t0
	call print
	lw t2, -656(s0)
	sw t2, 8864(sp)
	lw t0, 8864(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8868(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8872(sp)
	lw t0, 8872(sp)
	addi t2, t0, 0
	sw t2, 8876(sp)
	addi t4, zero, 1
	lw t0, 8876(sp)
	sw t4, 0(t0)
	la t2, .libro.str.160
	sw t2, 8880(sp)
	lw t0, 8872(sp)
	addi t2, t0, 4
	sw t2, 8884(sp)
	lw t0, 8884(sp)
	lw t1, 8880(sp)
	sw t1, 0(t0)
	lw t0, 8868(sp)
	mv a0, t0
	lw t0, 8872(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8888(sp)
	lw t0, 8888(sp)
	addi t2, t0, 4
	sw t2, 8892(sp)
	lw t0, 8892(sp)
	lw t2, 0(t0)
	sw t2, 8896(sp)
	lw t0, 8896(sp)
	mv a0, t0
	call print
	lw t2, -660(s0)
	sw t2, 8900(sp)
	lw t0, 8900(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8904(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8908(sp)
	lw t0, 8908(sp)
	addi t2, t0, 0
	sw t2, 8912(sp)
	addi t4, zero, 1
	lw t0, 8912(sp)
	sw t4, 0(t0)
	la t2, .libro.str.161
	sw t2, 8916(sp)
	lw t0, 8908(sp)
	addi t2, t0, 4
	sw t2, 8920(sp)
	lw t0, 8920(sp)
	lw t1, 8916(sp)
	sw t1, 0(t0)
	lw t0, 8904(sp)
	mv a0, t0
	lw t0, 8908(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8924(sp)
	lw t0, 8924(sp)
	addi t2, t0, 4
	sw t2, 8928(sp)
	lw t0, 8928(sp)
	lw t2, 0(t0)
	sw t2, 8932(sp)
	lw t0, 8932(sp)
	mv a0, t0
	call print
	lw t2, -664(s0)
	sw t2, 8936(sp)
	lw t0, 8936(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8940(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8944(sp)
	lw t0, 8944(sp)
	addi t2, t0, 0
	sw t2, 8948(sp)
	addi t4, zero, 1
	lw t0, 8948(sp)
	sw t4, 0(t0)
	la t2, .libro.str.162
	sw t2, 8952(sp)
	lw t0, 8944(sp)
	addi t2, t0, 4
	sw t2, 8956(sp)
	lw t0, 8956(sp)
	lw t1, 8952(sp)
	sw t1, 0(t0)
	lw t0, 8940(sp)
	mv a0, t0
	lw t0, 8944(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8960(sp)
	lw t0, 8960(sp)
	addi t2, t0, 4
	sw t2, 8964(sp)
	lw t0, 8964(sp)
	lw t2, 0(t0)
	sw t2, 8968(sp)
	lw t0, 8968(sp)
	mv a0, t0
	call print
	lw t2, -668(s0)
	sw t2, 8972(sp)
	lw t0, 8972(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 8976(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 8980(sp)
	lw t0, 8980(sp)
	addi t2, t0, 0
	sw t2, 8984(sp)
	addi t4, zero, 1
	lw t0, 8984(sp)
	sw t4, 0(t0)
	la t2, .libro.str.163
	sw t2, 8988(sp)
	lw t0, 8980(sp)
	addi t2, t0, 4
	sw t2, 8992(sp)
	lw t0, 8992(sp)
	lw t1, 8988(sp)
	sw t1, 0(t0)
	lw t0, 8976(sp)
	mv a0, t0
	lw t0, 8980(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 8996(sp)
	lw t0, 8996(sp)
	addi t2, t0, 4
	sw t2, 9000(sp)
	lw t0, 9000(sp)
	lw t2, 0(t0)
	sw t2, 9004(sp)
	lw t0, 9004(sp)
	mv a0, t0
	call print
	lw t2, -672(s0)
	sw t2, 9008(sp)
	lw t0, 9008(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9012(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9016(sp)
	lw t0, 9016(sp)
	addi t2, t0, 0
	sw t2, 9020(sp)
	addi t4, zero, 1
	lw t0, 9020(sp)
	sw t4, 0(t0)
	la t2, .libro.str.164
	sw t2, 9024(sp)
	lw t0, 9016(sp)
	addi t2, t0, 4
	sw t2, 9028(sp)
	lw t0, 9028(sp)
	lw t1, 9024(sp)
	sw t1, 0(t0)
	lw t0, 9012(sp)
	mv a0, t0
	lw t0, 9016(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9032(sp)
	lw t0, 9032(sp)
	addi t2, t0, 4
	sw t2, 9036(sp)
	lw t0, 9036(sp)
	lw t2, 0(t0)
	sw t2, 9040(sp)
	lw t0, 9040(sp)
	mv a0, t0
	call print
	lw t2, -676(s0)
	sw t2, 9044(sp)
	lw t0, 9044(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9048(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9052(sp)
	lw t0, 9052(sp)
	addi t2, t0, 0
	sw t2, 9056(sp)
	addi t4, zero, 1
	lw t0, 9056(sp)
	sw t4, 0(t0)
	la t2, .libro.str.165
	sw t2, 9060(sp)
	lw t0, 9052(sp)
	addi t2, t0, 4
	sw t2, 9064(sp)
	lw t0, 9064(sp)
	lw t1, 9060(sp)
	sw t1, 0(t0)
	lw t0, 9048(sp)
	mv a0, t0
	lw t0, 9052(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9068(sp)
	lw t0, 9068(sp)
	addi t2, t0, 4
	sw t2, 9072(sp)
	lw t0, 9072(sp)
	lw t2, 0(t0)
	sw t2, 9076(sp)
	lw t0, 9076(sp)
	mv a0, t0
	call print
	lw t2, -680(s0)
	sw t2, 9080(sp)
	lw t0, 9080(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9084(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9088(sp)
	lw t0, 9088(sp)
	addi t2, t0, 0
	sw t2, 9092(sp)
	addi t4, zero, 1
	lw t0, 9092(sp)
	sw t4, 0(t0)
	la t2, .libro.str.166
	sw t2, 9096(sp)
	lw t0, 9088(sp)
	addi t2, t0, 4
	sw t2, 9100(sp)
	lw t0, 9100(sp)
	lw t1, 9096(sp)
	sw t1, 0(t0)
	lw t0, 9084(sp)
	mv a0, t0
	lw t0, 9088(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9104(sp)
	lw t0, 9104(sp)
	addi t2, t0, 4
	sw t2, 9108(sp)
	lw t0, 9108(sp)
	lw t2, 0(t0)
	sw t2, 9112(sp)
	lw t0, 9112(sp)
	mv a0, t0
	call print
	lw t2, -684(s0)
	sw t2, 9116(sp)
	lw t0, 9116(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9120(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9124(sp)
	lw t0, 9124(sp)
	addi t2, t0, 0
	sw t2, 9128(sp)
	addi t4, zero, 1
	lw t0, 9128(sp)
	sw t4, 0(t0)
	la t2, .libro.str.167
	sw t2, 9132(sp)
	lw t0, 9124(sp)
	addi t2, t0, 4
	sw t2, 9136(sp)
	lw t0, 9136(sp)
	lw t1, 9132(sp)
	sw t1, 0(t0)
	lw t0, 9120(sp)
	mv a0, t0
	lw t0, 9124(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9140(sp)
	lw t0, 9140(sp)
	addi t2, t0, 4
	sw t2, 9144(sp)
	lw t0, 9144(sp)
	lw t2, 0(t0)
	sw t2, 9148(sp)
	lw t0, 9148(sp)
	mv a0, t0
	call print
	lw t2, -688(s0)
	sw t2, 9152(sp)
	lw t0, 9152(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9156(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9160(sp)
	lw t0, 9160(sp)
	addi t2, t0, 0
	sw t2, 9164(sp)
	addi t4, zero, 1
	lw t0, 9164(sp)
	sw t4, 0(t0)
	la t2, .libro.str.168
	sw t2, 9168(sp)
	lw t0, 9160(sp)
	addi t2, t0, 4
	sw t2, 9172(sp)
	lw t0, 9172(sp)
	lw t1, 9168(sp)
	sw t1, 0(t0)
	lw t0, 9156(sp)
	mv a0, t0
	lw t0, 9160(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9176(sp)
	lw t0, 9176(sp)
	addi t2, t0, 4
	sw t2, 9180(sp)
	lw t0, 9180(sp)
	lw t2, 0(t0)
	sw t2, 9184(sp)
	lw t0, 9184(sp)
	mv a0, t0
	call print
	lw t2, -692(s0)
	sw t2, 9188(sp)
	lw t0, 9188(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9192(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9196(sp)
	lw t0, 9196(sp)
	addi t2, t0, 0
	sw t2, 9200(sp)
	addi t4, zero, 1
	lw t0, 9200(sp)
	sw t4, 0(t0)
	la t2, .libro.str.169
	sw t2, 9204(sp)
	lw t0, 9196(sp)
	addi t2, t0, 4
	sw t2, 9208(sp)
	lw t0, 9208(sp)
	lw t1, 9204(sp)
	sw t1, 0(t0)
	lw t0, 9192(sp)
	mv a0, t0
	lw t0, 9196(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9212(sp)
	lw t0, 9212(sp)
	addi t2, t0, 4
	sw t2, 9216(sp)
	lw t0, 9216(sp)
	lw t2, 0(t0)
	sw t2, 9220(sp)
	lw t0, 9220(sp)
	mv a0, t0
	call print
	lw t2, -696(s0)
	sw t2, 9224(sp)
	lw t0, 9224(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9228(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9232(sp)
	lw t0, 9232(sp)
	addi t2, t0, 0
	sw t2, 9236(sp)
	addi t4, zero, 1
	lw t0, 9236(sp)
	sw t4, 0(t0)
	la t2, .libro.str.170
	sw t2, 9240(sp)
	lw t0, 9232(sp)
	addi t2, t0, 4
	sw t2, 9244(sp)
	lw t0, 9244(sp)
	lw t1, 9240(sp)
	sw t1, 0(t0)
	lw t0, 9228(sp)
	mv a0, t0
	lw t0, 9232(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9248(sp)
	lw t0, 9248(sp)
	addi t2, t0, 4
	sw t2, 9252(sp)
	lw t0, 9252(sp)
	lw t2, 0(t0)
	sw t2, 9256(sp)
	lw t0, 9256(sp)
	mv a0, t0
	call print
	lw t2, -700(s0)
	sw t2, 9260(sp)
	lw t0, 9260(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9264(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9268(sp)
	lw t0, 9268(sp)
	addi t2, t0, 0
	sw t2, 9272(sp)
	addi t4, zero, 1
	lw t0, 9272(sp)
	sw t4, 0(t0)
	la t2, .libro.str.171
	sw t2, 9276(sp)
	lw t0, 9268(sp)
	addi t2, t0, 4
	sw t2, 9280(sp)
	lw t0, 9280(sp)
	lw t1, 9276(sp)
	sw t1, 0(t0)
	lw t0, 9264(sp)
	mv a0, t0
	lw t0, 9268(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9284(sp)
	lw t0, 9284(sp)
	addi t2, t0, 4
	sw t2, 9288(sp)
	lw t0, 9288(sp)
	lw t2, 0(t0)
	sw t2, 9292(sp)
	lw t0, 9292(sp)
	mv a0, t0
	call print
	lw t2, -704(s0)
	sw t2, 9296(sp)
	lw t0, 9296(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9300(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9304(sp)
	lw t0, 9304(sp)
	addi t2, t0, 0
	sw t2, 9308(sp)
	addi t4, zero, 1
	lw t0, 9308(sp)
	sw t4, 0(t0)
	la t2, .libro.str.172
	sw t2, 9312(sp)
	lw t0, 9304(sp)
	addi t2, t0, 4
	sw t2, 9316(sp)
	lw t0, 9316(sp)
	lw t1, 9312(sp)
	sw t1, 0(t0)
	lw t0, 9300(sp)
	mv a0, t0
	lw t0, 9304(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9320(sp)
	lw t0, 9320(sp)
	addi t2, t0, 4
	sw t2, 9324(sp)
	lw t0, 9324(sp)
	lw t2, 0(t0)
	sw t2, 9328(sp)
	lw t0, 9328(sp)
	mv a0, t0
	call print
	lw t2, -708(s0)
	sw t2, 9332(sp)
	lw t0, 9332(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9336(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9340(sp)
	lw t0, 9340(sp)
	addi t2, t0, 0
	sw t2, 9344(sp)
	addi t4, zero, 1
	lw t0, 9344(sp)
	sw t4, 0(t0)
	la t2, .libro.str.173
	sw t2, 9348(sp)
	lw t0, 9340(sp)
	addi t2, t0, 4
	sw t2, 9352(sp)
	lw t0, 9352(sp)
	lw t1, 9348(sp)
	sw t1, 0(t0)
	lw t0, 9336(sp)
	mv a0, t0
	lw t0, 9340(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9356(sp)
	lw t0, 9356(sp)
	addi t2, t0, 4
	sw t2, 9360(sp)
	lw t0, 9360(sp)
	lw t2, 0(t0)
	sw t2, 9364(sp)
	lw t0, 9364(sp)
	mv a0, t0
	call print
	lw t2, -712(s0)
	sw t2, 9368(sp)
	lw t0, 9368(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9372(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9376(sp)
	lw t0, 9376(sp)
	addi t2, t0, 0
	sw t2, 9380(sp)
	addi t4, zero, 1
	lw t0, 9380(sp)
	sw t4, 0(t0)
	la t2, .libro.str.174
	sw t2, 9384(sp)
	lw t0, 9376(sp)
	addi t2, t0, 4
	sw t2, 9388(sp)
	lw t0, 9388(sp)
	lw t1, 9384(sp)
	sw t1, 0(t0)
	lw t0, 9372(sp)
	mv a0, t0
	lw t0, 9376(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9392(sp)
	lw t0, 9392(sp)
	addi t2, t0, 4
	sw t2, 9396(sp)
	lw t0, 9396(sp)
	lw t2, 0(t0)
	sw t2, 9400(sp)
	lw t0, 9400(sp)
	mv a0, t0
	call print
	lw t2, -716(s0)
	sw t2, 9404(sp)
	lw t0, 9404(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9408(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9412(sp)
	lw t0, 9412(sp)
	addi t2, t0, 0
	sw t2, 9416(sp)
	addi t4, zero, 1
	lw t0, 9416(sp)
	sw t4, 0(t0)
	la t2, .libro.str.175
	sw t2, 9420(sp)
	lw t0, 9412(sp)
	addi t2, t0, 4
	sw t2, 9424(sp)
	lw t0, 9424(sp)
	lw t1, 9420(sp)
	sw t1, 0(t0)
	lw t0, 9408(sp)
	mv a0, t0
	lw t0, 9412(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9428(sp)
	lw t0, 9428(sp)
	addi t2, t0, 4
	sw t2, 9432(sp)
	lw t0, 9432(sp)
	lw t2, 0(t0)
	sw t2, 9436(sp)
	lw t0, 9436(sp)
	mv a0, t0
	call print
	lw t2, -720(s0)
	sw t2, 9440(sp)
	lw t0, 9440(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9444(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9448(sp)
	lw t0, 9448(sp)
	addi t2, t0, 0
	sw t2, 9452(sp)
	addi t4, zero, 1
	lw t0, 9452(sp)
	sw t4, 0(t0)
	la t2, .libro.str.176
	sw t2, 9456(sp)
	lw t0, 9448(sp)
	addi t2, t0, 4
	sw t2, 9460(sp)
	lw t0, 9460(sp)
	lw t1, 9456(sp)
	sw t1, 0(t0)
	lw t0, 9444(sp)
	mv a0, t0
	lw t0, 9448(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9464(sp)
	lw t0, 9464(sp)
	addi t2, t0, 4
	sw t2, 9468(sp)
	lw t0, 9468(sp)
	lw t2, 0(t0)
	sw t2, 9472(sp)
	lw t0, 9472(sp)
	mv a0, t0
	call print
	lw t2, -724(s0)
	sw t2, 9476(sp)
	lw t0, 9476(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9480(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9484(sp)
	lw t0, 9484(sp)
	addi t2, t0, 0
	sw t2, 9488(sp)
	addi t4, zero, 1
	lw t0, 9488(sp)
	sw t4, 0(t0)
	la t2, .libro.str.177
	sw t2, 9492(sp)
	lw t0, 9484(sp)
	addi t2, t0, 4
	sw t2, 9496(sp)
	lw t0, 9496(sp)
	lw t1, 9492(sp)
	sw t1, 0(t0)
	lw t0, 9480(sp)
	mv a0, t0
	lw t0, 9484(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9500(sp)
	lw t0, 9500(sp)
	addi t2, t0, 4
	sw t2, 9504(sp)
	lw t0, 9504(sp)
	lw t2, 0(t0)
	sw t2, 9508(sp)
	lw t0, 9508(sp)
	mv a0, t0
	call print
	lw t2, -728(s0)
	sw t2, 9512(sp)
	lw t0, 9512(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9516(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9520(sp)
	lw t0, 9520(sp)
	addi t2, t0, 0
	sw t2, 9524(sp)
	addi t4, zero, 1
	lw t0, 9524(sp)
	sw t4, 0(t0)
	la t2, .libro.str.178
	sw t2, 9528(sp)
	lw t0, 9520(sp)
	addi t2, t0, 4
	sw t2, 9532(sp)
	lw t0, 9532(sp)
	lw t1, 9528(sp)
	sw t1, 0(t0)
	lw t0, 9516(sp)
	mv a0, t0
	lw t0, 9520(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9536(sp)
	lw t0, 9536(sp)
	addi t2, t0, 4
	sw t2, 9540(sp)
	lw t0, 9540(sp)
	lw t2, 0(t0)
	sw t2, 9544(sp)
	lw t0, 9544(sp)
	mv a0, t0
	call print
	lw t2, -732(s0)
	sw t2, 9548(sp)
	lw t0, 9548(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9552(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9556(sp)
	lw t0, 9556(sp)
	addi t2, t0, 0
	sw t2, 9560(sp)
	addi t4, zero, 1
	lw t0, 9560(sp)
	sw t4, 0(t0)
	la t2, .libro.str.179
	sw t2, 9564(sp)
	lw t0, 9556(sp)
	addi t2, t0, 4
	sw t2, 9568(sp)
	lw t0, 9568(sp)
	lw t1, 9564(sp)
	sw t1, 0(t0)
	lw t0, 9552(sp)
	mv a0, t0
	lw t0, 9556(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9572(sp)
	lw t0, 9572(sp)
	addi t2, t0, 4
	sw t2, 9576(sp)
	lw t0, 9576(sp)
	lw t2, 0(t0)
	sw t2, 9580(sp)
	lw t0, 9580(sp)
	mv a0, t0
	call print
	lw t2, -736(s0)
	sw t2, 9584(sp)
	lw t0, 9584(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9588(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9592(sp)
	lw t0, 9592(sp)
	addi t2, t0, 0
	sw t2, 9596(sp)
	addi t4, zero, 1
	lw t0, 9596(sp)
	sw t4, 0(t0)
	la t2, .libro.str.180
	sw t2, 9600(sp)
	lw t0, 9592(sp)
	addi t2, t0, 4
	sw t2, 9604(sp)
	lw t0, 9604(sp)
	lw t1, 9600(sp)
	sw t1, 0(t0)
	lw t0, 9588(sp)
	mv a0, t0
	lw t0, 9592(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9608(sp)
	lw t0, 9608(sp)
	addi t2, t0, 4
	sw t2, 9612(sp)
	lw t0, 9612(sp)
	lw t2, 0(t0)
	sw t2, 9616(sp)
	lw t0, 9616(sp)
	mv a0, t0
	call print
	lw t2, -740(s0)
	sw t2, 9620(sp)
	lw t0, 9620(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9624(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9628(sp)
	lw t0, 9628(sp)
	addi t2, t0, 0
	sw t2, 9632(sp)
	addi t4, zero, 1
	lw t0, 9632(sp)
	sw t4, 0(t0)
	la t2, .libro.str.181
	sw t2, 9636(sp)
	lw t0, 9628(sp)
	addi t2, t0, 4
	sw t2, 9640(sp)
	lw t0, 9640(sp)
	lw t1, 9636(sp)
	sw t1, 0(t0)
	lw t0, 9624(sp)
	mv a0, t0
	lw t0, 9628(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9644(sp)
	lw t0, 9644(sp)
	addi t2, t0, 4
	sw t2, 9648(sp)
	lw t0, 9648(sp)
	lw t2, 0(t0)
	sw t2, 9652(sp)
	lw t0, 9652(sp)
	mv a0, t0
	call print
	lw t2, -744(s0)
	sw t2, 9656(sp)
	lw t0, 9656(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9660(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9664(sp)
	lw t0, 9664(sp)
	addi t2, t0, 0
	sw t2, 9668(sp)
	addi t4, zero, 1
	lw t0, 9668(sp)
	sw t4, 0(t0)
	la t2, .libro.str.182
	sw t2, 9672(sp)
	lw t0, 9664(sp)
	addi t2, t0, 4
	sw t2, 9676(sp)
	lw t0, 9676(sp)
	lw t1, 9672(sp)
	sw t1, 0(t0)
	lw t0, 9660(sp)
	mv a0, t0
	lw t0, 9664(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9680(sp)
	lw t0, 9680(sp)
	addi t2, t0, 4
	sw t2, 9684(sp)
	lw t0, 9684(sp)
	lw t2, 0(t0)
	sw t2, 9688(sp)
	lw t0, 9688(sp)
	mv a0, t0
	call print
	lw t2, -748(s0)
	sw t2, 9692(sp)
	lw t0, 9692(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9696(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9700(sp)
	lw t0, 9700(sp)
	addi t2, t0, 0
	sw t2, 9704(sp)
	addi t4, zero, 1
	lw t0, 9704(sp)
	sw t4, 0(t0)
	la t2, .libro.str.183
	sw t2, 9708(sp)
	lw t0, 9700(sp)
	addi t2, t0, 4
	sw t2, 9712(sp)
	lw t0, 9712(sp)
	lw t1, 9708(sp)
	sw t1, 0(t0)
	lw t0, 9696(sp)
	mv a0, t0
	lw t0, 9700(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9716(sp)
	lw t0, 9716(sp)
	addi t2, t0, 4
	sw t2, 9720(sp)
	lw t0, 9720(sp)
	lw t2, 0(t0)
	sw t2, 9724(sp)
	lw t0, 9724(sp)
	mv a0, t0
	call print
	lw t2, -752(s0)
	sw t2, 9728(sp)
	lw t0, 9728(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9732(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9736(sp)
	lw t0, 9736(sp)
	addi t2, t0, 0
	sw t2, 9740(sp)
	addi t4, zero, 1
	lw t0, 9740(sp)
	sw t4, 0(t0)
	la t2, .libro.str.184
	sw t2, 9744(sp)
	lw t0, 9736(sp)
	addi t2, t0, 4
	sw t2, 9748(sp)
	lw t0, 9748(sp)
	lw t1, 9744(sp)
	sw t1, 0(t0)
	lw t0, 9732(sp)
	mv a0, t0
	lw t0, 9736(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9752(sp)
	lw t0, 9752(sp)
	addi t2, t0, 4
	sw t2, 9756(sp)
	lw t0, 9756(sp)
	lw t2, 0(t0)
	sw t2, 9760(sp)
	lw t0, 9760(sp)
	mv a0, t0
	call print
	lw t2, -756(s0)
	sw t2, 9764(sp)
	lw t0, 9764(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9768(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9772(sp)
	lw t0, 9772(sp)
	addi t2, t0, 0
	sw t2, 9776(sp)
	addi t4, zero, 1
	lw t0, 9776(sp)
	sw t4, 0(t0)
	la t2, .libro.str.185
	sw t2, 9780(sp)
	lw t0, 9772(sp)
	addi t2, t0, 4
	sw t2, 9784(sp)
	lw t0, 9784(sp)
	lw t1, 9780(sp)
	sw t1, 0(t0)
	lw t0, 9768(sp)
	mv a0, t0
	lw t0, 9772(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9788(sp)
	lw t0, 9788(sp)
	addi t2, t0, 4
	sw t2, 9792(sp)
	lw t0, 9792(sp)
	lw t2, 0(t0)
	sw t2, 9796(sp)
	lw t0, 9796(sp)
	mv a0, t0
	call print
	lw t2, -760(s0)
	sw t2, 9800(sp)
	lw t0, 9800(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9804(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9808(sp)
	lw t0, 9808(sp)
	addi t2, t0, 0
	sw t2, 9812(sp)
	addi t4, zero, 1
	lw t0, 9812(sp)
	sw t4, 0(t0)
	la t2, .libro.str.186
	sw t2, 9816(sp)
	lw t0, 9808(sp)
	addi t2, t0, 4
	sw t2, 9820(sp)
	lw t0, 9820(sp)
	lw t1, 9816(sp)
	sw t1, 0(t0)
	lw t0, 9804(sp)
	mv a0, t0
	lw t0, 9808(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9824(sp)
	lw t0, 9824(sp)
	addi t2, t0, 4
	sw t2, 9828(sp)
	lw t0, 9828(sp)
	lw t2, 0(t0)
	sw t2, 9832(sp)
	lw t0, 9832(sp)
	mv a0, t0
	call print
	lw t2, -764(s0)
	sw t2, 9836(sp)
	lw t0, 9836(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9840(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9844(sp)
	lw t0, 9844(sp)
	addi t2, t0, 0
	sw t2, 9848(sp)
	addi t4, zero, 1
	lw t0, 9848(sp)
	sw t4, 0(t0)
	la t2, .libro.str.187
	sw t2, 9852(sp)
	lw t0, 9844(sp)
	addi t2, t0, 4
	sw t2, 9856(sp)
	lw t0, 9856(sp)
	lw t1, 9852(sp)
	sw t1, 0(t0)
	lw t0, 9840(sp)
	mv a0, t0
	lw t0, 9844(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9860(sp)
	lw t0, 9860(sp)
	addi t2, t0, 4
	sw t2, 9864(sp)
	lw t0, 9864(sp)
	lw t2, 0(t0)
	sw t2, 9868(sp)
	lw t0, 9868(sp)
	mv a0, t0
	call print
	lw t2, -768(s0)
	sw t2, 9872(sp)
	lw t0, 9872(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9876(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9880(sp)
	lw t0, 9880(sp)
	addi t2, t0, 0
	sw t2, 9884(sp)
	addi t4, zero, 1
	lw t0, 9884(sp)
	sw t4, 0(t0)
	la t2, .libro.str.188
	sw t2, 9888(sp)
	lw t0, 9880(sp)
	addi t2, t0, 4
	sw t2, 9892(sp)
	lw t0, 9892(sp)
	lw t1, 9888(sp)
	sw t1, 0(t0)
	lw t0, 9876(sp)
	mv a0, t0
	lw t0, 9880(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9896(sp)
	lw t0, 9896(sp)
	addi t2, t0, 4
	sw t2, 9900(sp)
	lw t0, 9900(sp)
	lw t2, 0(t0)
	sw t2, 9904(sp)
	lw t0, 9904(sp)
	mv a0, t0
	call print
	lw t2, -772(s0)
	sw t2, 9908(sp)
	lw t0, 9908(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9912(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9916(sp)
	lw t0, 9916(sp)
	addi t2, t0, 0
	sw t2, 9920(sp)
	addi t4, zero, 1
	lw t0, 9920(sp)
	sw t4, 0(t0)
	la t2, .libro.str.189
	sw t2, 9924(sp)
	lw t0, 9916(sp)
	addi t2, t0, 4
	sw t2, 9928(sp)
	lw t0, 9928(sp)
	lw t1, 9924(sp)
	sw t1, 0(t0)
	lw t0, 9912(sp)
	mv a0, t0
	lw t0, 9916(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9932(sp)
	lw t0, 9932(sp)
	addi t2, t0, 4
	sw t2, 9936(sp)
	lw t0, 9936(sp)
	lw t2, 0(t0)
	sw t2, 9940(sp)
	lw t0, 9940(sp)
	mv a0, t0
	call print
	lw t2, -776(s0)
	sw t2, 9944(sp)
	lw t0, 9944(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9948(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9952(sp)
	lw t0, 9952(sp)
	addi t2, t0, 0
	sw t2, 9956(sp)
	addi t4, zero, 1
	lw t0, 9956(sp)
	sw t4, 0(t0)
	la t2, .libro.str.190
	sw t2, 9960(sp)
	lw t0, 9952(sp)
	addi t2, t0, 4
	sw t2, 9964(sp)
	lw t0, 9964(sp)
	lw t1, 9960(sp)
	sw t1, 0(t0)
	lw t0, 9948(sp)
	mv a0, t0
	lw t0, 9952(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 9968(sp)
	lw t0, 9968(sp)
	addi t2, t0, 4
	sw t2, 9972(sp)
	lw t0, 9972(sp)
	lw t2, 0(t0)
	sw t2, 9976(sp)
	lw t0, 9976(sp)
	mv a0, t0
	call print
	lw t2, -780(s0)
	sw t2, 9980(sp)
	lw t0, 9980(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 9984(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 9988(sp)
	lw t0, 9988(sp)
	addi t2, t0, 0
	sw t2, 9992(sp)
	addi t4, zero, 1
	lw t0, 9992(sp)
	sw t4, 0(t0)
	la t2, .libro.str.191
	sw t2, 9996(sp)
	lw t0, 9988(sp)
	addi t2, t0, 4
	sw t2, 10000(sp)
	lw t0, 10000(sp)
	lw t1, 9996(sp)
	sw t1, 0(t0)
	lw t0, 9984(sp)
	mv a0, t0
	lw t0, 9988(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10004(sp)
	lw t0, 10004(sp)
	addi t2, t0, 4
	sw t2, 10008(sp)
	lw t0, 10008(sp)
	lw t2, 0(t0)
	sw t2, 10012(sp)
	lw t0, 10012(sp)
	mv a0, t0
	call print
	lw t2, -784(s0)
	sw t2, 10016(sp)
	lw t0, 10016(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10020(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10024(sp)
	lw t0, 10024(sp)
	addi t2, t0, 0
	sw t2, 10028(sp)
	addi t4, zero, 1
	lw t0, 10028(sp)
	sw t4, 0(t0)
	la t2, .libro.str.192
	sw t2, 10032(sp)
	lw t0, 10024(sp)
	addi t2, t0, 4
	sw t2, 10036(sp)
	lw t0, 10036(sp)
	lw t1, 10032(sp)
	sw t1, 0(t0)
	lw t0, 10020(sp)
	mv a0, t0
	lw t0, 10024(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10040(sp)
	lw t0, 10040(sp)
	addi t2, t0, 4
	sw t2, 10044(sp)
	lw t0, 10044(sp)
	lw t2, 0(t0)
	sw t2, 10048(sp)
	lw t0, 10048(sp)
	mv a0, t0
	call print
	lw t2, -788(s0)
	sw t2, 10052(sp)
	lw t0, 10052(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10056(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10060(sp)
	lw t0, 10060(sp)
	addi t2, t0, 0
	sw t2, 10064(sp)
	addi t4, zero, 1
	lw t0, 10064(sp)
	sw t4, 0(t0)
	la t2, .libro.str.193
	sw t2, 10068(sp)
	lw t0, 10060(sp)
	addi t2, t0, 4
	sw t2, 10072(sp)
	lw t0, 10072(sp)
	lw t1, 10068(sp)
	sw t1, 0(t0)
	lw t0, 10056(sp)
	mv a0, t0
	lw t0, 10060(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10076(sp)
	lw t0, 10076(sp)
	addi t2, t0, 4
	sw t2, 10080(sp)
	lw t0, 10080(sp)
	lw t2, 0(t0)
	sw t2, 10084(sp)
	lw t0, 10084(sp)
	mv a0, t0
	call print
	lw t2, -792(s0)
	sw t2, 10088(sp)
	lw t0, 10088(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10092(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10096(sp)
	lw t0, 10096(sp)
	addi t2, t0, 0
	sw t2, 10100(sp)
	addi t4, zero, 1
	lw t0, 10100(sp)
	sw t4, 0(t0)
	la t2, .libro.str.194
	sw t2, 10104(sp)
	lw t0, 10096(sp)
	addi t2, t0, 4
	sw t2, 10108(sp)
	lw t0, 10108(sp)
	lw t1, 10104(sp)
	sw t1, 0(t0)
	lw t0, 10092(sp)
	mv a0, t0
	lw t0, 10096(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10112(sp)
	lw t0, 10112(sp)
	addi t2, t0, 4
	sw t2, 10116(sp)
	lw t0, 10116(sp)
	lw t2, 0(t0)
	sw t2, 10120(sp)
	lw t0, 10120(sp)
	mv a0, t0
	call print
	lw t2, -796(s0)
	sw t2, 10124(sp)
	lw t0, 10124(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10128(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10132(sp)
	lw t0, 10132(sp)
	addi t2, t0, 0
	sw t2, 10136(sp)
	addi t4, zero, 1
	lw t0, 10136(sp)
	sw t4, 0(t0)
	la t2, .libro.str.195
	sw t2, 10140(sp)
	lw t0, 10132(sp)
	addi t2, t0, 4
	sw t2, 10144(sp)
	lw t0, 10144(sp)
	lw t1, 10140(sp)
	sw t1, 0(t0)
	lw t0, 10128(sp)
	mv a0, t0
	lw t0, 10132(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10148(sp)
	lw t0, 10148(sp)
	addi t2, t0, 4
	sw t2, 10152(sp)
	lw t0, 10152(sp)
	lw t2, 0(t0)
	sw t2, 10156(sp)
	lw t0, 10156(sp)
	mv a0, t0
	call print
	lw t2, -800(s0)
	sw t2, 10160(sp)
	lw t0, 10160(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10164(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10168(sp)
	lw t0, 10168(sp)
	addi t2, t0, 0
	sw t2, 10172(sp)
	addi t4, zero, 1
	lw t0, 10172(sp)
	sw t4, 0(t0)
	la t2, .libro.str.196
	sw t2, 10176(sp)
	lw t0, 10168(sp)
	addi t2, t0, 4
	sw t2, 10180(sp)
	lw t0, 10180(sp)
	lw t1, 10176(sp)
	sw t1, 0(t0)
	lw t0, 10164(sp)
	mv a0, t0
	lw t0, 10168(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10184(sp)
	lw t0, 10184(sp)
	addi t2, t0, 4
	sw t2, 10188(sp)
	lw t0, 10188(sp)
	lw t2, 0(t0)
	sw t2, 10192(sp)
	lw t0, 10192(sp)
	mv a0, t0
	call print
	lw t2, -804(s0)
	sw t2, 10196(sp)
	lw t0, 10196(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10200(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10204(sp)
	lw t0, 10204(sp)
	addi t2, t0, 0
	sw t2, 10208(sp)
	addi t4, zero, 1
	lw t0, 10208(sp)
	sw t4, 0(t0)
	la t2, .libro.str.197
	sw t2, 10212(sp)
	lw t0, 10204(sp)
	addi t2, t0, 4
	sw t2, 10216(sp)
	lw t0, 10216(sp)
	lw t1, 10212(sp)
	sw t1, 0(t0)
	lw t0, 10200(sp)
	mv a0, t0
	lw t0, 10204(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10220(sp)
	lw t0, 10220(sp)
	addi t2, t0, 4
	sw t2, 10224(sp)
	lw t0, 10224(sp)
	lw t2, 0(t0)
	sw t2, 10228(sp)
	lw t0, 10228(sp)
	mv a0, t0
	call print
	lw t2, -808(s0)
	sw t2, 10232(sp)
	lw t0, 10232(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10236(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10240(sp)
	lw t0, 10240(sp)
	addi t2, t0, 0
	sw t2, 10244(sp)
	addi t4, zero, 1
	lw t0, 10244(sp)
	sw t4, 0(t0)
	la t2, .libro.str.198
	sw t2, 10248(sp)
	lw t0, 10240(sp)
	addi t2, t0, 4
	sw t2, 10252(sp)
	lw t0, 10252(sp)
	lw t1, 10248(sp)
	sw t1, 0(t0)
	lw t0, 10236(sp)
	mv a0, t0
	lw t0, 10240(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10256(sp)
	lw t0, 10256(sp)
	addi t2, t0, 4
	sw t2, 10260(sp)
	lw t0, 10260(sp)
	lw t2, 0(t0)
	sw t2, 10264(sp)
	lw t0, 10264(sp)
	mv a0, t0
	call print
	lw t2, -812(s0)
	sw t2, 10268(sp)
	lw t0, 10268(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10272(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10276(sp)
	lw t0, 10276(sp)
	addi t2, t0, 0
	sw t2, 10280(sp)
	addi t4, zero, 1
	lw t0, 10280(sp)
	sw t4, 0(t0)
	la t2, .libro.str.199
	sw t2, 10284(sp)
	lw t0, 10276(sp)
	addi t2, t0, 4
	sw t2, 10288(sp)
	lw t0, 10288(sp)
	lw t1, 10284(sp)
	sw t1, 0(t0)
	lw t0, 10272(sp)
	mv a0, t0
	lw t0, 10276(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10292(sp)
	lw t0, 10292(sp)
	addi t2, t0, 4
	sw t2, 10296(sp)
	lw t0, 10296(sp)
	lw t2, 0(t0)
	sw t2, 10300(sp)
	lw t0, 10300(sp)
	mv a0, t0
	call print
	lw t2, -816(s0)
	sw t2, 10304(sp)
	lw t0, 10304(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10308(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10312(sp)
	lw t0, 10312(sp)
	addi t2, t0, 0
	sw t2, 10316(sp)
	addi t4, zero, 1
	lw t0, 10316(sp)
	sw t4, 0(t0)
	la t2, .libro.str.200
	sw t2, 10320(sp)
	lw t0, 10312(sp)
	addi t2, t0, 4
	sw t2, 10324(sp)
	lw t0, 10324(sp)
	lw t1, 10320(sp)
	sw t1, 0(t0)
	lw t0, 10308(sp)
	mv a0, t0
	lw t0, 10312(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10328(sp)
	lw t0, 10328(sp)
	addi t2, t0, 4
	sw t2, 10332(sp)
	lw t0, 10332(sp)
	lw t2, 0(t0)
	sw t2, 10336(sp)
	lw t0, 10336(sp)
	mv a0, t0
	call print
	lw t2, -820(s0)
	sw t2, 10340(sp)
	lw t0, 10340(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10344(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10348(sp)
	lw t0, 10348(sp)
	addi t2, t0, 0
	sw t2, 10352(sp)
	addi t4, zero, 1
	lw t0, 10352(sp)
	sw t4, 0(t0)
	la t2, .libro.str.201
	sw t2, 10356(sp)
	lw t0, 10348(sp)
	addi t2, t0, 4
	sw t2, 10360(sp)
	lw t0, 10360(sp)
	lw t1, 10356(sp)
	sw t1, 0(t0)
	lw t0, 10344(sp)
	mv a0, t0
	lw t0, 10348(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10364(sp)
	lw t0, 10364(sp)
	addi t2, t0, 4
	sw t2, 10368(sp)
	lw t0, 10368(sp)
	lw t2, 0(t0)
	sw t2, 10372(sp)
	lw t0, 10372(sp)
	mv a0, t0
	call print
	lw t2, -824(s0)
	sw t2, 10376(sp)
	lw t0, 10376(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10380(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10384(sp)
	lw t0, 10384(sp)
	addi t2, t0, 0
	sw t2, 10388(sp)
	addi t4, zero, 1
	lw t0, 10388(sp)
	sw t4, 0(t0)
	la t2, .libro.str.202
	sw t2, 10392(sp)
	lw t0, 10384(sp)
	addi t2, t0, 4
	sw t2, 10396(sp)
	lw t0, 10396(sp)
	lw t1, 10392(sp)
	sw t1, 0(t0)
	lw t0, 10380(sp)
	mv a0, t0
	lw t0, 10384(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10400(sp)
	lw t0, 10400(sp)
	addi t2, t0, 4
	sw t2, 10404(sp)
	lw t0, 10404(sp)
	lw t2, 0(t0)
	sw t2, 10408(sp)
	lw t0, 10408(sp)
	mv a0, t0
	call print
	lw t2, -828(s0)
	sw t2, 10412(sp)
	lw t0, 10412(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10416(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10420(sp)
	lw t0, 10420(sp)
	addi t2, t0, 0
	sw t2, 10424(sp)
	addi t4, zero, 1
	lw t0, 10424(sp)
	sw t4, 0(t0)
	la t2, .libro.str.203
	sw t2, 10428(sp)
	lw t0, 10420(sp)
	addi t2, t0, 4
	sw t2, 10432(sp)
	lw t0, 10432(sp)
	lw t1, 10428(sp)
	sw t1, 0(t0)
	lw t0, 10416(sp)
	mv a0, t0
	lw t0, 10420(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10436(sp)
	lw t0, 10436(sp)
	addi t2, t0, 4
	sw t2, 10440(sp)
	lw t0, 10440(sp)
	lw t2, 0(t0)
	sw t2, 10444(sp)
	lw t0, 10444(sp)
	mv a0, t0
	call print
	lw t2, -832(s0)
	sw t2, 10448(sp)
	lw t0, 10448(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10452(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10456(sp)
	lw t0, 10456(sp)
	addi t2, t0, 0
	sw t2, 10460(sp)
	addi t4, zero, 1
	lw t0, 10460(sp)
	sw t4, 0(t0)
	la t2, .libro.str.204
	sw t2, 10464(sp)
	lw t0, 10456(sp)
	addi t2, t0, 4
	sw t2, 10468(sp)
	lw t0, 10468(sp)
	lw t1, 10464(sp)
	sw t1, 0(t0)
	lw t0, 10452(sp)
	mv a0, t0
	lw t0, 10456(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10472(sp)
	lw t0, 10472(sp)
	addi t2, t0, 4
	sw t2, 10476(sp)
	lw t0, 10476(sp)
	lw t2, 0(t0)
	sw t2, 10480(sp)
	lw t0, 10480(sp)
	mv a0, t0
	call print
	lw t2, -836(s0)
	sw t2, 10484(sp)
	lw t0, 10484(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10488(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10492(sp)
	lw t0, 10492(sp)
	addi t2, t0, 0
	sw t2, 10496(sp)
	addi t4, zero, 1
	lw t0, 10496(sp)
	sw t4, 0(t0)
	la t2, .libro.str.205
	sw t2, 10500(sp)
	lw t0, 10492(sp)
	addi t2, t0, 4
	sw t2, 10504(sp)
	lw t0, 10504(sp)
	lw t1, 10500(sp)
	sw t1, 0(t0)
	lw t0, 10488(sp)
	mv a0, t0
	lw t0, 10492(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10508(sp)
	lw t0, 10508(sp)
	addi t2, t0, 4
	sw t2, 10512(sp)
	lw t0, 10512(sp)
	lw t2, 0(t0)
	sw t2, 10516(sp)
	lw t0, 10516(sp)
	mv a0, t0
	call print
	lw t2, -840(s0)
	sw t2, 10520(sp)
	lw t0, 10520(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10524(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10528(sp)
	lw t0, 10528(sp)
	addi t2, t0, 0
	sw t2, 10532(sp)
	addi t4, zero, 1
	lw t0, 10532(sp)
	sw t4, 0(t0)
	la t2, .libro.str.206
	sw t2, 10536(sp)
	lw t0, 10528(sp)
	addi t2, t0, 4
	sw t2, 10540(sp)
	lw t0, 10540(sp)
	lw t1, 10536(sp)
	sw t1, 0(t0)
	lw t0, 10524(sp)
	mv a0, t0
	lw t0, 10528(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10544(sp)
	lw t0, 10544(sp)
	addi t2, t0, 4
	sw t2, 10548(sp)
	lw t0, 10548(sp)
	lw t2, 0(t0)
	sw t2, 10552(sp)
	lw t0, 10552(sp)
	mv a0, t0
	call print
	lw t2, -844(s0)
	sw t2, 10556(sp)
	lw t0, 10556(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10560(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10564(sp)
	lw t0, 10564(sp)
	addi t2, t0, 0
	sw t2, 10568(sp)
	addi t4, zero, 1
	lw t0, 10568(sp)
	sw t4, 0(t0)
	la t2, .libro.str.207
	sw t2, 10572(sp)
	lw t0, 10564(sp)
	addi t2, t0, 4
	sw t2, 10576(sp)
	lw t0, 10576(sp)
	lw t1, 10572(sp)
	sw t1, 0(t0)
	lw t0, 10560(sp)
	mv a0, t0
	lw t0, 10564(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10580(sp)
	lw t0, 10580(sp)
	addi t2, t0, 4
	sw t2, 10584(sp)
	lw t0, 10584(sp)
	lw t2, 0(t0)
	sw t2, 10588(sp)
	lw t0, 10588(sp)
	mv a0, t0
	call print
	lw t2, -848(s0)
	sw t2, 10592(sp)
	lw t0, 10592(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10596(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10600(sp)
	lw t0, 10600(sp)
	addi t2, t0, 0
	sw t2, 10604(sp)
	addi t4, zero, 1
	lw t0, 10604(sp)
	sw t4, 0(t0)
	la t2, .libro.str.208
	sw t2, 10608(sp)
	lw t0, 10600(sp)
	addi t2, t0, 4
	sw t2, 10612(sp)
	lw t0, 10612(sp)
	lw t1, 10608(sp)
	sw t1, 0(t0)
	lw t0, 10596(sp)
	mv a0, t0
	lw t0, 10600(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10616(sp)
	lw t0, 10616(sp)
	addi t2, t0, 4
	sw t2, 10620(sp)
	lw t0, 10620(sp)
	lw t2, 0(t0)
	sw t2, 10624(sp)
	lw t0, 10624(sp)
	mv a0, t0
	call print
	lw t2, -852(s0)
	sw t2, 10628(sp)
	lw t0, 10628(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10632(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10636(sp)
	lw t0, 10636(sp)
	addi t2, t0, 0
	sw t2, 10640(sp)
	addi t4, zero, 1
	lw t0, 10640(sp)
	sw t4, 0(t0)
	la t2, .libro.str.209
	sw t2, 10644(sp)
	lw t0, 10636(sp)
	addi t2, t0, 4
	sw t2, 10648(sp)
	lw t0, 10648(sp)
	lw t1, 10644(sp)
	sw t1, 0(t0)
	lw t0, 10632(sp)
	mv a0, t0
	lw t0, 10636(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10652(sp)
	lw t0, 10652(sp)
	addi t2, t0, 4
	sw t2, 10656(sp)
	lw t0, 10656(sp)
	lw t2, 0(t0)
	sw t2, 10660(sp)
	lw t0, 10660(sp)
	mv a0, t0
	call print
	lw t2, -856(s0)
	sw t2, 10664(sp)
	lw t0, 10664(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10668(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10672(sp)
	lw t0, 10672(sp)
	addi t2, t0, 0
	sw t2, 10676(sp)
	addi t4, zero, 1
	lw t0, 10676(sp)
	sw t4, 0(t0)
	la t2, .libro.str.210
	sw t2, 10680(sp)
	lw t0, 10672(sp)
	addi t2, t0, 4
	sw t2, 10684(sp)
	lw t0, 10684(sp)
	lw t1, 10680(sp)
	sw t1, 0(t0)
	lw t0, 10668(sp)
	mv a0, t0
	lw t0, 10672(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10688(sp)
	lw t0, 10688(sp)
	addi t2, t0, 4
	sw t2, 10692(sp)
	lw t0, 10692(sp)
	lw t2, 0(t0)
	sw t2, 10696(sp)
	lw t0, 10696(sp)
	mv a0, t0
	call print
	lw t2, -860(s0)
	sw t2, 10700(sp)
	lw t0, 10700(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10704(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10708(sp)
	lw t0, 10708(sp)
	addi t2, t0, 0
	sw t2, 10712(sp)
	addi t4, zero, 1
	lw t0, 10712(sp)
	sw t4, 0(t0)
	la t2, .libro.str.211
	sw t2, 10716(sp)
	lw t0, 10708(sp)
	addi t2, t0, 4
	sw t2, 10720(sp)
	lw t0, 10720(sp)
	lw t1, 10716(sp)
	sw t1, 0(t0)
	lw t0, 10704(sp)
	mv a0, t0
	lw t0, 10708(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10724(sp)
	lw t0, 10724(sp)
	addi t2, t0, 4
	sw t2, 10728(sp)
	lw t0, 10728(sp)
	lw t2, 0(t0)
	sw t2, 10732(sp)
	lw t0, 10732(sp)
	mv a0, t0
	call print
	lw t2, -864(s0)
	sw t2, 10736(sp)
	lw t0, 10736(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10740(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10744(sp)
	lw t0, 10744(sp)
	addi t2, t0, 0
	sw t2, 10748(sp)
	addi t4, zero, 1
	lw t0, 10748(sp)
	sw t4, 0(t0)
	la t2, .libro.str.212
	sw t2, 10752(sp)
	lw t0, 10744(sp)
	addi t2, t0, 4
	sw t2, 10756(sp)
	lw t0, 10756(sp)
	lw t1, 10752(sp)
	sw t1, 0(t0)
	lw t0, 10740(sp)
	mv a0, t0
	lw t0, 10744(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10760(sp)
	lw t0, 10760(sp)
	addi t2, t0, 4
	sw t2, 10764(sp)
	lw t0, 10764(sp)
	lw t2, 0(t0)
	sw t2, 10768(sp)
	lw t0, 10768(sp)
	mv a0, t0
	call print
	lw t2, -868(s0)
	sw t2, 10772(sp)
	lw t0, 10772(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10776(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10780(sp)
	lw t0, 10780(sp)
	addi t2, t0, 0
	sw t2, 10784(sp)
	addi t4, zero, 1
	lw t0, 10784(sp)
	sw t4, 0(t0)
	la t2, .libro.str.213
	sw t2, 10788(sp)
	lw t0, 10780(sp)
	addi t2, t0, 4
	sw t2, 10792(sp)
	lw t0, 10792(sp)
	lw t1, 10788(sp)
	sw t1, 0(t0)
	lw t0, 10776(sp)
	mv a0, t0
	lw t0, 10780(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10796(sp)
	lw t0, 10796(sp)
	addi t2, t0, 4
	sw t2, 10800(sp)
	lw t0, 10800(sp)
	lw t2, 0(t0)
	sw t2, 10804(sp)
	lw t0, 10804(sp)
	mv a0, t0
	call print
	lw t2, -872(s0)
	sw t2, 10808(sp)
	lw t0, 10808(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10812(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10816(sp)
	lw t0, 10816(sp)
	addi t2, t0, 0
	sw t2, 10820(sp)
	addi t4, zero, 1
	lw t0, 10820(sp)
	sw t4, 0(t0)
	la t2, .libro.str.214
	sw t2, 10824(sp)
	lw t0, 10816(sp)
	addi t2, t0, 4
	sw t2, 10828(sp)
	lw t0, 10828(sp)
	lw t1, 10824(sp)
	sw t1, 0(t0)
	lw t0, 10812(sp)
	mv a0, t0
	lw t0, 10816(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10832(sp)
	lw t0, 10832(sp)
	addi t2, t0, 4
	sw t2, 10836(sp)
	lw t0, 10836(sp)
	lw t2, 0(t0)
	sw t2, 10840(sp)
	lw t0, 10840(sp)
	mv a0, t0
	call print
	lw t2, -876(s0)
	sw t2, 10844(sp)
	lw t0, 10844(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10848(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10852(sp)
	lw t0, 10852(sp)
	addi t2, t0, 0
	sw t2, 10856(sp)
	addi t4, zero, 1
	lw t0, 10856(sp)
	sw t4, 0(t0)
	la t2, .libro.str.215
	sw t2, 10860(sp)
	lw t0, 10852(sp)
	addi t2, t0, 4
	sw t2, 10864(sp)
	lw t0, 10864(sp)
	lw t1, 10860(sp)
	sw t1, 0(t0)
	lw t0, 10848(sp)
	mv a0, t0
	lw t0, 10852(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10868(sp)
	lw t0, 10868(sp)
	addi t2, t0, 4
	sw t2, 10872(sp)
	lw t0, 10872(sp)
	lw t2, 0(t0)
	sw t2, 10876(sp)
	lw t0, 10876(sp)
	mv a0, t0
	call print
	lw t2, -880(s0)
	sw t2, 10880(sp)
	lw t0, 10880(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10884(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10888(sp)
	lw t0, 10888(sp)
	addi t2, t0, 0
	sw t2, 10892(sp)
	addi t4, zero, 1
	lw t0, 10892(sp)
	sw t4, 0(t0)
	la t2, .libro.str.216
	sw t2, 10896(sp)
	lw t0, 10888(sp)
	addi t2, t0, 4
	sw t2, 10900(sp)
	lw t0, 10900(sp)
	lw t1, 10896(sp)
	sw t1, 0(t0)
	lw t0, 10884(sp)
	mv a0, t0
	lw t0, 10888(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10904(sp)
	lw t0, 10904(sp)
	addi t2, t0, 4
	sw t2, 10908(sp)
	lw t0, 10908(sp)
	lw t2, 0(t0)
	sw t2, 10912(sp)
	lw t0, 10912(sp)
	mv a0, t0
	call print
	lw t2, -884(s0)
	sw t2, 10916(sp)
	lw t0, 10916(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10920(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10924(sp)
	lw t0, 10924(sp)
	addi t2, t0, 0
	sw t2, 10928(sp)
	addi t4, zero, 1
	lw t0, 10928(sp)
	sw t4, 0(t0)
	la t2, .libro.str.217
	sw t2, 10932(sp)
	lw t0, 10924(sp)
	addi t2, t0, 4
	sw t2, 10936(sp)
	lw t0, 10936(sp)
	lw t1, 10932(sp)
	sw t1, 0(t0)
	lw t0, 10920(sp)
	mv a0, t0
	lw t0, 10924(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10940(sp)
	lw t0, 10940(sp)
	addi t2, t0, 4
	sw t2, 10944(sp)
	lw t0, 10944(sp)
	lw t2, 0(t0)
	sw t2, 10948(sp)
	lw t0, 10948(sp)
	mv a0, t0
	call print
	lw t2, -888(s0)
	sw t2, 10952(sp)
	lw t0, 10952(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10956(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10960(sp)
	lw t0, 10960(sp)
	addi t2, t0, 0
	sw t2, 10964(sp)
	addi t4, zero, 1
	lw t0, 10964(sp)
	sw t4, 0(t0)
	la t2, .libro.str.218
	sw t2, 10968(sp)
	lw t0, 10960(sp)
	addi t2, t0, 4
	sw t2, 10972(sp)
	lw t0, 10972(sp)
	lw t1, 10968(sp)
	sw t1, 0(t0)
	lw t0, 10956(sp)
	mv a0, t0
	lw t0, 10960(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 10976(sp)
	lw t0, 10976(sp)
	addi t2, t0, 4
	sw t2, 10980(sp)
	lw t0, 10980(sp)
	lw t2, 0(t0)
	sw t2, 10984(sp)
	lw t0, 10984(sp)
	mv a0, t0
	call print
	lw t2, -892(s0)
	sw t2, 10988(sp)
	lw t0, 10988(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 10992(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 10996(sp)
	lw t0, 10996(sp)
	addi t2, t0, 0
	sw t2, 11000(sp)
	addi t4, zero, 1
	lw t0, 11000(sp)
	sw t4, 0(t0)
	la t2, .libro.str.219
	sw t2, 11004(sp)
	lw t0, 10996(sp)
	addi t2, t0, 4
	sw t2, 11008(sp)
	lw t0, 11008(sp)
	lw t1, 11004(sp)
	sw t1, 0(t0)
	lw t0, 10992(sp)
	mv a0, t0
	lw t0, 10996(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11012(sp)
	lw t0, 11012(sp)
	addi t2, t0, 4
	sw t2, 11016(sp)
	lw t0, 11016(sp)
	lw t2, 0(t0)
	sw t2, 11020(sp)
	lw t0, 11020(sp)
	mv a0, t0
	call print
	lw t2, -896(s0)
	sw t2, 11024(sp)
	lw t0, 11024(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11028(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11032(sp)
	lw t0, 11032(sp)
	addi t2, t0, 0
	sw t2, 11036(sp)
	addi t4, zero, 1
	lw t0, 11036(sp)
	sw t4, 0(t0)
	la t2, .libro.str.220
	sw t2, 11040(sp)
	lw t0, 11032(sp)
	addi t2, t0, 4
	sw t2, 11044(sp)
	lw t0, 11044(sp)
	lw t1, 11040(sp)
	sw t1, 0(t0)
	lw t0, 11028(sp)
	mv a0, t0
	lw t0, 11032(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11048(sp)
	lw t0, 11048(sp)
	addi t2, t0, 4
	sw t2, 11052(sp)
	lw t0, 11052(sp)
	lw t2, 0(t0)
	sw t2, 11056(sp)
	lw t0, 11056(sp)
	mv a0, t0
	call print
	lw t2, -900(s0)
	sw t2, 11060(sp)
	lw t0, 11060(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11064(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11068(sp)
	lw t0, 11068(sp)
	addi t2, t0, 0
	sw t2, 11072(sp)
	addi t4, zero, 1
	lw t0, 11072(sp)
	sw t4, 0(t0)
	la t2, .libro.str.221
	sw t2, 11076(sp)
	lw t0, 11068(sp)
	addi t2, t0, 4
	sw t2, 11080(sp)
	lw t0, 11080(sp)
	lw t1, 11076(sp)
	sw t1, 0(t0)
	lw t0, 11064(sp)
	mv a0, t0
	lw t0, 11068(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11084(sp)
	lw t0, 11084(sp)
	addi t2, t0, 4
	sw t2, 11088(sp)
	lw t0, 11088(sp)
	lw t2, 0(t0)
	sw t2, 11092(sp)
	lw t0, 11092(sp)
	mv a0, t0
	call print
	lw t2, -904(s0)
	sw t2, 11096(sp)
	lw t0, 11096(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11100(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11104(sp)
	lw t0, 11104(sp)
	addi t2, t0, 0
	sw t2, 11108(sp)
	addi t4, zero, 1
	lw t0, 11108(sp)
	sw t4, 0(t0)
	la t2, .libro.str.222
	sw t2, 11112(sp)
	lw t0, 11104(sp)
	addi t2, t0, 4
	sw t2, 11116(sp)
	lw t0, 11116(sp)
	lw t1, 11112(sp)
	sw t1, 0(t0)
	lw t0, 11100(sp)
	mv a0, t0
	lw t0, 11104(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11120(sp)
	lw t0, 11120(sp)
	addi t2, t0, 4
	sw t2, 11124(sp)
	lw t0, 11124(sp)
	lw t2, 0(t0)
	sw t2, 11128(sp)
	lw t0, 11128(sp)
	mv a0, t0
	call print
	lw t2, -908(s0)
	sw t2, 11132(sp)
	lw t0, 11132(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11136(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11140(sp)
	lw t0, 11140(sp)
	addi t2, t0, 0
	sw t2, 11144(sp)
	addi t4, zero, 1
	lw t0, 11144(sp)
	sw t4, 0(t0)
	la t2, .libro.str.223
	sw t2, 11148(sp)
	lw t0, 11140(sp)
	addi t2, t0, 4
	sw t2, 11152(sp)
	lw t0, 11152(sp)
	lw t1, 11148(sp)
	sw t1, 0(t0)
	lw t0, 11136(sp)
	mv a0, t0
	lw t0, 11140(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11156(sp)
	lw t0, 11156(sp)
	addi t2, t0, 4
	sw t2, 11160(sp)
	lw t0, 11160(sp)
	lw t2, 0(t0)
	sw t2, 11164(sp)
	lw t0, 11164(sp)
	mv a0, t0
	call print
	lw t2, -912(s0)
	sw t2, 11168(sp)
	lw t0, 11168(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11172(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11176(sp)
	lw t0, 11176(sp)
	addi t2, t0, 0
	sw t2, 11180(sp)
	addi t4, zero, 1
	lw t0, 11180(sp)
	sw t4, 0(t0)
	la t2, .libro.str.224
	sw t2, 11184(sp)
	lw t0, 11176(sp)
	addi t2, t0, 4
	sw t2, 11188(sp)
	lw t0, 11188(sp)
	lw t1, 11184(sp)
	sw t1, 0(t0)
	lw t0, 11172(sp)
	mv a0, t0
	lw t0, 11176(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11192(sp)
	lw t0, 11192(sp)
	addi t2, t0, 4
	sw t2, 11196(sp)
	lw t0, 11196(sp)
	lw t2, 0(t0)
	sw t2, 11200(sp)
	lw t0, 11200(sp)
	mv a0, t0
	call print
	lw t2, -916(s0)
	sw t2, 11204(sp)
	lw t0, 11204(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11208(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11212(sp)
	lw t0, 11212(sp)
	addi t2, t0, 0
	sw t2, 11216(sp)
	addi t4, zero, 1
	lw t0, 11216(sp)
	sw t4, 0(t0)
	la t2, .libro.str.225
	sw t2, 11220(sp)
	lw t0, 11212(sp)
	addi t2, t0, 4
	sw t2, 11224(sp)
	lw t0, 11224(sp)
	lw t1, 11220(sp)
	sw t1, 0(t0)
	lw t0, 11208(sp)
	mv a0, t0
	lw t0, 11212(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11228(sp)
	lw t0, 11228(sp)
	addi t2, t0, 4
	sw t2, 11232(sp)
	lw t0, 11232(sp)
	lw t2, 0(t0)
	sw t2, 11236(sp)
	lw t0, 11236(sp)
	mv a0, t0
	call print
	lw t2, -920(s0)
	sw t2, 11240(sp)
	lw t0, 11240(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11244(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11248(sp)
	lw t0, 11248(sp)
	addi t2, t0, 0
	sw t2, 11252(sp)
	addi t4, zero, 1
	lw t0, 11252(sp)
	sw t4, 0(t0)
	la t2, .libro.str.226
	sw t2, 11256(sp)
	lw t0, 11248(sp)
	addi t2, t0, 4
	sw t2, 11260(sp)
	lw t0, 11260(sp)
	lw t1, 11256(sp)
	sw t1, 0(t0)
	lw t0, 11244(sp)
	mv a0, t0
	lw t0, 11248(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11264(sp)
	lw t0, 11264(sp)
	addi t2, t0, 4
	sw t2, 11268(sp)
	lw t0, 11268(sp)
	lw t2, 0(t0)
	sw t2, 11272(sp)
	lw t0, 11272(sp)
	mv a0, t0
	call print
	lw t2, -924(s0)
	sw t2, 11276(sp)
	lw t0, 11276(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11280(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11284(sp)
	lw t0, 11284(sp)
	addi t2, t0, 0
	sw t2, 11288(sp)
	addi t4, zero, 1
	lw t0, 11288(sp)
	sw t4, 0(t0)
	la t2, .libro.str.227
	sw t2, 11292(sp)
	lw t0, 11284(sp)
	addi t2, t0, 4
	sw t2, 11296(sp)
	lw t0, 11296(sp)
	lw t1, 11292(sp)
	sw t1, 0(t0)
	lw t0, 11280(sp)
	mv a0, t0
	lw t0, 11284(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11300(sp)
	lw t0, 11300(sp)
	addi t2, t0, 4
	sw t2, 11304(sp)
	lw t0, 11304(sp)
	lw t2, 0(t0)
	sw t2, 11308(sp)
	lw t0, 11308(sp)
	mv a0, t0
	call print
	lw t2, -928(s0)
	sw t2, 11312(sp)
	lw t0, 11312(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11316(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11320(sp)
	lw t0, 11320(sp)
	addi t2, t0, 0
	sw t2, 11324(sp)
	addi t4, zero, 1
	lw t0, 11324(sp)
	sw t4, 0(t0)
	la t2, .libro.str.228
	sw t2, 11328(sp)
	lw t0, 11320(sp)
	addi t2, t0, 4
	sw t2, 11332(sp)
	lw t0, 11332(sp)
	lw t1, 11328(sp)
	sw t1, 0(t0)
	lw t0, 11316(sp)
	mv a0, t0
	lw t0, 11320(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11336(sp)
	lw t0, 11336(sp)
	addi t2, t0, 4
	sw t2, 11340(sp)
	lw t0, 11340(sp)
	lw t2, 0(t0)
	sw t2, 11344(sp)
	lw t0, 11344(sp)
	mv a0, t0
	call print
	lw t2, -932(s0)
	sw t2, 11348(sp)
	lw t0, 11348(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11352(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11356(sp)
	lw t0, 11356(sp)
	addi t2, t0, 0
	sw t2, 11360(sp)
	addi t4, zero, 1
	lw t0, 11360(sp)
	sw t4, 0(t0)
	la t2, .libro.str.229
	sw t2, 11364(sp)
	lw t0, 11356(sp)
	addi t2, t0, 4
	sw t2, 11368(sp)
	lw t0, 11368(sp)
	lw t1, 11364(sp)
	sw t1, 0(t0)
	lw t0, 11352(sp)
	mv a0, t0
	lw t0, 11356(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11372(sp)
	lw t0, 11372(sp)
	addi t2, t0, 4
	sw t2, 11376(sp)
	lw t0, 11376(sp)
	lw t2, 0(t0)
	sw t2, 11380(sp)
	lw t0, 11380(sp)
	mv a0, t0
	call print
	lw t2, -936(s0)
	sw t2, 11384(sp)
	lw t0, 11384(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11388(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11392(sp)
	lw t0, 11392(sp)
	addi t2, t0, 0
	sw t2, 11396(sp)
	addi t4, zero, 1
	lw t0, 11396(sp)
	sw t4, 0(t0)
	la t2, .libro.str.230
	sw t2, 11400(sp)
	lw t0, 11392(sp)
	addi t2, t0, 4
	sw t2, 11404(sp)
	lw t0, 11404(sp)
	lw t1, 11400(sp)
	sw t1, 0(t0)
	lw t0, 11388(sp)
	mv a0, t0
	lw t0, 11392(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11408(sp)
	lw t0, 11408(sp)
	addi t2, t0, 4
	sw t2, 11412(sp)
	lw t0, 11412(sp)
	lw t2, 0(t0)
	sw t2, 11416(sp)
	lw t0, 11416(sp)
	mv a0, t0
	call print
	lw t2, -940(s0)
	sw t2, 11420(sp)
	lw t0, 11420(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11424(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11428(sp)
	lw t0, 11428(sp)
	addi t2, t0, 0
	sw t2, 11432(sp)
	addi t4, zero, 1
	lw t0, 11432(sp)
	sw t4, 0(t0)
	la t2, .libro.str.231
	sw t2, 11436(sp)
	lw t0, 11428(sp)
	addi t2, t0, 4
	sw t2, 11440(sp)
	lw t0, 11440(sp)
	lw t1, 11436(sp)
	sw t1, 0(t0)
	lw t0, 11424(sp)
	mv a0, t0
	lw t0, 11428(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11444(sp)
	lw t0, 11444(sp)
	addi t2, t0, 4
	sw t2, 11448(sp)
	lw t0, 11448(sp)
	lw t2, 0(t0)
	sw t2, 11452(sp)
	lw t0, 11452(sp)
	mv a0, t0
	call print
	lw t2, -944(s0)
	sw t2, 11456(sp)
	lw t0, 11456(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11460(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11464(sp)
	lw t0, 11464(sp)
	addi t2, t0, 0
	sw t2, 11468(sp)
	addi t4, zero, 1
	lw t0, 11468(sp)
	sw t4, 0(t0)
	la t2, .libro.str.232
	sw t2, 11472(sp)
	lw t0, 11464(sp)
	addi t2, t0, 4
	sw t2, 11476(sp)
	lw t0, 11476(sp)
	lw t1, 11472(sp)
	sw t1, 0(t0)
	lw t0, 11460(sp)
	mv a0, t0
	lw t0, 11464(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11480(sp)
	lw t0, 11480(sp)
	addi t2, t0, 4
	sw t2, 11484(sp)
	lw t0, 11484(sp)
	lw t2, 0(t0)
	sw t2, 11488(sp)
	lw t0, 11488(sp)
	mv a0, t0
	call print
	lw t2, -948(s0)
	sw t2, 11492(sp)
	lw t0, 11492(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11496(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11500(sp)
	lw t0, 11500(sp)
	addi t2, t0, 0
	sw t2, 11504(sp)
	addi t4, zero, 1
	lw t0, 11504(sp)
	sw t4, 0(t0)
	la t2, .libro.str.233
	sw t2, 11508(sp)
	lw t0, 11500(sp)
	addi t2, t0, 4
	sw t2, 11512(sp)
	lw t0, 11512(sp)
	lw t1, 11508(sp)
	sw t1, 0(t0)
	lw t0, 11496(sp)
	mv a0, t0
	lw t0, 11500(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11516(sp)
	lw t0, 11516(sp)
	addi t2, t0, 4
	sw t2, 11520(sp)
	lw t0, 11520(sp)
	lw t2, 0(t0)
	sw t2, 11524(sp)
	lw t0, 11524(sp)
	mv a0, t0
	call print
	lw t2, -952(s0)
	sw t2, 11528(sp)
	lw t0, 11528(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11532(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11536(sp)
	lw t0, 11536(sp)
	addi t2, t0, 0
	sw t2, 11540(sp)
	addi t4, zero, 1
	lw t0, 11540(sp)
	sw t4, 0(t0)
	la t2, .libro.str.234
	sw t2, 11544(sp)
	lw t0, 11536(sp)
	addi t2, t0, 4
	sw t2, 11548(sp)
	lw t0, 11548(sp)
	lw t1, 11544(sp)
	sw t1, 0(t0)
	lw t0, 11532(sp)
	mv a0, t0
	lw t0, 11536(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11552(sp)
	lw t0, 11552(sp)
	addi t2, t0, 4
	sw t2, 11556(sp)
	lw t0, 11556(sp)
	lw t2, 0(t0)
	sw t2, 11560(sp)
	lw t0, 11560(sp)
	mv a0, t0
	call print
	lw t2, -956(s0)
	sw t2, 11564(sp)
	lw t0, 11564(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11568(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11572(sp)
	lw t0, 11572(sp)
	addi t2, t0, 0
	sw t2, 11576(sp)
	addi t4, zero, 1
	lw t0, 11576(sp)
	sw t4, 0(t0)
	la t2, .libro.str.235
	sw t2, 11580(sp)
	lw t0, 11572(sp)
	addi t2, t0, 4
	sw t2, 11584(sp)
	lw t0, 11584(sp)
	lw t1, 11580(sp)
	sw t1, 0(t0)
	lw t0, 11568(sp)
	mv a0, t0
	lw t0, 11572(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11588(sp)
	lw t0, 11588(sp)
	addi t2, t0, 4
	sw t2, 11592(sp)
	lw t0, 11592(sp)
	lw t2, 0(t0)
	sw t2, 11596(sp)
	lw t0, 11596(sp)
	mv a0, t0
	call print
	lw t2, -960(s0)
	sw t2, 11600(sp)
	lw t0, 11600(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11604(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11608(sp)
	lw t0, 11608(sp)
	addi t2, t0, 0
	sw t2, 11612(sp)
	addi t4, zero, 1
	lw t0, 11612(sp)
	sw t4, 0(t0)
	la t2, .libro.str.236
	sw t2, 11616(sp)
	lw t0, 11608(sp)
	addi t2, t0, 4
	sw t2, 11620(sp)
	lw t0, 11620(sp)
	lw t1, 11616(sp)
	sw t1, 0(t0)
	lw t0, 11604(sp)
	mv a0, t0
	lw t0, 11608(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11624(sp)
	lw t0, 11624(sp)
	addi t2, t0, 4
	sw t2, 11628(sp)
	lw t0, 11628(sp)
	lw t2, 0(t0)
	sw t2, 11632(sp)
	lw t0, 11632(sp)
	mv a0, t0
	call print
	lw t2, -964(s0)
	sw t2, 11636(sp)
	lw t0, 11636(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11640(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11644(sp)
	lw t0, 11644(sp)
	addi t2, t0, 0
	sw t2, 11648(sp)
	addi t4, zero, 1
	lw t0, 11648(sp)
	sw t4, 0(t0)
	la t2, .libro.str.237
	sw t2, 11652(sp)
	lw t0, 11644(sp)
	addi t2, t0, 4
	sw t2, 11656(sp)
	lw t0, 11656(sp)
	lw t1, 11652(sp)
	sw t1, 0(t0)
	lw t0, 11640(sp)
	mv a0, t0
	lw t0, 11644(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11660(sp)
	lw t0, 11660(sp)
	addi t2, t0, 4
	sw t2, 11664(sp)
	lw t0, 11664(sp)
	lw t2, 0(t0)
	sw t2, 11668(sp)
	lw t0, 11668(sp)
	mv a0, t0
	call print
	lw t2, -968(s0)
	sw t2, 11672(sp)
	lw t0, 11672(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11676(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11680(sp)
	lw t0, 11680(sp)
	addi t2, t0, 0
	sw t2, 11684(sp)
	addi t4, zero, 1
	lw t0, 11684(sp)
	sw t4, 0(t0)
	la t2, .libro.str.238
	sw t2, 11688(sp)
	lw t0, 11680(sp)
	addi t2, t0, 4
	sw t2, 11692(sp)
	lw t0, 11692(sp)
	lw t1, 11688(sp)
	sw t1, 0(t0)
	lw t0, 11676(sp)
	mv a0, t0
	lw t0, 11680(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11696(sp)
	lw t0, 11696(sp)
	addi t2, t0, 4
	sw t2, 11700(sp)
	lw t0, 11700(sp)
	lw t2, 0(t0)
	sw t2, 11704(sp)
	lw t0, 11704(sp)
	mv a0, t0
	call print
	lw t2, -972(s0)
	sw t2, 11708(sp)
	lw t0, 11708(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11712(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11716(sp)
	lw t0, 11716(sp)
	addi t2, t0, 0
	sw t2, 11720(sp)
	addi t4, zero, 1
	lw t0, 11720(sp)
	sw t4, 0(t0)
	la t2, .libro.str.239
	sw t2, 11724(sp)
	lw t0, 11716(sp)
	addi t2, t0, 4
	sw t2, 11728(sp)
	lw t0, 11728(sp)
	lw t1, 11724(sp)
	sw t1, 0(t0)
	lw t0, 11712(sp)
	mv a0, t0
	lw t0, 11716(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11732(sp)
	lw t0, 11732(sp)
	addi t2, t0, 4
	sw t2, 11736(sp)
	lw t0, 11736(sp)
	lw t2, 0(t0)
	sw t2, 11740(sp)
	lw t0, 11740(sp)
	mv a0, t0
	call print
	lw t2, -976(s0)
	sw t2, 11744(sp)
	lw t0, 11744(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11748(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11752(sp)
	lw t0, 11752(sp)
	addi t2, t0, 0
	sw t2, 11756(sp)
	addi t4, zero, 1
	lw t0, 11756(sp)
	sw t4, 0(t0)
	la t2, .libro.str.240
	sw t2, 11760(sp)
	lw t0, 11752(sp)
	addi t2, t0, 4
	sw t2, 11764(sp)
	lw t0, 11764(sp)
	lw t1, 11760(sp)
	sw t1, 0(t0)
	lw t0, 11748(sp)
	mv a0, t0
	lw t0, 11752(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11768(sp)
	lw t0, 11768(sp)
	addi t2, t0, 4
	sw t2, 11772(sp)
	lw t0, 11772(sp)
	lw t2, 0(t0)
	sw t2, 11776(sp)
	lw t0, 11776(sp)
	mv a0, t0
	call print
	lw t2, -980(s0)
	sw t2, 11780(sp)
	lw t0, 11780(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11784(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11788(sp)
	lw t0, 11788(sp)
	addi t2, t0, 0
	sw t2, 11792(sp)
	addi t4, zero, 1
	lw t0, 11792(sp)
	sw t4, 0(t0)
	la t2, .libro.str.241
	sw t2, 11796(sp)
	lw t0, 11788(sp)
	addi t2, t0, 4
	sw t2, 11800(sp)
	lw t0, 11800(sp)
	lw t1, 11796(sp)
	sw t1, 0(t0)
	lw t0, 11784(sp)
	mv a0, t0
	lw t0, 11788(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11804(sp)
	lw t0, 11804(sp)
	addi t2, t0, 4
	sw t2, 11808(sp)
	lw t0, 11808(sp)
	lw t2, 0(t0)
	sw t2, 11812(sp)
	lw t0, 11812(sp)
	mv a0, t0
	call print
	lw t2, -984(s0)
	sw t2, 11816(sp)
	lw t0, 11816(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11820(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11824(sp)
	lw t0, 11824(sp)
	addi t2, t0, 0
	sw t2, 11828(sp)
	addi t4, zero, 1
	lw t0, 11828(sp)
	sw t4, 0(t0)
	la t2, .libro.str.242
	sw t2, 11832(sp)
	lw t0, 11824(sp)
	addi t2, t0, 4
	sw t2, 11836(sp)
	lw t0, 11836(sp)
	lw t1, 11832(sp)
	sw t1, 0(t0)
	lw t0, 11820(sp)
	mv a0, t0
	lw t0, 11824(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11840(sp)
	lw t0, 11840(sp)
	addi t2, t0, 4
	sw t2, 11844(sp)
	lw t0, 11844(sp)
	lw t2, 0(t0)
	sw t2, 11848(sp)
	lw t0, 11848(sp)
	mv a0, t0
	call print
	lw t2, -988(s0)
	sw t2, 11852(sp)
	lw t0, 11852(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11856(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11860(sp)
	lw t0, 11860(sp)
	addi t2, t0, 0
	sw t2, 11864(sp)
	addi t4, zero, 1
	lw t0, 11864(sp)
	sw t4, 0(t0)
	la t2, .libro.str.243
	sw t2, 11868(sp)
	lw t0, 11860(sp)
	addi t2, t0, 4
	sw t2, 11872(sp)
	lw t0, 11872(sp)
	lw t1, 11868(sp)
	sw t1, 0(t0)
	lw t0, 11856(sp)
	mv a0, t0
	lw t0, 11860(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11876(sp)
	lw t0, 11876(sp)
	addi t2, t0, 4
	sw t2, 11880(sp)
	lw t0, 11880(sp)
	lw t2, 0(t0)
	sw t2, 11884(sp)
	lw t0, 11884(sp)
	mv a0, t0
	call print
	lw t2, -992(s0)
	sw t2, 11888(sp)
	lw t0, 11888(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11892(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11896(sp)
	lw t0, 11896(sp)
	addi t2, t0, 0
	sw t2, 11900(sp)
	addi t4, zero, 1
	lw t0, 11900(sp)
	sw t4, 0(t0)
	la t2, .libro.str.244
	sw t2, 11904(sp)
	lw t0, 11896(sp)
	addi t2, t0, 4
	sw t2, 11908(sp)
	lw t0, 11908(sp)
	lw t1, 11904(sp)
	sw t1, 0(t0)
	lw t0, 11892(sp)
	mv a0, t0
	lw t0, 11896(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11912(sp)
	lw t0, 11912(sp)
	addi t2, t0, 4
	sw t2, 11916(sp)
	lw t0, 11916(sp)
	lw t2, 0(t0)
	sw t2, 11920(sp)
	lw t0, 11920(sp)
	mv a0, t0
	call print
	lw t2, -996(s0)
	sw t2, 11924(sp)
	lw t0, 11924(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11928(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11932(sp)
	lw t0, 11932(sp)
	addi t2, t0, 0
	sw t2, 11936(sp)
	addi t4, zero, 1
	lw t0, 11936(sp)
	sw t4, 0(t0)
	la t2, .libro.str.245
	sw t2, 11940(sp)
	lw t0, 11932(sp)
	addi t2, t0, 4
	sw t2, 11944(sp)
	lw t0, 11944(sp)
	lw t1, 11940(sp)
	sw t1, 0(t0)
	lw t0, 11928(sp)
	mv a0, t0
	lw t0, 11932(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11948(sp)
	lw t0, 11948(sp)
	addi t2, t0, 4
	sw t2, 11952(sp)
	lw t0, 11952(sp)
	lw t2, 0(t0)
	sw t2, 11956(sp)
	lw t0, 11956(sp)
	mv a0, t0
	call print
	lw t2, -1000(s0)
	sw t2, 11960(sp)
	lw t0, 11960(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 11964(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 11968(sp)
	lw t0, 11968(sp)
	addi t2, t0, 0
	sw t2, 11972(sp)
	addi t4, zero, 1
	lw t0, 11972(sp)
	sw t4, 0(t0)
	la t2, .libro.str.246
	sw t2, 11976(sp)
	lw t0, 11968(sp)
	addi t2, t0, 4
	sw t2, 11980(sp)
	lw t0, 11980(sp)
	lw t1, 11976(sp)
	sw t1, 0(t0)
	lw t0, 11964(sp)
	mv a0, t0
	lw t0, 11968(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 11984(sp)
	lw t0, 11984(sp)
	addi t2, t0, 4
	sw t2, 11988(sp)
	lw t0, 11988(sp)
	lw t2, 0(t0)
	sw t2, 11992(sp)
	lw t0, 11992(sp)
	mv a0, t0
	call print
	lw t2, -1004(s0)
	sw t2, 11996(sp)
	lw t0, 11996(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12000(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12004(sp)
	lw t0, 12004(sp)
	addi t2, t0, 0
	sw t2, 12008(sp)
	addi t4, zero, 1
	lw t0, 12008(sp)
	sw t4, 0(t0)
	la t2, .libro.str.247
	sw t2, 12012(sp)
	lw t0, 12004(sp)
	addi t2, t0, 4
	sw t2, 12016(sp)
	lw t0, 12016(sp)
	lw t1, 12012(sp)
	sw t1, 0(t0)
	lw t0, 12000(sp)
	mv a0, t0
	lw t0, 12004(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12020(sp)
	lw t0, 12020(sp)
	addi t2, t0, 4
	sw t2, 12024(sp)
	lw t0, 12024(sp)
	lw t2, 0(t0)
	sw t2, 12028(sp)
	lw t0, 12028(sp)
	mv a0, t0
	call print
	lw t2, -1008(s0)
	sw t2, 12032(sp)
	lw t0, 12032(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12036(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12040(sp)
	lw t0, 12040(sp)
	addi t2, t0, 0
	sw t2, 12044(sp)
	addi t4, zero, 1
	lw t0, 12044(sp)
	sw t4, 0(t0)
	la t2, .libro.str.248
	sw t2, 12048(sp)
	lw t0, 12040(sp)
	addi t2, t0, 4
	sw t2, 12052(sp)
	lw t0, 12052(sp)
	lw t1, 12048(sp)
	sw t1, 0(t0)
	lw t0, 12036(sp)
	mv a0, t0
	lw t0, 12040(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12056(sp)
	lw t0, 12056(sp)
	addi t2, t0, 4
	sw t2, 12060(sp)
	lw t0, 12060(sp)
	lw t2, 0(t0)
	sw t2, 12064(sp)
	lw t0, 12064(sp)
	mv a0, t0
	call print
	lw t2, -1012(s0)
	sw t2, 12068(sp)
	lw t0, 12068(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12072(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12076(sp)
	lw t0, 12076(sp)
	addi t2, t0, 0
	sw t2, 12080(sp)
	addi t4, zero, 1
	lw t0, 12080(sp)
	sw t4, 0(t0)
	la t2, .libro.str.249
	sw t2, 12084(sp)
	lw t0, 12076(sp)
	addi t2, t0, 4
	sw t2, 12088(sp)
	lw t0, 12088(sp)
	lw t1, 12084(sp)
	sw t1, 0(t0)
	lw t0, 12072(sp)
	mv a0, t0
	lw t0, 12076(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12092(sp)
	lw t0, 12092(sp)
	addi t2, t0, 4
	sw t2, 12096(sp)
	lw t0, 12096(sp)
	lw t2, 0(t0)
	sw t2, 12100(sp)
	lw t0, 12100(sp)
	mv a0, t0
	call print
	lw t2, -1016(s0)
	sw t2, 12104(sp)
	lw t0, 12104(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12108(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12112(sp)
	lw t0, 12112(sp)
	addi t2, t0, 0
	sw t2, 12116(sp)
	addi t4, zero, 1
	lw t0, 12116(sp)
	sw t4, 0(t0)
	la t2, .libro.str.250
	sw t2, 12120(sp)
	lw t0, 12112(sp)
	addi t2, t0, 4
	sw t2, 12124(sp)
	lw t0, 12124(sp)
	lw t1, 12120(sp)
	sw t1, 0(t0)
	lw t0, 12108(sp)
	mv a0, t0
	lw t0, 12112(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12128(sp)
	lw t0, 12128(sp)
	addi t2, t0, 4
	sw t2, 12132(sp)
	lw t0, 12132(sp)
	lw t2, 0(t0)
	sw t2, 12136(sp)
	lw t0, 12136(sp)
	mv a0, t0
	call print
	lw t2, -1020(s0)
	sw t2, 12140(sp)
	lw t0, 12140(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12144(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12148(sp)
	lw t0, 12148(sp)
	addi t2, t0, 0
	sw t2, 12152(sp)
	addi t4, zero, 1
	lw t0, 12152(sp)
	sw t4, 0(t0)
	la t2, .libro.str.251
	sw t2, 12156(sp)
	lw t0, 12148(sp)
	addi t2, t0, 4
	sw t2, 12160(sp)
	lw t0, 12160(sp)
	lw t1, 12156(sp)
	sw t1, 0(t0)
	lw t0, 12144(sp)
	mv a0, t0
	lw t0, 12148(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12164(sp)
	lw t0, 12164(sp)
	addi t2, t0, 4
	sw t2, 12168(sp)
	lw t0, 12168(sp)
	lw t2, 0(t0)
	sw t2, 12172(sp)
	lw t0, 12172(sp)
	mv a0, t0
	call print
	lw t2, -1024(s0)
	sw t2, 12176(sp)
	lw t0, 12176(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12180(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12184(sp)
	lw t0, 12184(sp)
	addi t2, t0, 0
	sw t2, 12188(sp)
	addi t4, zero, 1
	lw t0, 12188(sp)
	sw t4, 0(t0)
	la t2, .libro.str.252
	sw t2, 12192(sp)
	lw t0, 12184(sp)
	addi t2, t0, 4
	sw t2, 12196(sp)
	lw t0, 12196(sp)
	lw t1, 12192(sp)
	sw t1, 0(t0)
	lw t0, 12180(sp)
	mv a0, t0
	lw t0, 12184(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12200(sp)
	lw t0, 12200(sp)
	addi t2, t0, 4
	sw t2, 12204(sp)
	lw t0, 12204(sp)
	lw t2, 0(t0)
	sw t2, 12208(sp)
	lw t0, 12208(sp)
	mv a0, t0
	call print
	lw t2, -1028(s0)
	sw t2, 12212(sp)
	lw t0, 12212(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12216(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12220(sp)
	lw t0, 12220(sp)
	addi t2, t0, 0
	sw t2, 12224(sp)
	addi t4, zero, 1
	lw t0, 12224(sp)
	sw t4, 0(t0)
	la t2, .libro.str.253
	sw t2, 12228(sp)
	lw t0, 12220(sp)
	addi t2, t0, 4
	sw t2, 12232(sp)
	lw t0, 12232(sp)
	lw t1, 12228(sp)
	sw t1, 0(t0)
	lw t0, 12216(sp)
	mv a0, t0
	lw t0, 12220(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12236(sp)
	lw t0, 12236(sp)
	addi t2, t0, 4
	sw t2, 12240(sp)
	lw t0, 12240(sp)
	lw t2, 0(t0)
	sw t2, 12244(sp)
	lw t0, 12244(sp)
	mv a0, t0
	call print
	lw t2, -1032(s0)
	sw t2, 12248(sp)
	lw t0, 12248(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12252(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12256(sp)
	lw t0, 12256(sp)
	addi t2, t0, 0
	sw t2, 12260(sp)
	addi t4, zero, 1
	lw t0, 12260(sp)
	sw t4, 0(t0)
	la t2, .libro.str.254
	sw t2, 12264(sp)
	lw t0, 12256(sp)
	addi t2, t0, 4
	sw t2, 12268(sp)
	lw t0, 12268(sp)
	lw t1, 12264(sp)
	sw t1, 0(t0)
	lw t0, 12252(sp)
	mv a0, t0
	lw t0, 12256(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12272(sp)
	lw t0, 12272(sp)
	addi t2, t0, 4
	sw t2, 12276(sp)
	lw t0, 12276(sp)
	lw t2, 0(t0)
	sw t2, 12280(sp)
	lw t0, 12280(sp)
	mv a0, t0
	call print
	lw t2, -1036(s0)
	sw t2, 12284(sp)
	lw t0, 12284(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12288(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12292(sp)
	lw t0, 12292(sp)
	addi t2, t0, 0
	sw t2, 12296(sp)
	addi t4, zero, 1
	lw t0, 12296(sp)
	sw t4, 0(t0)
	la t2, .libro.str.255
	sw t2, 12300(sp)
	lw t0, 12292(sp)
	addi t2, t0, 4
	sw t2, 12304(sp)
	lw t0, 12304(sp)
	lw t1, 12300(sp)
	sw t1, 0(t0)
	lw t0, 12288(sp)
	mv a0, t0
	lw t0, 12292(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12308(sp)
	lw t0, 12308(sp)
	addi t2, t0, 4
	sw t2, 12312(sp)
	lw t0, 12312(sp)
	lw t2, 0(t0)
	sw t2, 12316(sp)
	lw t0, 12316(sp)
	mv a0, t0
	call print
	la t2, .libro.str.256
	sw t2, 12320(sp)
	lw t0, 12320(sp)
	mv a0, t0
	call println
	lw t2, -16(s0)
	sw t2, 12324(sp)
	lw t0, 12324(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12328(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12332(sp)
	lw t0, 12332(sp)
	addi t2, t0, 0
	sw t2, 12336(sp)
	addi t4, zero, 1
	lw t0, 12336(sp)
	sw t4, 0(t0)
	la t2, .libro.str.257
	sw t2, 12340(sp)
	lw t0, 12332(sp)
	addi t2, t0, 4
	sw t2, 12344(sp)
	lw t0, 12344(sp)
	lw t1, 12340(sp)
	sw t1, 0(t0)
	lw t0, 12328(sp)
	mv a0, t0
	lw t0, 12332(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12348(sp)
	lw t0, 12348(sp)
	addi t2, t0, 4
	sw t2, 12352(sp)
	lw t0, 12352(sp)
	lw t2, 0(t0)
	sw t2, 12356(sp)
	lw t0, 12356(sp)
	mv a0, t0
	call print
	lw t2, -20(s0)
	sw t2, 12360(sp)
	lw t0, 12360(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12364(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12368(sp)
	lw t0, 12368(sp)
	addi t2, t0, 0
	sw t2, 12372(sp)
	addi t4, zero, 1
	lw t0, 12372(sp)
	sw t4, 0(t0)
	la t2, .libro.str.258
	sw t2, 12376(sp)
	lw t0, 12368(sp)
	addi t2, t0, 4
	sw t2, 12380(sp)
	lw t0, 12380(sp)
	lw t1, 12376(sp)
	sw t1, 0(t0)
	lw t0, 12364(sp)
	mv a0, t0
	lw t0, 12368(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12384(sp)
	lw t0, 12384(sp)
	addi t2, t0, 4
	sw t2, 12388(sp)
	lw t0, 12388(sp)
	lw t2, 0(t0)
	sw t2, 12392(sp)
	lw t0, 12392(sp)
	mv a0, t0
	call print
	lw t2, -24(s0)
	sw t2, 12396(sp)
	lw t0, 12396(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12400(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12404(sp)
	lw t0, 12404(sp)
	addi t2, t0, 0
	sw t2, 12408(sp)
	addi t4, zero, 1
	lw t0, 12408(sp)
	sw t4, 0(t0)
	la t2, .libro.str.259
	sw t2, 12412(sp)
	lw t0, 12404(sp)
	addi t2, t0, 4
	sw t2, 12416(sp)
	lw t0, 12416(sp)
	lw t1, 12412(sp)
	sw t1, 0(t0)
	lw t0, 12400(sp)
	mv a0, t0
	lw t0, 12404(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12420(sp)
	lw t0, 12420(sp)
	addi t2, t0, 4
	sw t2, 12424(sp)
	lw t0, 12424(sp)
	lw t2, 0(t0)
	sw t2, 12428(sp)
	lw t0, 12428(sp)
	mv a0, t0
	call print
	lw t2, -28(s0)
	sw t2, 12432(sp)
	lw t0, 12432(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12436(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12440(sp)
	lw t0, 12440(sp)
	addi t2, t0, 0
	sw t2, 12444(sp)
	addi t4, zero, 1
	lw t0, 12444(sp)
	sw t4, 0(t0)
	la t2, .libro.str.260
	sw t2, 12448(sp)
	lw t0, 12440(sp)
	addi t2, t0, 4
	sw t2, 12452(sp)
	lw t0, 12452(sp)
	lw t1, 12448(sp)
	sw t1, 0(t0)
	lw t0, 12436(sp)
	mv a0, t0
	lw t0, 12440(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12456(sp)
	lw t0, 12456(sp)
	addi t2, t0, 4
	sw t2, 12460(sp)
	lw t0, 12460(sp)
	lw t2, 0(t0)
	sw t2, 12464(sp)
	lw t0, 12464(sp)
	mv a0, t0
	call print
	lw t2, -32(s0)
	sw t2, 12468(sp)
	lw t0, 12468(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12472(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12476(sp)
	lw t0, 12476(sp)
	addi t2, t0, 0
	sw t2, 12480(sp)
	addi t4, zero, 1
	lw t0, 12480(sp)
	sw t4, 0(t0)
	la t2, .libro.str.261
	sw t2, 12484(sp)
	lw t0, 12476(sp)
	addi t2, t0, 4
	sw t2, 12488(sp)
	lw t0, 12488(sp)
	lw t1, 12484(sp)
	sw t1, 0(t0)
	lw t0, 12472(sp)
	mv a0, t0
	lw t0, 12476(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12492(sp)
	lw t0, 12492(sp)
	addi t2, t0, 4
	sw t2, 12496(sp)
	lw t0, 12496(sp)
	lw t2, 0(t0)
	sw t2, 12500(sp)
	lw t0, 12500(sp)
	mv a0, t0
	call print
	lw t2, -36(s0)
	sw t2, 12504(sp)
	lw t0, 12504(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12508(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12512(sp)
	lw t0, 12512(sp)
	addi t2, t0, 0
	sw t2, 12516(sp)
	addi t4, zero, 1
	lw t0, 12516(sp)
	sw t4, 0(t0)
	la t2, .libro.str.262
	sw t2, 12520(sp)
	lw t0, 12512(sp)
	addi t2, t0, 4
	sw t2, 12524(sp)
	lw t0, 12524(sp)
	lw t1, 12520(sp)
	sw t1, 0(t0)
	lw t0, 12508(sp)
	mv a0, t0
	lw t0, 12512(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12528(sp)
	lw t0, 12528(sp)
	addi t2, t0, 4
	sw t2, 12532(sp)
	lw t0, 12532(sp)
	lw t2, 0(t0)
	sw t2, 12536(sp)
	lw t0, 12536(sp)
	mv a0, t0
	call print
	lw t2, -40(s0)
	sw t2, 12540(sp)
	lw t0, 12540(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12544(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12548(sp)
	lw t0, 12548(sp)
	addi t2, t0, 0
	sw t2, 12552(sp)
	addi t4, zero, 1
	lw t0, 12552(sp)
	sw t4, 0(t0)
	la t2, .libro.str.263
	sw t2, 12556(sp)
	lw t0, 12548(sp)
	addi t2, t0, 4
	sw t2, 12560(sp)
	lw t0, 12560(sp)
	lw t1, 12556(sp)
	sw t1, 0(t0)
	lw t0, 12544(sp)
	mv a0, t0
	lw t0, 12548(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12564(sp)
	lw t0, 12564(sp)
	addi t2, t0, 4
	sw t2, 12568(sp)
	lw t0, 12568(sp)
	lw t2, 0(t0)
	sw t2, 12572(sp)
	lw t0, 12572(sp)
	mv a0, t0
	call print
	lw t2, -44(s0)
	sw t2, 12576(sp)
	lw t0, 12576(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12580(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12584(sp)
	lw t0, 12584(sp)
	addi t2, t0, 0
	sw t2, 12588(sp)
	addi t4, zero, 1
	lw t0, 12588(sp)
	sw t4, 0(t0)
	la t2, .libro.str.264
	sw t2, 12592(sp)
	lw t0, 12584(sp)
	addi t2, t0, 4
	sw t2, 12596(sp)
	lw t0, 12596(sp)
	lw t1, 12592(sp)
	sw t1, 0(t0)
	lw t0, 12580(sp)
	mv a0, t0
	lw t0, 12584(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12600(sp)
	lw t0, 12600(sp)
	addi t2, t0, 4
	sw t2, 12604(sp)
	lw t0, 12604(sp)
	lw t2, 0(t0)
	sw t2, 12608(sp)
	lw t0, 12608(sp)
	mv a0, t0
	call print
	lw t2, -48(s0)
	sw t2, 12612(sp)
	lw t0, 12612(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12616(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12620(sp)
	lw t0, 12620(sp)
	addi t2, t0, 0
	sw t2, 12624(sp)
	addi t4, zero, 1
	lw t0, 12624(sp)
	sw t4, 0(t0)
	la t2, .libro.str.265
	sw t2, 12628(sp)
	lw t0, 12620(sp)
	addi t2, t0, 4
	sw t2, 12632(sp)
	lw t0, 12632(sp)
	lw t1, 12628(sp)
	sw t1, 0(t0)
	lw t0, 12616(sp)
	mv a0, t0
	lw t0, 12620(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12636(sp)
	lw t0, 12636(sp)
	addi t2, t0, 4
	sw t2, 12640(sp)
	lw t0, 12640(sp)
	lw t2, 0(t0)
	sw t2, 12644(sp)
	lw t0, 12644(sp)
	mv a0, t0
	call print
	lw t2, -52(s0)
	sw t2, 12648(sp)
	lw t0, 12648(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12652(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12656(sp)
	lw t0, 12656(sp)
	addi t2, t0, 0
	sw t2, 12660(sp)
	addi t4, zero, 1
	lw t0, 12660(sp)
	sw t4, 0(t0)
	la t2, .libro.str.266
	sw t2, 12664(sp)
	lw t0, 12656(sp)
	addi t2, t0, 4
	sw t2, 12668(sp)
	lw t0, 12668(sp)
	lw t1, 12664(sp)
	sw t1, 0(t0)
	lw t0, 12652(sp)
	mv a0, t0
	lw t0, 12656(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12672(sp)
	lw t0, 12672(sp)
	addi t2, t0, 4
	sw t2, 12676(sp)
	lw t0, 12676(sp)
	lw t2, 0(t0)
	sw t2, 12680(sp)
	lw t0, 12680(sp)
	mv a0, t0
	call print
	lw t2, -56(s0)
	sw t2, 12684(sp)
	lw t0, 12684(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12688(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12692(sp)
	lw t0, 12692(sp)
	addi t2, t0, 0
	sw t2, 12696(sp)
	addi t4, zero, 1
	lw t0, 12696(sp)
	sw t4, 0(t0)
	la t2, .libro.str.267
	sw t2, 12700(sp)
	lw t0, 12692(sp)
	addi t2, t0, 4
	sw t2, 12704(sp)
	lw t0, 12704(sp)
	lw t1, 12700(sp)
	sw t1, 0(t0)
	lw t0, 12688(sp)
	mv a0, t0
	lw t0, 12692(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12708(sp)
	lw t0, 12708(sp)
	addi t2, t0, 4
	sw t2, 12712(sp)
	lw t0, 12712(sp)
	lw t2, 0(t0)
	sw t2, 12716(sp)
	lw t0, 12716(sp)
	mv a0, t0
	call print
	lw t2, -60(s0)
	sw t2, 12720(sp)
	lw t0, 12720(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12724(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12728(sp)
	lw t0, 12728(sp)
	addi t2, t0, 0
	sw t2, 12732(sp)
	addi t4, zero, 1
	lw t0, 12732(sp)
	sw t4, 0(t0)
	la t2, .libro.str.268
	sw t2, 12736(sp)
	lw t0, 12728(sp)
	addi t2, t0, 4
	sw t2, 12740(sp)
	lw t0, 12740(sp)
	lw t1, 12736(sp)
	sw t1, 0(t0)
	lw t0, 12724(sp)
	mv a0, t0
	lw t0, 12728(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12744(sp)
	lw t0, 12744(sp)
	addi t2, t0, 4
	sw t2, 12748(sp)
	lw t0, 12748(sp)
	lw t2, 0(t0)
	sw t2, 12752(sp)
	lw t0, 12752(sp)
	mv a0, t0
	call print
	lw t2, -64(s0)
	sw t2, 12756(sp)
	lw t0, 12756(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12760(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12764(sp)
	lw t0, 12764(sp)
	addi t2, t0, 0
	sw t2, 12768(sp)
	addi t4, zero, 1
	lw t0, 12768(sp)
	sw t4, 0(t0)
	la t2, .libro.str.269
	sw t2, 12772(sp)
	lw t0, 12764(sp)
	addi t2, t0, 4
	sw t2, 12776(sp)
	lw t0, 12776(sp)
	lw t1, 12772(sp)
	sw t1, 0(t0)
	lw t0, 12760(sp)
	mv a0, t0
	lw t0, 12764(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12780(sp)
	lw t0, 12780(sp)
	addi t2, t0, 4
	sw t2, 12784(sp)
	lw t0, 12784(sp)
	lw t2, 0(t0)
	sw t2, 12788(sp)
	lw t0, 12788(sp)
	mv a0, t0
	call print
	lw t2, -68(s0)
	sw t2, 12792(sp)
	lw t0, 12792(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12796(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12800(sp)
	lw t0, 12800(sp)
	addi t2, t0, 0
	sw t2, 12804(sp)
	addi t4, zero, 1
	lw t0, 12804(sp)
	sw t4, 0(t0)
	la t2, .libro.str.270
	sw t2, 12808(sp)
	lw t0, 12800(sp)
	addi t2, t0, 4
	sw t2, 12812(sp)
	lw t0, 12812(sp)
	lw t1, 12808(sp)
	sw t1, 0(t0)
	lw t0, 12796(sp)
	mv a0, t0
	lw t0, 12800(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12816(sp)
	lw t0, 12816(sp)
	addi t2, t0, 4
	sw t2, 12820(sp)
	lw t0, 12820(sp)
	lw t2, 0(t0)
	sw t2, 12824(sp)
	lw t0, 12824(sp)
	mv a0, t0
	call print
	lw t2, -72(s0)
	sw t2, 12828(sp)
	lw t0, 12828(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12832(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12836(sp)
	lw t0, 12836(sp)
	addi t2, t0, 0
	sw t2, 12840(sp)
	addi t4, zero, 1
	lw t0, 12840(sp)
	sw t4, 0(t0)
	la t2, .libro.str.271
	sw t2, 12844(sp)
	lw t0, 12836(sp)
	addi t2, t0, 4
	sw t2, 12848(sp)
	lw t0, 12848(sp)
	lw t1, 12844(sp)
	sw t1, 0(t0)
	lw t0, 12832(sp)
	mv a0, t0
	lw t0, 12836(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12852(sp)
	lw t0, 12852(sp)
	addi t2, t0, 4
	sw t2, 12856(sp)
	lw t0, 12856(sp)
	lw t2, 0(t0)
	sw t2, 12860(sp)
	lw t0, 12860(sp)
	mv a0, t0
	call print
	lw t2, -76(s0)
	sw t2, 12864(sp)
	lw t0, 12864(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12868(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12872(sp)
	lw t0, 12872(sp)
	addi t2, t0, 0
	sw t2, 12876(sp)
	addi t4, zero, 1
	lw t0, 12876(sp)
	sw t4, 0(t0)
	la t2, .libro.str.272
	sw t2, 12880(sp)
	lw t0, 12872(sp)
	addi t2, t0, 4
	sw t2, 12884(sp)
	lw t0, 12884(sp)
	lw t1, 12880(sp)
	sw t1, 0(t0)
	lw t0, 12868(sp)
	mv a0, t0
	lw t0, 12872(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12888(sp)
	lw t0, 12888(sp)
	addi t2, t0, 4
	sw t2, 12892(sp)
	lw t0, 12892(sp)
	lw t2, 0(t0)
	sw t2, 12896(sp)
	lw t0, 12896(sp)
	mv a0, t0
	call print
	lw t2, -80(s0)
	sw t2, 12900(sp)
	lw t0, 12900(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12904(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12908(sp)
	lw t0, 12908(sp)
	addi t2, t0, 0
	sw t2, 12912(sp)
	addi t4, zero, 1
	lw t0, 12912(sp)
	sw t4, 0(t0)
	la t2, .libro.str.273
	sw t2, 12916(sp)
	lw t0, 12908(sp)
	addi t2, t0, 4
	sw t2, 12920(sp)
	lw t0, 12920(sp)
	lw t1, 12916(sp)
	sw t1, 0(t0)
	lw t0, 12904(sp)
	mv a0, t0
	lw t0, 12908(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12924(sp)
	lw t0, 12924(sp)
	addi t2, t0, 4
	sw t2, 12928(sp)
	lw t0, 12928(sp)
	lw t2, 0(t0)
	sw t2, 12932(sp)
	lw t0, 12932(sp)
	mv a0, t0
	call print
	lw t2, -84(s0)
	sw t2, 12936(sp)
	lw t0, 12936(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12940(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12944(sp)
	lw t0, 12944(sp)
	addi t2, t0, 0
	sw t2, 12948(sp)
	addi t4, zero, 1
	lw t0, 12948(sp)
	sw t4, 0(t0)
	la t2, .libro.str.274
	sw t2, 12952(sp)
	lw t0, 12944(sp)
	addi t2, t0, 4
	sw t2, 12956(sp)
	lw t0, 12956(sp)
	lw t1, 12952(sp)
	sw t1, 0(t0)
	lw t0, 12940(sp)
	mv a0, t0
	lw t0, 12944(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12960(sp)
	lw t0, 12960(sp)
	addi t2, t0, 4
	sw t2, 12964(sp)
	lw t0, 12964(sp)
	lw t2, 0(t0)
	sw t2, 12968(sp)
	lw t0, 12968(sp)
	mv a0, t0
	call print
	lw t2, -88(s0)
	sw t2, 12972(sp)
	lw t0, 12972(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 12976(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12980(sp)
	lw t0, 12980(sp)
	addi t2, t0, 0
	sw t2, 12984(sp)
	addi t4, zero, 1
	lw t0, 12984(sp)
	sw t4, 0(t0)
	la t2, .libro.str.275
	sw t2, 12988(sp)
	lw t0, 12980(sp)
	addi t2, t0, 4
	sw t2, 12992(sp)
	lw t0, 12992(sp)
	lw t1, 12988(sp)
	sw t1, 0(t0)
	lw t0, 12976(sp)
	mv a0, t0
	lw t0, 12980(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 12996(sp)
	lw t0, 12996(sp)
	addi t2, t0, 4
	sw t2, 13000(sp)
	lw t0, 13000(sp)
	lw t2, 0(t0)
	sw t2, 13004(sp)
	lw t0, 13004(sp)
	mv a0, t0
	call print
	lw t2, -92(s0)
	sw t2, 13008(sp)
	lw t0, 13008(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13012(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13016(sp)
	lw t0, 13016(sp)
	addi t2, t0, 0
	sw t2, 13020(sp)
	addi t4, zero, 1
	lw t0, 13020(sp)
	sw t4, 0(t0)
	la t2, .libro.str.276
	sw t2, 13024(sp)
	lw t0, 13016(sp)
	addi t2, t0, 4
	sw t2, 13028(sp)
	lw t0, 13028(sp)
	lw t1, 13024(sp)
	sw t1, 0(t0)
	lw t0, 13012(sp)
	mv a0, t0
	lw t0, 13016(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13032(sp)
	lw t0, 13032(sp)
	addi t2, t0, 4
	sw t2, 13036(sp)
	lw t0, 13036(sp)
	lw t2, 0(t0)
	sw t2, 13040(sp)
	lw t0, 13040(sp)
	mv a0, t0
	call print
	lw t2, -96(s0)
	sw t2, 13044(sp)
	lw t0, 13044(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13048(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13052(sp)
	lw t0, 13052(sp)
	addi t2, t0, 0
	sw t2, 13056(sp)
	addi t4, zero, 1
	lw t0, 13056(sp)
	sw t4, 0(t0)
	la t2, .libro.str.277
	sw t2, 13060(sp)
	lw t0, 13052(sp)
	addi t2, t0, 4
	sw t2, 13064(sp)
	lw t0, 13064(sp)
	lw t1, 13060(sp)
	sw t1, 0(t0)
	lw t0, 13048(sp)
	mv a0, t0
	lw t0, 13052(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13068(sp)
	lw t0, 13068(sp)
	addi t2, t0, 4
	sw t2, 13072(sp)
	lw t0, 13072(sp)
	lw t2, 0(t0)
	sw t2, 13076(sp)
	lw t0, 13076(sp)
	mv a0, t0
	call print
	lw t2, -100(s0)
	sw t2, 13080(sp)
	lw t0, 13080(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13084(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13088(sp)
	lw t0, 13088(sp)
	addi t2, t0, 0
	sw t2, 13092(sp)
	addi t4, zero, 1
	lw t0, 13092(sp)
	sw t4, 0(t0)
	la t2, .libro.str.278
	sw t2, 13096(sp)
	lw t0, 13088(sp)
	addi t2, t0, 4
	sw t2, 13100(sp)
	lw t0, 13100(sp)
	lw t1, 13096(sp)
	sw t1, 0(t0)
	lw t0, 13084(sp)
	mv a0, t0
	lw t0, 13088(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13104(sp)
	lw t0, 13104(sp)
	addi t2, t0, 4
	sw t2, 13108(sp)
	lw t0, 13108(sp)
	lw t2, 0(t0)
	sw t2, 13112(sp)
	lw t0, 13112(sp)
	mv a0, t0
	call print
	lw t2, -104(s0)
	sw t2, 13116(sp)
	lw t0, 13116(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13120(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13124(sp)
	lw t0, 13124(sp)
	addi t2, t0, 0
	sw t2, 13128(sp)
	addi t4, zero, 1
	lw t0, 13128(sp)
	sw t4, 0(t0)
	la t2, .libro.str.279
	sw t2, 13132(sp)
	lw t0, 13124(sp)
	addi t2, t0, 4
	sw t2, 13136(sp)
	lw t0, 13136(sp)
	lw t1, 13132(sp)
	sw t1, 0(t0)
	lw t0, 13120(sp)
	mv a0, t0
	lw t0, 13124(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13140(sp)
	lw t0, 13140(sp)
	addi t2, t0, 4
	sw t2, 13144(sp)
	lw t0, 13144(sp)
	lw t2, 0(t0)
	sw t2, 13148(sp)
	lw t0, 13148(sp)
	mv a0, t0
	call print
	lw t2, -108(s0)
	sw t2, 13152(sp)
	lw t0, 13152(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13156(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13160(sp)
	lw t0, 13160(sp)
	addi t2, t0, 0
	sw t2, 13164(sp)
	addi t4, zero, 1
	lw t0, 13164(sp)
	sw t4, 0(t0)
	la t2, .libro.str.280
	sw t2, 13168(sp)
	lw t0, 13160(sp)
	addi t2, t0, 4
	sw t2, 13172(sp)
	lw t0, 13172(sp)
	lw t1, 13168(sp)
	sw t1, 0(t0)
	lw t0, 13156(sp)
	mv a0, t0
	lw t0, 13160(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13176(sp)
	lw t0, 13176(sp)
	addi t2, t0, 4
	sw t2, 13180(sp)
	lw t0, 13180(sp)
	lw t2, 0(t0)
	sw t2, 13184(sp)
	lw t0, 13184(sp)
	mv a0, t0
	call print
	lw t2, -112(s0)
	sw t2, 13188(sp)
	lw t0, 13188(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13192(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13196(sp)
	lw t0, 13196(sp)
	addi t2, t0, 0
	sw t2, 13200(sp)
	addi t4, zero, 1
	lw t0, 13200(sp)
	sw t4, 0(t0)
	la t2, .libro.str.281
	sw t2, 13204(sp)
	lw t0, 13196(sp)
	addi t2, t0, 4
	sw t2, 13208(sp)
	lw t0, 13208(sp)
	lw t1, 13204(sp)
	sw t1, 0(t0)
	lw t0, 13192(sp)
	mv a0, t0
	lw t0, 13196(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13212(sp)
	lw t0, 13212(sp)
	addi t2, t0, 4
	sw t2, 13216(sp)
	lw t0, 13216(sp)
	lw t2, 0(t0)
	sw t2, 13220(sp)
	lw t0, 13220(sp)
	mv a0, t0
	call print
	lw t2, -116(s0)
	sw t2, 13224(sp)
	lw t0, 13224(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13228(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13232(sp)
	lw t0, 13232(sp)
	addi t2, t0, 0
	sw t2, 13236(sp)
	addi t4, zero, 1
	lw t0, 13236(sp)
	sw t4, 0(t0)
	la t2, .libro.str.282
	sw t2, 13240(sp)
	lw t0, 13232(sp)
	addi t2, t0, 4
	sw t2, 13244(sp)
	lw t0, 13244(sp)
	lw t1, 13240(sp)
	sw t1, 0(t0)
	lw t0, 13228(sp)
	mv a0, t0
	lw t0, 13232(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13248(sp)
	lw t0, 13248(sp)
	addi t2, t0, 4
	sw t2, 13252(sp)
	lw t0, 13252(sp)
	lw t2, 0(t0)
	sw t2, 13256(sp)
	lw t0, 13256(sp)
	mv a0, t0
	call print
	lw t2, -120(s0)
	sw t2, 13260(sp)
	lw t0, 13260(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13264(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13268(sp)
	lw t0, 13268(sp)
	addi t2, t0, 0
	sw t2, 13272(sp)
	addi t4, zero, 1
	lw t0, 13272(sp)
	sw t4, 0(t0)
	la t2, .libro.str.283
	sw t2, 13276(sp)
	lw t0, 13268(sp)
	addi t2, t0, 4
	sw t2, 13280(sp)
	lw t0, 13280(sp)
	lw t1, 13276(sp)
	sw t1, 0(t0)
	lw t0, 13264(sp)
	mv a0, t0
	lw t0, 13268(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13284(sp)
	lw t0, 13284(sp)
	addi t2, t0, 4
	sw t2, 13288(sp)
	lw t0, 13288(sp)
	lw t2, 0(t0)
	sw t2, 13292(sp)
	lw t0, 13292(sp)
	mv a0, t0
	call print
	lw t2, -124(s0)
	sw t2, 13296(sp)
	lw t0, 13296(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13300(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13304(sp)
	lw t0, 13304(sp)
	addi t2, t0, 0
	sw t2, 13308(sp)
	addi t4, zero, 1
	lw t0, 13308(sp)
	sw t4, 0(t0)
	la t2, .libro.str.284
	sw t2, 13312(sp)
	lw t0, 13304(sp)
	addi t2, t0, 4
	sw t2, 13316(sp)
	lw t0, 13316(sp)
	lw t1, 13312(sp)
	sw t1, 0(t0)
	lw t0, 13300(sp)
	mv a0, t0
	lw t0, 13304(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13320(sp)
	lw t0, 13320(sp)
	addi t2, t0, 4
	sw t2, 13324(sp)
	lw t0, 13324(sp)
	lw t2, 0(t0)
	sw t2, 13328(sp)
	lw t0, 13328(sp)
	mv a0, t0
	call print
	lw t2, -128(s0)
	sw t2, 13332(sp)
	lw t0, 13332(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13336(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13340(sp)
	lw t0, 13340(sp)
	addi t2, t0, 0
	sw t2, 13344(sp)
	addi t4, zero, 1
	lw t0, 13344(sp)
	sw t4, 0(t0)
	la t2, .libro.str.285
	sw t2, 13348(sp)
	lw t0, 13340(sp)
	addi t2, t0, 4
	sw t2, 13352(sp)
	lw t0, 13352(sp)
	lw t1, 13348(sp)
	sw t1, 0(t0)
	lw t0, 13336(sp)
	mv a0, t0
	lw t0, 13340(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13356(sp)
	lw t0, 13356(sp)
	addi t2, t0, 4
	sw t2, 13360(sp)
	lw t0, 13360(sp)
	lw t2, 0(t0)
	sw t2, 13364(sp)
	lw t0, 13364(sp)
	mv a0, t0
	call print
	lw t2, -132(s0)
	sw t2, 13368(sp)
	lw t0, 13368(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13372(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13376(sp)
	lw t0, 13376(sp)
	addi t2, t0, 0
	sw t2, 13380(sp)
	addi t4, zero, 1
	lw t0, 13380(sp)
	sw t4, 0(t0)
	la t2, .libro.str.286
	sw t2, 13384(sp)
	lw t0, 13376(sp)
	addi t2, t0, 4
	sw t2, 13388(sp)
	lw t0, 13388(sp)
	lw t1, 13384(sp)
	sw t1, 0(t0)
	lw t0, 13372(sp)
	mv a0, t0
	lw t0, 13376(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13392(sp)
	lw t0, 13392(sp)
	addi t2, t0, 4
	sw t2, 13396(sp)
	lw t0, 13396(sp)
	lw t2, 0(t0)
	sw t2, 13400(sp)
	lw t0, 13400(sp)
	mv a0, t0
	call print
	lw t2, -136(s0)
	sw t2, 13404(sp)
	lw t0, 13404(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13408(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13412(sp)
	lw t0, 13412(sp)
	addi t2, t0, 0
	sw t2, 13416(sp)
	addi t4, zero, 1
	lw t0, 13416(sp)
	sw t4, 0(t0)
	la t2, .libro.str.287
	sw t2, 13420(sp)
	lw t0, 13412(sp)
	addi t2, t0, 4
	sw t2, 13424(sp)
	lw t0, 13424(sp)
	lw t1, 13420(sp)
	sw t1, 0(t0)
	lw t0, 13408(sp)
	mv a0, t0
	lw t0, 13412(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13428(sp)
	lw t0, 13428(sp)
	addi t2, t0, 4
	sw t2, 13432(sp)
	lw t0, 13432(sp)
	lw t2, 0(t0)
	sw t2, 13436(sp)
	lw t0, 13436(sp)
	mv a0, t0
	call print
	lw t2, -140(s0)
	sw t2, 13440(sp)
	lw t0, 13440(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13444(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13448(sp)
	lw t0, 13448(sp)
	addi t2, t0, 0
	sw t2, 13452(sp)
	addi t4, zero, 1
	lw t0, 13452(sp)
	sw t4, 0(t0)
	la t2, .libro.str.288
	sw t2, 13456(sp)
	lw t0, 13448(sp)
	addi t2, t0, 4
	sw t2, 13460(sp)
	lw t0, 13460(sp)
	lw t1, 13456(sp)
	sw t1, 0(t0)
	lw t0, 13444(sp)
	mv a0, t0
	lw t0, 13448(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13464(sp)
	lw t0, 13464(sp)
	addi t2, t0, 4
	sw t2, 13468(sp)
	lw t0, 13468(sp)
	lw t2, 0(t0)
	sw t2, 13472(sp)
	lw t0, 13472(sp)
	mv a0, t0
	call print
	lw t2, -144(s0)
	sw t2, 13476(sp)
	lw t0, 13476(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13480(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13484(sp)
	lw t0, 13484(sp)
	addi t2, t0, 0
	sw t2, 13488(sp)
	addi t4, zero, 1
	lw t0, 13488(sp)
	sw t4, 0(t0)
	la t2, .libro.str.289
	sw t2, 13492(sp)
	lw t0, 13484(sp)
	addi t2, t0, 4
	sw t2, 13496(sp)
	lw t0, 13496(sp)
	lw t1, 13492(sp)
	sw t1, 0(t0)
	lw t0, 13480(sp)
	mv a0, t0
	lw t0, 13484(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13500(sp)
	lw t0, 13500(sp)
	addi t2, t0, 4
	sw t2, 13504(sp)
	lw t0, 13504(sp)
	lw t2, 0(t0)
	sw t2, 13508(sp)
	lw t0, 13508(sp)
	mv a0, t0
	call print
	lw t2, -148(s0)
	sw t2, 13512(sp)
	lw t0, 13512(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13516(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13520(sp)
	lw t0, 13520(sp)
	addi t2, t0, 0
	sw t2, 13524(sp)
	addi t4, zero, 1
	lw t0, 13524(sp)
	sw t4, 0(t0)
	la t2, .libro.str.290
	sw t2, 13528(sp)
	lw t0, 13520(sp)
	addi t2, t0, 4
	sw t2, 13532(sp)
	lw t0, 13532(sp)
	lw t1, 13528(sp)
	sw t1, 0(t0)
	lw t0, 13516(sp)
	mv a0, t0
	lw t0, 13520(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13536(sp)
	lw t0, 13536(sp)
	addi t2, t0, 4
	sw t2, 13540(sp)
	lw t0, 13540(sp)
	lw t2, 0(t0)
	sw t2, 13544(sp)
	lw t0, 13544(sp)
	mv a0, t0
	call print
	lw t2, -152(s0)
	sw t2, 13548(sp)
	lw t0, 13548(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13552(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13556(sp)
	lw t0, 13556(sp)
	addi t2, t0, 0
	sw t2, 13560(sp)
	addi t4, zero, 1
	lw t0, 13560(sp)
	sw t4, 0(t0)
	la t2, .libro.str.291
	sw t2, 13564(sp)
	lw t0, 13556(sp)
	addi t2, t0, 4
	sw t2, 13568(sp)
	lw t0, 13568(sp)
	lw t1, 13564(sp)
	sw t1, 0(t0)
	lw t0, 13552(sp)
	mv a0, t0
	lw t0, 13556(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13572(sp)
	lw t0, 13572(sp)
	addi t2, t0, 4
	sw t2, 13576(sp)
	lw t0, 13576(sp)
	lw t2, 0(t0)
	sw t2, 13580(sp)
	lw t0, 13580(sp)
	mv a0, t0
	call print
	lw t2, -156(s0)
	sw t2, 13584(sp)
	lw t0, 13584(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13588(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13592(sp)
	lw t0, 13592(sp)
	addi t2, t0, 0
	sw t2, 13596(sp)
	addi t4, zero, 1
	lw t0, 13596(sp)
	sw t4, 0(t0)
	la t2, .libro.str.292
	sw t2, 13600(sp)
	lw t0, 13592(sp)
	addi t2, t0, 4
	sw t2, 13604(sp)
	lw t0, 13604(sp)
	lw t1, 13600(sp)
	sw t1, 0(t0)
	lw t0, 13588(sp)
	mv a0, t0
	lw t0, 13592(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13608(sp)
	lw t0, 13608(sp)
	addi t2, t0, 4
	sw t2, 13612(sp)
	lw t0, 13612(sp)
	lw t2, 0(t0)
	sw t2, 13616(sp)
	lw t0, 13616(sp)
	mv a0, t0
	call print
	lw t2, -160(s0)
	sw t2, 13620(sp)
	lw t0, 13620(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13624(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13628(sp)
	lw t0, 13628(sp)
	addi t2, t0, 0
	sw t2, 13632(sp)
	addi t4, zero, 1
	lw t0, 13632(sp)
	sw t4, 0(t0)
	la t2, .libro.str.293
	sw t2, 13636(sp)
	lw t0, 13628(sp)
	addi t2, t0, 4
	sw t2, 13640(sp)
	lw t0, 13640(sp)
	lw t1, 13636(sp)
	sw t1, 0(t0)
	lw t0, 13624(sp)
	mv a0, t0
	lw t0, 13628(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13644(sp)
	lw t0, 13644(sp)
	addi t2, t0, 4
	sw t2, 13648(sp)
	lw t0, 13648(sp)
	lw t2, 0(t0)
	sw t2, 13652(sp)
	lw t0, 13652(sp)
	mv a0, t0
	call print
	lw t2, -164(s0)
	sw t2, 13656(sp)
	lw t0, 13656(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13660(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13664(sp)
	lw t0, 13664(sp)
	addi t2, t0, 0
	sw t2, 13668(sp)
	addi t4, zero, 1
	lw t0, 13668(sp)
	sw t4, 0(t0)
	la t2, .libro.str.294
	sw t2, 13672(sp)
	lw t0, 13664(sp)
	addi t2, t0, 4
	sw t2, 13676(sp)
	lw t0, 13676(sp)
	lw t1, 13672(sp)
	sw t1, 0(t0)
	lw t0, 13660(sp)
	mv a0, t0
	lw t0, 13664(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13680(sp)
	lw t0, 13680(sp)
	addi t2, t0, 4
	sw t2, 13684(sp)
	lw t0, 13684(sp)
	lw t2, 0(t0)
	sw t2, 13688(sp)
	lw t0, 13688(sp)
	mv a0, t0
	call print
	lw t2, -168(s0)
	sw t2, 13692(sp)
	lw t0, 13692(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13696(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13700(sp)
	lw t0, 13700(sp)
	addi t2, t0, 0
	sw t2, 13704(sp)
	addi t4, zero, 1
	lw t0, 13704(sp)
	sw t4, 0(t0)
	la t2, .libro.str.295
	sw t2, 13708(sp)
	lw t0, 13700(sp)
	addi t2, t0, 4
	sw t2, 13712(sp)
	lw t0, 13712(sp)
	lw t1, 13708(sp)
	sw t1, 0(t0)
	lw t0, 13696(sp)
	mv a0, t0
	lw t0, 13700(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13716(sp)
	lw t0, 13716(sp)
	addi t2, t0, 4
	sw t2, 13720(sp)
	lw t0, 13720(sp)
	lw t2, 0(t0)
	sw t2, 13724(sp)
	lw t0, 13724(sp)
	mv a0, t0
	call print
	lw t2, -172(s0)
	sw t2, 13728(sp)
	lw t0, 13728(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13732(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13736(sp)
	lw t0, 13736(sp)
	addi t2, t0, 0
	sw t2, 13740(sp)
	addi t4, zero, 1
	lw t0, 13740(sp)
	sw t4, 0(t0)
	la t2, .libro.str.296
	sw t2, 13744(sp)
	lw t0, 13736(sp)
	addi t2, t0, 4
	sw t2, 13748(sp)
	lw t0, 13748(sp)
	lw t1, 13744(sp)
	sw t1, 0(t0)
	lw t0, 13732(sp)
	mv a0, t0
	lw t0, 13736(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13752(sp)
	lw t0, 13752(sp)
	addi t2, t0, 4
	sw t2, 13756(sp)
	lw t0, 13756(sp)
	lw t2, 0(t0)
	sw t2, 13760(sp)
	lw t0, 13760(sp)
	mv a0, t0
	call print
	lw t2, -176(s0)
	sw t2, 13764(sp)
	lw t0, 13764(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13768(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13772(sp)
	lw t0, 13772(sp)
	addi t2, t0, 0
	sw t2, 13776(sp)
	addi t4, zero, 1
	lw t0, 13776(sp)
	sw t4, 0(t0)
	la t2, .libro.str.297
	sw t2, 13780(sp)
	lw t0, 13772(sp)
	addi t2, t0, 4
	sw t2, 13784(sp)
	lw t0, 13784(sp)
	lw t1, 13780(sp)
	sw t1, 0(t0)
	lw t0, 13768(sp)
	mv a0, t0
	lw t0, 13772(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13788(sp)
	lw t0, 13788(sp)
	addi t2, t0, 4
	sw t2, 13792(sp)
	lw t0, 13792(sp)
	lw t2, 0(t0)
	sw t2, 13796(sp)
	lw t0, 13796(sp)
	mv a0, t0
	call print
	lw t2, -180(s0)
	sw t2, 13800(sp)
	lw t0, 13800(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13804(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13808(sp)
	lw t0, 13808(sp)
	addi t2, t0, 0
	sw t2, 13812(sp)
	addi t4, zero, 1
	lw t0, 13812(sp)
	sw t4, 0(t0)
	la t2, .libro.str.298
	sw t2, 13816(sp)
	lw t0, 13808(sp)
	addi t2, t0, 4
	sw t2, 13820(sp)
	lw t0, 13820(sp)
	lw t1, 13816(sp)
	sw t1, 0(t0)
	lw t0, 13804(sp)
	mv a0, t0
	lw t0, 13808(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13824(sp)
	lw t0, 13824(sp)
	addi t2, t0, 4
	sw t2, 13828(sp)
	lw t0, 13828(sp)
	lw t2, 0(t0)
	sw t2, 13832(sp)
	lw t0, 13832(sp)
	mv a0, t0
	call print
	lw t2, -184(s0)
	sw t2, 13836(sp)
	lw t0, 13836(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13840(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13844(sp)
	lw t0, 13844(sp)
	addi t2, t0, 0
	sw t2, 13848(sp)
	addi t4, zero, 1
	lw t0, 13848(sp)
	sw t4, 0(t0)
	la t2, .libro.str.299
	sw t2, 13852(sp)
	lw t0, 13844(sp)
	addi t2, t0, 4
	sw t2, 13856(sp)
	lw t0, 13856(sp)
	lw t1, 13852(sp)
	sw t1, 0(t0)
	lw t0, 13840(sp)
	mv a0, t0
	lw t0, 13844(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13860(sp)
	lw t0, 13860(sp)
	addi t2, t0, 4
	sw t2, 13864(sp)
	lw t0, 13864(sp)
	lw t2, 0(t0)
	sw t2, 13868(sp)
	lw t0, 13868(sp)
	mv a0, t0
	call print
	lw t2, -188(s0)
	sw t2, 13872(sp)
	lw t0, 13872(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13876(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13880(sp)
	lw t0, 13880(sp)
	addi t2, t0, 0
	sw t2, 13884(sp)
	addi t4, zero, 1
	lw t0, 13884(sp)
	sw t4, 0(t0)
	la t2, .libro.str.300
	sw t2, 13888(sp)
	lw t0, 13880(sp)
	addi t2, t0, 4
	sw t2, 13892(sp)
	lw t0, 13892(sp)
	lw t1, 13888(sp)
	sw t1, 0(t0)
	lw t0, 13876(sp)
	mv a0, t0
	lw t0, 13880(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13896(sp)
	lw t0, 13896(sp)
	addi t2, t0, 4
	sw t2, 13900(sp)
	lw t0, 13900(sp)
	lw t2, 0(t0)
	sw t2, 13904(sp)
	lw t0, 13904(sp)
	mv a0, t0
	call print
	lw t2, -192(s0)
	sw t2, 13908(sp)
	lw t0, 13908(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13912(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13916(sp)
	lw t0, 13916(sp)
	addi t2, t0, 0
	sw t2, 13920(sp)
	addi t4, zero, 1
	lw t0, 13920(sp)
	sw t4, 0(t0)
	la t2, .libro.str.301
	sw t2, 13924(sp)
	lw t0, 13916(sp)
	addi t2, t0, 4
	sw t2, 13928(sp)
	lw t0, 13928(sp)
	lw t1, 13924(sp)
	sw t1, 0(t0)
	lw t0, 13912(sp)
	mv a0, t0
	lw t0, 13916(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13932(sp)
	lw t0, 13932(sp)
	addi t2, t0, 4
	sw t2, 13936(sp)
	lw t0, 13936(sp)
	lw t2, 0(t0)
	sw t2, 13940(sp)
	lw t0, 13940(sp)
	mv a0, t0
	call print
	lw t2, -196(s0)
	sw t2, 13944(sp)
	lw t0, 13944(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13948(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13952(sp)
	lw t0, 13952(sp)
	addi t2, t0, 0
	sw t2, 13956(sp)
	addi t4, zero, 1
	lw t0, 13956(sp)
	sw t4, 0(t0)
	la t2, .libro.str.302
	sw t2, 13960(sp)
	lw t0, 13952(sp)
	addi t2, t0, 4
	sw t2, 13964(sp)
	lw t0, 13964(sp)
	lw t1, 13960(sp)
	sw t1, 0(t0)
	lw t0, 13948(sp)
	mv a0, t0
	lw t0, 13952(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 13968(sp)
	lw t0, 13968(sp)
	addi t2, t0, 4
	sw t2, 13972(sp)
	lw t0, 13972(sp)
	lw t2, 0(t0)
	sw t2, 13976(sp)
	lw t0, 13976(sp)
	mv a0, t0
	call print
	lw t2, -200(s0)
	sw t2, 13980(sp)
	lw t0, 13980(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 13984(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 13988(sp)
	lw t0, 13988(sp)
	addi t2, t0, 0
	sw t2, 13992(sp)
	addi t4, zero, 1
	lw t0, 13992(sp)
	sw t4, 0(t0)
	la t2, .libro.str.303
	sw t2, 13996(sp)
	lw t0, 13988(sp)
	addi t2, t0, 4
	sw t2, 14000(sp)
	lw t0, 14000(sp)
	lw t1, 13996(sp)
	sw t1, 0(t0)
	lw t0, 13984(sp)
	mv a0, t0
	lw t0, 13988(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14004(sp)
	lw t0, 14004(sp)
	addi t2, t0, 4
	sw t2, 14008(sp)
	lw t0, 14008(sp)
	lw t2, 0(t0)
	sw t2, 14012(sp)
	lw t0, 14012(sp)
	mv a0, t0
	call print
	lw t2, -204(s0)
	sw t2, 14016(sp)
	lw t0, 14016(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14020(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14024(sp)
	lw t0, 14024(sp)
	addi t2, t0, 0
	sw t2, 14028(sp)
	addi t4, zero, 1
	lw t0, 14028(sp)
	sw t4, 0(t0)
	la t2, .libro.str.304
	sw t2, 14032(sp)
	lw t0, 14024(sp)
	addi t2, t0, 4
	sw t2, 14036(sp)
	lw t0, 14036(sp)
	lw t1, 14032(sp)
	sw t1, 0(t0)
	lw t0, 14020(sp)
	mv a0, t0
	lw t0, 14024(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14040(sp)
	lw t0, 14040(sp)
	addi t2, t0, 4
	sw t2, 14044(sp)
	lw t0, 14044(sp)
	lw t2, 0(t0)
	sw t2, 14048(sp)
	lw t0, 14048(sp)
	mv a0, t0
	call print
	lw t2, -208(s0)
	sw t2, 14052(sp)
	lw t0, 14052(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14056(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14060(sp)
	lw t0, 14060(sp)
	addi t2, t0, 0
	sw t2, 14064(sp)
	addi t4, zero, 1
	lw t0, 14064(sp)
	sw t4, 0(t0)
	la t2, .libro.str.305
	sw t2, 14068(sp)
	lw t0, 14060(sp)
	addi t2, t0, 4
	sw t2, 14072(sp)
	lw t0, 14072(sp)
	lw t1, 14068(sp)
	sw t1, 0(t0)
	lw t0, 14056(sp)
	mv a0, t0
	lw t0, 14060(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14076(sp)
	lw t0, 14076(sp)
	addi t2, t0, 4
	sw t2, 14080(sp)
	lw t0, 14080(sp)
	lw t2, 0(t0)
	sw t2, 14084(sp)
	lw t0, 14084(sp)
	mv a0, t0
	call print
	lw t2, -212(s0)
	sw t2, 14088(sp)
	lw t0, 14088(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14092(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14096(sp)
	lw t0, 14096(sp)
	addi t2, t0, 0
	sw t2, 14100(sp)
	addi t4, zero, 1
	lw t0, 14100(sp)
	sw t4, 0(t0)
	la t2, .libro.str.306
	sw t2, 14104(sp)
	lw t0, 14096(sp)
	addi t2, t0, 4
	sw t2, 14108(sp)
	lw t0, 14108(sp)
	lw t1, 14104(sp)
	sw t1, 0(t0)
	lw t0, 14092(sp)
	mv a0, t0
	lw t0, 14096(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14112(sp)
	lw t0, 14112(sp)
	addi t2, t0, 4
	sw t2, 14116(sp)
	lw t0, 14116(sp)
	lw t2, 0(t0)
	sw t2, 14120(sp)
	lw t0, 14120(sp)
	mv a0, t0
	call print
	lw t2, -216(s0)
	sw t2, 14124(sp)
	lw t0, 14124(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14128(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14132(sp)
	lw t0, 14132(sp)
	addi t2, t0, 0
	sw t2, 14136(sp)
	addi t4, zero, 1
	lw t0, 14136(sp)
	sw t4, 0(t0)
	la t2, .libro.str.307
	sw t2, 14140(sp)
	lw t0, 14132(sp)
	addi t2, t0, 4
	sw t2, 14144(sp)
	lw t0, 14144(sp)
	lw t1, 14140(sp)
	sw t1, 0(t0)
	lw t0, 14128(sp)
	mv a0, t0
	lw t0, 14132(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14148(sp)
	lw t0, 14148(sp)
	addi t2, t0, 4
	sw t2, 14152(sp)
	lw t0, 14152(sp)
	lw t2, 0(t0)
	sw t2, 14156(sp)
	lw t0, 14156(sp)
	mv a0, t0
	call print
	lw t2, -220(s0)
	sw t2, 14160(sp)
	lw t0, 14160(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14164(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14168(sp)
	lw t0, 14168(sp)
	addi t2, t0, 0
	sw t2, 14172(sp)
	addi t4, zero, 1
	lw t0, 14172(sp)
	sw t4, 0(t0)
	la t2, .libro.str.308
	sw t2, 14176(sp)
	lw t0, 14168(sp)
	addi t2, t0, 4
	sw t2, 14180(sp)
	lw t0, 14180(sp)
	lw t1, 14176(sp)
	sw t1, 0(t0)
	lw t0, 14164(sp)
	mv a0, t0
	lw t0, 14168(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14184(sp)
	lw t0, 14184(sp)
	addi t2, t0, 4
	sw t2, 14188(sp)
	lw t0, 14188(sp)
	lw t2, 0(t0)
	sw t2, 14192(sp)
	lw t0, 14192(sp)
	mv a0, t0
	call print
	lw t2, -224(s0)
	sw t2, 14196(sp)
	lw t0, 14196(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14200(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14204(sp)
	lw t0, 14204(sp)
	addi t2, t0, 0
	sw t2, 14208(sp)
	addi t4, zero, 1
	lw t0, 14208(sp)
	sw t4, 0(t0)
	la t2, .libro.str.309
	sw t2, 14212(sp)
	lw t0, 14204(sp)
	addi t2, t0, 4
	sw t2, 14216(sp)
	lw t0, 14216(sp)
	lw t1, 14212(sp)
	sw t1, 0(t0)
	lw t0, 14200(sp)
	mv a0, t0
	lw t0, 14204(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14220(sp)
	lw t0, 14220(sp)
	addi t2, t0, 4
	sw t2, 14224(sp)
	lw t0, 14224(sp)
	lw t2, 0(t0)
	sw t2, 14228(sp)
	lw t0, 14228(sp)
	mv a0, t0
	call print
	lw t2, -228(s0)
	sw t2, 14232(sp)
	lw t0, 14232(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14236(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14240(sp)
	lw t0, 14240(sp)
	addi t2, t0, 0
	sw t2, 14244(sp)
	addi t4, zero, 1
	lw t0, 14244(sp)
	sw t4, 0(t0)
	la t2, .libro.str.310
	sw t2, 14248(sp)
	lw t0, 14240(sp)
	addi t2, t0, 4
	sw t2, 14252(sp)
	lw t0, 14252(sp)
	lw t1, 14248(sp)
	sw t1, 0(t0)
	lw t0, 14236(sp)
	mv a0, t0
	lw t0, 14240(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14256(sp)
	lw t0, 14256(sp)
	addi t2, t0, 4
	sw t2, 14260(sp)
	lw t0, 14260(sp)
	lw t2, 0(t0)
	sw t2, 14264(sp)
	lw t0, 14264(sp)
	mv a0, t0
	call print
	lw t2, -232(s0)
	sw t2, 14268(sp)
	lw t0, 14268(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14272(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14276(sp)
	lw t0, 14276(sp)
	addi t2, t0, 0
	sw t2, 14280(sp)
	addi t4, zero, 1
	lw t0, 14280(sp)
	sw t4, 0(t0)
	la t2, .libro.str.311
	sw t2, 14284(sp)
	lw t0, 14276(sp)
	addi t2, t0, 4
	sw t2, 14288(sp)
	lw t0, 14288(sp)
	lw t1, 14284(sp)
	sw t1, 0(t0)
	lw t0, 14272(sp)
	mv a0, t0
	lw t0, 14276(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14292(sp)
	lw t0, 14292(sp)
	addi t2, t0, 4
	sw t2, 14296(sp)
	lw t0, 14296(sp)
	lw t2, 0(t0)
	sw t2, 14300(sp)
	lw t0, 14300(sp)
	mv a0, t0
	call print
	lw t2, -236(s0)
	sw t2, 14304(sp)
	lw t0, 14304(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14308(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14312(sp)
	lw t0, 14312(sp)
	addi t2, t0, 0
	sw t2, 14316(sp)
	addi t4, zero, 1
	lw t0, 14316(sp)
	sw t4, 0(t0)
	la t2, .libro.str.312
	sw t2, 14320(sp)
	lw t0, 14312(sp)
	addi t2, t0, 4
	sw t2, 14324(sp)
	lw t0, 14324(sp)
	lw t1, 14320(sp)
	sw t1, 0(t0)
	lw t0, 14308(sp)
	mv a0, t0
	lw t0, 14312(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14328(sp)
	lw t0, 14328(sp)
	addi t2, t0, 4
	sw t2, 14332(sp)
	lw t0, 14332(sp)
	lw t2, 0(t0)
	sw t2, 14336(sp)
	lw t0, 14336(sp)
	mv a0, t0
	call print
	lw t2, -240(s0)
	sw t2, 14340(sp)
	lw t0, 14340(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14344(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14348(sp)
	lw t0, 14348(sp)
	addi t2, t0, 0
	sw t2, 14352(sp)
	addi t4, zero, 1
	lw t0, 14352(sp)
	sw t4, 0(t0)
	la t2, .libro.str.313
	sw t2, 14356(sp)
	lw t0, 14348(sp)
	addi t2, t0, 4
	sw t2, 14360(sp)
	lw t0, 14360(sp)
	lw t1, 14356(sp)
	sw t1, 0(t0)
	lw t0, 14344(sp)
	mv a0, t0
	lw t0, 14348(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14364(sp)
	lw t0, 14364(sp)
	addi t2, t0, 4
	sw t2, 14368(sp)
	lw t0, 14368(sp)
	lw t2, 0(t0)
	sw t2, 14372(sp)
	lw t0, 14372(sp)
	mv a0, t0
	call print
	lw t2, -244(s0)
	sw t2, 14376(sp)
	lw t0, 14376(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14380(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14384(sp)
	lw t0, 14384(sp)
	addi t2, t0, 0
	sw t2, 14388(sp)
	addi t4, zero, 1
	lw t0, 14388(sp)
	sw t4, 0(t0)
	la t2, .libro.str.314
	sw t2, 14392(sp)
	lw t0, 14384(sp)
	addi t2, t0, 4
	sw t2, 14396(sp)
	lw t0, 14396(sp)
	lw t1, 14392(sp)
	sw t1, 0(t0)
	lw t0, 14380(sp)
	mv a0, t0
	lw t0, 14384(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14400(sp)
	lw t0, 14400(sp)
	addi t2, t0, 4
	sw t2, 14404(sp)
	lw t0, 14404(sp)
	lw t2, 0(t0)
	sw t2, 14408(sp)
	lw t0, 14408(sp)
	mv a0, t0
	call print
	lw t2, -248(s0)
	sw t2, 14412(sp)
	lw t0, 14412(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14416(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14420(sp)
	lw t0, 14420(sp)
	addi t2, t0, 0
	sw t2, 14424(sp)
	addi t4, zero, 1
	lw t0, 14424(sp)
	sw t4, 0(t0)
	la t2, .libro.str.315
	sw t2, 14428(sp)
	lw t0, 14420(sp)
	addi t2, t0, 4
	sw t2, 14432(sp)
	lw t0, 14432(sp)
	lw t1, 14428(sp)
	sw t1, 0(t0)
	lw t0, 14416(sp)
	mv a0, t0
	lw t0, 14420(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14436(sp)
	lw t0, 14436(sp)
	addi t2, t0, 4
	sw t2, 14440(sp)
	lw t0, 14440(sp)
	lw t2, 0(t0)
	sw t2, 14444(sp)
	lw t0, 14444(sp)
	mv a0, t0
	call print
	lw t2, -252(s0)
	sw t2, 14448(sp)
	lw t0, 14448(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14452(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14456(sp)
	lw t0, 14456(sp)
	addi t2, t0, 0
	sw t2, 14460(sp)
	addi t4, zero, 1
	lw t0, 14460(sp)
	sw t4, 0(t0)
	la t2, .libro.str.316
	sw t2, 14464(sp)
	lw t0, 14456(sp)
	addi t2, t0, 4
	sw t2, 14468(sp)
	lw t0, 14468(sp)
	lw t1, 14464(sp)
	sw t1, 0(t0)
	lw t0, 14452(sp)
	mv a0, t0
	lw t0, 14456(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14472(sp)
	lw t0, 14472(sp)
	addi t2, t0, 4
	sw t2, 14476(sp)
	lw t0, 14476(sp)
	lw t2, 0(t0)
	sw t2, 14480(sp)
	lw t0, 14480(sp)
	mv a0, t0
	call print
	lw t2, -256(s0)
	sw t2, 14484(sp)
	lw t0, 14484(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14488(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14492(sp)
	lw t0, 14492(sp)
	addi t2, t0, 0
	sw t2, 14496(sp)
	addi t4, zero, 1
	lw t0, 14496(sp)
	sw t4, 0(t0)
	la t2, .libro.str.317
	sw t2, 14500(sp)
	lw t0, 14492(sp)
	addi t2, t0, 4
	sw t2, 14504(sp)
	lw t0, 14504(sp)
	lw t1, 14500(sp)
	sw t1, 0(t0)
	lw t0, 14488(sp)
	mv a0, t0
	lw t0, 14492(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14508(sp)
	lw t0, 14508(sp)
	addi t2, t0, 4
	sw t2, 14512(sp)
	lw t0, 14512(sp)
	lw t2, 0(t0)
	sw t2, 14516(sp)
	lw t0, 14516(sp)
	mv a0, t0
	call print
	lw t2, -260(s0)
	sw t2, 14520(sp)
	lw t0, 14520(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14524(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14528(sp)
	lw t0, 14528(sp)
	addi t2, t0, 0
	sw t2, 14532(sp)
	addi t4, zero, 1
	lw t0, 14532(sp)
	sw t4, 0(t0)
	la t2, .libro.str.318
	sw t2, 14536(sp)
	lw t0, 14528(sp)
	addi t2, t0, 4
	sw t2, 14540(sp)
	lw t0, 14540(sp)
	lw t1, 14536(sp)
	sw t1, 0(t0)
	lw t0, 14524(sp)
	mv a0, t0
	lw t0, 14528(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14544(sp)
	lw t0, 14544(sp)
	addi t2, t0, 4
	sw t2, 14548(sp)
	lw t0, 14548(sp)
	lw t2, 0(t0)
	sw t2, 14552(sp)
	lw t0, 14552(sp)
	mv a0, t0
	call print
	lw t2, -264(s0)
	sw t2, 14556(sp)
	lw t0, 14556(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14560(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14564(sp)
	lw t0, 14564(sp)
	addi t2, t0, 0
	sw t2, 14568(sp)
	addi t4, zero, 1
	lw t0, 14568(sp)
	sw t4, 0(t0)
	la t2, .libro.str.319
	sw t2, 14572(sp)
	lw t0, 14564(sp)
	addi t2, t0, 4
	sw t2, 14576(sp)
	lw t0, 14576(sp)
	lw t1, 14572(sp)
	sw t1, 0(t0)
	lw t0, 14560(sp)
	mv a0, t0
	lw t0, 14564(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14580(sp)
	lw t0, 14580(sp)
	addi t2, t0, 4
	sw t2, 14584(sp)
	lw t0, 14584(sp)
	lw t2, 0(t0)
	sw t2, 14588(sp)
	lw t0, 14588(sp)
	mv a0, t0
	call print
	lw t2, -268(s0)
	sw t2, 14592(sp)
	lw t0, 14592(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14596(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14600(sp)
	lw t0, 14600(sp)
	addi t2, t0, 0
	sw t2, 14604(sp)
	addi t4, zero, 1
	lw t0, 14604(sp)
	sw t4, 0(t0)
	la t2, .libro.str.320
	sw t2, 14608(sp)
	lw t0, 14600(sp)
	addi t2, t0, 4
	sw t2, 14612(sp)
	lw t0, 14612(sp)
	lw t1, 14608(sp)
	sw t1, 0(t0)
	lw t0, 14596(sp)
	mv a0, t0
	lw t0, 14600(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14616(sp)
	lw t0, 14616(sp)
	addi t2, t0, 4
	sw t2, 14620(sp)
	lw t0, 14620(sp)
	lw t2, 0(t0)
	sw t2, 14624(sp)
	lw t0, 14624(sp)
	mv a0, t0
	call print
	lw t2, -272(s0)
	sw t2, 14628(sp)
	lw t0, 14628(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14632(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14636(sp)
	lw t0, 14636(sp)
	addi t2, t0, 0
	sw t2, 14640(sp)
	addi t4, zero, 1
	lw t0, 14640(sp)
	sw t4, 0(t0)
	la t2, .libro.str.321
	sw t2, 14644(sp)
	lw t0, 14636(sp)
	addi t2, t0, 4
	sw t2, 14648(sp)
	lw t0, 14648(sp)
	lw t1, 14644(sp)
	sw t1, 0(t0)
	lw t0, 14632(sp)
	mv a0, t0
	lw t0, 14636(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14652(sp)
	lw t0, 14652(sp)
	addi t2, t0, 4
	sw t2, 14656(sp)
	lw t0, 14656(sp)
	lw t2, 0(t0)
	sw t2, 14660(sp)
	lw t0, 14660(sp)
	mv a0, t0
	call print
	lw t2, -276(s0)
	sw t2, 14664(sp)
	lw t0, 14664(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14668(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14672(sp)
	lw t0, 14672(sp)
	addi t2, t0, 0
	sw t2, 14676(sp)
	addi t4, zero, 1
	lw t0, 14676(sp)
	sw t4, 0(t0)
	la t2, .libro.str.322
	sw t2, 14680(sp)
	lw t0, 14672(sp)
	addi t2, t0, 4
	sw t2, 14684(sp)
	lw t0, 14684(sp)
	lw t1, 14680(sp)
	sw t1, 0(t0)
	lw t0, 14668(sp)
	mv a0, t0
	lw t0, 14672(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14688(sp)
	lw t0, 14688(sp)
	addi t2, t0, 4
	sw t2, 14692(sp)
	lw t0, 14692(sp)
	lw t2, 0(t0)
	sw t2, 14696(sp)
	lw t0, 14696(sp)
	mv a0, t0
	call print
	lw t2, -280(s0)
	sw t2, 14700(sp)
	lw t0, 14700(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14704(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14708(sp)
	lw t0, 14708(sp)
	addi t2, t0, 0
	sw t2, 14712(sp)
	addi t4, zero, 1
	lw t0, 14712(sp)
	sw t4, 0(t0)
	la t2, .libro.str.323
	sw t2, 14716(sp)
	lw t0, 14708(sp)
	addi t2, t0, 4
	sw t2, 14720(sp)
	lw t0, 14720(sp)
	lw t1, 14716(sp)
	sw t1, 0(t0)
	lw t0, 14704(sp)
	mv a0, t0
	lw t0, 14708(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14724(sp)
	lw t0, 14724(sp)
	addi t2, t0, 4
	sw t2, 14728(sp)
	lw t0, 14728(sp)
	lw t2, 0(t0)
	sw t2, 14732(sp)
	lw t0, 14732(sp)
	mv a0, t0
	call print
	lw t2, -284(s0)
	sw t2, 14736(sp)
	lw t0, 14736(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14740(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14744(sp)
	lw t0, 14744(sp)
	addi t2, t0, 0
	sw t2, 14748(sp)
	addi t4, zero, 1
	lw t0, 14748(sp)
	sw t4, 0(t0)
	la t2, .libro.str.324
	sw t2, 14752(sp)
	lw t0, 14744(sp)
	addi t2, t0, 4
	sw t2, 14756(sp)
	lw t0, 14756(sp)
	lw t1, 14752(sp)
	sw t1, 0(t0)
	lw t0, 14740(sp)
	mv a0, t0
	lw t0, 14744(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14760(sp)
	lw t0, 14760(sp)
	addi t2, t0, 4
	sw t2, 14764(sp)
	lw t0, 14764(sp)
	lw t2, 0(t0)
	sw t2, 14768(sp)
	lw t0, 14768(sp)
	mv a0, t0
	call print
	lw t2, -288(s0)
	sw t2, 14772(sp)
	lw t0, 14772(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14776(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14780(sp)
	lw t0, 14780(sp)
	addi t2, t0, 0
	sw t2, 14784(sp)
	addi t4, zero, 1
	lw t0, 14784(sp)
	sw t4, 0(t0)
	la t2, .libro.str.325
	sw t2, 14788(sp)
	lw t0, 14780(sp)
	addi t2, t0, 4
	sw t2, 14792(sp)
	lw t0, 14792(sp)
	lw t1, 14788(sp)
	sw t1, 0(t0)
	lw t0, 14776(sp)
	mv a0, t0
	lw t0, 14780(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14796(sp)
	lw t0, 14796(sp)
	addi t2, t0, 4
	sw t2, 14800(sp)
	lw t0, 14800(sp)
	lw t2, 0(t0)
	sw t2, 14804(sp)
	lw t0, 14804(sp)
	mv a0, t0
	call print
	lw t2, -292(s0)
	sw t2, 14808(sp)
	lw t0, 14808(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14812(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14816(sp)
	lw t0, 14816(sp)
	addi t2, t0, 0
	sw t2, 14820(sp)
	addi t4, zero, 1
	lw t0, 14820(sp)
	sw t4, 0(t0)
	la t2, .libro.str.326
	sw t2, 14824(sp)
	lw t0, 14816(sp)
	addi t2, t0, 4
	sw t2, 14828(sp)
	lw t0, 14828(sp)
	lw t1, 14824(sp)
	sw t1, 0(t0)
	lw t0, 14812(sp)
	mv a0, t0
	lw t0, 14816(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14832(sp)
	lw t0, 14832(sp)
	addi t2, t0, 4
	sw t2, 14836(sp)
	lw t0, 14836(sp)
	lw t2, 0(t0)
	sw t2, 14840(sp)
	lw t0, 14840(sp)
	mv a0, t0
	call print
	lw t2, -296(s0)
	sw t2, 14844(sp)
	lw t0, 14844(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14848(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14852(sp)
	lw t0, 14852(sp)
	addi t2, t0, 0
	sw t2, 14856(sp)
	addi t4, zero, 1
	lw t0, 14856(sp)
	sw t4, 0(t0)
	la t2, .libro.str.327
	sw t2, 14860(sp)
	lw t0, 14852(sp)
	addi t2, t0, 4
	sw t2, 14864(sp)
	lw t0, 14864(sp)
	lw t1, 14860(sp)
	sw t1, 0(t0)
	lw t0, 14848(sp)
	mv a0, t0
	lw t0, 14852(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14868(sp)
	lw t0, 14868(sp)
	addi t2, t0, 4
	sw t2, 14872(sp)
	lw t0, 14872(sp)
	lw t2, 0(t0)
	sw t2, 14876(sp)
	lw t0, 14876(sp)
	mv a0, t0
	call print
	lw t2, -300(s0)
	sw t2, 14880(sp)
	lw t0, 14880(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14884(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14888(sp)
	lw t0, 14888(sp)
	addi t2, t0, 0
	sw t2, 14892(sp)
	addi t4, zero, 1
	lw t0, 14892(sp)
	sw t4, 0(t0)
	la t2, .libro.str.328
	sw t2, 14896(sp)
	lw t0, 14888(sp)
	addi t2, t0, 4
	sw t2, 14900(sp)
	lw t0, 14900(sp)
	lw t1, 14896(sp)
	sw t1, 0(t0)
	lw t0, 14884(sp)
	mv a0, t0
	lw t0, 14888(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14904(sp)
	lw t0, 14904(sp)
	addi t2, t0, 4
	sw t2, 14908(sp)
	lw t0, 14908(sp)
	lw t2, 0(t0)
	sw t2, 14912(sp)
	lw t0, 14912(sp)
	mv a0, t0
	call print
	lw t2, -304(s0)
	sw t2, 14916(sp)
	lw t0, 14916(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14920(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14924(sp)
	lw t0, 14924(sp)
	addi t2, t0, 0
	sw t2, 14928(sp)
	addi t4, zero, 1
	lw t0, 14928(sp)
	sw t4, 0(t0)
	la t2, .libro.str.329
	sw t2, 14932(sp)
	lw t0, 14924(sp)
	addi t2, t0, 4
	sw t2, 14936(sp)
	lw t0, 14936(sp)
	lw t1, 14932(sp)
	sw t1, 0(t0)
	lw t0, 14920(sp)
	mv a0, t0
	lw t0, 14924(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14940(sp)
	lw t0, 14940(sp)
	addi t2, t0, 4
	sw t2, 14944(sp)
	lw t0, 14944(sp)
	lw t2, 0(t0)
	sw t2, 14948(sp)
	lw t0, 14948(sp)
	mv a0, t0
	call print
	lw t2, -308(s0)
	sw t2, 14952(sp)
	lw t0, 14952(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14956(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14960(sp)
	lw t0, 14960(sp)
	addi t2, t0, 0
	sw t2, 14964(sp)
	addi t4, zero, 1
	lw t0, 14964(sp)
	sw t4, 0(t0)
	la t2, .libro.str.330
	sw t2, 14968(sp)
	lw t0, 14960(sp)
	addi t2, t0, 4
	sw t2, 14972(sp)
	lw t0, 14972(sp)
	lw t1, 14968(sp)
	sw t1, 0(t0)
	lw t0, 14956(sp)
	mv a0, t0
	lw t0, 14960(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 14976(sp)
	lw t0, 14976(sp)
	addi t2, t0, 4
	sw t2, 14980(sp)
	lw t0, 14980(sp)
	lw t2, 0(t0)
	sw t2, 14984(sp)
	lw t0, 14984(sp)
	mv a0, t0
	call print
	lw t2, -312(s0)
	sw t2, 14988(sp)
	lw t0, 14988(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 14992(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 14996(sp)
	lw t0, 14996(sp)
	addi t2, t0, 0
	sw t2, 15000(sp)
	addi t4, zero, 1
	lw t0, 15000(sp)
	sw t4, 0(t0)
	la t2, .libro.str.331
	sw t2, 15004(sp)
	lw t0, 14996(sp)
	addi t2, t0, 4
	sw t2, 15008(sp)
	lw t0, 15008(sp)
	lw t1, 15004(sp)
	sw t1, 0(t0)
	lw t0, 14992(sp)
	mv a0, t0
	lw t0, 14996(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15012(sp)
	lw t0, 15012(sp)
	addi t2, t0, 4
	sw t2, 15016(sp)
	lw t0, 15016(sp)
	lw t2, 0(t0)
	sw t2, 15020(sp)
	lw t0, 15020(sp)
	mv a0, t0
	call print
	lw t2, -316(s0)
	sw t2, 15024(sp)
	lw t0, 15024(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15028(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15032(sp)
	lw t0, 15032(sp)
	addi t2, t0, 0
	sw t2, 15036(sp)
	addi t4, zero, 1
	lw t0, 15036(sp)
	sw t4, 0(t0)
	la t2, .libro.str.332
	sw t2, 15040(sp)
	lw t0, 15032(sp)
	addi t2, t0, 4
	sw t2, 15044(sp)
	lw t0, 15044(sp)
	lw t1, 15040(sp)
	sw t1, 0(t0)
	lw t0, 15028(sp)
	mv a0, t0
	lw t0, 15032(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15048(sp)
	lw t0, 15048(sp)
	addi t2, t0, 4
	sw t2, 15052(sp)
	lw t0, 15052(sp)
	lw t2, 0(t0)
	sw t2, 15056(sp)
	lw t0, 15056(sp)
	mv a0, t0
	call print
	lw t2, -320(s0)
	sw t2, 15060(sp)
	lw t0, 15060(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15064(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15068(sp)
	lw t0, 15068(sp)
	addi t2, t0, 0
	sw t2, 15072(sp)
	addi t4, zero, 1
	lw t0, 15072(sp)
	sw t4, 0(t0)
	la t2, .libro.str.333
	sw t2, 15076(sp)
	lw t0, 15068(sp)
	addi t2, t0, 4
	sw t2, 15080(sp)
	lw t0, 15080(sp)
	lw t1, 15076(sp)
	sw t1, 0(t0)
	lw t0, 15064(sp)
	mv a0, t0
	lw t0, 15068(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15084(sp)
	lw t0, 15084(sp)
	addi t2, t0, 4
	sw t2, 15088(sp)
	lw t0, 15088(sp)
	lw t2, 0(t0)
	sw t2, 15092(sp)
	lw t0, 15092(sp)
	mv a0, t0
	call print
	lw t2, -324(s0)
	sw t2, 15096(sp)
	lw t0, 15096(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15100(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15104(sp)
	lw t0, 15104(sp)
	addi t2, t0, 0
	sw t2, 15108(sp)
	addi t4, zero, 1
	lw t0, 15108(sp)
	sw t4, 0(t0)
	la t2, .libro.str.334
	sw t2, 15112(sp)
	lw t0, 15104(sp)
	addi t2, t0, 4
	sw t2, 15116(sp)
	lw t0, 15116(sp)
	lw t1, 15112(sp)
	sw t1, 0(t0)
	lw t0, 15100(sp)
	mv a0, t0
	lw t0, 15104(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15120(sp)
	lw t0, 15120(sp)
	addi t2, t0, 4
	sw t2, 15124(sp)
	lw t0, 15124(sp)
	lw t2, 0(t0)
	sw t2, 15128(sp)
	lw t0, 15128(sp)
	mv a0, t0
	call print
	lw t2, -328(s0)
	sw t2, 15132(sp)
	lw t0, 15132(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15136(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15140(sp)
	lw t0, 15140(sp)
	addi t2, t0, 0
	sw t2, 15144(sp)
	addi t4, zero, 1
	lw t0, 15144(sp)
	sw t4, 0(t0)
	la t2, .libro.str.335
	sw t2, 15148(sp)
	lw t0, 15140(sp)
	addi t2, t0, 4
	sw t2, 15152(sp)
	lw t0, 15152(sp)
	lw t1, 15148(sp)
	sw t1, 0(t0)
	lw t0, 15136(sp)
	mv a0, t0
	lw t0, 15140(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15156(sp)
	lw t0, 15156(sp)
	addi t2, t0, 4
	sw t2, 15160(sp)
	lw t0, 15160(sp)
	lw t2, 0(t0)
	sw t2, 15164(sp)
	lw t0, 15164(sp)
	mv a0, t0
	call print
	lw t2, -332(s0)
	sw t2, 15168(sp)
	lw t0, 15168(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15172(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15176(sp)
	lw t0, 15176(sp)
	addi t2, t0, 0
	sw t2, 15180(sp)
	addi t4, zero, 1
	lw t0, 15180(sp)
	sw t4, 0(t0)
	la t2, .libro.str.336
	sw t2, 15184(sp)
	lw t0, 15176(sp)
	addi t2, t0, 4
	sw t2, 15188(sp)
	lw t0, 15188(sp)
	lw t1, 15184(sp)
	sw t1, 0(t0)
	lw t0, 15172(sp)
	mv a0, t0
	lw t0, 15176(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15192(sp)
	lw t0, 15192(sp)
	addi t2, t0, 4
	sw t2, 15196(sp)
	lw t0, 15196(sp)
	lw t2, 0(t0)
	sw t2, 15200(sp)
	lw t0, 15200(sp)
	mv a0, t0
	call print
	lw t2, -336(s0)
	sw t2, 15204(sp)
	lw t0, 15204(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15208(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15212(sp)
	lw t0, 15212(sp)
	addi t2, t0, 0
	sw t2, 15216(sp)
	addi t4, zero, 1
	lw t0, 15216(sp)
	sw t4, 0(t0)
	la t2, .libro.str.337
	sw t2, 15220(sp)
	lw t0, 15212(sp)
	addi t2, t0, 4
	sw t2, 15224(sp)
	lw t0, 15224(sp)
	lw t1, 15220(sp)
	sw t1, 0(t0)
	lw t0, 15208(sp)
	mv a0, t0
	lw t0, 15212(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15228(sp)
	lw t0, 15228(sp)
	addi t2, t0, 4
	sw t2, 15232(sp)
	lw t0, 15232(sp)
	lw t2, 0(t0)
	sw t2, 15236(sp)
	lw t0, 15236(sp)
	mv a0, t0
	call print
	lw t2, -340(s0)
	sw t2, 15240(sp)
	lw t0, 15240(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15244(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15248(sp)
	lw t0, 15248(sp)
	addi t2, t0, 0
	sw t2, 15252(sp)
	addi t4, zero, 1
	lw t0, 15252(sp)
	sw t4, 0(t0)
	la t2, .libro.str.338
	sw t2, 15256(sp)
	lw t0, 15248(sp)
	addi t2, t0, 4
	sw t2, 15260(sp)
	lw t0, 15260(sp)
	lw t1, 15256(sp)
	sw t1, 0(t0)
	lw t0, 15244(sp)
	mv a0, t0
	lw t0, 15248(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15264(sp)
	lw t0, 15264(sp)
	addi t2, t0, 4
	sw t2, 15268(sp)
	lw t0, 15268(sp)
	lw t2, 0(t0)
	sw t2, 15272(sp)
	lw t0, 15272(sp)
	mv a0, t0
	call print
	lw t2, -344(s0)
	sw t2, 15276(sp)
	lw t0, 15276(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15280(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15284(sp)
	lw t0, 15284(sp)
	addi t2, t0, 0
	sw t2, 15288(sp)
	addi t4, zero, 1
	lw t0, 15288(sp)
	sw t4, 0(t0)
	la t2, .libro.str.339
	sw t2, 15292(sp)
	lw t0, 15284(sp)
	addi t2, t0, 4
	sw t2, 15296(sp)
	lw t0, 15296(sp)
	lw t1, 15292(sp)
	sw t1, 0(t0)
	lw t0, 15280(sp)
	mv a0, t0
	lw t0, 15284(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15300(sp)
	lw t0, 15300(sp)
	addi t2, t0, 4
	sw t2, 15304(sp)
	lw t0, 15304(sp)
	lw t2, 0(t0)
	sw t2, 15308(sp)
	lw t0, 15308(sp)
	mv a0, t0
	call print
	lw t2, -348(s0)
	sw t2, 15312(sp)
	lw t0, 15312(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15316(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15320(sp)
	lw t0, 15320(sp)
	addi t2, t0, 0
	sw t2, 15324(sp)
	addi t4, zero, 1
	lw t0, 15324(sp)
	sw t4, 0(t0)
	la t2, .libro.str.340
	sw t2, 15328(sp)
	lw t0, 15320(sp)
	addi t2, t0, 4
	sw t2, 15332(sp)
	lw t0, 15332(sp)
	lw t1, 15328(sp)
	sw t1, 0(t0)
	lw t0, 15316(sp)
	mv a0, t0
	lw t0, 15320(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15336(sp)
	lw t0, 15336(sp)
	addi t2, t0, 4
	sw t2, 15340(sp)
	lw t0, 15340(sp)
	lw t2, 0(t0)
	sw t2, 15344(sp)
	lw t0, 15344(sp)
	mv a0, t0
	call print
	lw t2, -352(s0)
	sw t2, 15348(sp)
	lw t0, 15348(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15352(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15356(sp)
	lw t0, 15356(sp)
	addi t2, t0, 0
	sw t2, 15360(sp)
	addi t4, zero, 1
	lw t0, 15360(sp)
	sw t4, 0(t0)
	la t2, .libro.str.341
	sw t2, 15364(sp)
	lw t0, 15356(sp)
	addi t2, t0, 4
	sw t2, 15368(sp)
	lw t0, 15368(sp)
	lw t1, 15364(sp)
	sw t1, 0(t0)
	lw t0, 15352(sp)
	mv a0, t0
	lw t0, 15356(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15372(sp)
	lw t0, 15372(sp)
	addi t2, t0, 4
	sw t2, 15376(sp)
	lw t0, 15376(sp)
	lw t2, 0(t0)
	sw t2, 15380(sp)
	lw t0, 15380(sp)
	mv a0, t0
	call print
	lw t2, -356(s0)
	sw t2, 15384(sp)
	lw t0, 15384(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15388(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15392(sp)
	lw t0, 15392(sp)
	addi t2, t0, 0
	sw t2, 15396(sp)
	addi t4, zero, 1
	lw t0, 15396(sp)
	sw t4, 0(t0)
	la t2, .libro.str.342
	sw t2, 15400(sp)
	lw t0, 15392(sp)
	addi t2, t0, 4
	sw t2, 15404(sp)
	lw t0, 15404(sp)
	lw t1, 15400(sp)
	sw t1, 0(t0)
	lw t0, 15388(sp)
	mv a0, t0
	lw t0, 15392(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15408(sp)
	lw t0, 15408(sp)
	addi t2, t0, 4
	sw t2, 15412(sp)
	lw t0, 15412(sp)
	lw t2, 0(t0)
	sw t2, 15416(sp)
	lw t0, 15416(sp)
	mv a0, t0
	call print
	lw t2, -360(s0)
	sw t2, 15420(sp)
	lw t0, 15420(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15424(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15428(sp)
	lw t0, 15428(sp)
	addi t2, t0, 0
	sw t2, 15432(sp)
	addi t4, zero, 1
	lw t0, 15432(sp)
	sw t4, 0(t0)
	la t2, .libro.str.343
	sw t2, 15436(sp)
	lw t0, 15428(sp)
	addi t2, t0, 4
	sw t2, 15440(sp)
	lw t0, 15440(sp)
	lw t1, 15436(sp)
	sw t1, 0(t0)
	lw t0, 15424(sp)
	mv a0, t0
	lw t0, 15428(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15444(sp)
	lw t0, 15444(sp)
	addi t2, t0, 4
	sw t2, 15448(sp)
	lw t0, 15448(sp)
	lw t2, 0(t0)
	sw t2, 15452(sp)
	lw t0, 15452(sp)
	mv a0, t0
	call print
	lw t2, -364(s0)
	sw t2, 15456(sp)
	lw t0, 15456(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15460(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15464(sp)
	lw t0, 15464(sp)
	addi t2, t0, 0
	sw t2, 15468(sp)
	addi t4, zero, 1
	lw t0, 15468(sp)
	sw t4, 0(t0)
	la t2, .libro.str.344
	sw t2, 15472(sp)
	lw t0, 15464(sp)
	addi t2, t0, 4
	sw t2, 15476(sp)
	lw t0, 15476(sp)
	lw t1, 15472(sp)
	sw t1, 0(t0)
	lw t0, 15460(sp)
	mv a0, t0
	lw t0, 15464(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15480(sp)
	lw t0, 15480(sp)
	addi t2, t0, 4
	sw t2, 15484(sp)
	lw t0, 15484(sp)
	lw t2, 0(t0)
	sw t2, 15488(sp)
	lw t0, 15488(sp)
	mv a0, t0
	call print
	lw t2, -368(s0)
	sw t2, 15492(sp)
	lw t0, 15492(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15496(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15500(sp)
	lw t0, 15500(sp)
	addi t2, t0, 0
	sw t2, 15504(sp)
	addi t4, zero, 1
	lw t0, 15504(sp)
	sw t4, 0(t0)
	la t2, .libro.str.345
	sw t2, 15508(sp)
	lw t0, 15500(sp)
	addi t2, t0, 4
	sw t2, 15512(sp)
	lw t0, 15512(sp)
	lw t1, 15508(sp)
	sw t1, 0(t0)
	lw t0, 15496(sp)
	mv a0, t0
	lw t0, 15500(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15516(sp)
	lw t0, 15516(sp)
	addi t2, t0, 4
	sw t2, 15520(sp)
	lw t0, 15520(sp)
	lw t2, 0(t0)
	sw t2, 15524(sp)
	lw t0, 15524(sp)
	mv a0, t0
	call print
	lw t2, -372(s0)
	sw t2, 15528(sp)
	lw t0, 15528(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15532(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15536(sp)
	lw t0, 15536(sp)
	addi t2, t0, 0
	sw t2, 15540(sp)
	addi t4, zero, 1
	lw t0, 15540(sp)
	sw t4, 0(t0)
	la t2, .libro.str.346
	sw t2, 15544(sp)
	lw t0, 15536(sp)
	addi t2, t0, 4
	sw t2, 15548(sp)
	lw t0, 15548(sp)
	lw t1, 15544(sp)
	sw t1, 0(t0)
	lw t0, 15532(sp)
	mv a0, t0
	lw t0, 15536(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15552(sp)
	lw t0, 15552(sp)
	addi t2, t0, 4
	sw t2, 15556(sp)
	lw t0, 15556(sp)
	lw t2, 0(t0)
	sw t2, 15560(sp)
	lw t0, 15560(sp)
	mv a0, t0
	call print
	lw t2, -376(s0)
	sw t2, 15564(sp)
	lw t0, 15564(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15568(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15572(sp)
	lw t0, 15572(sp)
	addi t2, t0, 0
	sw t2, 15576(sp)
	addi t4, zero, 1
	lw t0, 15576(sp)
	sw t4, 0(t0)
	la t2, .libro.str.347
	sw t2, 15580(sp)
	lw t0, 15572(sp)
	addi t2, t0, 4
	sw t2, 15584(sp)
	lw t0, 15584(sp)
	lw t1, 15580(sp)
	sw t1, 0(t0)
	lw t0, 15568(sp)
	mv a0, t0
	lw t0, 15572(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15588(sp)
	lw t0, 15588(sp)
	addi t2, t0, 4
	sw t2, 15592(sp)
	lw t0, 15592(sp)
	lw t2, 0(t0)
	sw t2, 15596(sp)
	lw t0, 15596(sp)
	mv a0, t0
	call print
	lw t2, -380(s0)
	sw t2, 15600(sp)
	lw t0, 15600(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15604(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15608(sp)
	lw t0, 15608(sp)
	addi t2, t0, 0
	sw t2, 15612(sp)
	addi t4, zero, 1
	lw t0, 15612(sp)
	sw t4, 0(t0)
	la t2, .libro.str.348
	sw t2, 15616(sp)
	lw t0, 15608(sp)
	addi t2, t0, 4
	sw t2, 15620(sp)
	lw t0, 15620(sp)
	lw t1, 15616(sp)
	sw t1, 0(t0)
	lw t0, 15604(sp)
	mv a0, t0
	lw t0, 15608(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15624(sp)
	lw t0, 15624(sp)
	addi t2, t0, 4
	sw t2, 15628(sp)
	lw t0, 15628(sp)
	lw t2, 0(t0)
	sw t2, 15632(sp)
	lw t0, 15632(sp)
	mv a0, t0
	call print
	lw t2, -384(s0)
	sw t2, 15636(sp)
	lw t0, 15636(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15640(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15644(sp)
	lw t0, 15644(sp)
	addi t2, t0, 0
	sw t2, 15648(sp)
	addi t4, zero, 1
	lw t0, 15648(sp)
	sw t4, 0(t0)
	la t2, .libro.str.349
	sw t2, 15652(sp)
	lw t0, 15644(sp)
	addi t2, t0, 4
	sw t2, 15656(sp)
	lw t0, 15656(sp)
	lw t1, 15652(sp)
	sw t1, 0(t0)
	lw t0, 15640(sp)
	mv a0, t0
	lw t0, 15644(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15660(sp)
	lw t0, 15660(sp)
	addi t2, t0, 4
	sw t2, 15664(sp)
	lw t0, 15664(sp)
	lw t2, 0(t0)
	sw t2, 15668(sp)
	lw t0, 15668(sp)
	mv a0, t0
	call print
	lw t2, -388(s0)
	sw t2, 15672(sp)
	lw t0, 15672(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15676(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15680(sp)
	lw t0, 15680(sp)
	addi t2, t0, 0
	sw t2, 15684(sp)
	addi t4, zero, 1
	lw t0, 15684(sp)
	sw t4, 0(t0)
	la t2, .libro.str.350
	sw t2, 15688(sp)
	lw t0, 15680(sp)
	addi t2, t0, 4
	sw t2, 15692(sp)
	lw t0, 15692(sp)
	lw t1, 15688(sp)
	sw t1, 0(t0)
	lw t0, 15676(sp)
	mv a0, t0
	lw t0, 15680(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15696(sp)
	lw t0, 15696(sp)
	addi t2, t0, 4
	sw t2, 15700(sp)
	lw t0, 15700(sp)
	lw t2, 0(t0)
	sw t2, 15704(sp)
	lw t0, 15704(sp)
	mv a0, t0
	call print
	lw t2, -392(s0)
	sw t2, 15708(sp)
	lw t0, 15708(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15712(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15716(sp)
	lw t0, 15716(sp)
	addi t2, t0, 0
	sw t2, 15720(sp)
	addi t4, zero, 1
	lw t0, 15720(sp)
	sw t4, 0(t0)
	la t2, .libro.str.351
	sw t2, 15724(sp)
	lw t0, 15716(sp)
	addi t2, t0, 4
	sw t2, 15728(sp)
	lw t0, 15728(sp)
	lw t1, 15724(sp)
	sw t1, 0(t0)
	lw t0, 15712(sp)
	mv a0, t0
	lw t0, 15716(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15732(sp)
	lw t0, 15732(sp)
	addi t2, t0, 4
	sw t2, 15736(sp)
	lw t0, 15736(sp)
	lw t2, 0(t0)
	sw t2, 15740(sp)
	lw t0, 15740(sp)
	mv a0, t0
	call print
	lw t2, -396(s0)
	sw t2, 15744(sp)
	lw t0, 15744(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15748(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15752(sp)
	lw t0, 15752(sp)
	addi t2, t0, 0
	sw t2, 15756(sp)
	addi t4, zero, 1
	lw t0, 15756(sp)
	sw t4, 0(t0)
	la t2, .libro.str.352
	sw t2, 15760(sp)
	lw t0, 15752(sp)
	addi t2, t0, 4
	sw t2, 15764(sp)
	lw t0, 15764(sp)
	lw t1, 15760(sp)
	sw t1, 0(t0)
	lw t0, 15748(sp)
	mv a0, t0
	lw t0, 15752(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15768(sp)
	lw t0, 15768(sp)
	addi t2, t0, 4
	sw t2, 15772(sp)
	lw t0, 15772(sp)
	lw t2, 0(t0)
	sw t2, 15776(sp)
	lw t0, 15776(sp)
	mv a0, t0
	call print
	lw t2, -400(s0)
	sw t2, 15780(sp)
	lw t0, 15780(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15784(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15788(sp)
	lw t0, 15788(sp)
	addi t2, t0, 0
	sw t2, 15792(sp)
	addi t4, zero, 1
	lw t0, 15792(sp)
	sw t4, 0(t0)
	la t2, .libro.str.353
	sw t2, 15796(sp)
	lw t0, 15788(sp)
	addi t2, t0, 4
	sw t2, 15800(sp)
	lw t0, 15800(sp)
	lw t1, 15796(sp)
	sw t1, 0(t0)
	lw t0, 15784(sp)
	mv a0, t0
	lw t0, 15788(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15804(sp)
	lw t0, 15804(sp)
	addi t2, t0, 4
	sw t2, 15808(sp)
	lw t0, 15808(sp)
	lw t2, 0(t0)
	sw t2, 15812(sp)
	lw t0, 15812(sp)
	mv a0, t0
	call print
	lw t2, -404(s0)
	sw t2, 15816(sp)
	lw t0, 15816(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15820(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15824(sp)
	lw t0, 15824(sp)
	addi t2, t0, 0
	sw t2, 15828(sp)
	addi t4, zero, 1
	lw t0, 15828(sp)
	sw t4, 0(t0)
	la t2, .libro.str.354
	sw t2, 15832(sp)
	lw t0, 15824(sp)
	addi t2, t0, 4
	sw t2, 15836(sp)
	lw t0, 15836(sp)
	lw t1, 15832(sp)
	sw t1, 0(t0)
	lw t0, 15820(sp)
	mv a0, t0
	lw t0, 15824(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15840(sp)
	lw t0, 15840(sp)
	addi t2, t0, 4
	sw t2, 15844(sp)
	lw t0, 15844(sp)
	lw t2, 0(t0)
	sw t2, 15848(sp)
	lw t0, 15848(sp)
	mv a0, t0
	call print
	lw t2, -408(s0)
	sw t2, 15852(sp)
	lw t0, 15852(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15856(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15860(sp)
	lw t0, 15860(sp)
	addi t2, t0, 0
	sw t2, 15864(sp)
	addi t4, zero, 1
	lw t0, 15864(sp)
	sw t4, 0(t0)
	la t2, .libro.str.355
	sw t2, 15868(sp)
	lw t0, 15860(sp)
	addi t2, t0, 4
	sw t2, 15872(sp)
	lw t0, 15872(sp)
	lw t1, 15868(sp)
	sw t1, 0(t0)
	lw t0, 15856(sp)
	mv a0, t0
	lw t0, 15860(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15876(sp)
	lw t0, 15876(sp)
	addi t2, t0, 4
	sw t2, 15880(sp)
	lw t0, 15880(sp)
	lw t2, 0(t0)
	sw t2, 15884(sp)
	lw t0, 15884(sp)
	mv a0, t0
	call print
	lw t2, -412(s0)
	sw t2, 15888(sp)
	lw t0, 15888(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15892(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15896(sp)
	lw t0, 15896(sp)
	addi t2, t0, 0
	sw t2, 15900(sp)
	addi t4, zero, 1
	lw t0, 15900(sp)
	sw t4, 0(t0)
	la t2, .libro.str.356
	sw t2, 15904(sp)
	lw t0, 15896(sp)
	addi t2, t0, 4
	sw t2, 15908(sp)
	lw t0, 15908(sp)
	lw t1, 15904(sp)
	sw t1, 0(t0)
	lw t0, 15892(sp)
	mv a0, t0
	lw t0, 15896(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15912(sp)
	lw t0, 15912(sp)
	addi t2, t0, 4
	sw t2, 15916(sp)
	lw t0, 15916(sp)
	lw t2, 0(t0)
	sw t2, 15920(sp)
	lw t0, 15920(sp)
	mv a0, t0
	call print
	lw t2, -416(s0)
	sw t2, 15924(sp)
	lw t0, 15924(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15928(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15932(sp)
	lw t0, 15932(sp)
	addi t2, t0, 0
	sw t2, 15936(sp)
	addi t4, zero, 1
	lw t0, 15936(sp)
	sw t4, 0(t0)
	la t2, .libro.str.357
	sw t2, 15940(sp)
	lw t0, 15932(sp)
	addi t2, t0, 4
	sw t2, 15944(sp)
	lw t0, 15944(sp)
	lw t1, 15940(sp)
	sw t1, 0(t0)
	lw t0, 15928(sp)
	mv a0, t0
	lw t0, 15932(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15948(sp)
	lw t0, 15948(sp)
	addi t2, t0, 4
	sw t2, 15952(sp)
	lw t0, 15952(sp)
	lw t2, 0(t0)
	sw t2, 15956(sp)
	lw t0, 15956(sp)
	mv a0, t0
	call print
	lw t2, -420(s0)
	sw t2, 15960(sp)
	lw t0, 15960(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 15964(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 15968(sp)
	lw t0, 15968(sp)
	addi t2, t0, 0
	sw t2, 15972(sp)
	addi t4, zero, 1
	lw t0, 15972(sp)
	sw t4, 0(t0)
	la t2, .libro.str.358
	sw t2, 15976(sp)
	lw t0, 15968(sp)
	addi t2, t0, 4
	sw t2, 15980(sp)
	lw t0, 15980(sp)
	lw t1, 15976(sp)
	sw t1, 0(t0)
	lw t0, 15964(sp)
	mv a0, t0
	lw t0, 15968(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 15984(sp)
	lw t0, 15984(sp)
	addi t2, t0, 4
	sw t2, 15988(sp)
	lw t0, 15988(sp)
	lw t2, 0(t0)
	sw t2, 15992(sp)
	lw t0, 15992(sp)
	mv a0, t0
	call print
	lw t2, -424(s0)
	sw t2, 15996(sp)
	lw t0, 15996(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16000(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16004(sp)
	lw t0, 16004(sp)
	addi t2, t0, 0
	sw t2, 16008(sp)
	addi t4, zero, 1
	lw t0, 16008(sp)
	sw t4, 0(t0)
	la t2, .libro.str.359
	sw t2, 16012(sp)
	lw t0, 16004(sp)
	addi t2, t0, 4
	sw t2, 16016(sp)
	lw t0, 16016(sp)
	lw t1, 16012(sp)
	sw t1, 0(t0)
	lw t0, 16000(sp)
	mv a0, t0
	lw t0, 16004(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16020(sp)
	lw t0, 16020(sp)
	addi t2, t0, 4
	sw t2, 16024(sp)
	lw t0, 16024(sp)
	lw t2, 0(t0)
	sw t2, 16028(sp)
	lw t0, 16028(sp)
	mv a0, t0
	call print
	lw t2, -428(s0)
	sw t2, 16032(sp)
	lw t0, 16032(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16036(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16040(sp)
	lw t0, 16040(sp)
	addi t2, t0, 0
	sw t2, 16044(sp)
	addi t4, zero, 1
	lw t0, 16044(sp)
	sw t4, 0(t0)
	la t2, .libro.str.360
	sw t2, 16048(sp)
	lw t0, 16040(sp)
	addi t2, t0, 4
	sw t2, 16052(sp)
	lw t0, 16052(sp)
	lw t1, 16048(sp)
	sw t1, 0(t0)
	lw t0, 16036(sp)
	mv a0, t0
	lw t0, 16040(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16056(sp)
	lw t0, 16056(sp)
	addi t2, t0, 4
	sw t2, 16060(sp)
	lw t0, 16060(sp)
	lw t2, 0(t0)
	sw t2, 16064(sp)
	lw t0, 16064(sp)
	mv a0, t0
	call print
	lw t2, -432(s0)
	sw t2, 16068(sp)
	lw t0, 16068(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16072(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16076(sp)
	lw t0, 16076(sp)
	addi t2, t0, 0
	sw t2, 16080(sp)
	addi t4, zero, 1
	lw t0, 16080(sp)
	sw t4, 0(t0)
	la t2, .libro.str.361
	sw t2, 16084(sp)
	lw t0, 16076(sp)
	addi t2, t0, 4
	sw t2, 16088(sp)
	lw t0, 16088(sp)
	lw t1, 16084(sp)
	sw t1, 0(t0)
	lw t0, 16072(sp)
	mv a0, t0
	lw t0, 16076(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16092(sp)
	lw t0, 16092(sp)
	addi t2, t0, 4
	sw t2, 16096(sp)
	lw t0, 16096(sp)
	lw t2, 0(t0)
	sw t2, 16100(sp)
	lw t0, 16100(sp)
	mv a0, t0
	call print
	lw t2, -436(s0)
	sw t2, 16104(sp)
	lw t0, 16104(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16108(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16112(sp)
	lw t0, 16112(sp)
	addi t2, t0, 0
	sw t2, 16116(sp)
	addi t4, zero, 1
	lw t0, 16116(sp)
	sw t4, 0(t0)
	la t2, .libro.str.362
	sw t2, 16120(sp)
	lw t0, 16112(sp)
	addi t2, t0, 4
	sw t2, 16124(sp)
	lw t0, 16124(sp)
	lw t1, 16120(sp)
	sw t1, 0(t0)
	lw t0, 16108(sp)
	mv a0, t0
	lw t0, 16112(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16128(sp)
	lw t0, 16128(sp)
	addi t2, t0, 4
	sw t2, 16132(sp)
	lw t0, 16132(sp)
	lw t2, 0(t0)
	sw t2, 16136(sp)
	lw t0, 16136(sp)
	mv a0, t0
	call print
	lw t2, -440(s0)
	sw t2, 16140(sp)
	lw t0, 16140(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16144(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16148(sp)
	lw t0, 16148(sp)
	addi t2, t0, 0
	sw t2, 16152(sp)
	addi t4, zero, 1
	lw t0, 16152(sp)
	sw t4, 0(t0)
	la t2, .libro.str.363
	sw t2, 16156(sp)
	lw t0, 16148(sp)
	addi t2, t0, 4
	sw t2, 16160(sp)
	lw t0, 16160(sp)
	lw t1, 16156(sp)
	sw t1, 0(t0)
	lw t0, 16144(sp)
	mv a0, t0
	lw t0, 16148(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16164(sp)
	lw t0, 16164(sp)
	addi t2, t0, 4
	sw t2, 16168(sp)
	lw t0, 16168(sp)
	lw t2, 0(t0)
	sw t2, 16172(sp)
	lw t0, 16172(sp)
	mv a0, t0
	call print
	lw t2, -444(s0)
	sw t2, 16176(sp)
	lw t0, 16176(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16180(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16184(sp)
	lw t0, 16184(sp)
	addi t2, t0, 0
	sw t2, 16188(sp)
	addi t4, zero, 1
	lw t0, 16188(sp)
	sw t4, 0(t0)
	la t2, .libro.str.364
	sw t2, 16192(sp)
	lw t0, 16184(sp)
	addi t2, t0, 4
	sw t2, 16196(sp)
	lw t0, 16196(sp)
	lw t1, 16192(sp)
	sw t1, 0(t0)
	lw t0, 16180(sp)
	mv a0, t0
	lw t0, 16184(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16200(sp)
	lw t0, 16200(sp)
	addi t2, t0, 4
	sw t2, 16204(sp)
	lw t0, 16204(sp)
	lw t2, 0(t0)
	sw t2, 16208(sp)
	lw t0, 16208(sp)
	mv a0, t0
	call print
	lw t2, -448(s0)
	sw t2, 16212(sp)
	lw t0, 16212(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16216(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16220(sp)
	lw t0, 16220(sp)
	addi t2, t0, 0
	sw t2, 16224(sp)
	addi t4, zero, 1
	lw t0, 16224(sp)
	sw t4, 0(t0)
	la t2, .libro.str.365
	sw t2, 16228(sp)
	lw t0, 16220(sp)
	addi t2, t0, 4
	sw t2, 16232(sp)
	lw t0, 16232(sp)
	lw t1, 16228(sp)
	sw t1, 0(t0)
	lw t0, 16216(sp)
	mv a0, t0
	lw t0, 16220(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16236(sp)
	lw t0, 16236(sp)
	addi t2, t0, 4
	sw t2, 16240(sp)
	lw t0, 16240(sp)
	lw t2, 0(t0)
	sw t2, 16244(sp)
	lw t0, 16244(sp)
	mv a0, t0
	call print
	lw t2, -452(s0)
	sw t2, 16248(sp)
	lw t0, 16248(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16252(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16256(sp)
	lw t0, 16256(sp)
	addi t2, t0, 0
	sw t2, 16260(sp)
	addi t4, zero, 1
	lw t0, 16260(sp)
	sw t4, 0(t0)
	la t2, .libro.str.366
	sw t2, 16264(sp)
	lw t0, 16256(sp)
	addi t2, t0, 4
	sw t2, 16268(sp)
	lw t0, 16268(sp)
	lw t1, 16264(sp)
	sw t1, 0(t0)
	lw t0, 16252(sp)
	mv a0, t0
	lw t0, 16256(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16272(sp)
	lw t0, 16272(sp)
	addi t2, t0, 4
	sw t2, 16276(sp)
	lw t0, 16276(sp)
	lw t2, 0(t0)
	sw t2, 16280(sp)
	lw t0, 16280(sp)
	mv a0, t0
	call print
	lw t2, -456(s0)
	sw t2, 16284(sp)
	lw t0, 16284(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16288(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16292(sp)
	lw t0, 16292(sp)
	addi t2, t0, 0
	sw t2, 16296(sp)
	addi t4, zero, 1
	lw t0, 16296(sp)
	sw t4, 0(t0)
	la t2, .libro.str.367
	sw t2, 16300(sp)
	lw t0, 16292(sp)
	addi t2, t0, 4
	sw t2, 16304(sp)
	lw t0, 16304(sp)
	lw t1, 16300(sp)
	sw t1, 0(t0)
	lw t0, 16288(sp)
	mv a0, t0
	lw t0, 16292(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16308(sp)
	lw t0, 16308(sp)
	addi t2, t0, 4
	sw t2, 16312(sp)
	lw t0, 16312(sp)
	lw t2, 0(t0)
	sw t2, 16316(sp)
	lw t0, 16316(sp)
	mv a0, t0
	call print
	lw t2, -460(s0)
	sw t2, 16320(sp)
	lw t0, 16320(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16324(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16328(sp)
	lw t0, 16328(sp)
	addi t2, t0, 0
	sw t2, 16332(sp)
	addi t4, zero, 1
	lw t0, 16332(sp)
	sw t4, 0(t0)
	la t2, .libro.str.368
	sw t2, 16336(sp)
	lw t0, 16328(sp)
	addi t2, t0, 4
	sw t2, 16340(sp)
	lw t0, 16340(sp)
	lw t1, 16336(sp)
	sw t1, 0(t0)
	lw t0, 16324(sp)
	mv a0, t0
	lw t0, 16328(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16344(sp)
	lw t0, 16344(sp)
	addi t2, t0, 4
	sw t2, 16348(sp)
	lw t0, 16348(sp)
	lw t2, 0(t0)
	sw t2, 16352(sp)
	lw t0, 16352(sp)
	mv a0, t0
	call print
	lw t2, -464(s0)
	sw t2, 16356(sp)
	lw t0, 16356(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16360(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16364(sp)
	lw t0, 16364(sp)
	addi t2, t0, 0
	sw t2, 16368(sp)
	addi t4, zero, 1
	lw t0, 16368(sp)
	sw t4, 0(t0)
	la t2, .libro.str.369
	sw t2, 16372(sp)
	lw t0, 16364(sp)
	addi t2, t0, 4
	sw t2, 16376(sp)
	lw t0, 16376(sp)
	lw t1, 16372(sp)
	sw t1, 0(t0)
	lw t0, 16360(sp)
	mv a0, t0
	lw t0, 16364(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16380(sp)
	lw t0, 16380(sp)
	addi t2, t0, 4
	sw t2, 16384(sp)
	lw t0, 16384(sp)
	lw t2, 0(t0)
	sw t2, 16388(sp)
	lw t0, 16388(sp)
	mv a0, t0
	call print
	lw t2, -468(s0)
	sw t2, 16392(sp)
	lw t0, 16392(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16396(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16400(sp)
	lw t0, 16400(sp)
	addi t2, t0, 0
	sw t2, 16404(sp)
	addi t4, zero, 1
	lw t0, 16404(sp)
	sw t4, 0(t0)
	la t2, .libro.str.370
	sw t2, 16408(sp)
	lw t0, 16400(sp)
	addi t2, t0, 4
	sw t2, 16412(sp)
	lw t0, 16412(sp)
	lw t1, 16408(sp)
	sw t1, 0(t0)
	lw t0, 16396(sp)
	mv a0, t0
	lw t0, 16400(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16416(sp)
	lw t0, 16416(sp)
	addi t2, t0, 4
	sw t2, 16420(sp)
	lw t0, 16420(sp)
	lw t2, 0(t0)
	sw t2, 16424(sp)
	lw t0, 16424(sp)
	mv a0, t0
	call print
	lw t2, -472(s0)
	sw t2, 16428(sp)
	lw t0, 16428(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16432(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16436(sp)
	lw t0, 16436(sp)
	addi t2, t0, 0
	sw t2, 16440(sp)
	addi t4, zero, 1
	lw t0, 16440(sp)
	sw t4, 0(t0)
	la t2, .libro.str.371
	sw t2, 16444(sp)
	lw t0, 16436(sp)
	addi t2, t0, 4
	sw t2, 16448(sp)
	lw t0, 16448(sp)
	lw t1, 16444(sp)
	sw t1, 0(t0)
	lw t0, 16432(sp)
	mv a0, t0
	lw t0, 16436(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16452(sp)
	lw t0, 16452(sp)
	addi t2, t0, 4
	sw t2, 16456(sp)
	lw t0, 16456(sp)
	lw t2, 0(t0)
	sw t2, 16460(sp)
	lw t0, 16460(sp)
	mv a0, t0
	call print
	lw t2, -476(s0)
	sw t2, 16464(sp)
	lw t0, 16464(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16468(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16472(sp)
	lw t0, 16472(sp)
	addi t2, t0, 0
	sw t2, 16476(sp)
	addi t4, zero, 1
	lw t0, 16476(sp)
	sw t4, 0(t0)
	la t2, .libro.str.372
	sw t2, 16480(sp)
	lw t0, 16472(sp)
	addi t2, t0, 4
	sw t2, 16484(sp)
	lw t0, 16484(sp)
	lw t1, 16480(sp)
	sw t1, 0(t0)
	lw t0, 16468(sp)
	mv a0, t0
	lw t0, 16472(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16488(sp)
	lw t0, 16488(sp)
	addi t2, t0, 4
	sw t2, 16492(sp)
	lw t0, 16492(sp)
	lw t2, 0(t0)
	sw t2, 16496(sp)
	lw t0, 16496(sp)
	mv a0, t0
	call print
	lw t2, -480(s0)
	sw t2, 16500(sp)
	lw t0, 16500(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16504(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16508(sp)
	lw t0, 16508(sp)
	addi t2, t0, 0
	sw t2, 16512(sp)
	addi t4, zero, 1
	lw t0, 16512(sp)
	sw t4, 0(t0)
	la t2, .libro.str.373
	sw t2, 16516(sp)
	lw t0, 16508(sp)
	addi t2, t0, 4
	sw t2, 16520(sp)
	lw t0, 16520(sp)
	lw t1, 16516(sp)
	sw t1, 0(t0)
	lw t0, 16504(sp)
	mv a0, t0
	lw t0, 16508(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16524(sp)
	lw t0, 16524(sp)
	addi t2, t0, 4
	sw t2, 16528(sp)
	lw t0, 16528(sp)
	lw t2, 0(t0)
	sw t2, 16532(sp)
	lw t0, 16532(sp)
	mv a0, t0
	call print
	lw t2, -484(s0)
	sw t2, 16536(sp)
	lw t0, 16536(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16540(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16544(sp)
	lw t0, 16544(sp)
	addi t2, t0, 0
	sw t2, 16548(sp)
	addi t4, zero, 1
	lw t0, 16548(sp)
	sw t4, 0(t0)
	la t2, .libro.str.374
	sw t2, 16552(sp)
	lw t0, 16544(sp)
	addi t2, t0, 4
	sw t2, 16556(sp)
	lw t0, 16556(sp)
	lw t1, 16552(sp)
	sw t1, 0(t0)
	lw t0, 16540(sp)
	mv a0, t0
	lw t0, 16544(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16560(sp)
	lw t0, 16560(sp)
	addi t2, t0, 4
	sw t2, 16564(sp)
	lw t0, 16564(sp)
	lw t2, 0(t0)
	sw t2, 16568(sp)
	lw t0, 16568(sp)
	mv a0, t0
	call print
	lw t2, -488(s0)
	sw t2, 16572(sp)
	lw t0, 16572(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16576(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16580(sp)
	lw t0, 16580(sp)
	addi t2, t0, 0
	sw t2, 16584(sp)
	addi t4, zero, 1
	lw t0, 16584(sp)
	sw t4, 0(t0)
	la t2, .libro.str.375
	sw t2, 16588(sp)
	lw t0, 16580(sp)
	addi t2, t0, 4
	sw t2, 16592(sp)
	lw t0, 16592(sp)
	lw t1, 16588(sp)
	sw t1, 0(t0)
	lw t0, 16576(sp)
	mv a0, t0
	lw t0, 16580(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16596(sp)
	lw t0, 16596(sp)
	addi t2, t0, 4
	sw t2, 16600(sp)
	lw t0, 16600(sp)
	lw t2, 0(t0)
	sw t2, 16604(sp)
	lw t0, 16604(sp)
	mv a0, t0
	call print
	lw t2, -492(s0)
	sw t2, 16608(sp)
	lw t0, 16608(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16612(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16616(sp)
	lw t0, 16616(sp)
	addi t2, t0, 0
	sw t2, 16620(sp)
	addi t4, zero, 1
	lw t0, 16620(sp)
	sw t4, 0(t0)
	la t2, .libro.str.376
	sw t2, 16624(sp)
	lw t0, 16616(sp)
	addi t2, t0, 4
	sw t2, 16628(sp)
	lw t0, 16628(sp)
	lw t1, 16624(sp)
	sw t1, 0(t0)
	lw t0, 16612(sp)
	mv a0, t0
	lw t0, 16616(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16632(sp)
	lw t0, 16632(sp)
	addi t2, t0, 4
	sw t2, 16636(sp)
	lw t0, 16636(sp)
	lw t2, 0(t0)
	sw t2, 16640(sp)
	lw t0, 16640(sp)
	mv a0, t0
	call print
	lw t2, -496(s0)
	sw t2, 16644(sp)
	lw t0, 16644(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16648(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16652(sp)
	lw t0, 16652(sp)
	addi t2, t0, 0
	sw t2, 16656(sp)
	addi t4, zero, 1
	lw t0, 16656(sp)
	sw t4, 0(t0)
	la t2, .libro.str.377
	sw t2, 16660(sp)
	lw t0, 16652(sp)
	addi t2, t0, 4
	sw t2, 16664(sp)
	lw t0, 16664(sp)
	lw t1, 16660(sp)
	sw t1, 0(t0)
	lw t0, 16648(sp)
	mv a0, t0
	lw t0, 16652(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16668(sp)
	lw t0, 16668(sp)
	addi t2, t0, 4
	sw t2, 16672(sp)
	lw t0, 16672(sp)
	lw t2, 0(t0)
	sw t2, 16676(sp)
	lw t0, 16676(sp)
	mv a0, t0
	call print
	lw t2, -500(s0)
	sw t2, 16680(sp)
	lw t0, 16680(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16684(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16688(sp)
	lw t0, 16688(sp)
	addi t2, t0, 0
	sw t2, 16692(sp)
	addi t4, zero, 1
	lw t0, 16692(sp)
	sw t4, 0(t0)
	la t2, .libro.str.378
	sw t2, 16696(sp)
	lw t0, 16688(sp)
	addi t2, t0, 4
	sw t2, 16700(sp)
	lw t0, 16700(sp)
	lw t1, 16696(sp)
	sw t1, 0(t0)
	lw t0, 16684(sp)
	mv a0, t0
	lw t0, 16688(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16704(sp)
	lw t0, 16704(sp)
	addi t2, t0, 4
	sw t2, 16708(sp)
	lw t0, 16708(sp)
	lw t2, 0(t0)
	sw t2, 16712(sp)
	lw t0, 16712(sp)
	mv a0, t0
	call print
	lw t2, -504(s0)
	sw t2, 16716(sp)
	lw t0, 16716(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16720(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16724(sp)
	lw t0, 16724(sp)
	addi t2, t0, 0
	sw t2, 16728(sp)
	addi t4, zero, 1
	lw t0, 16728(sp)
	sw t4, 0(t0)
	la t2, .libro.str.379
	sw t2, 16732(sp)
	lw t0, 16724(sp)
	addi t2, t0, 4
	sw t2, 16736(sp)
	lw t0, 16736(sp)
	lw t1, 16732(sp)
	sw t1, 0(t0)
	lw t0, 16720(sp)
	mv a0, t0
	lw t0, 16724(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16740(sp)
	lw t0, 16740(sp)
	addi t2, t0, 4
	sw t2, 16744(sp)
	lw t0, 16744(sp)
	lw t2, 0(t0)
	sw t2, 16748(sp)
	lw t0, 16748(sp)
	mv a0, t0
	call print
	lw t2, -508(s0)
	sw t2, 16752(sp)
	lw t0, 16752(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16756(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16760(sp)
	lw t0, 16760(sp)
	addi t2, t0, 0
	sw t2, 16764(sp)
	addi t4, zero, 1
	lw t0, 16764(sp)
	sw t4, 0(t0)
	la t2, .libro.str.380
	sw t2, 16768(sp)
	lw t0, 16760(sp)
	addi t2, t0, 4
	sw t2, 16772(sp)
	lw t0, 16772(sp)
	lw t1, 16768(sp)
	sw t1, 0(t0)
	lw t0, 16756(sp)
	mv a0, t0
	lw t0, 16760(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16776(sp)
	lw t0, 16776(sp)
	addi t2, t0, 4
	sw t2, 16780(sp)
	lw t0, 16780(sp)
	lw t2, 0(t0)
	sw t2, 16784(sp)
	lw t0, 16784(sp)
	mv a0, t0
	call print
	lw t2, -512(s0)
	sw t2, 16788(sp)
	lw t0, 16788(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16792(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16796(sp)
	lw t0, 16796(sp)
	addi t2, t0, 0
	sw t2, 16800(sp)
	addi t4, zero, 1
	lw t0, 16800(sp)
	sw t4, 0(t0)
	la t2, .libro.str.381
	sw t2, 16804(sp)
	lw t0, 16796(sp)
	addi t2, t0, 4
	sw t2, 16808(sp)
	lw t0, 16808(sp)
	lw t1, 16804(sp)
	sw t1, 0(t0)
	lw t0, 16792(sp)
	mv a0, t0
	lw t0, 16796(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16812(sp)
	lw t0, 16812(sp)
	addi t2, t0, 4
	sw t2, 16816(sp)
	lw t0, 16816(sp)
	lw t2, 0(t0)
	sw t2, 16820(sp)
	lw t0, 16820(sp)
	mv a0, t0
	call print
	lw t2, -516(s0)
	sw t2, 16824(sp)
	lw t0, 16824(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16828(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16832(sp)
	lw t0, 16832(sp)
	addi t2, t0, 0
	sw t2, 16836(sp)
	addi t4, zero, 1
	lw t0, 16836(sp)
	sw t4, 0(t0)
	la t2, .libro.str.382
	sw t2, 16840(sp)
	lw t0, 16832(sp)
	addi t2, t0, 4
	sw t2, 16844(sp)
	lw t0, 16844(sp)
	lw t1, 16840(sp)
	sw t1, 0(t0)
	lw t0, 16828(sp)
	mv a0, t0
	lw t0, 16832(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16848(sp)
	lw t0, 16848(sp)
	addi t2, t0, 4
	sw t2, 16852(sp)
	lw t0, 16852(sp)
	lw t2, 0(t0)
	sw t2, 16856(sp)
	lw t0, 16856(sp)
	mv a0, t0
	call print
	lw t2, -520(s0)
	sw t2, 16860(sp)
	lw t0, 16860(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16864(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16868(sp)
	lw t0, 16868(sp)
	addi t2, t0, 0
	sw t2, 16872(sp)
	addi t4, zero, 1
	lw t0, 16872(sp)
	sw t4, 0(t0)
	la t2, .libro.str.383
	sw t2, 16876(sp)
	lw t0, 16868(sp)
	addi t2, t0, 4
	sw t2, 16880(sp)
	lw t0, 16880(sp)
	lw t1, 16876(sp)
	sw t1, 0(t0)
	lw t0, 16864(sp)
	mv a0, t0
	lw t0, 16868(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16884(sp)
	lw t0, 16884(sp)
	addi t2, t0, 4
	sw t2, 16888(sp)
	lw t0, 16888(sp)
	lw t2, 0(t0)
	sw t2, 16892(sp)
	lw t0, 16892(sp)
	mv a0, t0
	call print
	lw t2, -524(s0)
	sw t2, 16896(sp)
	lw t0, 16896(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16900(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16904(sp)
	lw t0, 16904(sp)
	addi t2, t0, 0
	sw t2, 16908(sp)
	addi t4, zero, 1
	lw t0, 16908(sp)
	sw t4, 0(t0)
	la t2, .libro.str.384
	sw t2, 16912(sp)
	lw t0, 16904(sp)
	addi t2, t0, 4
	sw t2, 16916(sp)
	lw t0, 16916(sp)
	lw t1, 16912(sp)
	sw t1, 0(t0)
	lw t0, 16900(sp)
	mv a0, t0
	lw t0, 16904(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16920(sp)
	lw t0, 16920(sp)
	addi t2, t0, 4
	sw t2, 16924(sp)
	lw t0, 16924(sp)
	lw t2, 0(t0)
	sw t2, 16928(sp)
	lw t0, 16928(sp)
	mv a0, t0
	call print
	lw t2, -528(s0)
	sw t2, 16932(sp)
	lw t0, 16932(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16936(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16940(sp)
	lw t0, 16940(sp)
	addi t2, t0, 0
	sw t2, 16944(sp)
	addi t4, zero, 1
	lw t0, 16944(sp)
	sw t4, 0(t0)
	la t2, .libro.str.385
	sw t2, 16948(sp)
	lw t0, 16940(sp)
	addi t2, t0, 4
	sw t2, 16952(sp)
	lw t0, 16952(sp)
	lw t1, 16948(sp)
	sw t1, 0(t0)
	lw t0, 16936(sp)
	mv a0, t0
	lw t0, 16940(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16956(sp)
	lw t0, 16956(sp)
	addi t2, t0, 4
	sw t2, 16960(sp)
	lw t0, 16960(sp)
	lw t2, 0(t0)
	sw t2, 16964(sp)
	lw t0, 16964(sp)
	mv a0, t0
	call print
	lw t2, -532(s0)
	sw t2, 16968(sp)
	lw t0, 16968(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 16972(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 16976(sp)
	lw t0, 16976(sp)
	addi t2, t0, 0
	sw t2, 16980(sp)
	addi t4, zero, 1
	lw t0, 16980(sp)
	sw t4, 0(t0)
	la t2, .libro.str.386
	sw t2, 16984(sp)
	lw t0, 16976(sp)
	addi t2, t0, 4
	sw t2, 16988(sp)
	lw t0, 16988(sp)
	lw t1, 16984(sp)
	sw t1, 0(t0)
	lw t0, 16972(sp)
	mv a0, t0
	lw t0, 16976(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 16992(sp)
	lw t0, 16992(sp)
	addi t2, t0, 4
	sw t2, 16996(sp)
	lw t0, 16996(sp)
	lw t2, 0(t0)
	sw t2, 17000(sp)
	lw t0, 17000(sp)
	mv a0, t0
	call print
	lw t2, -536(s0)
	sw t2, 17004(sp)
	lw t0, 17004(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17008(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17012(sp)
	lw t0, 17012(sp)
	addi t2, t0, 0
	sw t2, 17016(sp)
	addi t4, zero, 1
	lw t0, 17016(sp)
	sw t4, 0(t0)
	la t2, .libro.str.387
	sw t2, 17020(sp)
	lw t0, 17012(sp)
	addi t2, t0, 4
	sw t2, 17024(sp)
	lw t0, 17024(sp)
	lw t1, 17020(sp)
	sw t1, 0(t0)
	lw t0, 17008(sp)
	mv a0, t0
	lw t0, 17012(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17028(sp)
	lw t0, 17028(sp)
	addi t2, t0, 4
	sw t2, 17032(sp)
	lw t0, 17032(sp)
	lw t2, 0(t0)
	sw t2, 17036(sp)
	lw t0, 17036(sp)
	mv a0, t0
	call print
	lw t2, -540(s0)
	sw t2, 17040(sp)
	lw t0, 17040(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17044(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17048(sp)
	lw t0, 17048(sp)
	addi t2, t0, 0
	sw t2, 17052(sp)
	addi t4, zero, 1
	lw t0, 17052(sp)
	sw t4, 0(t0)
	la t2, .libro.str.388
	sw t2, 17056(sp)
	lw t0, 17048(sp)
	addi t2, t0, 4
	sw t2, 17060(sp)
	lw t0, 17060(sp)
	lw t1, 17056(sp)
	sw t1, 0(t0)
	lw t0, 17044(sp)
	mv a0, t0
	lw t0, 17048(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17064(sp)
	lw t0, 17064(sp)
	addi t2, t0, 4
	sw t2, 17068(sp)
	lw t0, 17068(sp)
	lw t2, 0(t0)
	sw t2, 17072(sp)
	lw t0, 17072(sp)
	mv a0, t0
	call print
	lw t2, -544(s0)
	sw t2, 17076(sp)
	lw t0, 17076(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17080(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17084(sp)
	lw t0, 17084(sp)
	addi t2, t0, 0
	sw t2, 17088(sp)
	addi t4, zero, 1
	lw t0, 17088(sp)
	sw t4, 0(t0)
	la t2, .libro.str.389
	sw t2, 17092(sp)
	lw t0, 17084(sp)
	addi t2, t0, 4
	sw t2, 17096(sp)
	lw t0, 17096(sp)
	lw t1, 17092(sp)
	sw t1, 0(t0)
	lw t0, 17080(sp)
	mv a0, t0
	lw t0, 17084(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17100(sp)
	lw t0, 17100(sp)
	addi t2, t0, 4
	sw t2, 17104(sp)
	lw t0, 17104(sp)
	lw t2, 0(t0)
	sw t2, 17108(sp)
	lw t0, 17108(sp)
	mv a0, t0
	call print
	lw t2, -548(s0)
	sw t2, 17112(sp)
	lw t0, 17112(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17116(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17120(sp)
	lw t0, 17120(sp)
	addi t2, t0, 0
	sw t2, 17124(sp)
	addi t4, zero, 1
	lw t0, 17124(sp)
	sw t4, 0(t0)
	la t2, .libro.str.390
	sw t2, 17128(sp)
	lw t0, 17120(sp)
	addi t2, t0, 4
	sw t2, 17132(sp)
	lw t0, 17132(sp)
	lw t1, 17128(sp)
	sw t1, 0(t0)
	lw t0, 17116(sp)
	mv a0, t0
	lw t0, 17120(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17136(sp)
	lw t0, 17136(sp)
	addi t2, t0, 4
	sw t2, 17140(sp)
	lw t0, 17140(sp)
	lw t2, 0(t0)
	sw t2, 17144(sp)
	lw t0, 17144(sp)
	mv a0, t0
	call print
	lw t2, -552(s0)
	sw t2, 17148(sp)
	lw t0, 17148(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17152(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17156(sp)
	lw t0, 17156(sp)
	addi t2, t0, 0
	sw t2, 17160(sp)
	addi t4, zero, 1
	lw t0, 17160(sp)
	sw t4, 0(t0)
	la t2, .libro.str.391
	sw t2, 17164(sp)
	lw t0, 17156(sp)
	addi t2, t0, 4
	sw t2, 17168(sp)
	lw t0, 17168(sp)
	lw t1, 17164(sp)
	sw t1, 0(t0)
	lw t0, 17152(sp)
	mv a0, t0
	lw t0, 17156(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17172(sp)
	lw t0, 17172(sp)
	addi t2, t0, 4
	sw t2, 17176(sp)
	lw t0, 17176(sp)
	lw t2, 0(t0)
	sw t2, 17180(sp)
	lw t0, 17180(sp)
	mv a0, t0
	call print
	lw t2, -556(s0)
	sw t2, 17184(sp)
	lw t0, 17184(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17188(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17192(sp)
	lw t0, 17192(sp)
	addi t2, t0, 0
	sw t2, 17196(sp)
	addi t4, zero, 1
	lw t0, 17196(sp)
	sw t4, 0(t0)
	la t2, .libro.str.392
	sw t2, 17200(sp)
	lw t0, 17192(sp)
	addi t2, t0, 4
	sw t2, 17204(sp)
	lw t0, 17204(sp)
	lw t1, 17200(sp)
	sw t1, 0(t0)
	lw t0, 17188(sp)
	mv a0, t0
	lw t0, 17192(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17208(sp)
	lw t0, 17208(sp)
	addi t2, t0, 4
	sw t2, 17212(sp)
	lw t0, 17212(sp)
	lw t2, 0(t0)
	sw t2, 17216(sp)
	lw t0, 17216(sp)
	mv a0, t0
	call print
	lw t2, -560(s0)
	sw t2, 17220(sp)
	lw t0, 17220(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17224(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17228(sp)
	lw t0, 17228(sp)
	addi t2, t0, 0
	sw t2, 17232(sp)
	addi t4, zero, 1
	lw t0, 17232(sp)
	sw t4, 0(t0)
	la t2, .libro.str.393
	sw t2, 17236(sp)
	lw t0, 17228(sp)
	addi t2, t0, 4
	sw t2, 17240(sp)
	lw t0, 17240(sp)
	lw t1, 17236(sp)
	sw t1, 0(t0)
	lw t0, 17224(sp)
	mv a0, t0
	lw t0, 17228(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17244(sp)
	lw t0, 17244(sp)
	addi t2, t0, 4
	sw t2, 17248(sp)
	lw t0, 17248(sp)
	lw t2, 0(t0)
	sw t2, 17252(sp)
	lw t0, 17252(sp)
	mv a0, t0
	call print
	lw t2, -564(s0)
	sw t2, 17256(sp)
	lw t0, 17256(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17260(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17264(sp)
	lw t0, 17264(sp)
	addi t2, t0, 0
	sw t2, 17268(sp)
	addi t4, zero, 1
	lw t0, 17268(sp)
	sw t4, 0(t0)
	la t2, .libro.str.394
	sw t2, 17272(sp)
	lw t0, 17264(sp)
	addi t2, t0, 4
	sw t2, 17276(sp)
	lw t0, 17276(sp)
	lw t1, 17272(sp)
	sw t1, 0(t0)
	lw t0, 17260(sp)
	mv a0, t0
	lw t0, 17264(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17280(sp)
	lw t0, 17280(sp)
	addi t2, t0, 4
	sw t2, 17284(sp)
	lw t0, 17284(sp)
	lw t2, 0(t0)
	sw t2, 17288(sp)
	lw t0, 17288(sp)
	mv a0, t0
	call print
	lw t2, -568(s0)
	sw t2, 17292(sp)
	lw t0, 17292(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17296(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17300(sp)
	lw t0, 17300(sp)
	addi t2, t0, 0
	sw t2, 17304(sp)
	addi t4, zero, 1
	lw t0, 17304(sp)
	sw t4, 0(t0)
	la t2, .libro.str.395
	sw t2, 17308(sp)
	lw t0, 17300(sp)
	addi t2, t0, 4
	sw t2, 17312(sp)
	lw t0, 17312(sp)
	lw t1, 17308(sp)
	sw t1, 0(t0)
	lw t0, 17296(sp)
	mv a0, t0
	lw t0, 17300(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17316(sp)
	lw t0, 17316(sp)
	addi t2, t0, 4
	sw t2, 17320(sp)
	lw t0, 17320(sp)
	lw t2, 0(t0)
	sw t2, 17324(sp)
	lw t0, 17324(sp)
	mv a0, t0
	call print
	lw t2, -572(s0)
	sw t2, 17328(sp)
	lw t0, 17328(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17332(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17336(sp)
	lw t0, 17336(sp)
	addi t2, t0, 0
	sw t2, 17340(sp)
	addi t4, zero, 1
	lw t0, 17340(sp)
	sw t4, 0(t0)
	la t2, .libro.str.396
	sw t2, 17344(sp)
	lw t0, 17336(sp)
	addi t2, t0, 4
	sw t2, 17348(sp)
	lw t0, 17348(sp)
	lw t1, 17344(sp)
	sw t1, 0(t0)
	lw t0, 17332(sp)
	mv a0, t0
	lw t0, 17336(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17352(sp)
	lw t0, 17352(sp)
	addi t2, t0, 4
	sw t2, 17356(sp)
	lw t0, 17356(sp)
	lw t2, 0(t0)
	sw t2, 17360(sp)
	lw t0, 17360(sp)
	mv a0, t0
	call print
	lw t2, -576(s0)
	sw t2, 17364(sp)
	lw t0, 17364(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17368(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17372(sp)
	lw t0, 17372(sp)
	addi t2, t0, 0
	sw t2, 17376(sp)
	addi t4, zero, 1
	lw t0, 17376(sp)
	sw t4, 0(t0)
	la t2, .libro.str.397
	sw t2, 17380(sp)
	lw t0, 17372(sp)
	addi t2, t0, 4
	sw t2, 17384(sp)
	lw t0, 17384(sp)
	lw t1, 17380(sp)
	sw t1, 0(t0)
	lw t0, 17368(sp)
	mv a0, t0
	lw t0, 17372(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17388(sp)
	lw t0, 17388(sp)
	addi t2, t0, 4
	sw t2, 17392(sp)
	lw t0, 17392(sp)
	lw t2, 0(t0)
	sw t2, 17396(sp)
	lw t0, 17396(sp)
	mv a0, t0
	call print
	lw t2, -580(s0)
	sw t2, 17400(sp)
	lw t0, 17400(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17404(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17408(sp)
	lw t0, 17408(sp)
	addi t2, t0, 0
	sw t2, 17412(sp)
	addi t4, zero, 1
	lw t0, 17412(sp)
	sw t4, 0(t0)
	la t2, .libro.str.398
	sw t2, 17416(sp)
	lw t0, 17408(sp)
	addi t2, t0, 4
	sw t2, 17420(sp)
	lw t0, 17420(sp)
	lw t1, 17416(sp)
	sw t1, 0(t0)
	lw t0, 17404(sp)
	mv a0, t0
	lw t0, 17408(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17424(sp)
	lw t0, 17424(sp)
	addi t2, t0, 4
	sw t2, 17428(sp)
	lw t0, 17428(sp)
	lw t2, 0(t0)
	sw t2, 17432(sp)
	lw t0, 17432(sp)
	mv a0, t0
	call print
	lw t2, -584(s0)
	sw t2, 17436(sp)
	lw t0, 17436(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17440(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17444(sp)
	lw t0, 17444(sp)
	addi t2, t0, 0
	sw t2, 17448(sp)
	addi t4, zero, 1
	lw t0, 17448(sp)
	sw t4, 0(t0)
	la t2, .libro.str.399
	sw t2, 17452(sp)
	lw t0, 17444(sp)
	addi t2, t0, 4
	sw t2, 17456(sp)
	lw t0, 17456(sp)
	lw t1, 17452(sp)
	sw t1, 0(t0)
	lw t0, 17440(sp)
	mv a0, t0
	lw t0, 17444(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17460(sp)
	lw t0, 17460(sp)
	addi t2, t0, 4
	sw t2, 17464(sp)
	lw t0, 17464(sp)
	lw t2, 0(t0)
	sw t2, 17468(sp)
	lw t0, 17468(sp)
	mv a0, t0
	call print
	lw t2, -588(s0)
	sw t2, 17472(sp)
	lw t0, 17472(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17476(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17480(sp)
	lw t0, 17480(sp)
	addi t2, t0, 0
	sw t2, 17484(sp)
	addi t4, zero, 1
	lw t0, 17484(sp)
	sw t4, 0(t0)
	la t2, .libro.str.400
	sw t2, 17488(sp)
	lw t0, 17480(sp)
	addi t2, t0, 4
	sw t2, 17492(sp)
	lw t0, 17492(sp)
	lw t1, 17488(sp)
	sw t1, 0(t0)
	lw t0, 17476(sp)
	mv a0, t0
	lw t0, 17480(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17496(sp)
	lw t0, 17496(sp)
	addi t2, t0, 4
	sw t2, 17500(sp)
	lw t0, 17500(sp)
	lw t2, 0(t0)
	sw t2, 17504(sp)
	lw t0, 17504(sp)
	mv a0, t0
	call print
	lw t2, -592(s0)
	sw t2, 17508(sp)
	lw t0, 17508(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17512(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17516(sp)
	lw t0, 17516(sp)
	addi t2, t0, 0
	sw t2, 17520(sp)
	addi t4, zero, 1
	lw t0, 17520(sp)
	sw t4, 0(t0)
	la t2, .libro.str.401
	sw t2, 17524(sp)
	lw t0, 17516(sp)
	addi t2, t0, 4
	sw t2, 17528(sp)
	lw t0, 17528(sp)
	lw t1, 17524(sp)
	sw t1, 0(t0)
	lw t0, 17512(sp)
	mv a0, t0
	lw t0, 17516(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17532(sp)
	lw t0, 17532(sp)
	addi t2, t0, 4
	sw t2, 17536(sp)
	lw t0, 17536(sp)
	lw t2, 0(t0)
	sw t2, 17540(sp)
	lw t0, 17540(sp)
	mv a0, t0
	call print
	lw t2, -596(s0)
	sw t2, 17544(sp)
	lw t0, 17544(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17548(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17552(sp)
	lw t0, 17552(sp)
	addi t2, t0, 0
	sw t2, 17556(sp)
	addi t4, zero, 1
	lw t0, 17556(sp)
	sw t4, 0(t0)
	la t2, .libro.str.402
	sw t2, 17560(sp)
	lw t0, 17552(sp)
	addi t2, t0, 4
	sw t2, 17564(sp)
	lw t0, 17564(sp)
	lw t1, 17560(sp)
	sw t1, 0(t0)
	lw t0, 17548(sp)
	mv a0, t0
	lw t0, 17552(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17568(sp)
	lw t0, 17568(sp)
	addi t2, t0, 4
	sw t2, 17572(sp)
	lw t0, 17572(sp)
	lw t2, 0(t0)
	sw t2, 17576(sp)
	lw t0, 17576(sp)
	mv a0, t0
	call print
	lw t2, -600(s0)
	sw t2, 17580(sp)
	lw t0, 17580(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17584(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17588(sp)
	lw t0, 17588(sp)
	addi t2, t0, 0
	sw t2, 17592(sp)
	addi t4, zero, 1
	lw t0, 17592(sp)
	sw t4, 0(t0)
	la t2, .libro.str.403
	sw t2, 17596(sp)
	lw t0, 17588(sp)
	addi t2, t0, 4
	sw t2, 17600(sp)
	lw t0, 17600(sp)
	lw t1, 17596(sp)
	sw t1, 0(t0)
	lw t0, 17584(sp)
	mv a0, t0
	lw t0, 17588(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17604(sp)
	lw t0, 17604(sp)
	addi t2, t0, 4
	sw t2, 17608(sp)
	lw t0, 17608(sp)
	lw t2, 0(t0)
	sw t2, 17612(sp)
	lw t0, 17612(sp)
	mv a0, t0
	call print
	lw t2, -604(s0)
	sw t2, 17616(sp)
	lw t0, 17616(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17620(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17624(sp)
	lw t0, 17624(sp)
	addi t2, t0, 0
	sw t2, 17628(sp)
	addi t4, zero, 1
	lw t0, 17628(sp)
	sw t4, 0(t0)
	la t2, .libro.str.404
	sw t2, 17632(sp)
	lw t0, 17624(sp)
	addi t2, t0, 4
	sw t2, 17636(sp)
	lw t0, 17636(sp)
	lw t1, 17632(sp)
	sw t1, 0(t0)
	lw t0, 17620(sp)
	mv a0, t0
	lw t0, 17624(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17640(sp)
	lw t0, 17640(sp)
	addi t2, t0, 4
	sw t2, 17644(sp)
	lw t0, 17644(sp)
	lw t2, 0(t0)
	sw t2, 17648(sp)
	lw t0, 17648(sp)
	mv a0, t0
	call print
	lw t2, -608(s0)
	sw t2, 17652(sp)
	lw t0, 17652(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17656(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17660(sp)
	lw t0, 17660(sp)
	addi t2, t0, 0
	sw t2, 17664(sp)
	addi t4, zero, 1
	lw t0, 17664(sp)
	sw t4, 0(t0)
	la t2, .libro.str.405
	sw t2, 17668(sp)
	lw t0, 17660(sp)
	addi t2, t0, 4
	sw t2, 17672(sp)
	lw t0, 17672(sp)
	lw t1, 17668(sp)
	sw t1, 0(t0)
	lw t0, 17656(sp)
	mv a0, t0
	lw t0, 17660(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17676(sp)
	lw t0, 17676(sp)
	addi t2, t0, 4
	sw t2, 17680(sp)
	lw t0, 17680(sp)
	lw t2, 0(t0)
	sw t2, 17684(sp)
	lw t0, 17684(sp)
	mv a0, t0
	call print
	lw t2, -612(s0)
	sw t2, 17688(sp)
	lw t0, 17688(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17692(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17696(sp)
	lw t0, 17696(sp)
	addi t2, t0, 0
	sw t2, 17700(sp)
	addi t4, zero, 1
	lw t0, 17700(sp)
	sw t4, 0(t0)
	la t2, .libro.str.406
	sw t2, 17704(sp)
	lw t0, 17696(sp)
	addi t2, t0, 4
	sw t2, 17708(sp)
	lw t0, 17708(sp)
	lw t1, 17704(sp)
	sw t1, 0(t0)
	lw t0, 17692(sp)
	mv a0, t0
	lw t0, 17696(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17712(sp)
	lw t0, 17712(sp)
	addi t2, t0, 4
	sw t2, 17716(sp)
	lw t0, 17716(sp)
	lw t2, 0(t0)
	sw t2, 17720(sp)
	lw t0, 17720(sp)
	mv a0, t0
	call print
	lw t2, -616(s0)
	sw t2, 17724(sp)
	lw t0, 17724(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17728(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17732(sp)
	lw t0, 17732(sp)
	addi t2, t0, 0
	sw t2, 17736(sp)
	addi t4, zero, 1
	lw t0, 17736(sp)
	sw t4, 0(t0)
	la t2, .libro.str.407
	sw t2, 17740(sp)
	lw t0, 17732(sp)
	addi t2, t0, 4
	sw t2, 17744(sp)
	lw t0, 17744(sp)
	lw t1, 17740(sp)
	sw t1, 0(t0)
	lw t0, 17728(sp)
	mv a0, t0
	lw t0, 17732(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17748(sp)
	lw t0, 17748(sp)
	addi t2, t0, 4
	sw t2, 17752(sp)
	lw t0, 17752(sp)
	lw t2, 0(t0)
	sw t2, 17756(sp)
	lw t0, 17756(sp)
	mv a0, t0
	call print
	lw t2, -620(s0)
	sw t2, 17760(sp)
	lw t0, 17760(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17764(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17768(sp)
	lw t0, 17768(sp)
	addi t2, t0, 0
	sw t2, 17772(sp)
	addi t4, zero, 1
	lw t0, 17772(sp)
	sw t4, 0(t0)
	la t2, .libro.str.408
	sw t2, 17776(sp)
	lw t0, 17768(sp)
	addi t2, t0, 4
	sw t2, 17780(sp)
	lw t0, 17780(sp)
	lw t1, 17776(sp)
	sw t1, 0(t0)
	lw t0, 17764(sp)
	mv a0, t0
	lw t0, 17768(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17784(sp)
	lw t0, 17784(sp)
	addi t2, t0, 4
	sw t2, 17788(sp)
	lw t0, 17788(sp)
	lw t2, 0(t0)
	sw t2, 17792(sp)
	lw t0, 17792(sp)
	mv a0, t0
	call print
	lw t2, -624(s0)
	sw t2, 17796(sp)
	lw t0, 17796(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17800(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17804(sp)
	lw t0, 17804(sp)
	addi t2, t0, 0
	sw t2, 17808(sp)
	addi t4, zero, 1
	lw t0, 17808(sp)
	sw t4, 0(t0)
	la t2, .libro.str.409
	sw t2, 17812(sp)
	lw t0, 17804(sp)
	addi t2, t0, 4
	sw t2, 17816(sp)
	lw t0, 17816(sp)
	lw t1, 17812(sp)
	sw t1, 0(t0)
	lw t0, 17800(sp)
	mv a0, t0
	lw t0, 17804(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17820(sp)
	lw t0, 17820(sp)
	addi t2, t0, 4
	sw t2, 17824(sp)
	lw t0, 17824(sp)
	lw t2, 0(t0)
	sw t2, 17828(sp)
	lw t0, 17828(sp)
	mv a0, t0
	call print
	lw t2, -628(s0)
	sw t2, 17832(sp)
	lw t0, 17832(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17836(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17840(sp)
	lw t0, 17840(sp)
	addi t2, t0, 0
	sw t2, 17844(sp)
	addi t4, zero, 1
	lw t0, 17844(sp)
	sw t4, 0(t0)
	la t2, .libro.str.410
	sw t2, 17848(sp)
	lw t0, 17840(sp)
	addi t2, t0, 4
	sw t2, 17852(sp)
	lw t0, 17852(sp)
	lw t1, 17848(sp)
	sw t1, 0(t0)
	lw t0, 17836(sp)
	mv a0, t0
	lw t0, 17840(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17856(sp)
	lw t0, 17856(sp)
	addi t2, t0, 4
	sw t2, 17860(sp)
	lw t0, 17860(sp)
	lw t2, 0(t0)
	sw t2, 17864(sp)
	lw t0, 17864(sp)
	mv a0, t0
	call print
	lw t2, -632(s0)
	sw t2, 17868(sp)
	lw t0, 17868(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17872(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17876(sp)
	lw t0, 17876(sp)
	addi t2, t0, 0
	sw t2, 17880(sp)
	addi t4, zero, 1
	lw t0, 17880(sp)
	sw t4, 0(t0)
	la t2, .libro.str.411
	sw t2, 17884(sp)
	lw t0, 17876(sp)
	addi t2, t0, 4
	sw t2, 17888(sp)
	lw t0, 17888(sp)
	lw t1, 17884(sp)
	sw t1, 0(t0)
	lw t0, 17872(sp)
	mv a0, t0
	lw t0, 17876(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17892(sp)
	lw t0, 17892(sp)
	addi t2, t0, 4
	sw t2, 17896(sp)
	lw t0, 17896(sp)
	lw t2, 0(t0)
	sw t2, 17900(sp)
	lw t0, 17900(sp)
	mv a0, t0
	call print
	lw t2, -636(s0)
	sw t2, 17904(sp)
	lw t0, 17904(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17908(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17912(sp)
	lw t0, 17912(sp)
	addi t2, t0, 0
	sw t2, 17916(sp)
	addi t4, zero, 1
	lw t0, 17916(sp)
	sw t4, 0(t0)
	la t2, .libro.str.412
	sw t2, 17920(sp)
	lw t0, 17912(sp)
	addi t2, t0, 4
	sw t2, 17924(sp)
	lw t0, 17924(sp)
	lw t1, 17920(sp)
	sw t1, 0(t0)
	lw t0, 17908(sp)
	mv a0, t0
	lw t0, 17912(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17928(sp)
	lw t0, 17928(sp)
	addi t2, t0, 4
	sw t2, 17932(sp)
	lw t0, 17932(sp)
	lw t2, 0(t0)
	sw t2, 17936(sp)
	lw t0, 17936(sp)
	mv a0, t0
	call print
	lw t2, -640(s0)
	sw t2, 17940(sp)
	lw t0, 17940(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17944(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17948(sp)
	lw t0, 17948(sp)
	addi t2, t0, 0
	sw t2, 17952(sp)
	addi t4, zero, 1
	lw t0, 17952(sp)
	sw t4, 0(t0)
	la t2, .libro.str.413
	sw t2, 17956(sp)
	lw t0, 17948(sp)
	addi t2, t0, 4
	sw t2, 17960(sp)
	lw t0, 17960(sp)
	lw t1, 17956(sp)
	sw t1, 0(t0)
	lw t0, 17944(sp)
	mv a0, t0
	lw t0, 17948(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 17964(sp)
	lw t0, 17964(sp)
	addi t2, t0, 4
	sw t2, 17968(sp)
	lw t0, 17968(sp)
	lw t2, 0(t0)
	sw t2, 17972(sp)
	lw t0, 17972(sp)
	mv a0, t0
	call print
	lw t2, -644(s0)
	sw t2, 17976(sp)
	lw t0, 17976(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 17980(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 17984(sp)
	lw t0, 17984(sp)
	addi t2, t0, 0
	sw t2, 17988(sp)
	addi t4, zero, 1
	lw t0, 17988(sp)
	sw t4, 0(t0)
	la t2, .libro.str.414
	sw t2, 17992(sp)
	lw t0, 17984(sp)
	addi t2, t0, 4
	sw t2, 17996(sp)
	lw t0, 17996(sp)
	lw t1, 17992(sp)
	sw t1, 0(t0)
	lw t0, 17980(sp)
	mv a0, t0
	lw t0, 17984(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18000(sp)
	lw t0, 18000(sp)
	addi t2, t0, 4
	sw t2, 18004(sp)
	lw t0, 18004(sp)
	lw t2, 0(t0)
	sw t2, 18008(sp)
	lw t0, 18008(sp)
	mv a0, t0
	call print
	lw t2, -648(s0)
	sw t2, 18012(sp)
	lw t0, 18012(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18016(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18020(sp)
	lw t0, 18020(sp)
	addi t2, t0, 0
	sw t2, 18024(sp)
	addi t4, zero, 1
	lw t0, 18024(sp)
	sw t4, 0(t0)
	la t2, .libro.str.415
	sw t2, 18028(sp)
	lw t0, 18020(sp)
	addi t2, t0, 4
	sw t2, 18032(sp)
	lw t0, 18032(sp)
	lw t1, 18028(sp)
	sw t1, 0(t0)
	lw t0, 18016(sp)
	mv a0, t0
	lw t0, 18020(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18036(sp)
	lw t0, 18036(sp)
	addi t2, t0, 4
	sw t2, 18040(sp)
	lw t0, 18040(sp)
	lw t2, 0(t0)
	sw t2, 18044(sp)
	lw t0, 18044(sp)
	mv a0, t0
	call print
	lw t2, -652(s0)
	sw t2, 18048(sp)
	lw t0, 18048(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18052(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18056(sp)
	lw t0, 18056(sp)
	addi t2, t0, 0
	sw t2, 18060(sp)
	addi t4, zero, 1
	lw t0, 18060(sp)
	sw t4, 0(t0)
	la t2, .libro.str.416
	sw t2, 18064(sp)
	lw t0, 18056(sp)
	addi t2, t0, 4
	sw t2, 18068(sp)
	lw t0, 18068(sp)
	lw t1, 18064(sp)
	sw t1, 0(t0)
	lw t0, 18052(sp)
	mv a0, t0
	lw t0, 18056(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18072(sp)
	lw t0, 18072(sp)
	addi t2, t0, 4
	sw t2, 18076(sp)
	lw t0, 18076(sp)
	lw t2, 0(t0)
	sw t2, 18080(sp)
	lw t0, 18080(sp)
	mv a0, t0
	call print
	lw t2, -656(s0)
	sw t2, 18084(sp)
	lw t0, 18084(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18088(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18092(sp)
	lw t0, 18092(sp)
	addi t2, t0, 0
	sw t2, 18096(sp)
	addi t4, zero, 1
	lw t0, 18096(sp)
	sw t4, 0(t0)
	la t2, .libro.str.417
	sw t2, 18100(sp)
	lw t0, 18092(sp)
	addi t2, t0, 4
	sw t2, 18104(sp)
	lw t0, 18104(sp)
	lw t1, 18100(sp)
	sw t1, 0(t0)
	lw t0, 18088(sp)
	mv a0, t0
	lw t0, 18092(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18108(sp)
	lw t0, 18108(sp)
	addi t2, t0, 4
	sw t2, 18112(sp)
	lw t0, 18112(sp)
	lw t2, 0(t0)
	sw t2, 18116(sp)
	lw t0, 18116(sp)
	mv a0, t0
	call print
	lw t2, -660(s0)
	sw t2, 18120(sp)
	lw t0, 18120(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18124(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18128(sp)
	lw t0, 18128(sp)
	addi t2, t0, 0
	sw t2, 18132(sp)
	addi t4, zero, 1
	lw t0, 18132(sp)
	sw t4, 0(t0)
	la t2, .libro.str.418
	sw t2, 18136(sp)
	lw t0, 18128(sp)
	addi t2, t0, 4
	sw t2, 18140(sp)
	lw t0, 18140(sp)
	lw t1, 18136(sp)
	sw t1, 0(t0)
	lw t0, 18124(sp)
	mv a0, t0
	lw t0, 18128(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18144(sp)
	lw t0, 18144(sp)
	addi t2, t0, 4
	sw t2, 18148(sp)
	lw t0, 18148(sp)
	lw t2, 0(t0)
	sw t2, 18152(sp)
	lw t0, 18152(sp)
	mv a0, t0
	call print
	lw t2, -664(s0)
	sw t2, 18156(sp)
	lw t0, 18156(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18160(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18164(sp)
	lw t0, 18164(sp)
	addi t2, t0, 0
	sw t2, 18168(sp)
	addi t4, zero, 1
	lw t0, 18168(sp)
	sw t4, 0(t0)
	la t2, .libro.str.419
	sw t2, 18172(sp)
	lw t0, 18164(sp)
	addi t2, t0, 4
	sw t2, 18176(sp)
	lw t0, 18176(sp)
	lw t1, 18172(sp)
	sw t1, 0(t0)
	lw t0, 18160(sp)
	mv a0, t0
	lw t0, 18164(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18180(sp)
	lw t0, 18180(sp)
	addi t2, t0, 4
	sw t2, 18184(sp)
	lw t0, 18184(sp)
	lw t2, 0(t0)
	sw t2, 18188(sp)
	lw t0, 18188(sp)
	mv a0, t0
	call print
	lw t2, -668(s0)
	sw t2, 18192(sp)
	lw t0, 18192(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18196(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18200(sp)
	lw t0, 18200(sp)
	addi t2, t0, 0
	sw t2, 18204(sp)
	addi t4, zero, 1
	lw t0, 18204(sp)
	sw t4, 0(t0)
	la t2, .libro.str.420
	sw t2, 18208(sp)
	lw t0, 18200(sp)
	addi t2, t0, 4
	sw t2, 18212(sp)
	lw t0, 18212(sp)
	lw t1, 18208(sp)
	sw t1, 0(t0)
	lw t0, 18196(sp)
	mv a0, t0
	lw t0, 18200(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18216(sp)
	lw t0, 18216(sp)
	addi t2, t0, 4
	sw t2, 18220(sp)
	lw t0, 18220(sp)
	lw t2, 0(t0)
	sw t2, 18224(sp)
	lw t0, 18224(sp)
	mv a0, t0
	call print
	lw t2, -672(s0)
	sw t2, 18228(sp)
	lw t0, 18228(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18232(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18236(sp)
	lw t0, 18236(sp)
	addi t2, t0, 0
	sw t2, 18240(sp)
	addi t4, zero, 1
	lw t0, 18240(sp)
	sw t4, 0(t0)
	la t2, .libro.str.421
	sw t2, 18244(sp)
	lw t0, 18236(sp)
	addi t2, t0, 4
	sw t2, 18248(sp)
	lw t0, 18248(sp)
	lw t1, 18244(sp)
	sw t1, 0(t0)
	lw t0, 18232(sp)
	mv a0, t0
	lw t0, 18236(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18252(sp)
	lw t0, 18252(sp)
	addi t2, t0, 4
	sw t2, 18256(sp)
	lw t0, 18256(sp)
	lw t2, 0(t0)
	sw t2, 18260(sp)
	lw t0, 18260(sp)
	mv a0, t0
	call print
	lw t2, -676(s0)
	sw t2, 18264(sp)
	lw t0, 18264(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18268(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18272(sp)
	lw t0, 18272(sp)
	addi t2, t0, 0
	sw t2, 18276(sp)
	addi t4, zero, 1
	lw t0, 18276(sp)
	sw t4, 0(t0)
	la t2, .libro.str.422
	sw t2, 18280(sp)
	lw t0, 18272(sp)
	addi t2, t0, 4
	sw t2, 18284(sp)
	lw t0, 18284(sp)
	lw t1, 18280(sp)
	sw t1, 0(t0)
	lw t0, 18268(sp)
	mv a0, t0
	lw t0, 18272(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18288(sp)
	lw t0, 18288(sp)
	addi t2, t0, 4
	sw t2, 18292(sp)
	lw t0, 18292(sp)
	lw t2, 0(t0)
	sw t2, 18296(sp)
	lw t0, 18296(sp)
	mv a0, t0
	call print
	lw t2, -680(s0)
	sw t2, 18300(sp)
	lw t0, 18300(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18304(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18308(sp)
	lw t0, 18308(sp)
	addi t2, t0, 0
	sw t2, 18312(sp)
	addi t4, zero, 1
	lw t0, 18312(sp)
	sw t4, 0(t0)
	la t2, .libro.str.423
	sw t2, 18316(sp)
	lw t0, 18308(sp)
	addi t2, t0, 4
	sw t2, 18320(sp)
	lw t0, 18320(sp)
	lw t1, 18316(sp)
	sw t1, 0(t0)
	lw t0, 18304(sp)
	mv a0, t0
	lw t0, 18308(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18324(sp)
	lw t0, 18324(sp)
	addi t2, t0, 4
	sw t2, 18328(sp)
	lw t0, 18328(sp)
	lw t2, 0(t0)
	sw t2, 18332(sp)
	lw t0, 18332(sp)
	mv a0, t0
	call print
	lw t2, -684(s0)
	sw t2, 18336(sp)
	lw t0, 18336(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18340(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18344(sp)
	lw t0, 18344(sp)
	addi t2, t0, 0
	sw t2, 18348(sp)
	addi t4, zero, 1
	lw t0, 18348(sp)
	sw t4, 0(t0)
	la t2, .libro.str.424
	sw t2, 18352(sp)
	lw t0, 18344(sp)
	addi t2, t0, 4
	sw t2, 18356(sp)
	lw t0, 18356(sp)
	lw t1, 18352(sp)
	sw t1, 0(t0)
	lw t0, 18340(sp)
	mv a0, t0
	lw t0, 18344(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18360(sp)
	lw t0, 18360(sp)
	addi t2, t0, 4
	sw t2, 18364(sp)
	lw t0, 18364(sp)
	lw t2, 0(t0)
	sw t2, 18368(sp)
	lw t0, 18368(sp)
	mv a0, t0
	call print
	lw t2, -688(s0)
	sw t2, 18372(sp)
	lw t0, 18372(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18376(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18380(sp)
	lw t0, 18380(sp)
	addi t2, t0, 0
	sw t2, 18384(sp)
	addi t4, zero, 1
	lw t0, 18384(sp)
	sw t4, 0(t0)
	la t2, .libro.str.425
	sw t2, 18388(sp)
	lw t0, 18380(sp)
	addi t2, t0, 4
	sw t2, 18392(sp)
	lw t0, 18392(sp)
	lw t1, 18388(sp)
	sw t1, 0(t0)
	lw t0, 18376(sp)
	mv a0, t0
	lw t0, 18380(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18396(sp)
	lw t0, 18396(sp)
	addi t2, t0, 4
	sw t2, 18400(sp)
	lw t0, 18400(sp)
	lw t2, 0(t0)
	sw t2, 18404(sp)
	lw t0, 18404(sp)
	mv a0, t0
	call print
	lw t2, -692(s0)
	sw t2, 18408(sp)
	lw t0, 18408(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18412(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18416(sp)
	lw t0, 18416(sp)
	addi t2, t0, 0
	sw t2, 18420(sp)
	addi t4, zero, 1
	lw t0, 18420(sp)
	sw t4, 0(t0)
	la t2, .libro.str.426
	sw t2, 18424(sp)
	lw t0, 18416(sp)
	addi t2, t0, 4
	sw t2, 18428(sp)
	lw t0, 18428(sp)
	lw t1, 18424(sp)
	sw t1, 0(t0)
	lw t0, 18412(sp)
	mv a0, t0
	lw t0, 18416(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18432(sp)
	lw t0, 18432(sp)
	addi t2, t0, 4
	sw t2, 18436(sp)
	lw t0, 18436(sp)
	lw t2, 0(t0)
	sw t2, 18440(sp)
	lw t0, 18440(sp)
	mv a0, t0
	call print
	lw t2, -696(s0)
	sw t2, 18444(sp)
	lw t0, 18444(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18448(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18452(sp)
	lw t0, 18452(sp)
	addi t2, t0, 0
	sw t2, 18456(sp)
	addi t4, zero, 1
	lw t0, 18456(sp)
	sw t4, 0(t0)
	la t2, .libro.str.427
	sw t2, 18460(sp)
	lw t0, 18452(sp)
	addi t2, t0, 4
	sw t2, 18464(sp)
	lw t0, 18464(sp)
	lw t1, 18460(sp)
	sw t1, 0(t0)
	lw t0, 18448(sp)
	mv a0, t0
	lw t0, 18452(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18468(sp)
	lw t0, 18468(sp)
	addi t2, t0, 4
	sw t2, 18472(sp)
	lw t0, 18472(sp)
	lw t2, 0(t0)
	sw t2, 18476(sp)
	lw t0, 18476(sp)
	mv a0, t0
	call print
	lw t2, -700(s0)
	sw t2, 18480(sp)
	lw t0, 18480(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18484(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18488(sp)
	lw t0, 18488(sp)
	addi t2, t0, 0
	sw t2, 18492(sp)
	addi t4, zero, 1
	lw t0, 18492(sp)
	sw t4, 0(t0)
	la t2, .libro.str.428
	sw t2, 18496(sp)
	lw t0, 18488(sp)
	addi t2, t0, 4
	sw t2, 18500(sp)
	lw t0, 18500(sp)
	lw t1, 18496(sp)
	sw t1, 0(t0)
	lw t0, 18484(sp)
	mv a0, t0
	lw t0, 18488(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18504(sp)
	lw t0, 18504(sp)
	addi t2, t0, 4
	sw t2, 18508(sp)
	lw t0, 18508(sp)
	lw t2, 0(t0)
	sw t2, 18512(sp)
	lw t0, 18512(sp)
	mv a0, t0
	call print
	lw t2, -704(s0)
	sw t2, 18516(sp)
	lw t0, 18516(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18520(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18524(sp)
	lw t0, 18524(sp)
	addi t2, t0, 0
	sw t2, 18528(sp)
	addi t4, zero, 1
	lw t0, 18528(sp)
	sw t4, 0(t0)
	la t2, .libro.str.429
	sw t2, 18532(sp)
	lw t0, 18524(sp)
	addi t2, t0, 4
	sw t2, 18536(sp)
	lw t0, 18536(sp)
	lw t1, 18532(sp)
	sw t1, 0(t0)
	lw t0, 18520(sp)
	mv a0, t0
	lw t0, 18524(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18540(sp)
	lw t0, 18540(sp)
	addi t2, t0, 4
	sw t2, 18544(sp)
	lw t0, 18544(sp)
	lw t2, 0(t0)
	sw t2, 18548(sp)
	lw t0, 18548(sp)
	mv a0, t0
	call print
	lw t2, -708(s0)
	sw t2, 18552(sp)
	lw t0, 18552(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18556(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18560(sp)
	lw t0, 18560(sp)
	addi t2, t0, 0
	sw t2, 18564(sp)
	addi t4, zero, 1
	lw t0, 18564(sp)
	sw t4, 0(t0)
	la t2, .libro.str.430
	sw t2, 18568(sp)
	lw t0, 18560(sp)
	addi t2, t0, 4
	sw t2, 18572(sp)
	lw t0, 18572(sp)
	lw t1, 18568(sp)
	sw t1, 0(t0)
	lw t0, 18556(sp)
	mv a0, t0
	lw t0, 18560(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18576(sp)
	lw t0, 18576(sp)
	addi t2, t0, 4
	sw t2, 18580(sp)
	lw t0, 18580(sp)
	lw t2, 0(t0)
	sw t2, 18584(sp)
	lw t0, 18584(sp)
	mv a0, t0
	call print
	lw t2, -712(s0)
	sw t2, 18588(sp)
	lw t0, 18588(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18592(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18596(sp)
	lw t0, 18596(sp)
	addi t2, t0, 0
	sw t2, 18600(sp)
	addi t4, zero, 1
	lw t0, 18600(sp)
	sw t4, 0(t0)
	la t2, .libro.str.431
	sw t2, 18604(sp)
	lw t0, 18596(sp)
	addi t2, t0, 4
	sw t2, 18608(sp)
	lw t0, 18608(sp)
	lw t1, 18604(sp)
	sw t1, 0(t0)
	lw t0, 18592(sp)
	mv a0, t0
	lw t0, 18596(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18612(sp)
	lw t0, 18612(sp)
	addi t2, t0, 4
	sw t2, 18616(sp)
	lw t0, 18616(sp)
	lw t2, 0(t0)
	sw t2, 18620(sp)
	lw t0, 18620(sp)
	mv a0, t0
	call print
	lw t2, -716(s0)
	sw t2, 18624(sp)
	lw t0, 18624(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18628(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18632(sp)
	lw t0, 18632(sp)
	addi t2, t0, 0
	sw t2, 18636(sp)
	addi t4, zero, 1
	lw t0, 18636(sp)
	sw t4, 0(t0)
	la t2, .libro.str.432
	sw t2, 18640(sp)
	lw t0, 18632(sp)
	addi t2, t0, 4
	sw t2, 18644(sp)
	lw t0, 18644(sp)
	lw t1, 18640(sp)
	sw t1, 0(t0)
	lw t0, 18628(sp)
	mv a0, t0
	lw t0, 18632(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18648(sp)
	lw t0, 18648(sp)
	addi t2, t0, 4
	sw t2, 18652(sp)
	lw t0, 18652(sp)
	lw t2, 0(t0)
	sw t2, 18656(sp)
	lw t0, 18656(sp)
	mv a0, t0
	call print
	lw t2, -720(s0)
	sw t2, 18660(sp)
	lw t0, 18660(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18664(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18668(sp)
	lw t0, 18668(sp)
	addi t2, t0, 0
	sw t2, 18672(sp)
	addi t4, zero, 1
	lw t0, 18672(sp)
	sw t4, 0(t0)
	la t2, .libro.str.433
	sw t2, 18676(sp)
	lw t0, 18668(sp)
	addi t2, t0, 4
	sw t2, 18680(sp)
	lw t0, 18680(sp)
	lw t1, 18676(sp)
	sw t1, 0(t0)
	lw t0, 18664(sp)
	mv a0, t0
	lw t0, 18668(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18684(sp)
	lw t0, 18684(sp)
	addi t2, t0, 4
	sw t2, 18688(sp)
	lw t0, 18688(sp)
	lw t2, 0(t0)
	sw t2, 18692(sp)
	lw t0, 18692(sp)
	mv a0, t0
	call print
	lw t2, -724(s0)
	sw t2, 18696(sp)
	lw t0, 18696(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18700(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18704(sp)
	lw t0, 18704(sp)
	addi t2, t0, 0
	sw t2, 18708(sp)
	addi t4, zero, 1
	lw t0, 18708(sp)
	sw t4, 0(t0)
	la t2, .libro.str.434
	sw t2, 18712(sp)
	lw t0, 18704(sp)
	addi t2, t0, 4
	sw t2, 18716(sp)
	lw t0, 18716(sp)
	lw t1, 18712(sp)
	sw t1, 0(t0)
	lw t0, 18700(sp)
	mv a0, t0
	lw t0, 18704(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18720(sp)
	lw t0, 18720(sp)
	addi t2, t0, 4
	sw t2, 18724(sp)
	lw t0, 18724(sp)
	lw t2, 0(t0)
	sw t2, 18728(sp)
	lw t0, 18728(sp)
	mv a0, t0
	call print
	lw t2, -728(s0)
	sw t2, 18732(sp)
	lw t0, 18732(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18736(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18740(sp)
	lw t0, 18740(sp)
	addi t2, t0, 0
	sw t2, 18744(sp)
	addi t4, zero, 1
	lw t0, 18744(sp)
	sw t4, 0(t0)
	la t2, .libro.str.435
	sw t2, 18748(sp)
	lw t0, 18740(sp)
	addi t2, t0, 4
	sw t2, 18752(sp)
	lw t0, 18752(sp)
	lw t1, 18748(sp)
	sw t1, 0(t0)
	lw t0, 18736(sp)
	mv a0, t0
	lw t0, 18740(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18756(sp)
	lw t0, 18756(sp)
	addi t2, t0, 4
	sw t2, 18760(sp)
	lw t0, 18760(sp)
	lw t2, 0(t0)
	sw t2, 18764(sp)
	lw t0, 18764(sp)
	mv a0, t0
	call print
	lw t2, -732(s0)
	sw t2, 18768(sp)
	lw t0, 18768(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18772(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18776(sp)
	lw t0, 18776(sp)
	addi t2, t0, 0
	sw t2, 18780(sp)
	addi t4, zero, 1
	lw t0, 18780(sp)
	sw t4, 0(t0)
	la t2, .libro.str.436
	sw t2, 18784(sp)
	lw t0, 18776(sp)
	addi t2, t0, 4
	sw t2, 18788(sp)
	lw t0, 18788(sp)
	lw t1, 18784(sp)
	sw t1, 0(t0)
	lw t0, 18772(sp)
	mv a0, t0
	lw t0, 18776(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18792(sp)
	lw t0, 18792(sp)
	addi t2, t0, 4
	sw t2, 18796(sp)
	lw t0, 18796(sp)
	lw t2, 0(t0)
	sw t2, 18800(sp)
	lw t0, 18800(sp)
	mv a0, t0
	call print
	lw t2, -736(s0)
	sw t2, 18804(sp)
	lw t0, 18804(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18808(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18812(sp)
	lw t0, 18812(sp)
	addi t2, t0, 0
	sw t2, 18816(sp)
	addi t4, zero, 1
	lw t0, 18816(sp)
	sw t4, 0(t0)
	la t2, .libro.str.437
	sw t2, 18820(sp)
	lw t0, 18812(sp)
	addi t2, t0, 4
	sw t2, 18824(sp)
	lw t0, 18824(sp)
	lw t1, 18820(sp)
	sw t1, 0(t0)
	lw t0, 18808(sp)
	mv a0, t0
	lw t0, 18812(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18828(sp)
	lw t0, 18828(sp)
	addi t2, t0, 4
	sw t2, 18832(sp)
	lw t0, 18832(sp)
	lw t2, 0(t0)
	sw t2, 18836(sp)
	lw t0, 18836(sp)
	mv a0, t0
	call print
	lw t2, -740(s0)
	sw t2, 18840(sp)
	lw t0, 18840(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18844(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18848(sp)
	lw t0, 18848(sp)
	addi t2, t0, 0
	sw t2, 18852(sp)
	addi t4, zero, 1
	lw t0, 18852(sp)
	sw t4, 0(t0)
	la t2, .libro.str.438
	sw t2, 18856(sp)
	lw t0, 18848(sp)
	addi t2, t0, 4
	sw t2, 18860(sp)
	lw t0, 18860(sp)
	lw t1, 18856(sp)
	sw t1, 0(t0)
	lw t0, 18844(sp)
	mv a0, t0
	lw t0, 18848(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18864(sp)
	lw t0, 18864(sp)
	addi t2, t0, 4
	sw t2, 18868(sp)
	lw t0, 18868(sp)
	lw t2, 0(t0)
	sw t2, 18872(sp)
	lw t0, 18872(sp)
	mv a0, t0
	call print
	lw t2, -744(s0)
	sw t2, 18876(sp)
	lw t0, 18876(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18880(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18884(sp)
	lw t0, 18884(sp)
	addi t2, t0, 0
	sw t2, 18888(sp)
	addi t4, zero, 1
	lw t0, 18888(sp)
	sw t4, 0(t0)
	la t2, .libro.str.439
	sw t2, 18892(sp)
	lw t0, 18884(sp)
	addi t2, t0, 4
	sw t2, 18896(sp)
	lw t0, 18896(sp)
	lw t1, 18892(sp)
	sw t1, 0(t0)
	lw t0, 18880(sp)
	mv a0, t0
	lw t0, 18884(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18900(sp)
	lw t0, 18900(sp)
	addi t2, t0, 4
	sw t2, 18904(sp)
	lw t0, 18904(sp)
	lw t2, 0(t0)
	sw t2, 18908(sp)
	lw t0, 18908(sp)
	mv a0, t0
	call print
	lw t2, -748(s0)
	sw t2, 18912(sp)
	lw t0, 18912(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18916(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18920(sp)
	lw t0, 18920(sp)
	addi t2, t0, 0
	sw t2, 18924(sp)
	addi t4, zero, 1
	lw t0, 18924(sp)
	sw t4, 0(t0)
	la t2, .libro.str.440
	sw t2, 18928(sp)
	lw t0, 18920(sp)
	addi t2, t0, 4
	sw t2, 18932(sp)
	lw t0, 18932(sp)
	lw t1, 18928(sp)
	sw t1, 0(t0)
	lw t0, 18916(sp)
	mv a0, t0
	lw t0, 18920(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18936(sp)
	lw t0, 18936(sp)
	addi t2, t0, 4
	sw t2, 18940(sp)
	lw t0, 18940(sp)
	lw t2, 0(t0)
	sw t2, 18944(sp)
	lw t0, 18944(sp)
	mv a0, t0
	call print
	lw t2, -752(s0)
	sw t2, 18948(sp)
	lw t0, 18948(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18952(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18956(sp)
	lw t0, 18956(sp)
	addi t2, t0, 0
	sw t2, 18960(sp)
	addi t4, zero, 1
	lw t0, 18960(sp)
	sw t4, 0(t0)
	la t2, .libro.str.441
	sw t2, 18964(sp)
	lw t0, 18956(sp)
	addi t2, t0, 4
	sw t2, 18968(sp)
	lw t0, 18968(sp)
	lw t1, 18964(sp)
	sw t1, 0(t0)
	lw t0, 18952(sp)
	mv a0, t0
	lw t0, 18956(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 18972(sp)
	lw t0, 18972(sp)
	addi t2, t0, 4
	sw t2, 18976(sp)
	lw t0, 18976(sp)
	lw t2, 0(t0)
	sw t2, 18980(sp)
	lw t0, 18980(sp)
	mv a0, t0
	call print
	lw t2, -756(s0)
	sw t2, 18984(sp)
	lw t0, 18984(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 18988(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 18992(sp)
	lw t0, 18992(sp)
	addi t2, t0, 0
	sw t2, 18996(sp)
	addi t4, zero, 1
	lw t0, 18996(sp)
	sw t4, 0(t0)
	la t2, .libro.str.442
	sw t2, 19000(sp)
	lw t0, 18992(sp)
	addi t2, t0, 4
	sw t2, 19004(sp)
	lw t0, 19004(sp)
	lw t1, 19000(sp)
	sw t1, 0(t0)
	lw t0, 18988(sp)
	mv a0, t0
	lw t0, 18992(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19008(sp)
	lw t0, 19008(sp)
	addi t2, t0, 4
	sw t2, 19012(sp)
	lw t0, 19012(sp)
	lw t2, 0(t0)
	sw t2, 19016(sp)
	lw t0, 19016(sp)
	mv a0, t0
	call print
	lw t2, -760(s0)
	sw t2, 19020(sp)
	lw t0, 19020(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19024(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19028(sp)
	lw t0, 19028(sp)
	addi t2, t0, 0
	sw t2, 19032(sp)
	addi t4, zero, 1
	lw t0, 19032(sp)
	sw t4, 0(t0)
	la t2, .libro.str.443
	sw t2, 19036(sp)
	lw t0, 19028(sp)
	addi t2, t0, 4
	sw t2, 19040(sp)
	lw t0, 19040(sp)
	lw t1, 19036(sp)
	sw t1, 0(t0)
	lw t0, 19024(sp)
	mv a0, t0
	lw t0, 19028(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19044(sp)
	lw t0, 19044(sp)
	addi t2, t0, 4
	sw t2, 19048(sp)
	lw t0, 19048(sp)
	lw t2, 0(t0)
	sw t2, 19052(sp)
	lw t0, 19052(sp)
	mv a0, t0
	call print
	lw t2, -764(s0)
	sw t2, 19056(sp)
	lw t0, 19056(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19060(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19064(sp)
	lw t0, 19064(sp)
	addi t2, t0, 0
	sw t2, 19068(sp)
	addi t4, zero, 1
	lw t0, 19068(sp)
	sw t4, 0(t0)
	la t2, .libro.str.444
	sw t2, 19072(sp)
	lw t0, 19064(sp)
	addi t2, t0, 4
	sw t2, 19076(sp)
	lw t0, 19076(sp)
	lw t1, 19072(sp)
	sw t1, 0(t0)
	lw t0, 19060(sp)
	mv a0, t0
	lw t0, 19064(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19080(sp)
	lw t0, 19080(sp)
	addi t2, t0, 4
	sw t2, 19084(sp)
	lw t0, 19084(sp)
	lw t2, 0(t0)
	sw t2, 19088(sp)
	lw t0, 19088(sp)
	mv a0, t0
	call print
	lw t2, -768(s0)
	sw t2, 19092(sp)
	lw t0, 19092(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19096(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19100(sp)
	lw t0, 19100(sp)
	addi t2, t0, 0
	sw t2, 19104(sp)
	addi t4, zero, 1
	lw t0, 19104(sp)
	sw t4, 0(t0)
	la t2, .libro.str.445
	sw t2, 19108(sp)
	lw t0, 19100(sp)
	addi t2, t0, 4
	sw t2, 19112(sp)
	lw t0, 19112(sp)
	lw t1, 19108(sp)
	sw t1, 0(t0)
	lw t0, 19096(sp)
	mv a0, t0
	lw t0, 19100(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19116(sp)
	lw t0, 19116(sp)
	addi t2, t0, 4
	sw t2, 19120(sp)
	lw t0, 19120(sp)
	lw t2, 0(t0)
	sw t2, 19124(sp)
	lw t0, 19124(sp)
	mv a0, t0
	call print
	lw t2, -772(s0)
	sw t2, 19128(sp)
	lw t0, 19128(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19132(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19136(sp)
	lw t0, 19136(sp)
	addi t2, t0, 0
	sw t2, 19140(sp)
	addi t4, zero, 1
	lw t0, 19140(sp)
	sw t4, 0(t0)
	la t2, .libro.str.446
	sw t2, 19144(sp)
	lw t0, 19136(sp)
	addi t2, t0, 4
	sw t2, 19148(sp)
	lw t0, 19148(sp)
	lw t1, 19144(sp)
	sw t1, 0(t0)
	lw t0, 19132(sp)
	mv a0, t0
	lw t0, 19136(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19152(sp)
	lw t0, 19152(sp)
	addi t2, t0, 4
	sw t2, 19156(sp)
	lw t0, 19156(sp)
	lw t2, 0(t0)
	sw t2, 19160(sp)
	lw t0, 19160(sp)
	mv a0, t0
	call print
	lw t2, -776(s0)
	sw t2, 19164(sp)
	lw t0, 19164(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19168(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19172(sp)
	lw t0, 19172(sp)
	addi t2, t0, 0
	sw t2, 19176(sp)
	addi t4, zero, 1
	lw t0, 19176(sp)
	sw t4, 0(t0)
	la t2, .libro.str.447
	sw t2, 19180(sp)
	lw t0, 19172(sp)
	addi t2, t0, 4
	sw t2, 19184(sp)
	lw t0, 19184(sp)
	lw t1, 19180(sp)
	sw t1, 0(t0)
	lw t0, 19168(sp)
	mv a0, t0
	lw t0, 19172(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19188(sp)
	lw t0, 19188(sp)
	addi t2, t0, 4
	sw t2, 19192(sp)
	lw t0, 19192(sp)
	lw t2, 0(t0)
	sw t2, 19196(sp)
	lw t0, 19196(sp)
	mv a0, t0
	call print
	lw t2, -780(s0)
	sw t2, 19200(sp)
	lw t0, 19200(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19204(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19208(sp)
	lw t0, 19208(sp)
	addi t2, t0, 0
	sw t2, 19212(sp)
	addi t4, zero, 1
	lw t0, 19212(sp)
	sw t4, 0(t0)
	la t2, .libro.str.448
	sw t2, 19216(sp)
	lw t0, 19208(sp)
	addi t2, t0, 4
	sw t2, 19220(sp)
	lw t0, 19220(sp)
	lw t1, 19216(sp)
	sw t1, 0(t0)
	lw t0, 19204(sp)
	mv a0, t0
	lw t0, 19208(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19224(sp)
	lw t0, 19224(sp)
	addi t2, t0, 4
	sw t2, 19228(sp)
	lw t0, 19228(sp)
	lw t2, 0(t0)
	sw t2, 19232(sp)
	lw t0, 19232(sp)
	mv a0, t0
	call print
	lw t2, -784(s0)
	sw t2, 19236(sp)
	lw t0, 19236(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19240(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19244(sp)
	lw t0, 19244(sp)
	addi t2, t0, 0
	sw t2, 19248(sp)
	addi t4, zero, 1
	lw t0, 19248(sp)
	sw t4, 0(t0)
	la t2, .libro.str.449
	sw t2, 19252(sp)
	lw t0, 19244(sp)
	addi t2, t0, 4
	sw t2, 19256(sp)
	lw t0, 19256(sp)
	lw t1, 19252(sp)
	sw t1, 0(t0)
	lw t0, 19240(sp)
	mv a0, t0
	lw t0, 19244(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19260(sp)
	lw t0, 19260(sp)
	addi t2, t0, 4
	sw t2, 19264(sp)
	lw t0, 19264(sp)
	lw t2, 0(t0)
	sw t2, 19268(sp)
	lw t0, 19268(sp)
	mv a0, t0
	call print
	lw t2, -788(s0)
	sw t2, 19272(sp)
	lw t0, 19272(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19276(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19280(sp)
	lw t0, 19280(sp)
	addi t2, t0, 0
	sw t2, 19284(sp)
	addi t4, zero, 1
	lw t0, 19284(sp)
	sw t4, 0(t0)
	la t2, .libro.str.450
	sw t2, 19288(sp)
	lw t0, 19280(sp)
	addi t2, t0, 4
	sw t2, 19292(sp)
	lw t0, 19292(sp)
	lw t1, 19288(sp)
	sw t1, 0(t0)
	lw t0, 19276(sp)
	mv a0, t0
	lw t0, 19280(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19296(sp)
	lw t0, 19296(sp)
	addi t2, t0, 4
	sw t2, 19300(sp)
	lw t0, 19300(sp)
	lw t2, 0(t0)
	sw t2, 19304(sp)
	lw t0, 19304(sp)
	mv a0, t0
	call print
	lw t2, -792(s0)
	sw t2, 19308(sp)
	lw t0, 19308(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19312(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19316(sp)
	lw t0, 19316(sp)
	addi t2, t0, 0
	sw t2, 19320(sp)
	addi t4, zero, 1
	lw t0, 19320(sp)
	sw t4, 0(t0)
	la t2, .libro.str.451
	sw t2, 19324(sp)
	lw t0, 19316(sp)
	addi t2, t0, 4
	sw t2, 19328(sp)
	lw t0, 19328(sp)
	lw t1, 19324(sp)
	sw t1, 0(t0)
	lw t0, 19312(sp)
	mv a0, t0
	lw t0, 19316(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19332(sp)
	lw t0, 19332(sp)
	addi t2, t0, 4
	sw t2, 19336(sp)
	lw t0, 19336(sp)
	lw t2, 0(t0)
	sw t2, 19340(sp)
	lw t0, 19340(sp)
	mv a0, t0
	call print
	lw t2, -796(s0)
	sw t2, 19344(sp)
	lw t0, 19344(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19348(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19352(sp)
	lw t0, 19352(sp)
	addi t2, t0, 0
	sw t2, 19356(sp)
	addi t4, zero, 1
	lw t0, 19356(sp)
	sw t4, 0(t0)
	la t2, .libro.str.452
	sw t2, 19360(sp)
	lw t0, 19352(sp)
	addi t2, t0, 4
	sw t2, 19364(sp)
	lw t0, 19364(sp)
	lw t1, 19360(sp)
	sw t1, 0(t0)
	lw t0, 19348(sp)
	mv a0, t0
	lw t0, 19352(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19368(sp)
	lw t0, 19368(sp)
	addi t2, t0, 4
	sw t2, 19372(sp)
	lw t0, 19372(sp)
	lw t2, 0(t0)
	sw t2, 19376(sp)
	lw t0, 19376(sp)
	mv a0, t0
	call print
	lw t2, -800(s0)
	sw t2, 19380(sp)
	lw t0, 19380(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19384(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19388(sp)
	lw t0, 19388(sp)
	addi t2, t0, 0
	sw t2, 19392(sp)
	addi t4, zero, 1
	lw t0, 19392(sp)
	sw t4, 0(t0)
	la t2, .libro.str.453
	sw t2, 19396(sp)
	lw t0, 19388(sp)
	addi t2, t0, 4
	sw t2, 19400(sp)
	lw t0, 19400(sp)
	lw t1, 19396(sp)
	sw t1, 0(t0)
	lw t0, 19384(sp)
	mv a0, t0
	lw t0, 19388(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19404(sp)
	lw t0, 19404(sp)
	addi t2, t0, 4
	sw t2, 19408(sp)
	lw t0, 19408(sp)
	lw t2, 0(t0)
	sw t2, 19412(sp)
	lw t0, 19412(sp)
	mv a0, t0
	call print
	lw t2, -804(s0)
	sw t2, 19416(sp)
	lw t0, 19416(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19420(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19424(sp)
	lw t0, 19424(sp)
	addi t2, t0, 0
	sw t2, 19428(sp)
	addi t4, zero, 1
	lw t0, 19428(sp)
	sw t4, 0(t0)
	la t2, .libro.str.454
	sw t2, 19432(sp)
	lw t0, 19424(sp)
	addi t2, t0, 4
	sw t2, 19436(sp)
	lw t0, 19436(sp)
	lw t1, 19432(sp)
	sw t1, 0(t0)
	lw t0, 19420(sp)
	mv a0, t0
	lw t0, 19424(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19440(sp)
	lw t0, 19440(sp)
	addi t2, t0, 4
	sw t2, 19444(sp)
	lw t0, 19444(sp)
	lw t2, 0(t0)
	sw t2, 19448(sp)
	lw t0, 19448(sp)
	mv a0, t0
	call print
	lw t2, -808(s0)
	sw t2, 19452(sp)
	lw t0, 19452(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19456(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19460(sp)
	lw t0, 19460(sp)
	addi t2, t0, 0
	sw t2, 19464(sp)
	addi t4, zero, 1
	lw t0, 19464(sp)
	sw t4, 0(t0)
	la t2, .libro.str.455
	sw t2, 19468(sp)
	lw t0, 19460(sp)
	addi t2, t0, 4
	sw t2, 19472(sp)
	lw t0, 19472(sp)
	lw t1, 19468(sp)
	sw t1, 0(t0)
	lw t0, 19456(sp)
	mv a0, t0
	lw t0, 19460(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19476(sp)
	lw t0, 19476(sp)
	addi t2, t0, 4
	sw t2, 19480(sp)
	lw t0, 19480(sp)
	lw t2, 0(t0)
	sw t2, 19484(sp)
	lw t0, 19484(sp)
	mv a0, t0
	call print
	lw t2, -812(s0)
	sw t2, 19488(sp)
	lw t0, 19488(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19492(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19496(sp)
	lw t0, 19496(sp)
	addi t2, t0, 0
	sw t2, 19500(sp)
	addi t4, zero, 1
	lw t0, 19500(sp)
	sw t4, 0(t0)
	la t2, .libro.str.456
	sw t2, 19504(sp)
	lw t0, 19496(sp)
	addi t2, t0, 4
	sw t2, 19508(sp)
	lw t0, 19508(sp)
	lw t1, 19504(sp)
	sw t1, 0(t0)
	lw t0, 19492(sp)
	mv a0, t0
	lw t0, 19496(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19512(sp)
	lw t0, 19512(sp)
	addi t2, t0, 4
	sw t2, 19516(sp)
	lw t0, 19516(sp)
	lw t2, 0(t0)
	sw t2, 19520(sp)
	lw t0, 19520(sp)
	mv a0, t0
	call print
	lw t2, -816(s0)
	sw t2, 19524(sp)
	lw t0, 19524(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19528(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19532(sp)
	lw t0, 19532(sp)
	addi t2, t0, 0
	sw t2, 19536(sp)
	addi t4, zero, 1
	lw t0, 19536(sp)
	sw t4, 0(t0)
	la t2, .libro.str.457
	sw t2, 19540(sp)
	lw t0, 19532(sp)
	addi t2, t0, 4
	sw t2, 19544(sp)
	lw t0, 19544(sp)
	lw t1, 19540(sp)
	sw t1, 0(t0)
	lw t0, 19528(sp)
	mv a0, t0
	lw t0, 19532(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19548(sp)
	lw t0, 19548(sp)
	addi t2, t0, 4
	sw t2, 19552(sp)
	lw t0, 19552(sp)
	lw t2, 0(t0)
	sw t2, 19556(sp)
	lw t0, 19556(sp)
	mv a0, t0
	call print
	lw t2, -820(s0)
	sw t2, 19560(sp)
	lw t0, 19560(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19564(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19568(sp)
	lw t0, 19568(sp)
	addi t2, t0, 0
	sw t2, 19572(sp)
	addi t4, zero, 1
	lw t0, 19572(sp)
	sw t4, 0(t0)
	la t2, .libro.str.458
	sw t2, 19576(sp)
	lw t0, 19568(sp)
	addi t2, t0, 4
	sw t2, 19580(sp)
	lw t0, 19580(sp)
	lw t1, 19576(sp)
	sw t1, 0(t0)
	lw t0, 19564(sp)
	mv a0, t0
	lw t0, 19568(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19584(sp)
	lw t0, 19584(sp)
	addi t2, t0, 4
	sw t2, 19588(sp)
	lw t0, 19588(sp)
	lw t2, 0(t0)
	sw t2, 19592(sp)
	lw t0, 19592(sp)
	mv a0, t0
	call print
	lw t2, -824(s0)
	sw t2, 19596(sp)
	lw t0, 19596(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19600(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19604(sp)
	lw t0, 19604(sp)
	addi t2, t0, 0
	sw t2, 19608(sp)
	addi t4, zero, 1
	lw t0, 19608(sp)
	sw t4, 0(t0)
	la t2, .libro.str.459
	sw t2, 19612(sp)
	lw t0, 19604(sp)
	addi t2, t0, 4
	sw t2, 19616(sp)
	lw t0, 19616(sp)
	lw t1, 19612(sp)
	sw t1, 0(t0)
	lw t0, 19600(sp)
	mv a0, t0
	lw t0, 19604(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19620(sp)
	lw t0, 19620(sp)
	addi t2, t0, 4
	sw t2, 19624(sp)
	lw t0, 19624(sp)
	lw t2, 0(t0)
	sw t2, 19628(sp)
	lw t0, 19628(sp)
	mv a0, t0
	call print
	lw t2, -828(s0)
	sw t2, 19632(sp)
	lw t0, 19632(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19636(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19640(sp)
	lw t0, 19640(sp)
	addi t2, t0, 0
	sw t2, 19644(sp)
	addi t4, zero, 1
	lw t0, 19644(sp)
	sw t4, 0(t0)
	la t2, .libro.str.460
	sw t2, 19648(sp)
	lw t0, 19640(sp)
	addi t2, t0, 4
	sw t2, 19652(sp)
	lw t0, 19652(sp)
	lw t1, 19648(sp)
	sw t1, 0(t0)
	lw t0, 19636(sp)
	mv a0, t0
	lw t0, 19640(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19656(sp)
	lw t0, 19656(sp)
	addi t2, t0, 4
	sw t2, 19660(sp)
	lw t0, 19660(sp)
	lw t2, 0(t0)
	sw t2, 19664(sp)
	lw t0, 19664(sp)
	mv a0, t0
	call print
	lw t2, -832(s0)
	sw t2, 19668(sp)
	lw t0, 19668(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19672(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19676(sp)
	lw t0, 19676(sp)
	addi t2, t0, 0
	sw t2, 19680(sp)
	addi t4, zero, 1
	lw t0, 19680(sp)
	sw t4, 0(t0)
	la t2, .libro.str.461
	sw t2, 19684(sp)
	lw t0, 19676(sp)
	addi t2, t0, 4
	sw t2, 19688(sp)
	lw t0, 19688(sp)
	lw t1, 19684(sp)
	sw t1, 0(t0)
	lw t0, 19672(sp)
	mv a0, t0
	lw t0, 19676(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19692(sp)
	lw t0, 19692(sp)
	addi t2, t0, 4
	sw t2, 19696(sp)
	lw t0, 19696(sp)
	lw t2, 0(t0)
	sw t2, 19700(sp)
	lw t0, 19700(sp)
	mv a0, t0
	call print
	lw t2, -836(s0)
	sw t2, 19704(sp)
	lw t0, 19704(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19708(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19712(sp)
	lw t0, 19712(sp)
	addi t2, t0, 0
	sw t2, 19716(sp)
	addi t4, zero, 1
	lw t0, 19716(sp)
	sw t4, 0(t0)
	la t2, .libro.str.462
	sw t2, 19720(sp)
	lw t0, 19712(sp)
	addi t2, t0, 4
	sw t2, 19724(sp)
	lw t0, 19724(sp)
	lw t1, 19720(sp)
	sw t1, 0(t0)
	lw t0, 19708(sp)
	mv a0, t0
	lw t0, 19712(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19728(sp)
	lw t0, 19728(sp)
	addi t2, t0, 4
	sw t2, 19732(sp)
	lw t0, 19732(sp)
	lw t2, 0(t0)
	sw t2, 19736(sp)
	lw t0, 19736(sp)
	mv a0, t0
	call print
	lw t2, -840(s0)
	sw t2, 19740(sp)
	lw t0, 19740(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19744(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19748(sp)
	lw t0, 19748(sp)
	addi t2, t0, 0
	sw t2, 19752(sp)
	addi t4, zero, 1
	lw t0, 19752(sp)
	sw t4, 0(t0)
	la t2, .libro.str.463
	sw t2, 19756(sp)
	lw t0, 19748(sp)
	addi t2, t0, 4
	sw t2, 19760(sp)
	lw t0, 19760(sp)
	lw t1, 19756(sp)
	sw t1, 0(t0)
	lw t0, 19744(sp)
	mv a0, t0
	lw t0, 19748(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19764(sp)
	lw t0, 19764(sp)
	addi t2, t0, 4
	sw t2, 19768(sp)
	lw t0, 19768(sp)
	lw t2, 0(t0)
	sw t2, 19772(sp)
	lw t0, 19772(sp)
	mv a0, t0
	call print
	lw t2, -844(s0)
	sw t2, 19776(sp)
	lw t0, 19776(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19780(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19784(sp)
	lw t0, 19784(sp)
	addi t2, t0, 0
	sw t2, 19788(sp)
	addi t4, zero, 1
	lw t0, 19788(sp)
	sw t4, 0(t0)
	la t2, .libro.str.464
	sw t2, 19792(sp)
	lw t0, 19784(sp)
	addi t2, t0, 4
	sw t2, 19796(sp)
	lw t0, 19796(sp)
	lw t1, 19792(sp)
	sw t1, 0(t0)
	lw t0, 19780(sp)
	mv a0, t0
	lw t0, 19784(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19800(sp)
	lw t0, 19800(sp)
	addi t2, t0, 4
	sw t2, 19804(sp)
	lw t0, 19804(sp)
	lw t2, 0(t0)
	sw t2, 19808(sp)
	lw t0, 19808(sp)
	mv a0, t0
	call print
	lw t2, -848(s0)
	sw t2, 19812(sp)
	lw t0, 19812(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19816(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19820(sp)
	lw t0, 19820(sp)
	addi t2, t0, 0
	sw t2, 19824(sp)
	addi t4, zero, 1
	lw t0, 19824(sp)
	sw t4, 0(t0)
	la t2, .libro.str.465
	sw t2, 19828(sp)
	lw t0, 19820(sp)
	addi t2, t0, 4
	sw t2, 19832(sp)
	lw t0, 19832(sp)
	lw t1, 19828(sp)
	sw t1, 0(t0)
	lw t0, 19816(sp)
	mv a0, t0
	lw t0, 19820(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19836(sp)
	lw t0, 19836(sp)
	addi t2, t0, 4
	sw t2, 19840(sp)
	lw t0, 19840(sp)
	lw t2, 0(t0)
	sw t2, 19844(sp)
	lw t0, 19844(sp)
	mv a0, t0
	call print
	lw t2, -852(s0)
	sw t2, 19848(sp)
	lw t0, 19848(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19852(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19856(sp)
	lw t0, 19856(sp)
	addi t2, t0, 0
	sw t2, 19860(sp)
	addi t4, zero, 1
	lw t0, 19860(sp)
	sw t4, 0(t0)
	la t2, .libro.str.466
	sw t2, 19864(sp)
	lw t0, 19856(sp)
	addi t2, t0, 4
	sw t2, 19868(sp)
	lw t0, 19868(sp)
	lw t1, 19864(sp)
	sw t1, 0(t0)
	lw t0, 19852(sp)
	mv a0, t0
	lw t0, 19856(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19872(sp)
	lw t0, 19872(sp)
	addi t2, t0, 4
	sw t2, 19876(sp)
	lw t0, 19876(sp)
	lw t2, 0(t0)
	sw t2, 19880(sp)
	lw t0, 19880(sp)
	mv a0, t0
	call print
	lw t2, -856(s0)
	sw t2, 19884(sp)
	lw t0, 19884(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19888(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19892(sp)
	lw t0, 19892(sp)
	addi t2, t0, 0
	sw t2, 19896(sp)
	addi t4, zero, 1
	lw t0, 19896(sp)
	sw t4, 0(t0)
	la t2, .libro.str.467
	sw t2, 19900(sp)
	lw t0, 19892(sp)
	addi t2, t0, 4
	sw t2, 19904(sp)
	lw t0, 19904(sp)
	lw t1, 19900(sp)
	sw t1, 0(t0)
	lw t0, 19888(sp)
	mv a0, t0
	lw t0, 19892(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19908(sp)
	lw t0, 19908(sp)
	addi t2, t0, 4
	sw t2, 19912(sp)
	lw t0, 19912(sp)
	lw t2, 0(t0)
	sw t2, 19916(sp)
	lw t0, 19916(sp)
	mv a0, t0
	call print
	lw t2, -860(s0)
	sw t2, 19920(sp)
	lw t0, 19920(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19924(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19928(sp)
	lw t0, 19928(sp)
	addi t2, t0, 0
	sw t2, 19932(sp)
	addi t4, zero, 1
	lw t0, 19932(sp)
	sw t4, 0(t0)
	la t2, .libro.str.468
	sw t2, 19936(sp)
	lw t0, 19928(sp)
	addi t2, t0, 4
	sw t2, 19940(sp)
	lw t0, 19940(sp)
	lw t1, 19936(sp)
	sw t1, 0(t0)
	lw t0, 19924(sp)
	mv a0, t0
	lw t0, 19928(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19944(sp)
	lw t0, 19944(sp)
	addi t2, t0, 4
	sw t2, 19948(sp)
	lw t0, 19948(sp)
	lw t2, 0(t0)
	sw t2, 19952(sp)
	lw t0, 19952(sp)
	mv a0, t0
	call print
	lw t2, -864(s0)
	sw t2, 19956(sp)
	lw t0, 19956(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19960(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 19964(sp)
	lw t0, 19964(sp)
	addi t2, t0, 0
	sw t2, 19968(sp)
	addi t4, zero, 1
	lw t0, 19968(sp)
	sw t4, 0(t0)
	la t2, .libro.str.469
	sw t2, 19972(sp)
	lw t0, 19964(sp)
	addi t2, t0, 4
	sw t2, 19976(sp)
	lw t0, 19976(sp)
	lw t1, 19972(sp)
	sw t1, 0(t0)
	lw t0, 19960(sp)
	mv a0, t0
	lw t0, 19964(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 19980(sp)
	lw t0, 19980(sp)
	addi t2, t0, 4
	sw t2, 19984(sp)
	lw t0, 19984(sp)
	lw t2, 0(t0)
	sw t2, 19988(sp)
	lw t0, 19988(sp)
	mv a0, t0
	call print
	lw t2, -868(s0)
	sw t2, 19992(sp)
	lw t0, 19992(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 19996(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20000(sp)
	lw t0, 20000(sp)
	addi t2, t0, 0
	sw t2, 20004(sp)
	addi t4, zero, 1
	lw t0, 20004(sp)
	sw t4, 0(t0)
	la t2, .libro.str.470
	sw t2, 20008(sp)
	lw t0, 20000(sp)
	addi t2, t0, 4
	sw t2, 20012(sp)
	lw t0, 20012(sp)
	lw t1, 20008(sp)
	sw t1, 0(t0)
	lw t0, 19996(sp)
	mv a0, t0
	lw t0, 20000(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20016(sp)
	lw t0, 20016(sp)
	addi t2, t0, 4
	sw t2, 20020(sp)
	lw t0, 20020(sp)
	lw t2, 0(t0)
	sw t2, 20024(sp)
	lw t0, 20024(sp)
	mv a0, t0
	call print
	lw t2, -872(s0)
	sw t2, 20028(sp)
	lw t0, 20028(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20032(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20036(sp)
	lw t0, 20036(sp)
	addi t2, t0, 0
	sw t2, 20040(sp)
	addi t4, zero, 1
	lw t0, 20040(sp)
	sw t4, 0(t0)
	la t2, .libro.str.471
	sw t2, 20044(sp)
	lw t0, 20036(sp)
	addi t2, t0, 4
	sw t2, 20048(sp)
	lw t0, 20048(sp)
	lw t1, 20044(sp)
	sw t1, 0(t0)
	lw t0, 20032(sp)
	mv a0, t0
	lw t0, 20036(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20052(sp)
	lw t0, 20052(sp)
	addi t2, t0, 4
	sw t2, 20056(sp)
	lw t0, 20056(sp)
	lw t2, 0(t0)
	sw t2, 20060(sp)
	lw t0, 20060(sp)
	mv a0, t0
	call print
	lw t2, -876(s0)
	sw t2, 20064(sp)
	lw t0, 20064(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20068(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20072(sp)
	lw t0, 20072(sp)
	addi t2, t0, 0
	sw t2, 20076(sp)
	addi t4, zero, 1
	lw t0, 20076(sp)
	sw t4, 0(t0)
	la t2, .libro.str.472
	sw t2, 20080(sp)
	lw t0, 20072(sp)
	addi t2, t0, 4
	sw t2, 20084(sp)
	lw t0, 20084(sp)
	lw t1, 20080(sp)
	sw t1, 0(t0)
	lw t0, 20068(sp)
	mv a0, t0
	lw t0, 20072(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20088(sp)
	lw t0, 20088(sp)
	addi t2, t0, 4
	sw t2, 20092(sp)
	lw t0, 20092(sp)
	lw t2, 0(t0)
	sw t2, 20096(sp)
	lw t0, 20096(sp)
	mv a0, t0
	call print
	lw t2, -880(s0)
	sw t2, 20100(sp)
	lw t0, 20100(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20104(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20108(sp)
	lw t0, 20108(sp)
	addi t2, t0, 0
	sw t2, 20112(sp)
	addi t4, zero, 1
	lw t0, 20112(sp)
	sw t4, 0(t0)
	la t2, .libro.str.473
	sw t2, 20116(sp)
	lw t0, 20108(sp)
	addi t2, t0, 4
	sw t2, 20120(sp)
	lw t0, 20120(sp)
	lw t1, 20116(sp)
	sw t1, 0(t0)
	lw t0, 20104(sp)
	mv a0, t0
	lw t0, 20108(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20124(sp)
	lw t0, 20124(sp)
	addi t2, t0, 4
	sw t2, 20128(sp)
	lw t0, 20128(sp)
	lw t2, 0(t0)
	sw t2, 20132(sp)
	lw t0, 20132(sp)
	mv a0, t0
	call print
	lw t2, -884(s0)
	sw t2, 20136(sp)
	lw t0, 20136(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20140(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20144(sp)
	lw t0, 20144(sp)
	addi t2, t0, 0
	sw t2, 20148(sp)
	addi t4, zero, 1
	lw t0, 20148(sp)
	sw t4, 0(t0)
	la t2, .libro.str.474
	sw t2, 20152(sp)
	lw t0, 20144(sp)
	addi t2, t0, 4
	sw t2, 20156(sp)
	lw t0, 20156(sp)
	lw t1, 20152(sp)
	sw t1, 0(t0)
	lw t0, 20140(sp)
	mv a0, t0
	lw t0, 20144(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20160(sp)
	lw t0, 20160(sp)
	addi t2, t0, 4
	sw t2, 20164(sp)
	lw t0, 20164(sp)
	lw t2, 0(t0)
	sw t2, 20168(sp)
	lw t0, 20168(sp)
	mv a0, t0
	call print
	lw t2, -888(s0)
	sw t2, 20172(sp)
	lw t0, 20172(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20176(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20180(sp)
	lw t0, 20180(sp)
	addi t2, t0, 0
	sw t2, 20184(sp)
	addi t4, zero, 1
	lw t0, 20184(sp)
	sw t4, 0(t0)
	la t2, .libro.str.475
	sw t2, 20188(sp)
	lw t0, 20180(sp)
	addi t2, t0, 4
	sw t2, 20192(sp)
	lw t0, 20192(sp)
	lw t1, 20188(sp)
	sw t1, 0(t0)
	lw t0, 20176(sp)
	mv a0, t0
	lw t0, 20180(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20196(sp)
	lw t0, 20196(sp)
	addi t2, t0, 4
	sw t2, 20200(sp)
	lw t0, 20200(sp)
	lw t2, 0(t0)
	sw t2, 20204(sp)
	lw t0, 20204(sp)
	mv a0, t0
	call print
	lw t2, -892(s0)
	sw t2, 20208(sp)
	lw t0, 20208(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20212(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20216(sp)
	lw t0, 20216(sp)
	addi t2, t0, 0
	sw t2, 20220(sp)
	addi t4, zero, 1
	lw t0, 20220(sp)
	sw t4, 0(t0)
	la t2, .libro.str.476
	sw t2, 20224(sp)
	lw t0, 20216(sp)
	addi t2, t0, 4
	sw t2, 20228(sp)
	lw t0, 20228(sp)
	lw t1, 20224(sp)
	sw t1, 0(t0)
	lw t0, 20212(sp)
	mv a0, t0
	lw t0, 20216(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20232(sp)
	lw t0, 20232(sp)
	addi t2, t0, 4
	sw t2, 20236(sp)
	lw t0, 20236(sp)
	lw t2, 0(t0)
	sw t2, 20240(sp)
	lw t0, 20240(sp)
	mv a0, t0
	call print
	lw t2, -896(s0)
	sw t2, 20244(sp)
	lw t0, 20244(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20248(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20252(sp)
	lw t0, 20252(sp)
	addi t2, t0, 0
	sw t2, 20256(sp)
	addi t4, zero, 1
	lw t0, 20256(sp)
	sw t4, 0(t0)
	la t2, .libro.str.477
	sw t2, 20260(sp)
	lw t0, 20252(sp)
	addi t2, t0, 4
	sw t2, 20264(sp)
	lw t0, 20264(sp)
	lw t1, 20260(sp)
	sw t1, 0(t0)
	lw t0, 20248(sp)
	mv a0, t0
	lw t0, 20252(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20268(sp)
	lw t0, 20268(sp)
	addi t2, t0, 4
	sw t2, 20272(sp)
	lw t0, 20272(sp)
	lw t2, 0(t0)
	sw t2, 20276(sp)
	lw t0, 20276(sp)
	mv a0, t0
	call print
	lw t2, -900(s0)
	sw t2, 20280(sp)
	lw t0, 20280(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20284(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20288(sp)
	lw t0, 20288(sp)
	addi t2, t0, 0
	sw t2, 20292(sp)
	addi t4, zero, 1
	lw t0, 20292(sp)
	sw t4, 0(t0)
	la t2, .libro.str.478
	sw t2, 20296(sp)
	lw t0, 20288(sp)
	addi t2, t0, 4
	sw t2, 20300(sp)
	lw t0, 20300(sp)
	lw t1, 20296(sp)
	sw t1, 0(t0)
	lw t0, 20284(sp)
	mv a0, t0
	lw t0, 20288(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20304(sp)
	lw t0, 20304(sp)
	addi t2, t0, 4
	sw t2, 20308(sp)
	lw t0, 20308(sp)
	lw t2, 0(t0)
	sw t2, 20312(sp)
	lw t0, 20312(sp)
	mv a0, t0
	call print
	lw t2, -904(s0)
	sw t2, 20316(sp)
	lw t0, 20316(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20320(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20324(sp)
	lw t0, 20324(sp)
	addi t2, t0, 0
	sw t2, 20328(sp)
	addi t4, zero, 1
	lw t0, 20328(sp)
	sw t4, 0(t0)
	la t2, .libro.str.479
	sw t2, 20332(sp)
	lw t0, 20324(sp)
	addi t2, t0, 4
	sw t2, 20336(sp)
	lw t0, 20336(sp)
	lw t1, 20332(sp)
	sw t1, 0(t0)
	lw t0, 20320(sp)
	mv a0, t0
	lw t0, 20324(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20340(sp)
	lw t0, 20340(sp)
	addi t2, t0, 4
	sw t2, 20344(sp)
	lw t0, 20344(sp)
	lw t2, 0(t0)
	sw t2, 20348(sp)
	lw t0, 20348(sp)
	mv a0, t0
	call print
	lw t2, -908(s0)
	sw t2, 20352(sp)
	lw t0, 20352(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20356(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20360(sp)
	lw t0, 20360(sp)
	addi t2, t0, 0
	sw t2, 20364(sp)
	addi t4, zero, 1
	lw t0, 20364(sp)
	sw t4, 0(t0)
	la t2, .libro.str.480
	sw t2, 20368(sp)
	lw t0, 20360(sp)
	addi t2, t0, 4
	sw t2, 20372(sp)
	lw t0, 20372(sp)
	lw t1, 20368(sp)
	sw t1, 0(t0)
	lw t0, 20356(sp)
	mv a0, t0
	lw t0, 20360(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20376(sp)
	lw t0, 20376(sp)
	addi t2, t0, 4
	sw t2, 20380(sp)
	lw t0, 20380(sp)
	lw t2, 0(t0)
	sw t2, 20384(sp)
	lw t0, 20384(sp)
	mv a0, t0
	call print
	lw t2, -912(s0)
	sw t2, 20388(sp)
	lw t0, 20388(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20392(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20396(sp)
	lw t0, 20396(sp)
	addi t2, t0, 0
	sw t2, 20400(sp)
	addi t4, zero, 1
	lw t0, 20400(sp)
	sw t4, 0(t0)
	la t2, .libro.str.481
	sw t2, 20404(sp)
	lw t0, 20396(sp)
	addi t2, t0, 4
	sw t2, 20408(sp)
	lw t0, 20408(sp)
	lw t1, 20404(sp)
	sw t1, 0(t0)
	lw t0, 20392(sp)
	mv a0, t0
	lw t0, 20396(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20412(sp)
	lw t0, 20412(sp)
	addi t2, t0, 4
	sw t2, 20416(sp)
	lw t0, 20416(sp)
	lw t2, 0(t0)
	sw t2, 20420(sp)
	lw t0, 20420(sp)
	mv a0, t0
	call print
	lw t2, -916(s0)
	sw t2, 20424(sp)
	lw t0, 20424(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20428(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20432(sp)
	lw t0, 20432(sp)
	addi t2, t0, 0
	sw t2, 20436(sp)
	addi t4, zero, 1
	lw t0, 20436(sp)
	sw t4, 0(t0)
	la t2, .libro.str.482
	sw t2, 20440(sp)
	lw t0, 20432(sp)
	addi t2, t0, 4
	sw t2, 20444(sp)
	lw t0, 20444(sp)
	lw t1, 20440(sp)
	sw t1, 0(t0)
	lw t0, 20428(sp)
	mv a0, t0
	lw t0, 20432(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20448(sp)
	lw t0, 20448(sp)
	addi t2, t0, 4
	sw t2, 20452(sp)
	lw t0, 20452(sp)
	lw t2, 0(t0)
	sw t2, 20456(sp)
	lw t0, 20456(sp)
	mv a0, t0
	call print
	lw t2, -920(s0)
	sw t2, 20460(sp)
	lw t0, 20460(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20464(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20468(sp)
	lw t0, 20468(sp)
	addi t2, t0, 0
	sw t2, 20472(sp)
	addi t4, zero, 1
	lw t0, 20472(sp)
	sw t4, 0(t0)
	la t2, .libro.str.483
	sw t2, 20476(sp)
	lw t0, 20468(sp)
	addi t2, t0, 4
	sw t2, 20480(sp)
	lw t0, 20480(sp)
	lw t1, 20476(sp)
	sw t1, 0(t0)
	lw t0, 20464(sp)
	mv a0, t0
	lw t0, 20468(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20484(sp)
	lw t0, 20484(sp)
	addi t2, t0, 4
	sw t2, 20488(sp)
	lw t0, 20488(sp)
	lw t2, 0(t0)
	sw t2, 20492(sp)
	lw t0, 20492(sp)
	mv a0, t0
	call print
	lw t2, -924(s0)
	sw t2, 20496(sp)
	lw t0, 20496(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20500(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20504(sp)
	lw t0, 20504(sp)
	addi t2, t0, 0
	sw t2, 20508(sp)
	addi t4, zero, 1
	lw t0, 20508(sp)
	sw t4, 0(t0)
	la t2, .libro.str.484
	sw t2, 20512(sp)
	lw t0, 20504(sp)
	addi t2, t0, 4
	sw t2, 20516(sp)
	lw t0, 20516(sp)
	lw t1, 20512(sp)
	sw t1, 0(t0)
	lw t0, 20500(sp)
	mv a0, t0
	lw t0, 20504(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20520(sp)
	lw t0, 20520(sp)
	addi t2, t0, 4
	sw t2, 20524(sp)
	lw t0, 20524(sp)
	lw t2, 0(t0)
	sw t2, 20528(sp)
	lw t0, 20528(sp)
	mv a0, t0
	call print
	lw t2, -928(s0)
	sw t2, 20532(sp)
	lw t0, 20532(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20536(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20540(sp)
	lw t0, 20540(sp)
	addi t2, t0, 0
	sw t2, 20544(sp)
	addi t4, zero, 1
	lw t0, 20544(sp)
	sw t4, 0(t0)
	la t2, .libro.str.485
	sw t2, 20548(sp)
	lw t0, 20540(sp)
	addi t2, t0, 4
	sw t2, 20552(sp)
	lw t0, 20552(sp)
	lw t1, 20548(sp)
	sw t1, 0(t0)
	lw t0, 20536(sp)
	mv a0, t0
	lw t0, 20540(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20556(sp)
	lw t0, 20556(sp)
	addi t2, t0, 4
	sw t2, 20560(sp)
	lw t0, 20560(sp)
	lw t2, 0(t0)
	sw t2, 20564(sp)
	lw t0, 20564(sp)
	mv a0, t0
	call print
	lw t2, -932(s0)
	sw t2, 20568(sp)
	lw t0, 20568(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20572(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20576(sp)
	lw t0, 20576(sp)
	addi t2, t0, 0
	sw t2, 20580(sp)
	addi t4, zero, 1
	lw t0, 20580(sp)
	sw t4, 0(t0)
	la t2, .libro.str.486
	sw t2, 20584(sp)
	lw t0, 20576(sp)
	addi t2, t0, 4
	sw t2, 20588(sp)
	lw t0, 20588(sp)
	lw t1, 20584(sp)
	sw t1, 0(t0)
	lw t0, 20572(sp)
	mv a0, t0
	lw t0, 20576(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20592(sp)
	lw t0, 20592(sp)
	addi t2, t0, 4
	sw t2, 20596(sp)
	lw t0, 20596(sp)
	lw t2, 0(t0)
	sw t2, 20600(sp)
	lw t0, 20600(sp)
	mv a0, t0
	call print
	lw t2, -936(s0)
	sw t2, 20604(sp)
	lw t0, 20604(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20608(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20612(sp)
	lw t0, 20612(sp)
	addi t2, t0, 0
	sw t2, 20616(sp)
	addi t4, zero, 1
	lw t0, 20616(sp)
	sw t4, 0(t0)
	la t2, .libro.str.487
	sw t2, 20620(sp)
	lw t0, 20612(sp)
	addi t2, t0, 4
	sw t2, 20624(sp)
	lw t0, 20624(sp)
	lw t1, 20620(sp)
	sw t1, 0(t0)
	lw t0, 20608(sp)
	mv a0, t0
	lw t0, 20612(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20628(sp)
	lw t0, 20628(sp)
	addi t2, t0, 4
	sw t2, 20632(sp)
	lw t0, 20632(sp)
	lw t2, 0(t0)
	sw t2, 20636(sp)
	lw t0, 20636(sp)
	mv a0, t0
	call print
	lw t2, -940(s0)
	sw t2, 20640(sp)
	lw t0, 20640(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20644(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20648(sp)
	lw t0, 20648(sp)
	addi t2, t0, 0
	sw t2, 20652(sp)
	addi t4, zero, 1
	lw t0, 20652(sp)
	sw t4, 0(t0)
	la t2, .libro.str.488
	sw t2, 20656(sp)
	lw t0, 20648(sp)
	addi t2, t0, 4
	sw t2, 20660(sp)
	lw t0, 20660(sp)
	lw t1, 20656(sp)
	sw t1, 0(t0)
	lw t0, 20644(sp)
	mv a0, t0
	lw t0, 20648(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20664(sp)
	lw t0, 20664(sp)
	addi t2, t0, 4
	sw t2, 20668(sp)
	lw t0, 20668(sp)
	lw t2, 0(t0)
	sw t2, 20672(sp)
	lw t0, 20672(sp)
	mv a0, t0
	call print
	lw t2, -944(s0)
	sw t2, 20676(sp)
	lw t0, 20676(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20680(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20684(sp)
	lw t0, 20684(sp)
	addi t2, t0, 0
	sw t2, 20688(sp)
	addi t4, zero, 1
	lw t0, 20688(sp)
	sw t4, 0(t0)
	la t2, .libro.str.489
	sw t2, 20692(sp)
	lw t0, 20684(sp)
	addi t2, t0, 4
	sw t2, 20696(sp)
	lw t0, 20696(sp)
	lw t1, 20692(sp)
	sw t1, 0(t0)
	lw t0, 20680(sp)
	mv a0, t0
	lw t0, 20684(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20700(sp)
	lw t0, 20700(sp)
	addi t2, t0, 4
	sw t2, 20704(sp)
	lw t0, 20704(sp)
	lw t2, 0(t0)
	sw t2, 20708(sp)
	lw t0, 20708(sp)
	mv a0, t0
	call print
	lw t2, -948(s0)
	sw t2, 20712(sp)
	lw t0, 20712(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20716(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20720(sp)
	lw t0, 20720(sp)
	addi t2, t0, 0
	sw t2, 20724(sp)
	addi t4, zero, 1
	lw t0, 20724(sp)
	sw t4, 0(t0)
	la t2, .libro.str.490
	sw t2, 20728(sp)
	lw t0, 20720(sp)
	addi t2, t0, 4
	sw t2, 20732(sp)
	lw t0, 20732(sp)
	lw t1, 20728(sp)
	sw t1, 0(t0)
	lw t0, 20716(sp)
	mv a0, t0
	lw t0, 20720(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20736(sp)
	lw t0, 20736(sp)
	addi t2, t0, 4
	sw t2, 20740(sp)
	lw t0, 20740(sp)
	lw t2, 0(t0)
	sw t2, 20744(sp)
	lw t0, 20744(sp)
	mv a0, t0
	call print
	lw t2, -952(s0)
	sw t2, 20748(sp)
	lw t0, 20748(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20752(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20756(sp)
	lw t0, 20756(sp)
	addi t2, t0, 0
	sw t2, 20760(sp)
	addi t4, zero, 1
	lw t0, 20760(sp)
	sw t4, 0(t0)
	la t2, .libro.str.491
	sw t2, 20764(sp)
	lw t0, 20756(sp)
	addi t2, t0, 4
	sw t2, 20768(sp)
	lw t0, 20768(sp)
	lw t1, 20764(sp)
	sw t1, 0(t0)
	lw t0, 20752(sp)
	mv a0, t0
	lw t0, 20756(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20772(sp)
	lw t0, 20772(sp)
	addi t2, t0, 4
	sw t2, 20776(sp)
	lw t0, 20776(sp)
	lw t2, 0(t0)
	sw t2, 20780(sp)
	lw t0, 20780(sp)
	mv a0, t0
	call print
	lw t2, -956(s0)
	sw t2, 20784(sp)
	lw t0, 20784(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20788(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20792(sp)
	lw t0, 20792(sp)
	addi t2, t0, 0
	sw t2, 20796(sp)
	addi t4, zero, 1
	lw t0, 20796(sp)
	sw t4, 0(t0)
	la t2, .libro.str.492
	sw t2, 20800(sp)
	lw t0, 20792(sp)
	addi t2, t0, 4
	sw t2, 20804(sp)
	lw t0, 20804(sp)
	lw t1, 20800(sp)
	sw t1, 0(t0)
	lw t0, 20788(sp)
	mv a0, t0
	lw t0, 20792(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20808(sp)
	lw t0, 20808(sp)
	addi t2, t0, 4
	sw t2, 20812(sp)
	lw t0, 20812(sp)
	lw t2, 0(t0)
	sw t2, 20816(sp)
	lw t0, 20816(sp)
	mv a0, t0
	call print
	lw t2, -960(s0)
	sw t2, 20820(sp)
	lw t0, 20820(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20824(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20828(sp)
	lw t0, 20828(sp)
	addi t2, t0, 0
	sw t2, 20832(sp)
	addi t4, zero, 1
	lw t0, 20832(sp)
	sw t4, 0(t0)
	la t2, .libro.str.493
	sw t2, 20836(sp)
	lw t0, 20828(sp)
	addi t2, t0, 4
	sw t2, 20840(sp)
	lw t0, 20840(sp)
	lw t1, 20836(sp)
	sw t1, 0(t0)
	lw t0, 20824(sp)
	mv a0, t0
	lw t0, 20828(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20844(sp)
	lw t0, 20844(sp)
	addi t2, t0, 4
	sw t2, 20848(sp)
	lw t0, 20848(sp)
	lw t2, 0(t0)
	sw t2, 20852(sp)
	lw t0, 20852(sp)
	mv a0, t0
	call print
	lw t2, -964(s0)
	sw t2, 20856(sp)
	lw t0, 20856(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20860(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20864(sp)
	lw t0, 20864(sp)
	addi t2, t0, 0
	sw t2, 20868(sp)
	addi t4, zero, 1
	lw t0, 20868(sp)
	sw t4, 0(t0)
	la t2, .libro.str.494
	sw t2, 20872(sp)
	lw t0, 20864(sp)
	addi t2, t0, 4
	sw t2, 20876(sp)
	lw t0, 20876(sp)
	lw t1, 20872(sp)
	sw t1, 0(t0)
	lw t0, 20860(sp)
	mv a0, t0
	lw t0, 20864(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20880(sp)
	lw t0, 20880(sp)
	addi t2, t0, 4
	sw t2, 20884(sp)
	lw t0, 20884(sp)
	lw t2, 0(t0)
	sw t2, 20888(sp)
	lw t0, 20888(sp)
	mv a0, t0
	call print
	lw t2, -968(s0)
	sw t2, 20892(sp)
	lw t0, 20892(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20896(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20900(sp)
	lw t0, 20900(sp)
	addi t2, t0, 0
	sw t2, 20904(sp)
	addi t4, zero, 1
	lw t0, 20904(sp)
	sw t4, 0(t0)
	la t2, .libro.str.495
	sw t2, 20908(sp)
	lw t0, 20900(sp)
	addi t2, t0, 4
	sw t2, 20912(sp)
	lw t0, 20912(sp)
	lw t1, 20908(sp)
	sw t1, 0(t0)
	lw t0, 20896(sp)
	mv a0, t0
	lw t0, 20900(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20916(sp)
	lw t0, 20916(sp)
	addi t2, t0, 4
	sw t2, 20920(sp)
	lw t0, 20920(sp)
	lw t2, 0(t0)
	sw t2, 20924(sp)
	lw t0, 20924(sp)
	mv a0, t0
	call print
	lw t2, -972(s0)
	sw t2, 20928(sp)
	lw t0, 20928(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20932(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20936(sp)
	lw t0, 20936(sp)
	addi t2, t0, 0
	sw t2, 20940(sp)
	addi t4, zero, 1
	lw t0, 20940(sp)
	sw t4, 0(t0)
	la t2, .libro.str.496
	sw t2, 20944(sp)
	lw t0, 20936(sp)
	addi t2, t0, 4
	sw t2, 20948(sp)
	lw t0, 20948(sp)
	lw t1, 20944(sp)
	sw t1, 0(t0)
	lw t0, 20932(sp)
	mv a0, t0
	lw t0, 20936(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20952(sp)
	lw t0, 20952(sp)
	addi t2, t0, 4
	sw t2, 20956(sp)
	lw t0, 20956(sp)
	lw t2, 0(t0)
	sw t2, 20960(sp)
	lw t0, 20960(sp)
	mv a0, t0
	call print
	lw t2, -976(s0)
	sw t2, 20964(sp)
	lw t0, 20964(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 20968(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 20972(sp)
	lw t0, 20972(sp)
	addi t2, t0, 0
	sw t2, 20976(sp)
	addi t4, zero, 1
	lw t0, 20976(sp)
	sw t4, 0(t0)
	la t2, .libro.str.497
	sw t2, 20980(sp)
	lw t0, 20972(sp)
	addi t2, t0, 4
	sw t2, 20984(sp)
	lw t0, 20984(sp)
	lw t1, 20980(sp)
	sw t1, 0(t0)
	lw t0, 20968(sp)
	mv a0, t0
	lw t0, 20972(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 20988(sp)
	lw t0, 20988(sp)
	addi t2, t0, 4
	sw t2, 20992(sp)
	lw t0, 20992(sp)
	lw t2, 0(t0)
	sw t2, 20996(sp)
	lw t0, 20996(sp)
	mv a0, t0
	call print
	lw t2, -980(s0)
	sw t2, 21000(sp)
	lw t0, 21000(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21004(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21008(sp)
	lw t0, 21008(sp)
	addi t2, t0, 0
	sw t2, 21012(sp)
	addi t4, zero, 1
	lw t0, 21012(sp)
	sw t4, 0(t0)
	la t2, .libro.str.498
	sw t2, 21016(sp)
	lw t0, 21008(sp)
	addi t2, t0, 4
	sw t2, 21020(sp)
	lw t0, 21020(sp)
	lw t1, 21016(sp)
	sw t1, 0(t0)
	lw t0, 21004(sp)
	mv a0, t0
	lw t0, 21008(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21024(sp)
	lw t0, 21024(sp)
	addi t2, t0, 4
	sw t2, 21028(sp)
	lw t0, 21028(sp)
	lw t2, 0(t0)
	sw t2, 21032(sp)
	lw t0, 21032(sp)
	mv a0, t0
	call print
	lw t2, -984(s0)
	sw t2, 21036(sp)
	lw t0, 21036(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21040(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21044(sp)
	lw t0, 21044(sp)
	addi t2, t0, 0
	sw t2, 21048(sp)
	addi t4, zero, 1
	lw t0, 21048(sp)
	sw t4, 0(t0)
	la t2, .libro.str.499
	sw t2, 21052(sp)
	lw t0, 21044(sp)
	addi t2, t0, 4
	sw t2, 21056(sp)
	lw t0, 21056(sp)
	lw t1, 21052(sp)
	sw t1, 0(t0)
	lw t0, 21040(sp)
	mv a0, t0
	lw t0, 21044(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21060(sp)
	lw t0, 21060(sp)
	addi t2, t0, 4
	sw t2, 21064(sp)
	lw t0, 21064(sp)
	lw t2, 0(t0)
	sw t2, 21068(sp)
	lw t0, 21068(sp)
	mv a0, t0
	call print
	lw t2, -988(s0)
	sw t2, 21072(sp)
	lw t0, 21072(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21076(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21080(sp)
	lw t0, 21080(sp)
	addi t2, t0, 0
	sw t2, 21084(sp)
	addi t4, zero, 1
	lw t0, 21084(sp)
	sw t4, 0(t0)
	la t2, .libro.str.500
	sw t2, 21088(sp)
	lw t0, 21080(sp)
	addi t2, t0, 4
	sw t2, 21092(sp)
	lw t0, 21092(sp)
	lw t1, 21088(sp)
	sw t1, 0(t0)
	lw t0, 21076(sp)
	mv a0, t0
	lw t0, 21080(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21096(sp)
	lw t0, 21096(sp)
	addi t2, t0, 4
	sw t2, 21100(sp)
	lw t0, 21100(sp)
	lw t2, 0(t0)
	sw t2, 21104(sp)
	lw t0, 21104(sp)
	mv a0, t0
	call print
	lw t2, -992(s0)
	sw t2, 21108(sp)
	lw t0, 21108(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21112(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21116(sp)
	lw t0, 21116(sp)
	addi t2, t0, 0
	sw t2, 21120(sp)
	addi t4, zero, 1
	lw t0, 21120(sp)
	sw t4, 0(t0)
	la t2, .libro.str.501
	sw t2, 21124(sp)
	lw t0, 21116(sp)
	addi t2, t0, 4
	sw t2, 21128(sp)
	lw t0, 21128(sp)
	lw t1, 21124(sp)
	sw t1, 0(t0)
	lw t0, 21112(sp)
	mv a0, t0
	lw t0, 21116(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21132(sp)
	lw t0, 21132(sp)
	addi t2, t0, 4
	sw t2, 21136(sp)
	lw t0, 21136(sp)
	lw t2, 0(t0)
	sw t2, 21140(sp)
	lw t0, 21140(sp)
	mv a0, t0
	call print
	lw t2, -996(s0)
	sw t2, 21144(sp)
	lw t0, 21144(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21148(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21152(sp)
	lw t0, 21152(sp)
	addi t2, t0, 0
	sw t2, 21156(sp)
	addi t4, zero, 1
	lw t0, 21156(sp)
	sw t4, 0(t0)
	la t2, .libro.str.502
	sw t2, 21160(sp)
	lw t0, 21152(sp)
	addi t2, t0, 4
	sw t2, 21164(sp)
	lw t0, 21164(sp)
	lw t1, 21160(sp)
	sw t1, 0(t0)
	lw t0, 21148(sp)
	mv a0, t0
	lw t0, 21152(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21168(sp)
	lw t0, 21168(sp)
	addi t2, t0, 4
	sw t2, 21172(sp)
	lw t0, 21172(sp)
	lw t2, 0(t0)
	sw t2, 21176(sp)
	lw t0, 21176(sp)
	mv a0, t0
	call print
	lw t2, -1000(s0)
	sw t2, 21180(sp)
	lw t0, 21180(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21184(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21188(sp)
	lw t0, 21188(sp)
	addi t2, t0, 0
	sw t2, 21192(sp)
	addi t4, zero, 1
	lw t0, 21192(sp)
	sw t4, 0(t0)
	la t2, .libro.str.503
	sw t2, 21196(sp)
	lw t0, 21188(sp)
	addi t2, t0, 4
	sw t2, 21200(sp)
	lw t0, 21200(sp)
	lw t1, 21196(sp)
	sw t1, 0(t0)
	lw t0, 21184(sp)
	mv a0, t0
	lw t0, 21188(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21204(sp)
	lw t0, 21204(sp)
	addi t2, t0, 4
	sw t2, 21208(sp)
	lw t0, 21208(sp)
	lw t2, 0(t0)
	sw t2, 21212(sp)
	lw t0, 21212(sp)
	mv a0, t0
	call print
	lw t2, -1004(s0)
	sw t2, 21216(sp)
	lw t0, 21216(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21220(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21224(sp)
	lw t0, 21224(sp)
	addi t2, t0, 0
	sw t2, 21228(sp)
	addi t4, zero, 1
	lw t0, 21228(sp)
	sw t4, 0(t0)
	la t2, .libro.str.504
	sw t2, 21232(sp)
	lw t0, 21224(sp)
	addi t2, t0, 4
	sw t2, 21236(sp)
	lw t0, 21236(sp)
	lw t1, 21232(sp)
	sw t1, 0(t0)
	lw t0, 21220(sp)
	mv a0, t0
	lw t0, 21224(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21240(sp)
	lw t0, 21240(sp)
	addi t2, t0, 4
	sw t2, 21244(sp)
	lw t0, 21244(sp)
	lw t2, 0(t0)
	sw t2, 21248(sp)
	lw t0, 21248(sp)
	mv a0, t0
	call print
	lw t2, -1008(s0)
	sw t2, 21252(sp)
	lw t0, 21252(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21256(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21260(sp)
	lw t0, 21260(sp)
	addi t2, t0, 0
	sw t2, 21264(sp)
	addi t4, zero, 1
	lw t0, 21264(sp)
	sw t4, 0(t0)
	la t2, .libro.str.505
	sw t2, 21268(sp)
	lw t0, 21260(sp)
	addi t2, t0, 4
	sw t2, 21272(sp)
	lw t0, 21272(sp)
	lw t1, 21268(sp)
	sw t1, 0(t0)
	lw t0, 21256(sp)
	mv a0, t0
	lw t0, 21260(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21276(sp)
	lw t0, 21276(sp)
	addi t2, t0, 4
	sw t2, 21280(sp)
	lw t0, 21280(sp)
	lw t2, 0(t0)
	sw t2, 21284(sp)
	lw t0, 21284(sp)
	mv a0, t0
	call print
	lw t2, -1012(s0)
	sw t2, 21288(sp)
	lw t0, 21288(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21292(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21296(sp)
	lw t0, 21296(sp)
	addi t2, t0, 0
	sw t2, 21300(sp)
	addi t4, zero, 1
	lw t0, 21300(sp)
	sw t4, 0(t0)
	la t2, .libro.str.506
	sw t2, 21304(sp)
	lw t0, 21296(sp)
	addi t2, t0, 4
	sw t2, 21308(sp)
	lw t0, 21308(sp)
	lw t1, 21304(sp)
	sw t1, 0(t0)
	lw t0, 21292(sp)
	mv a0, t0
	lw t0, 21296(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21312(sp)
	lw t0, 21312(sp)
	addi t2, t0, 4
	sw t2, 21316(sp)
	lw t0, 21316(sp)
	lw t2, 0(t0)
	sw t2, 21320(sp)
	lw t0, 21320(sp)
	mv a0, t0
	call print
	lw t2, -1016(s0)
	sw t2, 21324(sp)
	lw t0, 21324(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21328(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21332(sp)
	lw t0, 21332(sp)
	addi t2, t0, 0
	sw t2, 21336(sp)
	addi t4, zero, 1
	lw t0, 21336(sp)
	sw t4, 0(t0)
	la t2, .libro.str.507
	sw t2, 21340(sp)
	lw t0, 21332(sp)
	addi t2, t0, 4
	sw t2, 21344(sp)
	lw t0, 21344(sp)
	lw t1, 21340(sp)
	sw t1, 0(t0)
	lw t0, 21328(sp)
	mv a0, t0
	lw t0, 21332(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21348(sp)
	lw t0, 21348(sp)
	addi t2, t0, 4
	sw t2, 21352(sp)
	lw t0, 21352(sp)
	lw t2, 0(t0)
	sw t2, 21356(sp)
	lw t0, 21356(sp)
	mv a0, t0
	call print
	lw t2, -1020(s0)
	sw t2, 21360(sp)
	lw t0, 21360(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21364(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21368(sp)
	lw t0, 21368(sp)
	addi t2, t0, 0
	sw t2, 21372(sp)
	addi t4, zero, 1
	lw t0, 21372(sp)
	sw t4, 0(t0)
	la t2, .libro.str.508
	sw t2, 21376(sp)
	lw t0, 21368(sp)
	addi t2, t0, 4
	sw t2, 21380(sp)
	lw t0, 21380(sp)
	lw t1, 21376(sp)
	sw t1, 0(t0)
	lw t0, 21364(sp)
	mv a0, t0
	lw t0, 21368(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21384(sp)
	lw t0, 21384(sp)
	addi t2, t0, 4
	sw t2, 21388(sp)
	lw t0, 21388(sp)
	lw t2, 0(t0)
	sw t2, 21392(sp)
	lw t0, 21392(sp)
	mv a0, t0
	call print
	lw t2, -1024(s0)
	sw t2, 21396(sp)
	lw t0, 21396(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21400(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21404(sp)
	lw t0, 21404(sp)
	addi t2, t0, 0
	sw t2, 21408(sp)
	addi t4, zero, 1
	lw t0, 21408(sp)
	sw t4, 0(t0)
	la t2, .libro.str.509
	sw t2, 21412(sp)
	lw t0, 21404(sp)
	addi t2, t0, 4
	sw t2, 21416(sp)
	lw t0, 21416(sp)
	lw t1, 21412(sp)
	sw t1, 0(t0)
	lw t0, 21400(sp)
	mv a0, t0
	lw t0, 21404(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21420(sp)
	lw t0, 21420(sp)
	addi t2, t0, 4
	sw t2, 21424(sp)
	lw t0, 21424(sp)
	lw t2, 0(t0)
	sw t2, 21428(sp)
	lw t0, 21428(sp)
	mv a0, t0
	call print
	lw t2, -1028(s0)
	sw t2, 21432(sp)
	lw t0, 21432(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21436(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21440(sp)
	lw t0, 21440(sp)
	addi t2, t0, 0
	sw t2, 21444(sp)
	addi t4, zero, 1
	lw t0, 21444(sp)
	sw t4, 0(t0)
	la t2, .libro.str.510
	sw t2, 21448(sp)
	lw t0, 21440(sp)
	addi t2, t0, 4
	sw t2, 21452(sp)
	lw t0, 21452(sp)
	lw t1, 21448(sp)
	sw t1, 0(t0)
	lw t0, 21436(sp)
	mv a0, t0
	lw t0, 21440(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21456(sp)
	lw t0, 21456(sp)
	addi t2, t0, 4
	sw t2, 21460(sp)
	lw t0, 21460(sp)
	lw t2, 0(t0)
	sw t2, 21464(sp)
	lw t0, 21464(sp)
	mv a0, t0
	call print
	lw t2, -1032(s0)
	sw t2, 21468(sp)
	lw t0, 21468(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21472(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21476(sp)
	lw t0, 21476(sp)
	addi t2, t0, 0
	sw t2, 21480(sp)
	addi t4, zero, 1
	lw t0, 21480(sp)
	sw t4, 0(t0)
	la t2, .libro.str.511
	sw t2, 21484(sp)
	lw t0, 21476(sp)
	addi t2, t0, 4
	sw t2, 21488(sp)
	lw t0, 21488(sp)
	lw t1, 21484(sp)
	sw t1, 0(t0)
	lw t0, 21472(sp)
	mv a0, t0
	lw t0, 21476(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21492(sp)
	lw t0, 21492(sp)
	addi t2, t0, 4
	sw t2, 21496(sp)
	lw t0, 21496(sp)
	lw t2, 0(t0)
	sw t2, 21500(sp)
	lw t0, 21500(sp)
	mv a0, t0
	call print
	lw t2, -1036(s0)
	sw t2, 21504(sp)
	lw t0, 21504(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 21508(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 21512(sp)
	lw t0, 21512(sp)
	addi t2, t0, 0
	sw t2, 21516(sp)
	addi t4, zero, 1
	lw t0, 21516(sp)
	sw t4, 0(t0)
	la t2, .libro.str.512
	sw t2, 21520(sp)
	lw t0, 21512(sp)
	addi t2, t0, 4
	sw t2, 21524(sp)
	lw t0, 21524(sp)
	lw t1, 21520(sp)
	sw t1, 0(t0)
	lw t0, 21508(sp)
	mv a0, t0
	lw t0, 21512(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 21528(sp)
	lw t0, 21528(sp)
	addi t2, t0, 4
	sw t2, 21532(sp)
	lw t0, 21532(sp)
	lw t2, 0(t0)
	sw t2, 21536(sp)
	lw t0, 21536(sp)
	mv a0, t0
	call print
	la t2, .libro.str.513
	sw t2, 21540(sp)
	lw t0, 21540(sp)
	mv a0, t0
	call println
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB1_1
.LibroBB1_1: 
	lw t2, -12(s0)
	sw t2, 21544(sp)
	lw t0, 21544(sp)
	mv a0, t0
	lw s0, 22576(sp)
	lw ra, 22580(sp)
	addi sp, sp, 22584
	ret

.data
	.type	count,@object
count:
	.word	0
	.size	count, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	" "
	.size	.libro.str, 2

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	" "
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	" "
	.size	.libro.str.2, 2

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	" "
	.size	.libro.str.3, 2

	.type	.libro.str.4,@object
.libro.str.4:
	.asciz	" "
	.size	.libro.str.4, 2

	.type	.libro.str.5,@object
.libro.str.5:
	.asciz	" "
	.size	.libro.str.5, 2

	.type	.libro.str.6,@object
.libro.str.6:
	.asciz	" "
	.size	.libro.str.6, 2

	.type	.libro.str.7,@object
.libro.str.7:
	.asciz	" "
	.size	.libro.str.7, 2

	.type	.libro.str.8,@object
.libro.str.8:
	.asciz	" "
	.size	.libro.str.8, 2

	.type	.libro.str.9,@object
.libro.str.9:
	.asciz	" "
	.size	.libro.str.9, 2

	.type	.libro.str.10,@object
.libro.str.10:
	.asciz	" "
	.size	.libro.str.10, 2

	.type	.libro.str.11,@object
.libro.str.11:
	.asciz	" "
	.size	.libro.str.11, 2

	.type	.libro.str.12,@object
.libro.str.12:
	.asciz	" "
	.size	.libro.str.12, 2

	.type	.libro.str.13,@object
.libro.str.13:
	.asciz	" "
	.size	.libro.str.13, 2

	.type	.libro.str.14,@object
.libro.str.14:
	.asciz	" "
	.size	.libro.str.14, 2

	.type	.libro.str.15,@object
.libro.str.15:
	.asciz	" "
	.size	.libro.str.15, 2

	.type	.libro.str.16,@object
.libro.str.16:
	.asciz	" "
	.size	.libro.str.16, 2

	.type	.libro.str.17,@object
.libro.str.17:
	.asciz	" "
	.size	.libro.str.17, 2

	.type	.libro.str.18,@object
.libro.str.18:
	.asciz	" "
	.size	.libro.str.18, 2

	.type	.libro.str.19,@object
.libro.str.19:
	.asciz	" "
	.size	.libro.str.19, 2

	.type	.libro.str.20,@object
.libro.str.20:
	.asciz	" "
	.size	.libro.str.20, 2

	.type	.libro.str.21,@object
.libro.str.21:
	.asciz	" "
	.size	.libro.str.21, 2

	.type	.libro.str.22,@object
.libro.str.22:
	.asciz	" "
	.size	.libro.str.22, 2

	.type	.libro.str.23,@object
.libro.str.23:
	.asciz	" "
	.size	.libro.str.23, 2

	.type	.libro.str.24,@object
.libro.str.24:
	.asciz	" "
	.size	.libro.str.24, 2

	.type	.libro.str.25,@object
.libro.str.25:
	.asciz	" "
	.size	.libro.str.25, 2

	.type	.libro.str.26,@object
.libro.str.26:
	.asciz	" "
	.size	.libro.str.26, 2

	.type	.libro.str.27,@object
.libro.str.27:
	.asciz	" "
	.size	.libro.str.27, 2

	.type	.libro.str.28,@object
.libro.str.28:
	.asciz	" "
	.size	.libro.str.28, 2

	.type	.libro.str.29,@object
.libro.str.29:
	.asciz	" "
	.size	.libro.str.29, 2

	.type	.libro.str.30,@object
.libro.str.30:
	.asciz	" "
	.size	.libro.str.30, 2

	.type	.libro.str.31,@object
.libro.str.31:
	.asciz	" "
	.size	.libro.str.31, 2

	.type	.libro.str.32,@object
.libro.str.32:
	.asciz	" "
	.size	.libro.str.32, 2

	.type	.libro.str.33,@object
.libro.str.33:
	.asciz	" "
	.size	.libro.str.33, 2

	.type	.libro.str.34,@object
.libro.str.34:
	.asciz	" "
	.size	.libro.str.34, 2

	.type	.libro.str.35,@object
.libro.str.35:
	.asciz	" "
	.size	.libro.str.35, 2

	.type	.libro.str.36,@object
.libro.str.36:
	.asciz	" "
	.size	.libro.str.36, 2

	.type	.libro.str.37,@object
.libro.str.37:
	.asciz	" "
	.size	.libro.str.37, 2

	.type	.libro.str.38,@object
.libro.str.38:
	.asciz	" "
	.size	.libro.str.38, 2

	.type	.libro.str.39,@object
.libro.str.39:
	.asciz	" "
	.size	.libro.str.39, 2

	.type	.libro.str.40,@object
.libro.str.40:
	.asciz	" "
	.size	.libro.str.40, 2

	.type	.libro.str.41,@object
.libro.str.41:
	.asciz	" "
	.size	.libro.str.41, 2

	.type	.libro.str.42,@object
.libro.str.42:
	.asciz	" "
	.size	.libro.str.42, 2

	.type	.libro.str.43,@object
.libro.str.43:
	.asciz	" "
	.size	.libro.str.43, 2

	.type	.libro.str.44,@object
.libro.str.44:
	.asciz	" "
	.size	.libro.str.44, 2

	.type	.libro.str.45,@object
.libro.str.45:
	.asciz	" "
	.size	.libro.str.45, 2

	.type	.libro.str.46,@object
.libro.str.46:
	.asciz	" "
	.size	.libro.str.46, 2

	.type	.libro.str.47,@object
.libro.str.47:
	.asciz	" "
	.size	.libro.str.47, 2

	.type	.libro.str.48,@object
.libro.str.48:
	.asciz	" "
	.size	.libro.str.48, 2

	.type	.libro.str.49,@object
.libro.str.49:
	.asciz	" "
	.size	.libro.str.49, 2

	.type	.libro.str.50,@object
.libro.str.50:
	.asciz	" "
	.size	.libro.str.50, 2

	.type	.libro.str.51,@object
.libro.str.51:
	.asciz	" "
	.size	.libro.str.51, 2

	.type	.libro.str.52,@object
.libro.str.52:
	.asciz	" "
	.size	.libro.str.52, 2

	.type	.libro.str.53,@object
.libro.str.53:
	.asciz	" "
	.size	.libro.str.53, 2

	.type	.libro.str.54,@object
.libro.str.54:
	.asciz	" "
	.size	.libro.str.54, 2

	.type	.libro.str.55,@object
.libro.str.55:
	.asciz	" "
	.size	.libro.str.55, 2

	.type	.libro.str.56,@object
.libro.str.56:
	.asciz	" "
	.size	.libro.str.56, 2

	.type	.libro.str.57,@object
.libro.str.57:
	.asciz	" "
	.size	.libro.str.57, 2

	.type	.libro.str.58,@object
.libro.str.58:
	.asciz	" "
	.size	.libro.str.58, 2

	.type	.libro.str.59,@object
.libro.str.59:
	.asciz	" "
	.size	.libro.str.59, 2

	.type	.libro.str.60,@object
.libro.str.60:
	.asciz	" "
	.size	.libro.str.60, 2

	.type	.libro.str.61,@object
.libro.str.61:
	.asciz	" "
	.size	.libro.str.61, 2

	.type	.libro.str.62,@object
.libro.str.62:
	.asciz	" "
	.size	.libro.str.62, 2

	.type	.libro.str.63,@object
.libro.str.63:
	.asciz	" "
	.size	.libro.str.63, 2

	.type	.libro.str.64,@object
.libro.str.64:
	.asciz	" "
	.size	.libro.str.64, 2

	.type	.libro.str.65,@object
.libro.str.65:
	.asciz	" "
	.size	.libro.str.65, 2

	.type	.libro.str.66,@object
.libro.str.66:
	.asciz	" "
	.size	.libro.str.66, 2

	.type	.libro.str.67,@object
.libro.str.67:
	.asciz	" "
	.size	.libro.str.67, 2

	.type	.libro.str.68,@object
.libro.str.68:
	.asciz	" "
	.size	.libro.str.68, 2

	.type	.libro.str.69,@object
.libro.str.69:
	.asciz	" "
	.size	.libro.str.69, 2

	.type	.libro.str.70,@object
.libro.str.70:
	.asciz	" "
	.size	.libro.str.70, 2

	.type	.libro.str.71,@object
.libro.str.71:
	.asciz	" "
	.size	.libro.str.71, 2

	.type	.libro.str.72,@object
.libro.str.72:
	.asciz	" "
	.size	.libro.str.72, 2

	.type	.libro.str.73,@object
.libro.str.73:
	.asciz	" "
	.size	.libro.str.73, 2

	.type	.libro.str.74,@object
.libro.str.74:
	.asciz	" "
	.size	.libro.str.74, 2

	.type	.libro.str.75,@object
.libro.str.75:
	.asciz	" "
	.size	.libro.str.75, 2

	.type	.libro.str.76,@object
.libro.str.76:
	.asciz	" "
	.size	.libro.str.76, 2

	.type	.libro.str.77,@object
.libro.str.77:
	.asciz	" "
	.size	.libro.str.77, 2

	.type	.libro.str.78,@object
.libro.str.78:
	.asciz	" "
	.size	.libro.str.78, 2

	.type	.libro.str.79,@object
.libro.str.79:
	.asciz	" "
	.size	.libro.str.79, 2

	.type	.libro.str.80,@object
.libro.str.80:
	.asciz	" "
	.size	.libro.str.80, 2

	.type	.libro.str.81,@object
.libro.str.81:
	.asciz	" "
	.size	.libro.str.81, 2

	.type	.libro.str.82,@object
.libro.str.82:
	.asciz	" "
	.size	.libro.str.82, 2

	.type	.libro.str.83,@object
.libro.str.83:
	.asciz	" "
	.size	.libro.str.83, 2

	.type	.libro.str.84,@object
.libro.str.84:
	.asciz	" "
	.size	.libro.str.84, 2

	.type	.libro.str.85,@object
.libro.str.85:
	.asciz	" "
	.size	.libro.str.85, 2

	.type	.libro.str.86,@object
.libro.str.86:
	.asciz	" "
	.size	.libro.str.86, 2

	.type	.libro.str.87,@object
.libro.str.87:
	.asciz	" "
	.size	.libro.str.87, 2

	.type	.libro.str.88,@object
.libro.str.88:
	.asciz	" "
	.size	.libro.str.88, 2

	.type	.libro.str.89,@object
.libro.str.89:
	.asciz	" "
	.size	.libro.str.89, 2

	.type	.libro.str.90,@object
.libro.str.90:
	.asciz	" "
	.size	.libro.str.90, 2

	.type	.libro.str.91,@object
.libro.str.91:
	.asciz	" "
	.size	.libro.str.91, 2

	.type	.libro.str.92,@object
.libro.str.92:
	.asciz	" "
	.size	.libro.str.92, 2

	.type	.libro.str.93,@object
.libro.str.93:
	.asciz	" "
	.size	.libro.str.93, 2

	.type	.libro.str.94,@object
.libro.str.94:
	.asciz	" "
	.size	.libro.str.94, 2

	.type	.libro.str.95,@object
.libro.str.95:
	.asciz	" "
	.size	.libro.str.95, 2

	.type	.libro.str.96,@object
.libro.str.96:
	.asciz	" "
	.size	.libro.str.96, 2

	.type	.libro.str.97,@object
.libro.str.97:
	.asciz	" "
	.size	.libro.str.97, 2

	.type	.libro.str.98,@object
.libro.str.98:
	.asciz	" "
	.size	.libro.str.98, 2

	.type	.libro.str.99,@object
.libro.str.99:
	.asciz	" "
	.size	.libro.str.99, 2

	.type	.libro.str.100,@object
.libro.str.100:
	.asciz	" "
	.size	.libro.str.100, 2

	.type	.libro.str.101,@object
.libro.str.101:
	.asciz	" "
	.size	.libro.str.101, 2

	.type	.libro.str.102,@object
.libro.str.102:
	.asciz	" "
	.size	.libro.str.102, 2

	.type	.libro.str.103,@object
.libro.str.103:
	.asciz	" "
	.size	.libro.str.103, 2

	.type	.libro.str.104,@object
.libro.str.104:
	.asciz	" "
	.size	.libro.str.104, 2

	.type	.libro.str.105,@object
.libro.str.105:
	.asciz	" "
	.size	.libro.str.105, 2

	.type	.libro.str.106,@object
.libro.str.106:
	.asciz	" "
	.size	.libro.str.106, 2

	.type	.libro.str.107,@object
.libro.str.107:
	.asciz	" "
	.size	.libro.str.107, 2

	.type	.libro.str.108,@object
.libro.str.108:
	.asciz	" "
	.size	.libro.str.108, 2

	.type	.libro.str.109,@object
.libro.str.109:
	.asciz	" "
	.size	.libro.str.109, 2

	.type	.libro.str.110,@object
.libro.str.110:
	.asciz	" "
	.size	.libro.str.110, 2

	.type	.libro.str.111,@object
.libro.str.111:
	.asciz	" "
	.size	.libro.str.111, 2

	.type	.libro.str.112,@object
.libro.str.112:
	.asciz	" "
	.size	.libro.str.112, 2

	.type	.libro.str.113,@object
.libro.str.113:
	.asciz	" "
	.size	.libro.str.113, 2

	.type	.libro.str.114,@object
.libro.str.114:
	.asciz	" "
	.size	.libro.str.114, 2

	.type	.libro.str.115,@object
.libro.str.115:
	.asciz	" "
	.size	.libro.str.115, 2

	.type	.libro.str.116,@object
.libro.str.116:
	.asciz	" "
	.size	.libro.str.116, 2

	.type	.libro.str.117,@object
.libro.str.117:
	.asciz	" "
	.size	.libro.str.117, 2

	.type	.libro.str.118,@object
.libro.str.118:
	.asciz	" "
	.size	.libro.str.118, 2

	.type	.libro.str.119,@object
.libro.str.119:
	.asciz	" "
	.size	.libro.str.119, 2

	.type	.libro.str.120,@object
.libro.str.120:
	.asciz	" "
	.size	.libro.str.120, 2

	.type	.libro.str.121,@object
.libro.str.121:
	.asciz	" "
	.size	.libro.str.121, 2

	.type	.libro.str.122,@object
.libro.str.122:
	.asciz	" "
	.size	.libro.str.122, 2

	.type	.libro.str.123,@object
.libro.str.123:
	.asciz	" "
	.size	.libro.str.123, 2

	.type	.libro.str.124,@object
.libro.str.124:
	.asciz	" "
	.size	.libro.str.124, 2

	.type	.libro.str.125,@object
.libro.str.125:
	.asciz	" "
	.size	.libro.str.125, 2

	.type	.libro.str.126,@object
.libro.str.126:
	.asciz	" "
	.size	.libro.str.126, 2

	.type	.libro.str.127,@object
.libro.str.127:
	.asciz	" "
	.size	.libro.str.127, 2

	.type	.libro.str.128,@object
.libro.str.128:
	.asciz	" "
	.size	.libro.str.128, 2

	.type	.libro.str.129,@object
.libro.str.129:
	.asciz	" "
	.size	.libro.str.129, 2

	.type	.libro.str.130,@object
.libro.str.130:
	.asciz	" "
	.size	.libro.str.130, 2

	.type	.libro.str.131,@object
.libro.str.131:
	.asciz	" "
	.size	.libro.str.131, 2

	.type	.libro.str.132,@object
.libro.str.132:
	.asciz	" "
	.size	.libro.str.132, 2

	.type	.libro.str.133,@object
.libro.str.133:
	.asciz	" "
	.size	.libro.str.133, 2

	.type	.libro.str.134,@object
.libro.str.134:
	.asciz	" "
	.size	.libro.str.134, 2

	.type	.libro.str.135,@object
.libro.str.135:
	.asciz	" "
	.size	.libro.str.135, 2

	.type	.libro.str.136,@object
.libro.str.136:
	.asciz	" "
	.size	.libro.str.136, 2

	.type	.libro.str.137,@object
.libro.str.137:
	.asciz	" "
	.size	.libro.str.137, 2

	.type	.libro.str.138,@object
.libro.str.138:
	.asciz	" "
	.size	.libro.str.138, 2

	.type	.libro.str.139,@object
.libro.str.139:
	.asciz	" "
	.size	.libro.str.139, 2

	.type	.libro.str.140,@object
.libro.str.140:
	.asciz	" "
	.size	.libro.str.140, 2

	.type	.libro.str.141,@object
.libro.str.141:
	.asciz	" "
	.size	.libro.str.141, 2

	.type	.libro.str.142,@object
.libro.str.142:
	.asciz	" "
	.size	.libro.str.142, 2

	.type	.libro.str.143,@object
.libro.str.143:
	.asciz	" "
	.size	.libro.str.143, 2

	.type	.libro.str.144,@object
.libro.str.144:
	.asciz	" "
	.size	.libro.str.144, 2

	.type	.libro.str.145,@object
.libro.str.145:
	.asciz	" "
	.size	.libro.str.145, 2

	.type	.libro.str.146,@object
.libro.str.146:
	.asciz	" "
	.size	.libro.str.146, 2

	.type	.libro.str.147,@object
.libro.str.147:
	.asciz	" "
	.size	.libro.str.147, 2

	.type	.libro.str.148,@object
.libro.str.148:
	.asciz	" "
	.size	.libro.str.148, 2

	.type	.libro.str.149,@object
.libro.str.149:
	.asciz	" "
	.size	.libro.str.149, 2

	.type	.libro.str.150,@object
.libro.str.150:
	.asciz	" "
	.size	.libro.str.150, 2

	.type	.libro.str.151,@object
.libro.str.151:
	.asciz	" "
	.size	.libro.str.151, 2

	.type	.libro.str.152,@object
.libro.str.152:
	.asciz	" "
	.size	.libro.str.152, 2

	.type	.libro.str.153,@object
.libro.str.153:
	.asciz	" "
	.size	.libro.str.153, 2

	.type	.libro.str.154,@object
.libro.str.154:
	.asciz	" "
	.size	.libro.str.154, 2

	.type	.libro.str.155,@object
.libro.str.155:
	.asciz	" "
	.size	.libro.str.155, 2

	.type	.libro.str.156,@object
.libro.str.156:
	.asciz	" "
	.size	.libro.str.156, 2

	.type	.libro.str.157,@object
.libro.str.157:
	.asciz	" "
	.size	.libro.str.157, 2

	.type	.libro.str.158,@object
.libro.str.158:
	.asciz	" "
	.size	.libro.str.158, 2

	.type	.libro.str.159,@object
.libro.str.159:
	.asciz	" "
	.size	.libro.str.159, 2

	.type	.libro.str.160,@object
.libro.str.160:
	.asciz	" "
	.size	.libro.str.160, 2

	.type	.libro.str.161,@object
.libro.str.161:
	.asciz	" "
	.size	.libro.str.161, 2

	.type	.libro.str.162,@object
.libro.str.162:
	.asciz	" "
	.size	.libro.str.162, 2

	.type	.libro.str.163,@object
.libro.str.163:
	.asciz	" "
	.size	.libro.str.163, 2

	.type	.libro.str.164,@object
.libro.str.164:
	.asciz	" "
	.size	.libro.str.164, 2

	.type	.libro.str.165,@object
.libro.str.165:
	.asciz	" "
	.size	.libro.str.165, 2

	.type	.libro.str.166,@object
.libro.str.166:
	.asciz	" "
	.size	.libro.str.166, 2

	.type	.libro.str.167,@object
.libro.str.167:
	.asciz	" "
	.size	.libro.str.167, 2

	.type	.libro.str.168,@object
.libro.str.168:
	.asciz	" "
	.size	.libro.str.168, 2

	.type	.libro.str.169,@object
.libro.str.169:
	.asciz	" "
	.size	.libro.str.169, 2

	.type	.libro.str.170,@object
.libro.str.170:
	.asciz	" "
	.size	.libro.str.170, 2

	.type	.libro.str.171,@object
.libro.str.171:
	.asciz	" "
	.size	.libro.str.171, 2

	.type	.libro.str.172,@object
.libro.str.172:
	.asciz	" "
	.size	.libro.str.172, 2

	.type	.libro.str.173,@object
.libro.str.173:
	.asciz	" "
	.size	.libro.str.173, 2

	.type	.libro.str.174,@object
.libro.str.174:
	.asciz	" "
	.size	.libro.str.174, 2

	.type	.libro.str.175,@object
.libro.str.175:
	.asciz	" "
	.size	.libro.str.175, 2

	.type	.libro.str.176,@object
.libro.str.176:
	.asciz	" "
	.size	.libro.str.176, 2

	.type	.libro.str.177,@object
.libro.str.177:
	.asciz	" "
	.size	.libro.str.177, 2

	.type	.libro.str.178,@object
.libro.str.178:
	.asciz	" "
	.size	.libro.str.178, 2

	.type	.libro.str.179,@object
.libro.str.179:
	.asciz	" "
	.size	.libro.str.179, 2

	.type	.libro.str.180,@object
.libro.str.180:
	.asciz	" "
	.size	.libro.str.180, 2

	.type	.libro.str.181,@object
.libro.str.181:
	.asciz	" "
	.size	.libro.str.181, 2

	.type	.libro.str.182,@object
.libro.str.182:
	.asciz	" "
	.size	.libro.str.182, 2

	.type	.libro.str.183,@object
.libro.str.183:
	.asciz	" "
	.size	.libro.str.183, 2

	.type	.libro.str.184,@object
.libro.str.184:
	.asciz	" "
	.size	.libro.str.184, 2

	.type	.libro.str.185,@object
.libro.str.185:
	.asciz	" "
	.size	.libro.str.185, 2

	.type	.libro.str.186,@object
.libro.str.186:
	.asciz	" "
	.size	.libro.str.186, 2

	.type	.libro.str.187,@object
.libro.str.187:
	.asciz	" "
	.size	.libro.str.187, 2

	.type	.libro.str.188,@object
.libro.str.188:
	.asciz	" "
	.size	.libro.str.188, 2

	.type	.libro.str.189,@object
.libro.str.189:
	.asciz	" "
	.size	.libro.str.189, 2

	.type	.libro.str.190,@object
.libro.str.190:
	.asciz	" "
	.size	.libro.str.190, 2

	.type	.libro.str.191,@object
.libro.str.191:
	.asciz	" "
	.size	.libro.str.191, 2

	.type	.libro.str.192,@object
.libro.str.192:
	.asciz	" "
	.size	.libro.str.192, 2

	.type	.libro.str.193,@object
.libro.str.193:
	.asciz	" "
	.size	.libro.str.193, 2

	.type	.libro.str.194,@object
.libro.str.194:
	.asciz	" "
	.size	.libro.str.194, 2

	.type	.libro.str.195,@object
.libro.str.195:
	.asciz	" "
	.size	.libro.str.195, 2

	.type	.libro.str.196,@object
.libro.str.196:
	.asciz	" "
	.size	.libro.str.196, 2

	.type	.libro.str.197,@object
.libro.str.197:
	.asciz	" "
	.size	.libro.str.197, 2

	.type	.libro.str.198,@object
.libro.str.198:
	.asciz	" "
	.size	.libro.str.198, 2

	.type	.libro.str.199,@object
.libro.str.199:
	.asciz	" "
	.size	.libro.str.199, 2

	.type	.libro.str.200,@object
.libro.str.200:
	.asciz	" "
	.size	.libro.str.200, 2

	.type	.libro.str.201,@object
.libro.str.201:
	.asciz	" "
	.size	.libro.str.201, 2

	.type	.libro.str.202,@object
.libro.str.202:
	.asciz	" "
	.size	.libro.str.202, 2

	.type	.libro.str.203,@object
.libro.str.203:
	.asciz	" "
	.size	.libro.str.203, 2

	.type	.libro.str.204,@object
.libro.str.204:
	.asciz	" "
	.size	.libro.str.204, 2

	.type	.libro.str.205,@object
.libro.str.205:
	.asciz	" "
	.size	.libro.str.205, 2

	.type	.libro.str.206,@object
.libro.str.206:
	.asciz	" "
	.size	.libro.str.206, 2

	.type	.libro.str.207,@object
.libro.str.207:
	.asciz	" "
	.size	.libro.str.207, 2

	.type	.libro.str.208,@object
.libro.str.208:
	.asciz	" "
	.size	.libro.str.208, 2

	.type	.libro.str.209,@object
.libro.str.209:
	.asciz	" "
	.size	.libro.str.209, 2

	.type	.libro.str.210,@object
.libro.str.210:
	.asciz	" "
	.size	.libro.str.210, 2

	.type	.libro.str.211,@object
.libro.str.211:
	.asciz	" "
	.size	.libro.str.211, 2

	.type	.libro.str.212,@object
.libro.str.212:
	.asciz	" "
	.size	.libro.str.212, 2

	.type	.libro.str.213,@object
.libro.str.213:
	.asciz	" "
	.size	.libro.str.213, 2

	.type	.libro.str.214,@object
.libro.str.214:
	.asciz	" "
	.size	.libro.str.214, 2

	.type	.libro.str.215,@object
.libro.str.215:
	.asciz	" "
	.size	.libro.str.215, 2

	.type	.libro.str.216,@object
.libro.str.216:
	.asciz	" "
	.size	.libro.str.216, 2

	.type	.libro.str.217,@object
.libro.str.217:
	.asciz	" "
	.size	.libro.str.217, 2

	.type	.libro.str.218,@object
.libro.str.218:
	.asciz	" "
	.size	.libro.str.218, 2

	.type	.libro.str.219,@object
.libro.str.219:
	.asciz	" "
	.size	.libro.str.219, 2

	.type	.libro.str.220,@object
.libro.str.220:
	.asciz	" "
	.size	.libro.str.220, 2

	.type	.libro.str.221,@object
.libro.str.221:
	.asciz	" "
	.size	.libro.str.221, 2

	.type	.libro.str.222,@object
.libro.str.222:
	.asciz	" "
	.size	.libro.str.222, 2

	.type	.libro.str.223,@object
.libro.str.223:
	.asciz	" "
	.size	.libro.str.223, 2

	.type	.libro.str.224,@object
.libro.str.224:
	.asciz	" "
	.size	.libro.str.224, 2

	.type	.libro.str.225,@object
.libro.str.225:
	.asciz	" "
	.size	.libro.str.225, 2

	.type	.libro.str.226,@object
.libro.str.226:
	.asciz	" "
	.size	.libro.str.226, 2

	.type	.libro.str.227,@object
.libro.str.227:
	.asciz	" "
	.size	.libro.str.227, 2

	.type	.libro.str.228,@object
.libro.str.228:
	.asciz	" "
	.size	.libro.str.228, 2

	.type	.libro.str.229,@object
.libro.str.229:
	.asciz	" "
	.size	.libro.str.229, 2

	.type	.libro.str.230,@object
.libro.str.230:
	.asciz	" "
	.size	.libro.str.230, 2

	.type	.libro.str.231,@object
.libro.str.231:
	.asciz	" "
	.size	.libro.str.231, 2

	.type	.libro.str.232,@object
.libro.str.232:
	.asciz	" "
	.size	.libro.str.232, 2

	.type	.libro.str.233,@object
.libro.str.233:
	.asciz	" "
	.size	.libro.str.233, 2

	.type	.libro.str.234,@object
.libro.str.234:
	.asciz	" "
	.size	.libro.str.234, 2

	.type	.libro.str.235,@object
.libro.str.235:
	.asciz	" "
	.size	.libro.str.235, 2

	.type	.libro.str.236,@object
.libro.str.236:
	.asciz	" "
	.size	.libro.str.236, 2

	.type	.libro.str.237,@object
.libro.str.237:
	.asciz	" "
	.size	.libro.str.237, 2

	.type	.libro.str.238,@object
.libro.str.238:
	.asciz	" "
	.size	.libro.str.238, 2

	.type	.libro.str.239,@object
.libro.str.239:
	.asciz	" "
	.size	.libro.str.239, 2

	.type	.libro.str.240,@object
.libro.str.240:
	.asciz	" "
	.size	.libro.str.240, 2

	.type	.libro.str.241,@object
.libro.str.241:
	.asciz	" "
	.size	.libro.str.241, 2

	.type	.libro.str.242,@object
.libro.str.242:
	.asciz	" "
	.size	.libro.str.242, 2

	.type	.libro.str.243,@object
.libro.str.243:
	.asciz	" "
	.size	.libro.str.243, 2

	.type	.libro.str.244,@object
.libro.str.244:
	.asciz	" "
	.size	.libro.str.244, 2

	.type	.libro.str.245,@object
.libro.str.245:
	.asciz	" "
	.size	.libro.str.245, 2

	.type	.libro.str.246,@object
.libro.str.246:
	.asciz	" "
	.size	.libro.str.246, 2

	.type	.libro.str.247,@object
.libro.str.247:
	.asciz	" "
	.size	.libro.str.247, 2

	.type	.libro.str.248,@object
.libro.str.248:
	.asciz	" "
	.size	.libro.str.248, 2

	.type	.libro.str.249,@object
.libro.str.249:
	.asciz	" "
	.size	.libro.str.249, 2

	.type	.libro.str.250,@object
.libro.str.250:
	.asciz	" "
	.size	.libro.str.250, 2

	.type	.libro.str.251,@object
.libro.str.251:
	.asciz	" "
	.size	.libro.str.251, 2

	.type	.libro.str.252,@object
.libro.str.252:
	.asciz	" "
	.size	.libro.str.252, 2

	.type	.libro.str.253,@object
.libro.str.253:
	.asciz	" "
	.size	.libro.str.253, 2

	.type	.libro.str.254,@object
.libro.str.254:
	.asciz	" "
	.size	.libro.str.254, 2

	.type	.libro.str.255,@object
.libro.str.255:
	.asciz	" "
	.size	.libro.str.255, 2

	.type	.libro.str.256,@object
.libro.str.256:
	.asciz	""
	.size	.libro.str.256, 1

	.type	.libro.str.257,@object
.libro.str.257:
	.asciz	" "
	.size	.libro.str.257, 2

	.type	.libro.str.258,@object
.libro.str.258:
	.asciz	" "
	.size	.libro.str.258, 2

	.type	.libro.str.259,@object
.libro.str.259:
	.asciz	" "
	.size	.libro.str.259, 2

	.type	.libro.str.260,@object
.libro.str.260:
	.asciz	" "
	.size	.libro.str.260, 2

	.type	.libro.str.261,@object
.libro.str.261:
	.asciz	" "
	.size	.libro.str.261, 2

	.type	.libro.str.262,@object
.libro.str.262:
	.asciz	" "
	.size	.libro.str.262, 2

	.type	.libro.str.263,@object
.libro.str.263:
	.asciz	" "
	.size	.libro.str.263, 2

	.type	.libro.str.264,@object
.libro.str.264:
	.asciz	" "
	.size	.libro.str.264, 2

	.type	.libro.str.265,@object
.libro.str.265:
	.asciz	" "
	.size	.libro.str.265, 2

	.type	.libro.str.266,@object
.libro.str.266:
	.asciz	" "
	.size	.libro.str.266, 2

	.type	.libro.str.267,@object
.libro.str.267:
	.asciz	" "
	.size	.libro.str.267, 2

	.type	.libro.str.268,@object
.libro.str.268:
	.asciz	" "
	.size	.libro.str.268, 2

	.type	.libro.str.269,@object
.libro.str.269:
	.asciz	" "
	.size	.libro.str.269, 2

	.type	.libro.str.270,@object
.libro.str.270:
	.asciz	" "
	.size	.libro.str.270, 2

	.type	.libro.str.271,@object
.libro.str.271:
	.asciz	" "
	.size	.libro.str.271, 2

	.type	.libro.str.272,@object
.libro.str.272:
	.asciz	" "
	.size	.libro.str.272, 2

	.type	.libro.str.273,@object
.libro.str.273:
	.asciz	" "
	.size	.libro.str.273, 2

	.type	.libro.str.274,@object
.libro.str.274:
	.asciz	" "
	.size	.libro.str.274, 2

	.type	.libro.str.275,@object
.libro.str.275:
	.asciz	" "
	.size	.libro.str.275, 2

	.type	.libro.str.276,@object
.libro.str.276:
	.asciz	" "
	.size	.libro.str.276, 2

	.type	.libro.str.277,@object
.libro.str.277:
	.asciz	" "
	.size	.libro.str.277, 2

	.type	.libro.str.278,@object
.libro.str.278:
	.asciz	" "
	.size	.libro.str.278, 2

	.type	.libro.str.279,@object
.libro.str.279:
	.asciz	" "
	.size	.libro.str.279, 2

	.type	.libro.str.280,@object
.libro.str.280:
	.asciz	" "
	.size	.libro.str.280, 2

	.type	.libro.str.281,@object
.libro.str.281:
	.asciz	" "
	.size	.libro.str.281, 2

	.type	.libro.str.282,@object
.libro.str.282:
	.asciz	" "
	.size	.libro.str.282, 2

	.type	.libro.str.283,@object
.libro.str.283:
	.asciz	" "
	.size	.libro.str.283, 2

	.type	.libro.str.284,@object
.libro.str.284:
	.asciz	" "
	.size	.libro.str.284, 2

	.type	.libro.str.285,@object
.libro.str.285:
	.asciz	" "
	.size	.libro.str.285, 2

	.type	.libro.str.286,@object
.libro.str.286:
	.asciz	" "
	.size	.libro.str.286, 2

	.type	.libro.str.287,@object
.libro.str.287:
	.asciz	" "
	.size	.libro.str.287, 2

	.type	.libro.str.288,@object
.libro.str.288:
	.asciz	" "
	.size	.libro.str.288, 2

	.type	.libro.str.289,@object
.libro.str.289:
	.asciz	" "
	.size	.libro.str.289, 2

	.type	.libro.str.290,@object
.libro.str.290:
	.asciz	" "
	.size	.libro.str.290, 2

	.type	.libro.str.291,@object
.libro.str.291:
	.asciz	" "
	.size	.libro.str.291, 2

	.type	.libro.str.292,@object
.libro.str.292:
	.asciz	" "
	.size	.libro.str.292, 2

	.type	.libro.str.293,@object
.libro.str.293:
	.asciz	" "
	.size	.libro.str.293, 2

	.type	.libro.str.294,@object
.libro.str.294:
	.asciz	" "
	.size	.libro.str.294, 2

	.type	.libro.str.295,@object
.libro.str.295:
	.asciz	" "
	.size	.libro.str.295, 2

	.type	.libro.str.296,@object
.libro.str.296:
	.asciz	" "
	.size	.libro.str.296, 2

	.type	.libro.str.297,@object
.libro.str.297:
	.asciz	" "
	.size	.libro.str.297, 2

	.type	.libro.str.298,@object
.libro.str.298:
	.asciz	" "
	.size	.libro.str.298, 2

	.type	.libro.str.299,@object
.libro.str.299:
	.asciz	" "
	.size	.libro.str.299, 2

	.type	.libro.str.300,@object
.libro.str.300:
	.asciz	" "
	.size	.libro.str.300, 2

	.type	.libro.str.301,@object
.libro.str.301:
	.asciz	" "
	.size	.libro.str.301, 2

	.type	.libro.str.302,@object
.libro.str.302:
	.asciz	" "
	.size	.libro.str.302, 2

	.type	.libro.str.303,@object
.libro.str.303:
	.asciz	" "
	.size	.libro.str.303, 2

	.type	.libro.str.304,@object
.libro.str.304:
	.asciz	" "
	.size	.libro.str.304, 2

	.type	.libro.str.305,@object
.libro.str.305:
	.asciz	" "
	.size	.libro.str.305, 2

	.type	.libro.str.306,@object
.libro.str.306:
	.asciz	" "
	.size	.libro.str.306, 2

	.type	.libro.str.307,@object
.libro.str.307:
	.asciz	" "
	.size	.libro.str.307, 2

	.type	.libro.str.308,@object
.libro.str.308:
	.asciz	" "
	.size	.libro.str.308, 2

	.type	.libro.str.309,@object
.libro.str.309:
	.asciz	" "
	.size	.libro.str.309, 2

	.type	.libro.str.310,@object
.libro.str.310:
	.asciz	" "
	.size	.libro.str.310, 2

	.type	.libro.str.311,@object
.libro.str.311:
	.asciz	" "
	.size	.libro.str.311, 2

	.type	.libro.str.312,@object
.libro.str.312:
	.asciz	" "
	.size	.libro.str.312, 2

	.type	.libro.str.313,@object
.libro.str.313:
	.asciz	" "
	.size	.libro.str.313, 2

	.type	.libro.str.314,@object
.libro.str.314:
	.asciz	" "
	.size	.libro.str.314, 2

	.type	.libro.str.315,@object
.libro.str.315:
	.asciz	" "
	.size	.libro.str.315, 2

	.type	.libro.str.316,@object
.libro.str.316:
	.asciz	" "
	.size	.libro.str.316, 2

	.type	.libro.str.317,@object
.libro.str.317:
	.asciz	" "
	.size	.libro.str.317, 2

	.type	.libro.str.318,@object
.libro.str.318:
	.asciz	" "
	.size	.libro.str.318, 2

	.type	.libro.str.319,@object
.libro.str.319:
	.asciz	" "
	.size	.libro.str.319, 2

	.type	.libro.str.320,@object
.libro.str.320:
	.asciz	" "
	.size	.libro.str.320, 2

	.type	.libro.str.321,@object
.libro.str.321:
	.asciz	" "
	.size	.libro.str.321, 2

	.type	.libro.str.322,@object
.libro.str.322:
	.asciz	" "
	.size	.libro.str.322, 2

	.type	.libro.str.323,@object
.libro.str.323:
	.asciz	" "
	.size	.libro.str.323, 2

	.type	.libro.str.324,@object
.libro.str.324:
	.asciz	" "
	.size	.libro.str.324, 2

	.type	.libro.str.325,@object
.libro.str.325:
	.asciz	" "
	.size	.libro.str.325, 2

	.type	.libro.str.326,@object
.libro.str.326:
	.asciz	" "
	.size	.libro.str.326, 2

	.type	.libro.str.327,@object
.libro.str.327:
	.asciz	" "
	.size	.libro.str.327, 2

	.type	.libro.str.328,@object
.libro.str.328:
	.asciz	" "
	.size	.libro.str.328, 2

	.type	.libro.str.329,@object
.libro.str.329:
	.asciz	" "
	.size	.libro.str.329, 2

	.type	.libro.str.330,@object
.libro.str.330:
	.asciz	" "
	.size	.libro.str.330, 2

	.type	.libro.str.331,@object
.libro.str.331:
	.asciz	" "
	.size	.libro.str.331, 2

	.type	.libro.str.332,@object
.libro.str.332:
	.asciz	" "
	.size	.libro.str.332, 2

	.type	.libro.str.333,@object
.libro.str.333:
	.asciz	" "
	.size	.libro.str.333, 2

	.type	.libro.str.334,@object
.libro.str.334:
	.asciz	" "
	.size	.libro.str.334, 2

	.type	.libro.str.335,@object
.libro.str.335:
	.asciz	" "
	.size	.libro.str.335, 2

	.type	.libro.str.336,@object
.libro.str.336:
	.asciz	" "
	.size	.libro.str.336, 2

	.type	.libro.str.337,@object
.libro.str.337:
	.asciz	" "
	.size	.libro.str.337, 2

	.type	.libro.str.338,@object
.libro.str.338:
	.asciz	" "
	.size	.libro.str.338, 2

	.type	.libro.str.339,@object
.libro.str.339:
	.asciz	" "
	.size	.libro.str.339, 2

	.type	.libro.str.340,@object
.libro.str.340:
	.asciz	" "
	.size	.libro.str.340, 2

	.type	.libro.str.341,@object
.libro.str.341:
	.asciz	" "
	.size	.libro.str.341, 2

	.type	.libro.str.342,@object
.libro.str.342:
	.asciz	" "
	.size	.libro.str.342, 2

	.type	.libro.str.343,@object
.libro.str.343:
	.asciz	" "
	.size	.libro.str.343, 2

	.type	.libro.str.344,@object
.libro.str.344:
	.asciz	" "
	.size	.libro.str.344, 2

	.type	.libro.str.345,@object
.libro.str.345:
	.asciz	" "
	.size	.libro.str.345, 2

	.type	.libro.str.346,@object
.libro.str.346:
	.asciz	" "
	.size	.libro.str.346, 2

	.type	.libro.str.347,@object
.libro.str.347:
	.asciz	" "
	.size	.libro.str.347, 2

	.type	.libro.str.348,@object
.libro.str.348:
	.asciz	" "
	.size	.libro.str.348, 2

	.type	.libro.str.349,@object
.libro.str.349:
	.asciz	" "
	.size	.libro.str.349, 2

	.type	.libro.str.350,@object
.libro.str.350:
	.asciz	" "
	.size	.libro.str.350, 2

	.type	.libro.str.351,@object
.libro.str.351:
	.asciz	" "
	.size	.libro.str.351, 2

	.type	.libro.str.352,@object
.libro.str.352:
	.asciz	" "
	.size	.libro.str.352, 2

	.type	.libro.str.353,@object
.libro.str.353:
	.asciz	" "
	.size	.libro.str.353, 2

	.type	.libro.str.354,@object
.libro.str.354:
	.asciz	" "
	.size	.libro.str.354, 2

	.type	.libro.str.355,@object
.libro.str.355:
	.asciz	" "
	.size	.libro.str.355, 2

	.type	.libro.str.356,@object
.libro.str.356:
	.asciz	" "
	.size	.libro.str.356, 2

	.type	.libro.str.357,@object
.libro.str.357:
	.asciz	" "
	.size	.libro.str.357, 2

	.type	.libro.str.358,@object
.libro.str.358:
	.asciz	" "
	.size	.libro.str.358, 2

	.type	.libro.str.359,@object
.libro.str.359:
	.asciz	" "
	.size	.libro.str.359, 2

	.type	.libro.str.360,@object
.libro.str.360:
	.asciz	" "
	.size	.libro.str.360, 2

	.type	.libro.str.361,@object
.libro.str.361:
	.asciz	" "
	.size	.libro.str.361, 2

	.type	.libro.str.362,@object
.libro.str.362:
	.asciz	" "
	.size	.libro.str.362, 2

	.type	.libro.str.363,@object
.libro.str.363:
	.asciz	" "
	.size	.libro.str.363, 2

	.type	.libro.str.364,@object
.libro.str.364:
	.asciz	" "
	.size	.libro.str.364, 2

	.type	.libro.str.365,@object
.libro.str.365:
	.asciz	" "
	.size	.libro.str.365, 2

	.type	.libro.str.366,@object
.libro.str.366:
	.asciz	" "
	.size	.libro.str.366, 2

	.type	.libro.str.367,@object
.libro.str.367:
	.asciz	" "
	.size	.libro.str.367, 2

	.type	.libro.str.368,@object
.libro.str.368:
	.asciz	" "
	.size	.libro.str.368, 2

	.type	.libro.str.369,@object
.libro.str.369:
	.asciz	" "
	.size	.libro.str.369, 2

	.type	.libro.str.370,@object
.libro.str.370:
	.asciz	" "
	.size	.libro.str.370, 2

	.type	.libro.str.371,@object
.libro.str.371:
	.asciz	" "
	.size	.libro.str.371, 2

	.type	.libro.str.372,@object
.libro.str.372:
	.asciz	" "
	.size	.libro.str.372, 2

	.type	.libro.str.373,@object
.libro.str.373:
	.asciz	" "
	.size	.libro.str.373, 2

	.type	.libro.str.374,@object
.libro.str.374:
	.asciz	" "
	.size	.libro.str.374, 2

	.type	.libro.str.375,@object
.libro.str.375:
	.asciz	" "
	.size	.libro.str.375, 2

	.type	.libro.str.376,@object
.libro.str.376:
	.asciz	" "
	.size	.libro.str.376, 2

	.type	.libro.str.377,@object
.libro.str.377:
	.asciz	" "
	.size	.libro.str.377, 2

	.type	.libro.str.378,@object
.libro.str.378:
	.asciz	" "
	.size	.libro.str.378, 2

	.type	.libro.str.379,@object
.libro.str.379:
	.asciz	" "
	.size	.libro.str.379, 2

	.type	.libro.str.380,@object
.libro.str.380:
	.asciz	" "
	.size	.libro.str.380, 2

	.type	.libro.str.381,@object
.libro.str.381:
	.asciz	" "
	.size	.libro.str.381, 2

	.type	.libro.str.382,@object
.libro.str.382:
	.asciz	" "
	.size	.libro.str.382, 2

	.type	.libro.str.383,@object
.libro.str.383:
	.asciz	" "
	.size	.libro.str.383, 2

	.type	.libro.str.384,@object
.libro.str.384:
	.asciz	" "
	.size	.libro.str.384, 2

	.type	.libro.str.385,@object
.libro.str.385:
	.asciz	" "
	.size	.libro.str.385, 2

	.type	.libro.str.386,@object
.libro.str.386:
	.asciz	" "
	.size	.libro.str.386, 2

	.type	.libro.str.387,@object
.libro.str.387:
	.asciz	" "
	.size	.libro.str.387, 2

	.type	.libro.str.388,@object
.libro.str.388:
	.asciz	" "
	.size	.libro.str.388, 2

	.type	.libro.str.389,@object
.libro.str.389:
	.asciz	" "
	.size	.libro.str.389, 2

	.type	.libro.str.390,@object
.libro.str.390:
	.asciz	" "
	.size	.libro.str.390, 2

	.type	.libro.str.391,@object
.libro.str.391:
	.asciz	" "
	.size	.libro.str.391, 2

	.type	.libro.str.392,@object
.libro.str.392:
	.asciz	" "
	.size	.libro.str.392, 2

	.type	.libro.str.393,@object
.libro.str.393:
	.asciz	" "
	.size	.libro.str.393, 2

	.type	.libro.str.394,@object
.libro.str.394:
	.asciz	" "
	.size	.libro.str.394, 2

	.type	.libro.str.395,@object
.libro.str.395:
	.asciz	" "
	.size	.libro.str.395, 2

	.type	.libro.str.396,@object
.libro.str.396:
	.asciz	" "
	.size	.libro.str.396, 2

	.type	.libro.str.397,@object
.libro.str.397:
	.asciz	" "
	.size	.libro.str.397, 2

	.type	.libro.str.398,@object
.libro.str.398:
	.asciz	" "
	.size	.libro.str.398, 2

	.type	.libro.str.399,@object
.libro.str.399:
	.asciz	" "
	.size	.libro.str.399, 2

	.type	.libro.str.400,@object
.libro.str.400:
	.asciz	" "
	.size	.libro.str.400, 2

	.type	.libro.str.401,@object
.libro.str.401:
	.asciz	" "
	.size	.libro.str.401, 2

	.type	.libro.str.402,@object
.libro.str.402:
	.asciz	" "
	.size	.libro.str.402, 2

	.type	.libro.str.403,@object
.libro.str.403:
	.asciz	" "
	.size	.libro.str.403, 2

	.type	.libro.str.404,@object
.libro.str.404:
	.asciz	" "
	.size	.libro.str.404, 2

	.type	.libro.str.405,@object
.libro.str.405:
	.asciz	" "
	.size	.libro.str.405, 2

	.type	.libro.str.406,@object
.libro.str.406:
	.asciz	" "
	.size	.libro.str.406, 2

	.type	.libro.str.407,@object
.libro.str.407:
	.asciz	" "
	.size	.libro.str.407, 2

	.type	.libro.str.408,@object
.libro.str.408:
	.asciz	" "
	.size	.libro.str.408, 2

	.type	.libro.str.409,@object
.libro.str.409:
	.asciz	" "
	.size	.libro.str.409, 2

	.type	.libro.str.410,@object
.libro.str.410:
	.asciz	" "
	.size	.libro.str.410, 2

	.type	.libro.str.411,@object
.libro.str.411:
	.asciz	" "
	.size	.libro.str.411, 2

	.type	.libro.str.412,@object
.libro.str.412:
	.asciz	" "
	.size	.libro.str.412, 2

	.type	.libro.str.413,@object
.libro.str.413:
	.asciz	" "
	.size	.libro.str.413, 2

	.type	.libro.str.414,@object
.libro.str.414:
	.asciz	" "
	.size	.libro.str.414, 2

	.type	.libro.str.415,@object
.libro.str.415:
	.asciz	" "
	.size	.libro.str.415, 2

	.type	.libro.str.416,@object
.libro.str.416:
	.asciz	" "
	.size	.libro.str.416, 2

	.type	.libro.str.417,@object
.libro.str.417:
	.asciz	" "
	.size	.libro.str.417, 2

	.type	.libro.str.418,@object
.libro.str.418:
	.asciz	" "
	.size	.libro.str.418, 2

	.type	.libro.str.419,@object
.libro.str.419:
	.asciz	" "
	.size	.libro.str.419, 2

	.type	.libro.str.420,@object
.libro.str.420:
	.asciz	" "
	.size	.libro.str.420, 2

	.type	.libro.str.421,@object
.libro.str.421:
	.asciz	" "
	.size	.libro.str.421, 2

	.type	.libro.str.422,@object
.libro.str.422:
	.asciz	" "
	.size	.libro.str.422, 2

	.type	.libro.str.423,@object
.libro.str.423:
	.asciz	" "
	.size	.libro.str.423, 2

	.type	.libro.str.424,@object
.libro.str.424:
	.asciz	" "
	.size	.libro.str.424, 2

	.type	.libro.str.425,@object
.libro.str.425:
	.asciz	" "
	.size	.libro.str.425, 2

	.type	.libro.str.426,@object
.libro.str.426:
	.asciz	" "
	.size	.libro.str.426, 2

	.type	.libro.str.427,@object
.libro.str.427:
	.asciz	" "
	.size	.libro.str.427, 2

	.type	.libro.str.428,@object
.libro.str.428:
	.asciz	" "
	.size	.libro.str.428, 2

	.type	.libro.str.429,@object
.libro.str.429:
	.asciz	" "
	.size	.libro.str.429, 2

	.type	.libro.str.430,@object
.libro.str.430:
	.asciz	" "
	.size	.libro.str.430, 2

	.type	.libro.str.431,@object
.libro.str.431:
	.asciz	" "
	.size	.libro.str.431, 2

	.type	.libro.str.432,@object
.libro.str.432:
	.asciz	" "
	.size	.libro.str.432, 2

	.type	.libro.str.433,@object
.libro.str.433:
	.asciz	" "
	.size	.libro.str.433, 2

	.type	.libro.str.434,@object
.libro.str.434:
	.asciz	" "
	.size	.libro.str.434, 2

	.type	.libro.str.435,@object
.libro.str.435:
	.asciz	" "
	.size	.libro.str.435, 2

	.type	.libro.str.436,@object
.libro.str.436:
	.asciz	" "
	.size	.libro.str.436, 2

	.type	.libro.str.437,@object
.libro.str.437:
	.asciz	" "
	.size	.libro.str.437, 2

	.type	.libro.str.438,@object
.libro.str.438:
	.asciz	" "
	.size	.libro.str.438, 2

	.type	.libro.str.439,@object
.libro.str.439:
	.asciz	" "
	.size	.libro.str.439, 2

	.type	.libro.str.440,@object
.libro.str.440:
	.asciz	" "
	.size	.libro.str.440, 2

	.type	.libro.str.441,@object
.libro.str.441:
	.asciz	" "
	.size	.libro.str.441, 2

	.type	.libro.str.442,@object
.libro.str.442:
	.asciz	" "
	.size	.libro.str.442, 2

	.type	.libro.str.443,@object
.libro.str.443:
	.asciz	" "
	.size	.libro.str.443, 2

	.type	.libro.str.444,@object
.libro.str.444:
	.asciz	" "
	.size	.libro.str.444, 2

	.type	.libro.str.445,@object
.libro.str.445:
	.asciz	" "
	.size	.libro.str.445, 2

	.type	.libro.str.446,@object
.libro.str.446:
	.asciz	" "
	.size	.libro.str.446, 2

	.type	.libro.str.447,@object
.libro.str.447:
	.asciz	" "
	.size	.libro.str.447, 2

	.type	.libro.str.448,@object
.libro.str.448:
	.asciz	" "
	.size	.libro.str.448, 2

	.type	.libro.str.449,@object
.libro.str.449:
	.asciz	" "
	.size	.libro.str.449, 2

	.type	.libro.str.450,@object
.libro.str.450:
	.asciz	" "
	.size	.libro.str.450, 2

	.type	.libro.str.451,@object
.libro.str.451:
	.asciz	" "
	.size	.libro.str.451, 2

	.type	.libro.str.452,@object
.libro.str.452:
	.asciz	" "
	.size	.libro.str.452, 2

	.type	.libro.str.453,@object
.libro.str.453:
	.asciz	" "
	.size	.libro.str.453, 2

	.type	.libro.str.454,@object
.libro.str.454:
	.asciz	" "
	.size	.libro.str.454, 2

	.type	.libro.str.455,@object
.libro.str.455:
	.asciz	" "
	.size	.libro.str.455, 2

	.type	.libro.str.456,@object
.libro.str.456:
	.asciz	" "
	.size	.libro.str.456, 2

	.type	.libro.str.457,@object
.libro.str.457:
	.asciz	" "
	.size	.libro.str.457, 2

	.type	.libro.str.458,@object
.libro.str.458:
	.asciz	" "
	.size	.libro.str.458, 2

	.type	.libro.str.459,@object
.libro.str.459:
	.asciz	" "
	.size	.libro.str.459, 2

	.type	.libro.str.460,@object
.libro.str.460:
	.asciz	" "
	.size	.libro.str.460, 2

	.type	.libro.str.461,@object
.libro.str.461:
	.asciz	" "
	.size	.libro.str.461, 2

	.type	.libro.str.462,@object
.libro.str.462:
	.asciz	" "
	.size	.libro.str.462, 2

	.type	.libro.str.463,@object
.libro.str.463:
	.asciz	" "
	.size	.libro.str.463, 2

	.type	.libro.str.464,@object
.libro.str.464:
	.asciz	" "
	.size	.libro.str.464, 2

	.type	.libro.str.465,@object
.libro.str.465:
	.asciz	" "
	.size	.libro.str.465, 2

	.type	.libro.str.466,@object
.libro.str.466:
	.asciz	" "
	.size	.libro.str.466, 2

	.type	.libro.str.467,@object
.libro.str.467:
	.asciz	" "
	.size	.libro.str.467, 2

	.type	.libro.str.468,@object
.libro.str.468:
	.asciz	" "
	.size	.libro.str.468, 2

	.type	.libro.str.469,@object
.libro.str.469:
	.asciz	" "
	.size	.libro.str.469, 2

	.type	.libro.str.470,@object
.libro.str.470:
	.asciz	" "
	.size	.libro.str.470, 2

	.type	.libro.str.471,@object
.libro.str.471:
	.asciz	" "
	.size	.libro.str.471, 2

	.type	.libro.str.472,@object
.libro.str.472:
	.asciz	" "
	.size	.libro.str.472, 2

	.type	.libro.str.473,@object
.libro.str.473:
	.asciz	" "
	.size	.libro.str.473, 2

	.type	.libro.str.474,@object
.libro.str.474:
	.asciz	" "
	.size	.libro.str.474, 2

	.type	.libro.str.475,@object
.libro.str.475:
	.asciz	" "
	.size	.libro.str.475, 2

	.type	.libro.str.476,@object
.libro.str.476:
	.asciz	" "
	.size	.libro.str.476, 2

	.type	.libro.str.477,@object
.libro.str.477:
	.asciz	" "
	.size	.libro.str.477, 2

	.type	.libro.str.478,@object
.libro.str.478:
	.asciz	" "
	.size	.libro.str.478, 2

	.type	.libro.str.479,@object
.libro.str.479:
	.asciz	" "
	.size	.libro.str.479, 2

	.type	.libro.str.480,@object
.libro.str.480:
	.asciz	" "
	.size	.libro.str.480, 2

	.type	.libro.str.481,@object
.libro.str.481:
	.asciz	" "
	.size	.libro.str.481, 2

	.type	.libro.str.482,@object
.libro.str.482:
	.asciz	" "
	.size	.libro.str.482, 2

	.type	.libro.str.483,@object
.libro.str.483:
	.asciz	" "
	.size	.libro.str.483, 2

	.type	.libro.str.484,@object
.libro.str.484:
	.asciz	" "
	.size	.libro.str.484, 2

	.type	.libro.str.485,@object
.libro.str.485:
	.asciz	" "
	.size	.libro.str.485, 2

	.type	.libro.str.486,@object
.libro.str.486:
	.asciz	" "
	.size	.libro.str.486, 2

	.type	.libro.str.487,@object
.libro.str.487:
	.asciz	" "
	.size	.libro.str.487, 2

	.type	.libro.str.488,@object
.libro.str.488:
	.asciz	" "
	.size	.libro.str.488, 2

	.type	.libro.str.489,@object
.libro.str.489:
	.asciz	" "
	.size	.libro.str.489, 2

	.type	.libro.str.490,@object
.libro.str.490:
	.asciz	" "
	.size	.libro.str.490, 2

	.type	.libro.str.491,@object
.libro.str.491:
	.asciz	" "
	.size	.libro.str.491, 2

	.type	.libro.str.492,@object
.libro.str.492:
	.asciz	" "
	.size	.libro.str.492, 2

	.type	.libro.str.493,@object
.libro.str.493:
	.asciz	" "
	.size	.libro.str.493, 2

	.type	.libro.str.494,@object
.libro.str.494:
	.asciz	" "
	.size	.libro.str.494, 2

	.type	.libro.str.495,@object
.libro.str.495:
	.asciz	" "
	.size	.libro.str.495, 2

	.type	.libro.str.496,@object
.libro.str.496:
	.asciz	" "
	.size	.libro.str.496, 2

	.type	.libro.str.497,@object
.libro.str.497:
	.asciz	" "
	.size	.libro.str.497, 2

	.type	.libro.str.498,@object
.libro.str.498:
	.asciz	" "
	.size	.libro.str.498, 2

	.type	.libro.str.499,@object
.libro.str.499:
	.asciz	" "
	.size	.libro.str.499, 2

	.type	.libro.str.500,@object
.libro.str.500:
	.asciz	" "
	.size	.libro.str.500, 2

	.type	.libro.str.501,@object
.libro.str.501:
	.asciz	" "
	.size	.libro.str.501, 2

	.type	.libro.str.502,@object
.libro.str.502:
	.asciz	" "
	.size	.libro.str.502, 2

	.type	.libro.str.503,@object
.libro.str.503:
	.asciz	" "
	.size	.libro.str.503, 2

	.type	.libro.str.504,@object
.libro.str.504:
	.asciz	" "
	.size	.libro.str.504, 2

	.type	.libro.str.505,@object
.libro.str.505:
	.asciz	" "
	.size	.libro.str.505, 2

	.type	.libro.str.506,@object
.libro.str.506:
	.asciz	" "
	.size	.libro.str.506, 2

	.type	.libro.str.507,@object
.libro.str.507:
	.asciz	" "
	.size	.libro.str.507, 2

	.type	.libro.str.508,@object
.libro.str.508:
	.asciz	" "
	.size	.libro.str.508, 2

	.type	.libro.str.509,@object
.libro.str.509:
	.asciz	" "
	.size	.libro.str.509, 2

	.type	.libro.str.510,@object
.libro.str.510:
	.asciz	" "
	.size	.libro.str.510, 2

	.type	.libro.str.511,@object
.libro.str.511:
	.asciz	" "
	.size	.libro.str.511, 2

	.type	.libro.str.512,@object
.libro.str.512:
	.asciz	" "
	.size	.libro.str.512, 2

	.type	.libro.str.513,@object
.libro.str.513:
	.asciz	""
	.size	.libro.str.513, 1

