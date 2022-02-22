	.text
	.globl main
	.p2align	2
	.type	main,@function
gcd: 
	addi sp, sp, -220
	sw ra, 216(sp)
	sw s0, 212(sp)
	sw s1, 208(sp)
	sw s2, 204(sp)
	sw s3, 200(sp)
	sw s4, 196(sp)
	sw s5, 192(sp)
	sw s6, 188(sp)
	sw s7, 184(sp)
	sw s8, 180(sp)
	sw s9, 176(sp)
	sw s10, 172(sp)
	sw s11, 168(sp)
	addi s0, sp, 220
	mv s8, a0
	mv s7, a1
	mv s6, a2
	mv a2, a3
	mv s5, a4
	mv s4, a5
	mv s3, a6
	mv s2, a7
	addi a0, zero, 0
	j .LibroBB0_2
.LibroBB0_1: 
	mv a1, s8
	mv a0, s7
	rem a1, a1, a0
	addi a0, zero, 0
	xor a0, a1, a0
	bnez a0, .LibroBB0_7
	j .LibroBB0_6
.LibroBB0_2: 
	addi a1, zero, 10
	slt a1, a1, a0
	bnez a1, .LibroBB0_1
	j .LibroBB0_4
.LibroBB0_3: 
	addi a0, a0, 1
	j .LibroBB0_2
.LibroBB0_4: 
	mv a1, s6
	mv s1, a2
	add a1, a1, s1
	mv s1, s5
	add a1, a1, s1
	mv s1, s4
	add a1, a1, s1
	mv s1, s3
	add a1, a1, s1
	mv s1, s2
	add a1, a1, s1
	mv s1, t0
	add a1, a1, s1
	mv s1, t0
	add a1, a1, s1
	mv s1, t0
	add a1, a1, s1
	mv s1, t0
	add a1, a1, s1
	mv s1, t0
	add a1, a1, s1
	mv s1, t0
	add a1, a1, s1
	mv s1, t0
	add s1, a1, s1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add s1, s1, a1
	mv a1, t0
	add a1, s1, a1
	addi s1, zero, 100
	rem s1, a1, s1
	j .LibroBB0_3
.LibroBB0_5: 
	addi a0, zero, 0
	j .LibroBB0_8
.LibroBB0_6: 
	mv a0, s7
	j .LibroBB0_8
