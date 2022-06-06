	.text
	.globl main
	.p2align	2
	.type	main,@function
qpow: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	addi a0, zero, 1
	j .LibroBB0_1
.LibroBB0_1: 
	addi t1, zero, 0
	bge t1, a1, .LibroBB0_2
	j .LibroBB0_3
.LibroBB0_2: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB0_3: 
	andi t2, a1, 1
	addi t1, zero, 1
	xor t1, t2, t1
	bnez t1, .LibroBB0_5
	j .LibroBB0_4
.LibroBB0_4: 
	mul t1, a0, t0
	rem a0, t1, a2
	j .LibroBB0_5
.LibroBB0_5: 
	mul t0, t0, t0
	rem t0, t0, a2
	srai a1, a1, 1
	j .LibroBB0_1
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t1, zero, 2
	addi a0, zero, 1
	addi t0, zero, 10
	j .LibroBB1_1
.LibroBB1_1: 
	addi t2, zero, 0
	bge t2, t0, .LibroBB1_3
	j .LibroBB1_2
.LibroBB1_2: 
	andi s1, t0, 1
	addi t2, zero, 1
	xor t2, s1, t2
	bnez t2, .LibroBB1_5
	j .LibroBB1_4
.LibroBB1_3: 
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	li a0, 0
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB1_4: 
	mul t2, a0, t1
	lui a0, 2
	addi a0, a0, 1808
	rem a0, t2, a0
	j .LibroBB1_5
.LibroBB1_5: 
	mul t2, t1, t1
	lui t1, 2
	addi t1, t1, 1808
	rem t1, t2, t1
	srai t0, t0, 1
	j .LibroBB1_1
.data
