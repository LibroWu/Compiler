	.text
	.globl main
	.p2align	2
	.type	main,@function
gcd: 
	addi sp, sp, -204
	sw ra, 200(sp)
	sw s0, 196(sp)
	sw s1, 192(sp)
	sw s2, 188(sp)
	sw s3, 184(sp)
	sw s4, 180(sp)
	sw s5, 176(sp)
	sw s6, 172(sp)
	sw s7, 168(sp)
	sw s8, 164(sp)
	sw s9, 160(sp)
	sw s10, 156(sp)
	sw s11, 152(sp)
	addi s0, sp, 204
	mv s6, a0
	mv a0, a2
	mv s3, a4
	mv s2, a5
	mv s1, a6
	mv s5, a7
	addi t1, zero, 0
	j .LibroBB0_2
.LibroBB0_1: 
	mv t2, s6
	mv t1, a1
	rem t2, t2, t1
	addi t1, zero, 0
	xor t1, t2, t1
	bnez t1, .LibroBB0_7
	j .LibroBB0_6
.LibroBB0_2: 
	addi t2, zero, 10
	slt t2, t2, t1
	bnez t2, .LibroBB0_1
	j .LibroBB0_4
.LibroBB0_3: 
	addi t1, t1, 1
	j .LibroBB0_2
.LibroBB0_4: 
	mv t2, a0
	mv t0, a3
	add t0, t2, t0
	mv t2, s3
	add t0, t0, t2
	mv t2, s2
	add t0, t0, t2
	mv t2, s1
	add t0, t0, t2
	mv t2, s5
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t0, t0, t2
	mv t2, s4
	add t2, t0, t2
	lw t0, -76(s0)
	add t2, t2, t0
	lw t0, -84(s0)
	add t2, t2, t0
	lw t0, -92(s0)
	add t2, t2, t0
	addi t0, zero, 100
	rem t0, t2, t0
	j .LibroBB0_3
.LibroBB0_5: 
	addi a0, zero, 0
	j .LibroBB0_8
.LibroBB0_6: 
	mv a0, a1
	j .LibroBB0_8
.LibroBB0_7: 
	mv t1, a1
	sw t1, -88(s0)
	mv t2, s6
	mv t1, a1
	rem t1, t2, t1
	sw t1, -96(s0)
	sw t0, -100(s0)
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
	mv a4, s3
	mv a5, s2
	mv a6, s1
	mv a7, s5
	mv t0, s4
	sw t0, -56(s0)
	mv t0, s4
	sw t0, -60(s0)
	mv t0, s4
	sw t0, -64(s0)
	mv t0, s4
	sw t0, -68(s0)
	mv t0, s4
	sw t0, -72(s0)
	mv t0, s4
	sw t0, -80(s0)
	mv s6, s4
	mv s7, s4
	mv s8, s4
	mv s9, s4
	mv s10, s4
	mv s11, s4
	mv t3, s4
	mv t4, s4
	mv t5, s4
	mv s5, s4
	mv t0, s4
	sw t0, -104(s0)
	mv t6, s4
	mv s3, s4
	mv s2, s4
	mv s1, s4
	lw t2, -76(s0)
	lw t1, -84(s0)
	lw t0, -92(s0)
	lw a0, -88(s0)
	lw a1, -96(s0)
	lw a2, -100(s0)
	lw a1, -56(s0)
	sw a1, 0(sp)
	lw a1, -60(s0)
	sw a1, 4(sp)
	lw a1, -64(s0)
	sw a1, 8(sp)
	lw a1, -68(s0)
	sw a1, 12(sp)
	lw a1, -72(s0)
	sw a1, 16(sp)
	lw a1, -80(s0)
	sw a1, 20(sp)
	sw s6, 24(sp)
	sw s7, 28(sp)
	sw s8, 32(sp)
	sw s9, 36(sp)
	sw s10, 40(sp)
	sw s11, 44(sp)
	sw t3, 48(sp)
	sw t4, 52(sp)
	sw t5, 56(sp)
	sw s5, 60(sp)
	lw a1, -104(s0)
	sw a1, 64(sp)
	sw t6, 68(sp)
	sw s3, 72(sp)
	sw s2, 76(sp)
	sw s1, 80(sp)
	sw t2, 84(sp)
	sw t1, 88(sp)
	sw t0, 92(sp)
	call gcd1
	j .LibroBB0_8
.LibroBB0_8: 
	lw s0, 196(sp)
	lw s1, 192(sp)
	lw s2, 188(sp)
	lw s3, 184(sp)
	lw s4, 180(sp)
	lw s5, 176(sp)
	lw s6, 172(sp)
	lw s7, 168(sp)
	lw s8, 164(sp)
	lw s9, 160(sp)
	lw s10, 156(sp)
	lw s11, 152(sp)
	lw ra, 200(sp)
	addi sp, sp, 204
	ret