.LibroBB0_7: 
	mv a0, s7
	sw a0, -60(s0)
	mv a1, s8
	mv a0, s7
	rem a0, a1, a0
	sw a0, -64(s0)
	sw s1, -68(s0)
	addi a0, zero, 10
	addi a1, zero, 68
	addi a2, zero, 0
	addi a3, zero, 2
	addi a4, zero, 4
	addi a5, zero, 6
	addi a6, zero, 8
	addi a7, zero, 10
	addi s1, zero, 12
	sw s1, 0(sp)
	addi s1, zero, 14
	sw s1, 4(sp)
	addi s1, zero, 16
	sw s1, 8(sp)
	addi s1, zero, 18
	sw s1, 12(sp)
	addi s1, zero, 20
	sw s1, 16(sp)
	addi s1, zero, 22
	sw s1, 20(sp)
	addi s1, zero, 24
	sw s1, 24(sp)
	addi s1, zero, 26
	sw s1, 28(sp)
	addi s1, zero, 28
	sw s1, 32(sp)
	addi s1, zero, 30
	sw s1, 36(sp)
	addi s1, zero, 32
	sw s1, 40(sp)
	addi s1, zero, 34
	sw s1, 44(sp)
	addi s1, zero, 36
	sw s1, 48(sp)
	addi s1, zero, 38
	sw s1, 52(sp)
	addi s1, zero, 40
	sw s1, 56(sp)
	addi s1, zero, 42
	sw s1, 60(sp)
	addi s1, zero, 44
	sw s1, 64(sp)
	addi s1, zero, 46
	sw s1, 68(sp)
	addi s1, zero, 48
	sw s1, 72(sp)
	addi s1, zero, 50
	sw s1, 76(sp)
	addi s1, zero, 52
	sw s1, 80(sp)
	addi s1, zero, 54
	sw s1, 84(sp)
	addi s1, zero, 56
	sw s1, 88(sp)
	addi s1, zero, 58
	sw s1, 92(sp)
	call gcd
	mv a3, a0
	mv a4, s5
	mv a5, s4
	mv a6, s3
	mv a7, s2
	mv s1, t0
	sw s1, -72(s0)
	mv s1, t0
	sw s1, -76(s0)
	mv s1, t0
	sw s1, -80(s0)
	mv s1, t0
	sw s1, -84(s0)
	mv s1, t0
	sw s1, -88(s0)
	mv s1, t0
	sw s1, -92(s0)
	mv s1, t0
	sw s1, -96(s0)
	mv s1, t0
	sw s1, -100(s0)
	mv s1, t0
	sw s1, -104(s0)
	mv s1, t0
	sw s1, -108(s0)
	mv s1, t0
	sw s1, -112(s0)
	mv s1, t0
	sw s1, -116(s0)
	mv s1, t0
	sw s1, -120(s0)
	mv s1, t0
	mv a0, t0
	sw a0, -56(s0)
	mv s3, t0
	mv s4, t0
	mv s5, t0
	mv s6, t0
	mv s7, t0
	mv s8, t0
	mv s9, t0
	mv s10, t0
	mv s2, t0
	lw a0, -60(s0)
	lw a1, -64(s0)
	lw a2, -68(s0)
	lw s11, -72(s0)
	sw s11, 0(sp)
	lw s11, -76(s0)
	sw s11, 4(sp)
	lw s11, -80(s0)
	sw s11, 8(sp)
	lw s11, -84(s0)
	sw s11, 12(sp)
	lw s11, -88(s0)
	sw s11, 16(sp)
	lw s11, -92(s0)
	sw s11, 20(sp)
	lw s11, -96(s0)
	sw s11, 24(sp)
	lw s11, -100(s0)
	sw s11, 28(sp)
	lw s11, -104(s0)
	sw s11, 32(sp)
	lw s11, -108(s0)
	sw s11, 36(sp)
	lw s11, -112(s0)
	sw s11, 40(sp)
	lw s11, -116(s0)
	sw s11, 44(sp)
	lw s11, -120(s0)
	sw s11, 48(sp)
	sw s1, 52(sp)
	lw s1, -56(s0)
	sw s1, 56(sp)
	sw s3, 60(sp)
	sw s4, 64(sp)
	sw s5, 68(sp)
	sw s6, 72(sp)
	sw s7, 76(sp)
	sw s8, 80(sp)
	sw s9, 84(sp)
	sw s10, 88(sp)
	sw s2, 92(sp)
	call gcd1
	j .LibroBB0_8
.LibroBB0_8: 
	lw s0, 212(sp)
	lw s1, 208(sp)
	lw s2, 204(sp)
	lw s3, 200(sp)
	lw s4, 196(sp)
	lw s5, 192(sp)
	lw s6, 188(sp)
	lw s7, 184(sp)
	lw s8, 180(sp)
	lw s9, 176(sp)
	lw s10, 172(sp)
	lw s11, 168(sp)
	lw ra, 216(sp)
	addi sp, sp, 220
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
	mv s1, a0
	sw s1, -112(s0)
	mv s1, a2
	mv a0, s1
	mv s1, a3
	add a0, a0, s1
	mv s1, a4
	add a0, a0, s1
	mv s1, a5
	add a0, a0, s1
	mv s1, a6
	add a0, a0, s1
	mv s1, a7
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add s1, a0, s1
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, s10
	add s1, s1, a0
	mv a0, s9
	add s1, s1, a0
	mv a0, s8
	add s1, s1, a0
	mv a0, s7
	add s1, s1, a0
	mv a0, s6
	add s1, s1, a0
	mv a0, s5
	add s1, s1, a0
	mv a0, s4
	add s1, s1, a0
	mv a0, s3
	add s1, s1, a0
	mv a0, s2
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	addi a2, zero, 100
	rem a2, s1, a2
	lw s1, -112(s0)
	mv a0, s1
	mv s1, a1
	rem a0, a0, s1
	addi s1, zero, 0
	xor s1, a0, s1
	bnez s1, .LibroBB1_2
	j .LibroBB1_1
