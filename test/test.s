	.text
	.globl main
	.p2align	2
	.type	main,@function
gcd: 
	addi sp, sp, -356
	sw ra, 352(sp)
	sw s0, 348(sp)
	sw s1, 344(sp)
	sw s2, 340(sp)
	sw s3, 336(sp)
	sw s4, 332(sp)
	sw s5, 328(sp)
	sw s6, 324(sp)
	sw s7, 320(sp)
	sw s8, 316(sp)
	sw s9, 312(sp)
	sw s10, 308(sp)
	sw s11, 304(sp)
	addi s0, sp, 356
	lw t0, 0(s0)
	sw t0, -196(s0)
	lw t0, 4(s0)
	sw t0, -200(s0)
	lw t0, 8(s0)
	sw t0, -204(s0)
	lw t0, 12(s0)
	sw t0, -208(s0)
	lw t0, 16(s0)
	sw t0, -212(s0)
	lw t0, 20(s0)
	sw t0, -216(s0)
	lw t0, 24(s0)
	sw t0, -224(s0)
	lw t6, 28(s0)
	lw t5, 32(s0)
	lw t4, 36(s0)
	lw t3, 40(s0)
	lw s11, 44(s0)
	lw s10, 48(s0)
	lw s9, 52(s0)
	lw s8, 56(s0)
	lw s7, 60(s0)
	lw s6, 64(s0)
	lw s5, 68(s0)
	lw s4, 72(s0)
	lw s3, 76(s0)
	lw s2, 80(s0)
	lw s1, 84(s0)
	lw t2, 88(s0)
	lw t1, 92(s0)
	addi t0, zero, 0
	sw t0, -56(s0)
	sw a0, -60(s0)
	sw a1, -64(s0)
	sw a2, -68(s0)
	sw a3, -72(s0)
	sw a4, -76(s0)
	sw a5, -80(s0)
	sw a6, -84(s0)
	sw a7, -88(s0)
	lw t0, -196(s0)
	sw t0, -92(s0)
	lw t0, -200(s0)
	sw t0, -96(s0)
	lw t0, -204(s0)
	sw t0, -100(s0)
	lw t0, -208(s0)
	sw t0, -104(s0)
	lw t0, -212(s0)
	sw t0, -108(s0)
	lw t0, -216(s0)
	sw t0, -112(s0)
	lw t0, -224(s0)
	sw t0, -116(s0)
	sw t6, -120(s0)
	sw t5, -124(s0)
	sw t4, -128(s0)
	sw t3, -132(s0)
	sw s11, -136(s0)
	sw s10, -140(s0)
	sw s9, -144(s0)
	sw s8, -148(s0)
	sw s7, -152(s0)
	sw s6, -156(s0)
	sw s5, -160(s0)
	sw s4, -164(s0)
	sw s3, -168(s0)
	sw s2, -172(s0)
	sw s1, -176(s0)
	sw t2, -180(s0)
	sw t1, -184(s0)
	addi t0, zero, 0
	sw t0, -188(s0)
	j .LibroBB0_2
.LibroBB0_1: 
	lw t1, -68(s0)
	lw t0, -72(s0)
	add t1, t1, t0
	lw t0, -76(s0)
	add t1, t1, t0
	lw t0, -80(s0)
	add t1, t1, t0
	lw t0, -84(s0)
	add t1, t1, t0
	lw t0, -88(s0)
	add t1, t1, t0
	lw t0, -92(s0)
	add t1, t1, t0
	lw t0, -96(s0)
	add t1, t1, t0
	lw t0, -100(s0)
	add t1, t1, t0
	lw t0, -104(s0)
	add t1, t1, t0
	lw t0, -108(s0)
	add t1, t1, t0
	lw t0, -112(s0)
	add t1, t1, t0
	lw t0, -116(s0)
	add t1, t1, t0
	lw t0, -120(s0)
	add t1, t1, t0
	lw t0, -124(s0)
	add t1, t1, t0
	lw t0, -128(s0)
	add t1, t1, t0
	lw t0, -132(s0)
	add t1, t1, t0
	lw t0, -136(s0)
	add t1, t1, t0
	lw t0, -140(s0)
	add t1, t1, t0
	lw t0, -144(s0)
	add t1, t1, t0
	lw t0, -148(s0)
	add t1, t1, t0
	lw t0, -152(s0)
	add t1, t1, t0
	lw t0, -156(s0)
	add t1, t1, t0
	lw t0, -160(s0)
	add t1, t1, t0
	lw t0, -164(s0)
	add t1, t1, t0
	lw t0, -168(s0)
	add t1, t1, t0
	lw t0, -172(s0)
	add t1, t1, t0
	lw t0, -176(s0)
	add t1, t1, t0
	lw t0, -180(s0)
	add t1, t1, t0
	lw t0, -184(s0)
	add t1, t1, t0
	addi t0, zero, 100
	rem t0, t1, t0
	sw t0, -192(s0)
	j .LibroBB0_4
