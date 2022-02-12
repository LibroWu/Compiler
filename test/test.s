	.text
	.globl main
	.p2align	2
	.type	main,@function
gcd: 
	addi sp, sp, -160
	sw ra, 156(sp)
	sw s0, 152(sp)
	sw s1, 148(sp)
	sw s2, 144(sp)
	sw s3, 140(sp)
	addi s0, sp, 160
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	addi t1, zero, 0
	sw t1, -24(s0)
	sw a0, -28(s0)
	sw a1, -32(s0)
	sw a2, -36(s0)
	sw a3, -40(s0)
	sw a4, -44(s0)
	sw a5, -48(s0)
	sw a6, -52(s0)
	sw a7, -56(s0)
	sw t0, -60(s0)
	sw t0, -64(s0)
	sw t0, -68(s0)
	sw t0, -72(s0)
	sw t0, -76(s0)
	sw t0, -80(s0)
	sw t0, -84(s0)
	sw t0, -88(s0)
	sw t0, -92(s0)
	sw t0, -96(s0)
	sw t0, -100(s0)
	sw t0, -104(s0)
	sw t0, -108(s0)
	sw t0, -112(s0)
	sw t0, -116(s0)
	sw t0, -120(s0)
	sw t0, -124(s0)
	sw t0, -128(s0)
	sw t0, -132(s0)
	sw t0, -136(s0)
	sw t0, -140(s0)
	sw t0, -144(s0)
	sw t0, -148(s0)
	sw t0, -152(s0)
	lw t0, -156(s0)
	addi t0, zero, 0
	sw t0, -156(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw t1, -156(s0)
	addi t0, zero, 10
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB0_3
	j .LibroBB0_4
.LibroBB0_2: 
	lw t1, -156(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -156(s0)
	j .LibroBB0_1
.LibroBB0_3: 
	lw t1, -28(s0)
	lw t0, -32(s0)
	rem t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB0_5
	j .LibroBB0_6
.LibroBB0_4: 
	lw t1, -36(s0)
	lw t0, -40(s0)
	add t1, t1, t0
	lw t0, -44(s0)
	add t1, t1, t0
	lw t0, -48(s0)
	add t1, t1, t0
	lw t0, -52(s0)
	add t1, t1, t0
	lw t0, -56(s0)
	add t1, t1, t0
	lw t0, -60(s0)
	add t1, t1, t0
	lw t0, -64(s0)
	add t1, t1, t0
	lw t0, -68(s0)
	add t1, t1, t0
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
	add t0, t1, t0
	addi t1, zero, 100
	rem t1, t0, t1
	lw t0, -160(s0)
	sw t1, -160(s0)
	j .LibroBB0_2
.LibroBB0_5: 
	lw s3, -32(s0)
	lw t1, -28(s0)
	lw t0, -32(s0)
	rem s2, t1, t0
	lw s1, -160(s0)
	addi a0, zero, 10
	mv a0, a0
	addi a1, zero, 68
	mv a1, a1
	addi a2, zero, 0
	mv a2, a2
	addi a3, zero, 2
	mv a3, a3
	addi a4, zero, 4
	mv a4, a4
	addi a5, zero, 6
	mv a5, a5
	addi a6, zero, 8
	mv a6, a6
	addi a7, zero, 10
	mv a7, a7
	addi t0, zero, 12
	addi t0, zero, 14
	addi t0, zero, 16
	addi t0, zero, 18
	addi t0, zero, 20
	addi t0, zero, 22
	addi t0, zero, 24
	addi t0, zero, 26
	addi t0, zero, 28
	addi t0, zero, 30
	addi t0, zero, 32
	addi t0, zero, 34
	addi t0, zero, 36
	addi t0, zero, 38
	addi t0, zero, 40
	addi t0, zero, 42
	addi t0, zero, 44
	addi t0, zero, 46
	addi t0, zero, 48
	addi t0, zero, 50
	addi t0, zero, 52
	addi t0, zero, 54
	addi t0, zero, 56
	addi t0, zero, 58
	call gcd
	mv a3, a0
	lw a4, -44(s0)
	lw a5, -48(s0)
	lw a6, -52(s0)
	lw a7, -56(s0)
	lw t0, -60(s0)
	lw t0, -64(s0)
	lw t0, -68(s0)
	lw t0, -72(s0)
	lw t0, -76(s0)
	lw t0, -80(s0)
	lw t0, -84(s0)
	lw t0, -88(s0)
	lw t0, -92(s0)
	lw t0, -96(s0)
	lw t0, -100(s0)
	lw t0, -104(s0)
	lw t0, -108(s0)
	lw t0, -112(s0)
	lw t0, -116(s0)
	lw t0, -120(s0)
	lw t0, -124(s0)
	lw t0, -128(s0)
	lw t0, -132(s0)
	lw t0, -136(s0)
	lw t0, -140(s0)
	lw t0, -144(s0)
	lw t0, -148(s0)
	lw t0, -152(s0)
	mv a0, s3
	mv a1, s2
	mv a2, s1
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call gcd1
	mv a0, a0
	sw a0, -24(s0)
	j .LibroBB0_8
.LibroBB0_6: 
	lw t0, -32(s0)
	sw t0, -24(s0)
	j .LibroBB0_8
.LibroBB0_7: 
	addi t0, zero, 0
	sw t0, -24(s0)
	j .LibroBB0_8
.LibroBB0_8: 
	lw a0, -24(s0)
	mv a0, a0
	lw s0, 152(sp)
	lw s1, 148(sp)
	lw s2, 144(sp)
	lw s3, 140(sp)
	lw ra, 156(sp)
	addi sp, sp, 160
	ret
gcd1: 
	addi sp, sp, -144
	sw ra, 140(sp)
	sw s0, 136(sp)
	addi s0, sp, 144
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	addi t1, zero, 0
	sw t1, -12(s0)
	sw a0, -16(s0)
	sw a1, -20(s0)
	sw a2, -24(s0)
	sw a3, -28(s0)
	sw a4, -32(s0)
	sw a5, -36(s0)
	sw a6, -40(s0)
	sw a7, -44(s0)
	sw t0, -48(s0)
	sw t0, -52(s0)
	sw t0, -56(s0)
	sw t0, -60(s0)
	sw t0, -64(s0)
	sw t0, -68(s0)
	sw t0, -72(s0)
	sw t0, -76(s0)
	sw t0, -80(s0)
	sw t0, -84(s0)
	sw t0, -88(s0)
	sw t0, -92(s0)
	sw t0, -96(s0)
	sw t0, -100(s0)
	sw t0, -104(s0)
	sw t0, -108(s0)
	sw t0, -112(s0)
	sw t0, -116(s0)
	sw t0, -120(s0)
	sw t0, -124(s0)
	sw t0, -128(s0)
	sw t0, -132(s0)
	sw t0, -136(s0)
	sw t0, -140(s0)
	lw t1, -24(s0)
	lw t0, -28(s0)
	add t1, t1, t0
	lw t0, -32(s0)
	add t1, t1, t0
	lw t0, -36(s0)
	add t1, t1, t0
	lw t0, -40(s0)
	add t1, t1, t0
	lw t0, -44(s0)
	add t1, t1, t0
	lw t0, -48(s0)
	add t1, t1, t0
	lw t0, -52(s0)
	add t1, t1, t0
	lw t0, -56(s0)
	add t1, t1, t0
	lw t0, -60(s0)
	add t1, t1, t0
	lw t0, -64(s0)
	add t1, t1, t0
	lw t0, -68(s0)
	add t1, t1, t0
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
	add t0, t1, t0
	addi t1, zero, 100
	rem t1, t0, t1
	lw t0, -144(s0)
	sw t1, -144(s0)
	lw t1, -16(s0)
	lw t0, -20(s0)
	rem t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB1_2
	j .LibroBB1_3
.LibroBB1_1: 
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB1_4
.LibroBB1_2: 
	lw a0, -20(s0)
	lw t1, -16(s0)
	lw t0, -20(s0)
	rem a1, t1, t0
	lw a2, -144(s0)
	lw a3, -28(s0)
	lw a4, -32(s0)
	lw a5, -36(s0)
	lw a6, -40(s0)
	lw a7, -44(s0)
	lw t0, -48(s0)
	lw t0, -52(s0)
	lw t0, -56(s0)
	lw t0, -60(s0)
	lw t0, -64(s0)
	lw t0, -68(s0)
	lw t0, -72(s0)
	lw t0, -76(s0)
	lw t0, -80(s0)
	lw t0, -84(s0)
	lw t0, -88(s0)
	lw t0, -92(s0)
	lw t0, -96(s0)
	lw t0, -100(s0)
	lw t0, -104(s0)
	lw t0, -108(s0)
	lw t0, -112(s0)
	lw t0, -116(s0)
	lw t0, -120(s0)
	lw t0, -124(s0)
	lw t0, -128(s0)
	lw t0, -132(s0)
	lw t0, -136(s0)
	lw t0, -140(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call gcd2
	mv a0, a0
	sw a0, -12(s0)
	j .LibroBB1_4
.LibroBB1_3: 
	lw t0, -20(s0)
	sw t0, -12(s0)
	j .LibroBB1_4
.LibroBB1_4: 
	lw a0, -12(s0)
	mv a0, a0
	lw s0, 136(sp)
	lw ra, 140(sp)
	addi sp, sp, 144
	ret
gcd2: 
	addi sp, sp, -144
	sw ra, 140(sp)
	sw s0, 136(sp)
	addi s0, sp, 144
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	addi t1, zero, 0
	sw t1, -12(s0)
	sw a0, -16(s0)
	sw a1, -20(s0)
	sw a2, -24(s0)
	sw a3, -28(s0)
	sw a4, -32(s0)
	sw a5, -36(s0)
	sw a6, -40(s0)
	sw a7, -44(s0)
	sw t0, -48(s0)
	sw t0, -52(s0)
	sw t0, -56(s0)
	sw t0, -60(s0)
	sw t0, -64(s0)
	sw t0, -68(s0)
	sw t0, -72(s0)
	sw t0, -76(s0)
	sw t0, -80(s0)
	sw t0, -84(s0)
	sw t0, -88(s0)
	sw t0, -92(s0)
	sw t0, -96(s0)
	sw t0, -100(s0)
	sw t0, -104(s0)
	sw t0, -108(s0)
	sw t0, -112(s0)
	sw t0, -116(s0)
	sw t0, -120(s0)
	sw t0, -124(s0)
	sw t0, -128(s0)
	sw t0, -132(s0)
	sw t0, -136(s0)
	sw t0, -140(s0)
	lw t1, -24(s0)
	lw t0, -28(s0)
	add t1, t1, t0
	lw t0, -32(s0)
	add t1, t1, t0
	lw t0, -36(s0)
	add t1, t1, t0
	lw t0, -40(s0)
	add t1, t1, t0
	lw t0, -44(s0)
	add t1, t1, t0
	lw t0, -48(s0)
	add t1, t1, t0
	lw t0, -52(s0)
	add t1, t1, t0
	lw t0, -56(s0)
	add t1, t1, t0
	lw t0, -60(s0)
	add t1, t1, t0
	lw t0, -64(s0)
	add t1, t1, t0
	lw t0, -68(s0)
	add t1, t1, t0
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
	add t0, t1, t0
	addi t1, zero, 100
	rem t1, t0, t1
	lw t0, -144(s0)
	sw t1, -144(s0)
	lw t1, -16(s0)
	lw t0, -20(s0)
	rem t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB2_2
	j .LibroBB2_1
.LibroBB2_1: 
	lw t0, -20(s0)
	sw t0, -12(s0)
	j .LibroBB2_4
.LibroBB2_2: 
	lw a0, -20(s0)
	lw t1, -16(s0)
	lw t0, -20(s0)
	rem a1, t1, t0
	lw a2, -24(s0)
	lw a3, -28(s0)
	lw a4, -32(s0)
	lw a5, -36(s0)
	lw a6, -40(s0)
	lw a7, -44(s0)
	lw t0, -48(s0)
	lw t0, -52(s0)
	lw t0, -56(s0)
	lw t0, -60(s0)
	lw t0, -64(s0)
	lw t0, -68(s0)
	lw t0, -72(s0)
	lw t0, -76(s0)
	lw t0, -80(s0)
	lw t0, -84(s0)
	lw t0, -88(s0)
	lw t0, -92(s0)
	lw t0, -96(s0)
	lw t0, -100(s0)
	lw t0, -104(s0)
	lw t0, -108(s0)
	lw t0, -112(s0)
	lw t0, -116(s0)
	lw t0, -120(s0)
	lw t0, -124(s0)
	lw t0, -128(s0)
	lw t0, -132(s0)
	lw t0, -136(s0)
	lw t0, -140(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call gcd
	mv a0, a0
	sw a0, -12(s0)
	j .LibroBB2_4
.LibroBB2_3: 
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB2_4
.LibroBB2_4: 
	lw a0, -12(s0)
	mv a0, a0
	lw s0, 136(sp)
	lw ra, 140(sp)
	addi sp, sp, 144
	ret
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	addi s0, sp, 12
	addi t0, zero, 0
	sw t0, -12(s0)
	addi a0, zero, 10
	mv a0, a0
	addi a1, zero, 1
	mv a1, a1
	addi a2, zero, 0
	mv a2, a2
	addi a3, zero, 2
	mv a3, a3
	addi a4, zero, 4
	mv a4, a4
	addi a5, zero, 6
	mv a5, a5
	addi a6, zero, 8
	mv a6, a6
	addi a7, zero, 10
	mv a7, a7
	addi t0, zero, 12
	addi t0, zero, 14
	addi t0, zero, 16
	addi t0, zero, 18
	addi t0, zero, 20
	addi t0, zero, 22
	addi t0, zero, 24
	addi t0, zero, 26
	addi t0, zero, 28
	addi t0, zero, 30
	addi t0, zero, 32
	addi t0, zero, 34
	addi t0, zero, 36
	addi t0, zero, 38
	addi t0, zero, 40
	addi t0, zero, 42
	addi t0, zero, 44
	addi t0, zero, 46
	addi t0, zero, 48
	addi t0, zero, 50
	addi t0, zero, 52
	addi t0, zero, 54
	addi t0, zero, 56
	addi t0, zero, 58
	call gcd
	mv a0, a0
	addi t0, zero, 1024
	add t0, a0, t0
	mv a0, t0
	call toString
	mv a0, a0
	addi t0, a0, 4
	lw a0, 0(t0)
	mv a0, a0
	call println
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB3_1
.LibroBB3_1: 
	lw a0, -12(s0)
	mv a0, a0
	lw s0, 4(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.data