.LibroBB1_1: 
	mv a0, a1
	j .LibroBB1_4
.LibroBB1_2: 
	mv a0, a1
	lw s1, -112(s0)
	rem a1, s1, a1
	mv s1, t0
	sw s1, -60(s0)
	mv s1, t0
	sw s1, -64(s0)
	mv s1, t0
	sw s1, -68(s0)
	mv s1, t0
	sw s1, -72(s0)
	mv s1, t0
	sw s1, -76(s0)
	mv s1, t0
	sw s1, -80(s0)
	mv s1, t0
	sw s1, -84(s0)
	mv s1, t0
	sw s1, -88(s0)
	mv s1, t0
	sw s1, -92(s0)
	mv s1, t0
	sw s1, -96(s0)
	mv s1, t0
	sw s1, -100(s0)
	mv s1, t0
	sw s1, -104(s0)
	mv s1, t0
	sw s1, -108(s0)
	mv s1, t0
	mv s11, t0
	sw s11, -56(s0)
	lw s11, -60(s0)
	sw s11, 0(sp)
	lw s11, -64(s0)
	sw s11, 4(sp)
	lw s11, -68(s0)
	sw s11, 8(sp)
	lw s11, -72(s0)
	sw s11, 12(sp)
	lw s11, -76(s0)
	sw s11, 16(sp)
	lw s11, -80(s0)
	sw s11, 20(sp)
	lw s11, -84(s0)
	sw s11, 24(sp)
	lw s11, -88(s0)
	sw s11, 28(sp)
	lw s11, -92(s0)
	sw s11, 32(sp)
	lw s11, -96(s0)
	sw s11, 36(sp)
	lw s11, -100(s0)
	sw s11, 40(sp)
	lw s11, -104(s0)
	sw s11, 44(sp)
	lw s11, -108(s0)
	sw s11, 48(sp)
	sw s1, 52(sp)
	sw s10, 56(sp)
	sw s9, 60(sp)
	sw s8, 64(sp)
	sw s7, 68(sp)
	sw s6, 72(sp)
	sw s5, 76(sp)
	sw s4, 80(sp)
	sw s3, 84(sp)
	sw s2, 88(sp)
	lw s1, -56(s0)
	sw s1, 92(sp)
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
	mv s1, a0
	sw s1, -112(s0)
	mv a0, a2
	mv s1, a3
	add a0, a0, s1
	mv s1, a4
	add a0, a0, s1
	mv s1, a5
	add a0, a0, s1
	mv s1, a6
	add a0, a0, s1
	mv s1, a7
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add a0, a0, s1
	mv s1, t0
	add s1, a0, s1
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, t0
	add s1, s1, a0
	mv a0, s10
	add s1, s1, a0
	mv a0, s9
	add s1, s1, a0
	mv a0, s8
	add s1, s1, a0
	mv a0, s7
	add s1, s1, a0
	mv a0, s6
	add s1, s1, a0
	mv a0, s5
	add s1, s1, a0
	mv a0, s4
	lw s1, -112(s0)
	mv a0, s1
	mv s1, a1
	rem a0, a0, s1
	addi s1, zero, 0
	xor s1, a0, s1
	bnez s1, .LibroBB2_3
	j .LibroBB2_2
.LibroBB2_1: 
	addi a0, zero, 0
	j .LibroBB2_4
.LibroBB2_2: 
	mv a0, a1
	j .LibroBB2_4