gcd1: 
	addi sp, sp, -212
	sw ra, 208(sp)
	sw s0, 204(sp)
	sw s1, 200(sp)
	sw s2, 196(sp)
	sw s3, 192(sp)
	sw s4, 188(sp)
	sw s5, 184(sp)
	sw s6, 180(sp)
	sw s7, 176(sp)
	sw s8, 172(sp)
	sw s9, 168(sp)
	sw s10, 164(sp)
	sw s11, 160(sp)
	addi s0, sp, 212
	mv t3, a0
	mv a0, a1
	mv a1, a2
	mv a2, a1
	mv a1, a3
	add a2, a2, a1
	mv a1, a4
	add a1, a2, a1
	add a1, a1, a5
	add a1, a1, a6
	add a2, a1, a7
	mv a1, t1
	add a1, a2, a1
	add a1, a1, s11
	add a1, a1, s10
	add a1, a1, s9
	add a1, a1, s8
	add a2, a1, t0
	mv a1, t1
	add a2, a2, a1
	mv a1, t1
	add a1, a2, a1
	add a2, a1, s7
	mv a1, t1
	add a2, a2, a1
	mv a1, t1
	add a1, a2, a1
	add a1, a1, s6
	add a2, a1, s5
	mv a1, s4
	add a2, a2, a1
	mv a1, s3
	add a2, a2, a1
	mv a1, s2
	add a1, a2, a1
	add a1, a1, s1
	add a2, a1, t2
	mv a1, t1
	add a2, a2, a1
	lw a1, -60(s0)
	add a2, a2, a1
	lw a1, -64(s0)
	add a2, a2, a1
	lw a1, -68(s0)
	add a2, a2, a1
	lw a1, -72(s0)
	add a2, a2, a1
	lw a1, -76(s0)
	add a1, a2, a1
	addi a2, zero, 100
	rem a2, a1, a2
	mv a1, t3
	rem t4, a1, a0
	addi a1, zero, 0
	xor a1, t4, a1
	bnez a1, .LibroBB1_2
	j .LibroBB1_1
.LibroBB1_1: 
	j .LibroBB1_4
.LibroBB1_2: 
	mv a1, a0
	rem a1, t3, a1
	mv t3, t1
	sw t3, -80(s0)
	sw s11, -84(s0)
	sw s10, -88(s0)
	sw s9, -92(s0)
	sw s8, -96(s0)
	sw t0, -112(s0)
	mv t6, t1
	mv t5, t1
	mv t4, t1
	mv t3, t1
	lw t0, -60(s0)
	mv s11, t0
	lw t0, -64(s0)
	mv s10, t0
	lw t0, -68(s0)
	mv s9, t0
	lw t0, -72(s0)
	mv s8, t0
	lw t0, -76(s0)
	sw t0, -104(s0)
	lw t0, -104(s0)
	sw t0, -100(s0)
	lw t0, -100(s0)
	sw t0, -108(s0)
	lw t0, -108(s0)
	sw t0, -56(s0)
	lw t0, -80(s0)
	sw t0, 0(sp)
	lw t0, -84(s0)
	sw t0, 4(sp)
	lw t0, -88(s0)
	sw t0, 8(sp)
	lw t0, -92(s0)
	sw t0, 12(sp)
	lw t0, -96(s0)
	sw t0, 16(sp)
	lw t0, -112(s0)
	sw t0, 20(sp)
	sw t6, 24(sp)
	sw t5, 28(sp)
	sw s7, 32(sp)
	sw t4, 36(sp)
	sw t3, 40(sp)
	sw s6, 44(sp)
	sw s5, 48(sp)
	sw s4, 52(sp)
	sw s3, 56(sp)
	sw s2, 60(sp)
	sw s1, 64(sp)
	sw t2, 68(sp)
	sw t1, 72(sp)
	sw s11, 76(sp)
	sw s10, 80(sp)
	sw s9, 84(sp)
	sw s8, 88(sp)
	lw t0, -56(s0)
	sw t0, 92(sp)
	call gcd2
	j .LibroBB1_4
.LibroBB1_3: 
	addi a0, zero, 0
	j .LibroBB1_4
.LibroBB1_4: 
	lw s0, 204(sp)
	lw s1, 200(sp)
	lw s2, 196(sp)
	lw s3, 192(sp)
	lw s4, 188(sp)
	lw s5, 184(sp)
	lw s6, 180(sp)
	lw s7, 176(sp)
	lw s8, 172(sp)
	lw s9, 168(sp)
	lw s10, 164(sp)
	lw s11, 160(sp)
	lw ra, 208(sp)
	addi sp, sp, 212
	ret
