	.text
	.globl main
	.p2align	2
	.type	main,@function
qpow: 
	addi sp, sp, -36
	sw ra, 32(sp)
	sw s0, 28(sp)
	sw s1, 24(sp)
	addi s0, sp, 36
	addi t0, zero, 0
	sw t0, -16(s0)
	sw a0, -20(s0)
	addi t2, zero, 1
	lw t1, -20(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	addi t0, zero, 0
	bge t0, a1, .LibroBB0_2
	j .LibroBB0_3
.LibroBB0_2: 
	sw t2, -16(s0)
	j .LibroBB0_4
.LibroBB0_3: 
	andi s1, a1, 1
	addi t0, zero, 1
	xor t0, s1, t0
	seqz t0, t0
	beqz t0, .LibroBB0_5
	j .LibroBB0_6
.LibroBB0_4: 
	lw a0, -16(s0)
	lw s0, 28(sp)
	lw s1, 24(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
.LibroBB0_5: 
	mv t0, t1
	mul t0, t0, t1
	rem t1, t0, a2
	srai a1, a1, 1
	j .LibroBB0_1
.LibroBB0_6: 
	mul t0, t2, t1
	rem t2, t0, a2
	j .LibroBB0_5
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	addi s0, sp, 12
	addi t0, zero, 0
	sw t0, -12(s0)
	addi a0, zero, 2
	addi a1, zero, 10
	lui a2, 2
	addi a2, a2, 1808
	call qpow
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB1_1
.LibroBB1_1: 
	lw a0, -12(s0)
	lw s0, 4(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.data