.LibroBB2_3: 
	mv a0, a1
	lw s1, -112(s0)
	rem a1, s1, a1
	mv s1, t0
	sw s1, -60(s0)
	mv s1, t0
	sw s1, -64(s0)
	mv s1, t0
	sw s1, -68(s0)
	mv s1, t0
	sw s1, -72(s0)
	mv s1, t0
	sw s1, -76(s0)
	mv s1, t0
	sw s1, -80(s0)
	mv s1, t0
	sw s1, -84(s0)
	mv s1, t0
	sw s1, -88(s0)
	mv s1, t0
	sw s1, -92(s0)
	mv s1, t0
	sw s1, -96(s0)
	mv s1, t0
	sw s1, -100(s0)
	mv s1, t0
	sw s1, -104(s0)
	mv s1, t0
	sw s1, -108(s0)
	mv s1, t0
	mv s11, t0
	sw s11, -56(s0)
	lw s11, -60(s0)
	sw s11, 0(sp)
	lw s11, -64(s0)
	sw s11, 4(sp)
	lw s11, -68(s0)
	sw s11, 8(sp)
	lw s11, -72(s0)
	sw s11, 12(sp)
	lw s11, -76(s0)
	sw s11, 16(sp)
	lw s11, -80(s0)
	sw s11, 20(sp)
	lw s11, -84(s0)
	sw s11, 24(sp)
	lw s11, -88(s0)
	sw s11, 28(sp)
	lw s11, -92(s0)
	sw s11, 32(sp)
	lw s11, -96(s0)
	sw s11, 36(sp)
	lw s11, -100(s0)
	sw s11, 40(sp)
	lw s11, -104(s0)
	sw s11, 44(sp)
	lw s11, -108(s0)
	sw s11, 48(sp)
	sw s1, 52(sp)
	sw s10, 56(sp)
	sw s9, 60(sp)
	sw s8, 64(sp)
	sw s7, 68(sp)
	sw s6, 72(sp)
	sw s5, 76(sp)
	sw s4, 80(sp)
	sw s3, 84(sp)
	sw s2, 88(sp)
	lw s1, -56(s0)
	sw s1, 92(sp)
	call gcd
	j .LibroBB2_4
.LibroBB2_4: 
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
main: 
	addi sp, sp, -112
	sw ra, 108(sp)
	sw s0, 104(sp)
	sw s1, 100(sp)
	addi a0, zero, 10
	addi a1, zero, 1
	addi a2, zero, 0
	addi a3, zero, 2
	addi a4, zero, 4
	addi a5, zero, 6
	addi a6, zero, 8
	addi a7, zero, 10
	addi s1, zero, 12
	sw s1, 0(sp)
	addi s1, zero, 14
	sw s1, 4(sp)
	addi s1, zero, 16
	sw s1, 8(sp)
	addi s1, zero, 18
	sw s1, 12(sp)
	addi s1, zero, 20
	sw s1, 16(sp)
	addi s1, zero, 22
	sw s1, 20(sp)
	addi s1, zero, 24
	sw s1, 24(sp)
	addi s1, zero, 26
	sw s1, 28(sp)
	addi s1, zero, 28
	sw s1, 32(sp)
	addi s1, zero, 30
	sw s1, 36(sp)
	addi s1, zero, 32
	sw s1, 40(sp)
	addi s1, zero, 34
	sw s1, 44(sp)
	addi s1, zero, 36
	sw s1, 48(sp)
	addi s1, zero, 38
	sw s1, 52(sp)
	addi s1, zero, 40
	sw s1, 56(sp)
	addi s1, zero, 42
	sw s1, 60(sp)
	addi s1, zero, 44
	sw s1, 64(sp)
	addi s1, zero, 46
	sw s1, 68(sp)
	addi s1, zero, 48
	sw s1, 72(sp)
	addi s1, zero, 50
	sw s1, 76(sp)
	addi s1, zero, 52
	sw s1, 80(sp)
	addi s1, zero, 54
	sw s1, 84(sp)
	addi s1, zero, 56
	sw s1, 88(sp)
	addi s1, zero, 58
	sw s1, 92(sp)
	call gcd
	addi a0, a0, 1024
	call toString
	addi s1, a0, 4
	lw a0, 0(s1)
	call println
	addi a0, zero, 0
	j .LibroBB3_1
.LibroBB3_1: 
	lw s0, 104(sp)
	lw s1, 100(sp)
	lw ra, 108(sp)
	addi sp, sp, 112
	ret
.data