gcd2: 
	addi sp, sp, -216
	sw ra, 212(sp)
	sw s0, 208(sp)
	sw s1, 204(sp)
	sw s2, 200(sp)
	sw s3, 196(sp)
	sw s4, 192(sp)
	sw s5, 188(sp)
	sw s6, 184(sp)
	sw s7, 180(sp)
	sw s8, 176(sp)
	sw s9, 172(sp)
	sw s10, 168(sp)
	sw s11, 164(sp)
	addi s0, sp, 216
	mv s11, a0
	mv a0, a1
	mv a1, a3
	add t3, a2, a1
	mv a1, a4
	add a1, t3, a1
	add a1, a1, a5
	add a1, a1, a6
	add t3, a1, a7
	mv a1, t1
	add t3, t3, a1
	mv a1, t1
	add a1, t3, a1
	add a1, a1, s10
	add a1, a1, s9
	add a1, a1, s8
	add a1, a1, s7
	add a1, a1, t0
	add t3, a1, s6
	mv a1, t1
	add t3, t3, a1
	mv a1, t1
	add t3, t3, a1
	mv a1, t1
	add a1, t3, a1
	add a1, a1, s5
	add t3, a1, s4
	mv a1, s3
	add t3, t3, a1
	mv a1, s2
	add a1, t3, a1
	add a1, a1, s1
	add t3, a1, t2
	mv a1, t1
	add t3, t3, a1
	lw a1, -60(s0)
	add t3, t3, a1
	lw a1, -64(s0)
	add a1, t3, a1
	lw a1, -68(s0)
	lw a1, -72(s0)
	mv a1, s11
	rem t3, a1, a0
	addi a1, zero, 0
	xor a1, t3, a1
	bnez a1, .LibroBB2_3
	j .LibroBB2_2
.LibroBB2_1: 
	addi a0, zero, 0
	j .LibroBB2_4
.LibroBB2_2: 
	j .LibroBB2_4
.LibroBB2_3: 
	mv a1, a0
	rem a1, s11, a1
	mv s11, t1
	sw s11, -84(s0)
	mv s11, t1
	sw s11, -88(s0)
	sw s10, -92(s0)
	sw s9, -96(s0)
	sw s8, -100(s0)
	sw t0, -116(s0)
	mv t6, t1
	mv t5, t1
	mv t4, t1
	lw t0, -60(s0)
	mv t3, t0
	lw t0, -64(s0)
	mv s11, t0
	lw t0, -68(s0)
	mv s10, t0
	lw t0, -72(s0)
	mv s9, t0
	lw t0, -76(s0)
	mv s8, t0
	lw t0, -80(s0)
	sw t0, -108(s0)
	lw t0, -108(s0)
	sw t0, -104(s0)
	lw t0, -104(s0)
	sw t0, -112(s0)
	lw t0, -112(s0)
	sw t0, -56(s0)
	lw t0, -84(s0)
	sw t0, 0(sp)
	lw t0, -88(s0)
	sw t0, 4(sp)
	lw t0, -92(s0)
	sw t0, 8(sp)
	lw t0, -96(s0)
	sw t0, 12(sp)
	lw t0, -100(s0)
	sw t0, 16(sp)
	sw s7, 20(sp)
	lw t0, -116(s0)
	sw t0, 24(sp)
	sw s6, 28(sp)
	sw t6, 32(sp)
	sw t5, 36(sp)
	sw t4, 40(sp)
	sw s5, 44(sp)
	sw s4, 48(sp)
	sw s3, 52(sp)
	sw s2, 56(sp)
	sw s1, 60(sp)
	sw t2, 64(sp)
	sw t1, 68(sp)
	sw t3, 72(sp)
	sw s11, 76(sp)
	sw s10, 80(sp)
	sw s9, 84(sp)
	sw s8, 88(sp)
	lw t0, -56(s0)
	sw t0, 92(sp)
	call gcd
	j .LibroBB2_4
.LibroBB2_4: 
	lw s0, 208(sp)
	lw s1, 204(sp)
	lw s2, 200(sp)
	lw s3, 196(sp)
	lw s4, 192(sp)
	lw s5, 188(sp)
	lw s6, 184(sp)
	lw s7, 180(sp)
	lw s8, 176(sp)
	lw s9, 172(sp)
	lw s10, 168(sp)
	lw s11, 164(sp)
	lw ra, 212(sp)
	addi sp, sp, 216
	ret
main: 
	addi sp, sp, -108
	sw ra, 104(sp)
	sw s0, 100(sp)
	addi s0, sp, 108
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
	addi a0, a0, 1024
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	addi a0, zero, 0
	j .LibroBB3_1
.LibroBB3_1: 
	lw s0, 100(sp)
	lw ra, 104(sp)
	addi sp, sp, 108
	ret
.data