.LibroBB0_2: 
	lw t1, -188(s0)
	addi t0, zero, 10
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB0_3
	j .LibroBB0_1
.LibroBB0_3: 
	lw t1, -60(s0)
	lw t0, -64(s0)
	rem t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB0_7
	j .LibroBB0_5
.LibroBB0_4: 
	lw t1, -188(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -188(s0)
	j .LibroBB0_2
.LibroBB0_5: 
	lw t0, -64(s0)
	sw t0, -56(s0)
	j .LibroBB0_8
.LibroBB0_6: 
	addi t0, zero, 0
	sw t0, -56(s0)
	j .LibroBB0_8
.LibroBB0_7: 
	lw t0, -64(s0)
	sw t0, -220(s0)
	lw t1, -60(s0)
	lw t0, -64(s0)
	rem t0, t1, t0
	sw t0, -228(s0)
	lw t0, -192(s0)
	sw t0, -232(s0)
	addi a0, zero, 10
	addi a1, zero, 68
	addi a2, zero, 0
	addi a3, zero, 2
	addi a4, zero, 4
	addi a5, zero, 6
	addi a6, zero, 8
	addi a7, zero, 10
	addi t0, zero, 12
	sw t0, 0(sp)
	addi t0, zero, 14
	sw t0, 4(sp)
	addi t0, zero, 16
	sw t0, 8(sp)
	addi t0, zero, 18
	sw t0, 12(sp)
	addi t0, zero, 20
	sw t0, 16(sp)
	addi t0, zero, 22
	sw t0, 20(sp)
	addi t0, zero, 24
	sw t0, 24(sp)
	addi t0, zero, 26
	sw t0, 28(sp)
	addi t0, zero, 28
	sw t0, 32(sp)
	addi t0, zero, 30
	sw t0, 36(sp)
	addi t0, zero, 32
	sw t0, 40(sp)
	addi t0, zero, 34
	sw t0, 44(sp)
	addi t0, zero, 36
	sw t0, 48(sp)
	addi t0, zero, 38
	sw t0, 52(sp)
	addi t0, zero, 40
	sw t0, 56(sp)
	addi t0, zero, 42
	sw t0, 60(sp)
	addi t0, zero, 44
	sw t0, 64(sp)
	addi t0, zero, 46
	sw t0, 68(sp)
	addi t0, zero, 48
	sw t0, 72(sp)
	addi t0, zero, 50
	sw t0, 76(sp)
	addi t0, zero, 52
	sw t0, 80(sp)
	addi t0, zero, 54
	sw t0, 84(sp)
	addi t0, zero, 56
	sw t0, 88(sp)
	addi t0, zero, 58
	sw t0, 92(sp)
	call gcd
	mv a3, a0
	lw a4, -76(s0)
	lw a5, -80(s0)
	lw a6, -84(s0)
	lw a7, -88(s0)
	lw t0, -92(s0)
	sw t0, -236(s0)
	lw t0, -96(s0)
	sw t0, -240(s0)
	lw t0, -100(s0)
	sw t0, -244(s0)
	lw t0, -104(s0)
	sw t0, -248(s0)
	lw t0, -108(s0)
	sw t0, -252(s0)
	lw t0, -112(s0)
	sw t0, -256(s0)
	lw t6, -116(s0)
	lw t5, -120(s0)
	lw t4, -124(s0)
	lw t3, -128(s0)
	lw s11, -132(s0)
	lw s10, -136(s0)
	lw s9, -140(s0)
	lw s8, -144(s0)
	lw s7, -148(s0)
	lw s6, -152(s0)
	lw s5, -156(s0)
	lw s4, -160(s0)
	lw s3, -164(s0)
	lw s2, -168(s0)
	lw s1, -172(s0)
	lw t2, -176(s0)
	lw t1, -180(s0)
	lw t0, -184(s0)
	lw a0, -220(s0)
	lw a1, -228(s0)
	lw a2, -232(s0)
	lw a1, -236(s0)
	sw a1, 0(sp)
	lw a1, -240(s0)
	sw a1, 4(sp)
	lw a1, -244(s0)
	sw a1, 8(sp)
	lw a1, -248(s0)
	sw a1, 12(sp)
	lw a1, -252(s0)
	sw a1, 16(sp)
	lw a1, -256(s0)
	sw a1, 20(sp)
	sw t6, 24(sp)
	sw t5, 28(sp)
	sw t4, 32(sp)
	sw t3, 36(sp)
	sw s11, 40(sp)
	sw s10, 44(sp)
	sw s9, 48(sp)
	sw s8, 52(sp)
	sw s7, 56(sp)
	sw s6, 60(sp)
	sw s5, 64(sp)
	sw s4, 68(sp)
	sw s3, 72(sp)
	sw s2, 76(sp)
	sw s1, 80(sp)
	sw t2, 84(sp)
	sw t1, 88(sp)
	sw t0, 92(sp)
	call gcd1
	sw a0, -56(s0)
	j .LibroBB0_8
.LibroBB0_8: 
	lw a0, -56(s0)
	lw s0, 348(sp)
	lw s1, 344(sp)
	lw s2, 340(sp)
	lw s3, 336(sp)
	lw s4, 332(sp)
	lw s5, 328(sp)
	lw s6, 324(sp)
	lw s7, 320(sp)
	lw s8, 316(sp)
	lw s9, 312(sp)
	lw s10, 308(sp)
	lw s11, 304(sp)
	lw ra, 352(sp)
	addi sp, sp, 356
	ret
gcd1: 
	addi sp, sp, -340
	sw ra, 336(sp)
	sw s0, 332(sp)
	sw s1, 328(sp)
	sw s2, 324(sp)
	sw s3, 320(sp)
	sw s4, 316(sp)
	sw s5, 312(sp)
	sw s6, 308(sp)
	sw s7, 304(sp)
	sw s8, 300(sp)
	sw s9, 296(sp)
	sw s10, 292(sp)
	sw s11, 288(sp)
	addi s0, sp, 340
	lw t0, 0(s0)
	sw t0, -192(s0)
	lw t0, 4(s0)
	sw t0, -196(s0)
	lw t0, 8(s0)
	sw t0, -200(s0)
	lw t0, 12(s0)
	sw t0, -204(s0)
	lw t0, 16(s0)
	sw t0, -208(s0)
	lw t0, 20(s0)
	sw t0, -212(s0)
	lw t0, 24(s0)
	sw t0, -216(s0)
	lw t6, 28(s0)
	lw t5, 32(s0)
	lw t4, 36(s0)
	lw t3, 40(s0)
	lw s11, 44(s0)
	lw s10, 48(s0)
	lw s9, 52(s0)
	lw s8, 56(s0)
	lw s7, 60(s0)
	lw s6, 64(s0)
	lw s5, 68(s0)
	lw s4, 72(s0)
	lw s3, 76(s0)
	lw s2, 80(s0)
	lw s1, 84(s0)
	lw t2, 88(s0)
	lw t1, 92(s0)
	addi t0, zero, 0
	sw t0, -56(s0)
	sw a0, -60(s0)
	sw a1, -64(s0)
	sw a2, -68(s0)
	sw a3, -72(s0)
	sw a4, -76(s0)
	sw a5, -80(s0)
	sw a6, -84(s0)
	sw a7, -88(s0)
	lw t0, -192(s0)
	sw t0, -92(s0)
	lw t0, -196(s0)
	sw t0, -96(s0)
	lw t0, -200(s0)
	sw t0, -100(s0)
	lw t0, -204(s0)
	sw t0, -104(s0)
	lw t0, -208(s0)
	sw t0, -108(s0)
	lw t0, -212(s0)
	sw t0, -112(s0)
	lw t0, -216(s0)
	sw t0, -116(s0)
	sw t6, -120(s0)
	sw t5, -124(s0)
	sw t4, -128(s0)
	sw t3, -132(s0)
	sw s11, -136(s0)
	sw s10, -140(s0)
	sw s9, -144(s0)
	sw s8, -148(s0)
	sw s7, -152(s0)
	sw s6, -156(s0)
	sw s5, -160(s0)
	sw s4, -164(s0)
	sw s3, -168(s0)
	sw s2, -172(s0)
	sw s1, -176(s0)
	sw t2, -180(s0)
	sw t1, -184(s0)
	lw t1, -68(s0)
	lw t0, -72(s0)
	add t1, t1, t0
	lw t0, -76(s0)
	add t1, t1, t0
	lw t0, -80(s0)
	add t1, t1, t0
	lw t0, -84(s0)
	add t1, t1, t0
	lw t0, -88(s0)
	add t1, t1, t0
	lw t0, -92(s0)
	add t1, t1, t0
	lw t0, -96(s0)
	add t1, t1, t0
	lw t0, -100(s0)
	add t1, t1, t0
	lw t0, -104(s0)
	add t1, t1, t0
	lw t0, -108(s0)
	add t1, t1, t0
	lw t0, -112(s0)
	add t1, t1, t0
	lw t0, -116(s0)
	add t1, t1, t0
	lw t0, -120(s0)
	add t1, t1, t0
	lw t0, -124(s0)
	add t1, t1, t0
	lw t0, -128(s0)
	add t1, t1, t0
	lw t0, -132(s0)
	add t1, t1, t0
	lw t0, -136(s0)
	add t1, t1, t0
	lw t0, -140(s0)
	add t1, t1, t0
	lw t0, -144(s0)
	add t1, t1, t0
	lw t0, -148(s0)
	add t1, t1, t0
	lw t0, -152(s0)
	add t1, t1, t0
	lw t0, -156(s0)
	add t1, t1, t0
	lw t0, -160(s0)
	add t1, t1, t0
	lw t0, -164(s0)
	add t1, t1, t0
	lw t0, -168(s0)
	add t1, t1, t0
	lw t0, -172(s0)
	add t1, t1, t0
	lw t0, -176(s0)
	add t1, t1, t0
	lw t0, -180(s0)
	add t1, t1, t0
	lw t0, -184(s0)
	add t1, t1, t0
	addi t0, zero, 100
	rem t0, t1, t0
	sw t0, -188(s0)
	lw t1, -60(s0)
	lw t0, -64(s0)
	rem t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB1_2
	j .LibroBB1_3
.LibroBB1_1: 
	addi t0, zero, 0
	sw t0, -56(s0)
	j .LibroBB1_4
.LibroBB1_2: 
	lw a0, -64(s0)
	lw t1, -60(s0)
	lw t0, -64(s0)
	rem a1, t1, t0
	lw a2, -188(s0)
	lw a3, -72(s0)
	lw a4, -76(s0)
	lw a5, -80(s0)
	lw a6, -84(s0)
	lw a7, -88(s0)
	lw t0, -92(s0)
	sw t0, -220(s0)
	lw t0, -96(s0)
	sw t0, -224(s0)
	lw t0, -100(s0)
	sw t0, -228(s0)
	lw t0, -104(s0)
	sw t0, -232(s0)
	lw t0, -108(s0)
	sw t0, -236(s0)
	lw t0, -112(s0)
	sw t0, -240(s0)
	lw t6, -116(s0)
	lw t5, -120(s0)
	lw t4, -124(s0)
	lw t3, -128(s0)
	lw s11, -132(s0)
	lw s10, -136(s0)
	lw s9, -140(s0)
	lw s8, -144(s0)
	lw s7, -148(s0)
	lw s6, -152(s0)
	lw s5, -156(s0)
	lw s4, -160(s0)
	lw s3, -164(s0)
	lw s2, -168(s0)
	lw s1, -172(s0)
	lw t2, -176(s0)
	lw t1, -180(s0)
	lw t0, -184(s0)
	lw a1, -220(s0)
	sw a1, 0(sp)
	lw a1, -224(s0)
	sw a1, 4(sp)
	lw a1, -228(s0)
	sw a1, 8(sp)
	lw a1, -232(s0)
	sw a1, 12(sp)
	lw a1, -236(s0)
	sw a1, 16(sp)
	lw a1, -240(s0)
	sw a1, 20(sp)
	sw t6, 24(sp)
	sw t5, 28(sp)
	sw t4, 32(sp)
	sw t3, 36(sp)
	sw s11, 40(sp)
	sw s10, 44(sp)
	sw s9, 48(sp)
	sw s8, 52(sp)
	sw s7, 56(sp)
	sw s6, 60(sp)
	sw s5, 64(sp)
	sw s4, 68(sp)
	sw s3, 72(sp)
	sw s2, 76(sp)
	sw s1, 80(sp)
	sw t2, 84(sp)
	sw t1, 88(sp)
	sw t0, 92(sp)
	call gcd2
	sw a0, -56(s0)
	j .LibroBB1_4
.LibroBB1_3: 
	lw t0, -64(s0)
	sw t0, -56(s0)
	j .LibroBB1_4
.LibroBB1_4: 
	lw a0, -56(s0)
	lw s0, 332(sp)
	lw s1, 328(sp)
	lw s2, 324(sp)
	lw s3, 320(sp)
	lw s4, 316(sp)
	lw s5, 312(sp)
	lw s6, 308(sp)
	lw s7, 304(sp)
	lw s8, 300(sp)
	lw s9, 296(sp)
	lw s10, 292(sp)
	lw s11, 288(sp)
	lw ra, 336(sp)
	addi sp, sp, 340
	ret
gcd2: 
	addi sp, sp, -340
	sw ra, 336(sp)
	sw s0, 332(sp)
	sw s1, 328(sp)
	sw s2, 324(sp)
	sw s3, 320(sp)
	sw s4, 316(sp)
	sw s5, 312(sp)
	sw s6, 308(sp)
	sw s7, 304(sp)
	sw s8, 300(sp)
	sw s9, 296(sp)
	sw s10, 292(sp)
	sw s11, 288(sp)
	addi s0, sp, 340
	lw t0, 0(s0)
	sw t0, -192(s0)
	lw t0, 4(s0)
	sw t0, -196(s0)
	lw t0, 8(s0)
	sw t0, -200(s0)
	lw t0, 12(s0)
	sw t0, -204(s0)
	lw t0, 16(s0)
	sw t0, -208(s0)
	lw t0, 20(s0)
	sw t0, -212(s0)
	lw t0, 24(s0)
	sw t0, -216(s0)
	lw t6, 28(s0)
	lw t5, 32(s0)
	lw t4, 36(s0)
	lw t3, 40(s0)
	lw s11, 44(s0)
	lw s10, 48(s0)
	lw s9, 52(s0)
	lw s8, 56(s0)
	lw s7, 60(s0)
	lw s6, 64(s0)
	lw s5, 68(s0)
	lw s4, 72(s0)
	lw s3, 76(s0)
	lw s2, 80(s0)
	lw s1, 84(s0)
	lw t2, 88(s0)
	lw t1, 92(s0)
	addi t0, zero, 0
	sw t0, -56(s0)
	sw a0, -60(s0)
	sw a1, -64(s0)
	sw a2, -68(s0)
	sw a3, -72(s0)
	sw a4, -76(s0)
	sw a5, -80(s0)
	sw a6, -84(s0)
	sw a7, -88(s0)
	lw t0, -192(s0)
	sw t0, -92(s0)
	lw t0, -196(s0)
	sw t0, -96(s0)
	lw t0, -200(s0)
	sw t0, -100(s0)
	lw t0, -204(s0)
	sw t0, -104(s0)
	lw t0, -208(s0)
	sw t0, -108(s0)
	lw t0, -212(s0)
	sw t0, -112(s0)
	lw t0, -216(s0)
	sw t0, -116(s0)
	sw t6, -120(s0)
	sw t5, -124(s0)
	sw t4, -128(s0)
	sw t3, -132(s0)
	sw s11, -136(s0)
	sw s10, -140(s0)
	sw s9, -144(s0)
	sw s8, -148(s0)
	sw s7, -152(s0)
	sw s6, -156(s0)
	sw s5, -160(s0)
	sw s4, -164(s0)
	sw s3, -168(s0)
	sw s2, -172(s0)
	sw s1, -176(s0)
	sw t2, -180(s0)
	sw t1, -184(s0)
	lw t1, -68(s0)
	lw t0, -72(s0)
	add t1, t1, t0
	lw t0, -76(s0)
	add t1, t1, t0
	lw t0, -80(s0)
	add t1, t1, t0
	lw t0, -84(s0)
	add t1, t1, t0
	lw t0, -88(s0)
	add t1, t1, t0
	lw t0, -92(s0)
	add t1, t1, t0
	lw t0, -96(s0)
	add t1, t1, t0
	lw t0, -100(s0)
	add t1, t1, t0
	lw t0, -104(s0)
	add t1, t1, t0
	lw t0, -108(s0)
	add t1, t1, t0
	lw t0, -112(s0)
	add t1, t1, t0
	lw t0, -116(s0)
	add t1, t1, t0
	lw t0, -120(s0)
	add t1, t1, t0
	lw t0, -124(s0)
	add t1, t1, t0
	lw t0, -128(s0)
	add t1, t1, t0
	lw t0, -132(s0)
	add t1, t1, t0
	lw t0, -136(s0)
	add t1, t1, t0
	lw t0, -140(s0)
	add t1, t1, t0
	lw t0, -144(s0)
	add t1, t1, t0
	lw t0, -148(s0)
	add t1, t1, t0
	lw t0, -152(s0)
	add t1, t1, t0
	lw t0, -156(s0)
	add t1, t1, t0
	lw t0, -160(s0)
	add t1, t1, t0
	lw t0, -164(s0)
	add t1, t1, t0
	lw t0, -168(s0)
	add t1, t1, t0
	lw t0, -172(s0)
	add t1, t1, t0
	lw t0, -176(s0)
	add t1, t1, t0
	lw t0, -180(s0)
	add t1, t1, t0
	lw t0, -184(s0)
	add t1, t1, t0
	addi t0, zero, 100
	rem t0, t1, t0
	sw t0, -188(s0)
	lw t1, -60(s0)
	lw t0, -64(s0)
	rem t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB2_3
	j .LibroBB2_1
.LibroBB2_1: 
	lw t0, -64(s0)
	sw t0, -56(s0)
	j .LibroBB2_4
.LibroBB2_2: 
	addi t0, zero, 0
	sw t0, -56(s0)
	j .LibroBB2_4
.LibroBB2_3: 
	lw a0, -64(s0)
	lw t1, -60(s0)
	lw t0, -64(s0)
	rem a1, t1, t0
	lw a2, -68(s0)
	lw a3, -72(s0)
	lw a4, -76(s0)
	lw a5, -80(s0)
	lw a6, -84(s0)
	lw a7, -88(s0)
	lw t0, -92(s0)
	sw t0, -220(s0)
	lw t0, -96(s0)
	sw t0, -224(s0)
	lw t0, -100(s0)
	sw t0, -228(s0)
	lw t0, -104(s0)
	sw t0, -232(s0)
	lw t0, -108(s0)
	sw t0, -236(s0)
	lw t0, -112(s0)
	sw t0, -240(s0)
	lw t6, -116(s0)
	lw t5, -120(s0)
	lw t4, -124(s0)
	lw t3, -128(s0)
	lw s11, -132(s0)
	lw s10, -136(s0)
	lw s9, -140(s0)
	lw s8, -144(s0)
	lw s7, -148(s0)
	lw s6, -152(s0)
	lw s5, -156(s0)
	lw s4, -160(s0)
	lw s3, -164(s0)
	lw s2, -168(s0)
	lw s1, -172(s0)
	lw t2, -176(s0)
	lw t1, -180(s0)
	lw t0, -184(s0)
	lw a1, -220(s0)
	sw a1, 0(sp)
	lw a1, -224(s0)
	sw a1, 4(sp)
	lw a1, -228(s0)
	sw a1, 8(sp)
	lw a1, -232(s0)
	sw a1, 12(sp)
	lw a1, -236(s0)
	sw a1, 16(sp)
	lw a1, -240(s0)
	sw a1, 20(sp)
	sw t6, 24(sp)
	sw t5, 28(sp)
	sw t4, 32(sp)
	sw t3, 36(sp)
	sw s11, 40(sp)
	sw s10, 44(sp)
	sw s9, 48(sp)
	sw s8, 52(sp)
	sw s7, 56(sp)
	sw s6, 60(sp)
	sw s5, 64(sp)
	sw s4, 68(sp)
	sw s3, 72(sp)
	sw s2, 76(sp)
	sw s1, 80(sp)
	sw t2, 84(sp)
	sw t1, 88(sp)
	sw t0, 92(sp)
	call gcd
	sw a0, -56(s0)
	j .LibroBB2_4
.LibroBB2_4: 
	lw a0, -56(s0)
	lw s0, 332(sp)
	lw s1, 328(sp)
	lw s2, 324(sp)
	lw s3, 320(sp)
	lw s4, 316(sp)
	lw s5, 312(sp)
	lw s6, 308(sp)
	lw s7, 304(sp)
	lw s8, 300(sp)
	lw s9, 296(sp)
	lw s10, 292(sp)
	lw s11, 288(sp)
	lw ra, 336(sp)
	addi sp, sp, 340
	ret
main: 
	addi sp, sp, -112
	sw ra, 108(sp)
	sw s0, 104(sp)
	addi s0, sp, 112
	addi t0, zero, 0
	sw t0, -12(s0)
	addi a0, zero, 10
	addi a1, zero, 1
	addi a2, zero, 0
	addi a3, zero, 2
	addi a4, zero, 4
	addi a5, zero, 6
	addi a6, zero, 8
	addi a7, zero, 10
	addi t0, zero, 12
	sw t0, 0(sp)
	addi t0, zero, 14
	sw t0, 4(sp)
	addi t0, zero, 16
	sw t0, 8(sp)
	addi t0, zero, 18
	sw t0, 12(sp)
	addi t0, zero, 20
	sw t0, 16(sp)
	addi t0, zero, 22
	sw t0, 20(sp)
	addi t0, zero, 24
	sw t0, 24(sp)
	addi t0, zero, 26
	sw t0, 28(sp)
	addi t0, zero, 28
	sw t0, 32(sp)
	addi t0, zero, 30
	sw t0, 36(sp)
	addi t0, zero, 32
	sw t0, 40(sp)
	addi t0, zero, 34
	sw t0, 44(sp)
	addi t0, zero, 36
	sw t0, 48(sp)
	addi t0, zero, 38
	sw t0, 52(sp)
	addi t0, zero, 40
	sw t0, 56(sp)
	addi t0, zero, 42
	sw t0, 60(sp)
	addi t0, zero, 44
	sw t0, 64(sp)
	addi t0, zero, 46
	sw t0, 68(sp)
	addi t0, zero, 48
	sw t0, 72(sp)
	addi t0, zero, 50
	sw t0, 76(sp)
	addi t0, zero, 52
	sw t0, 80(sp)
	addi t0, zero, 54
	sw t0, 84(sp)
	addi t0, zero, 56
	sw t0, 88(sp)
	addi t0, zero, 58
	sw t0, 92(sp)
	call gcd
	addi t0, zero, 1024
	add t0, a0, t0
	mv a0, t0
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB3_1
.LibroBB3_1: 
	lw a0, -12(s0)
	lw s0, 104(sp)
	lw ra, 108(sp)
	addi sp, sp, 112
	ret
.data
