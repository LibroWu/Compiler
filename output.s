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
	bnez t1, .LibroBB0_4
	j .LibroBB0_5
.LibroBB0_4: 
	mul t0, t0, t0
	rem t0, t0, a2
	srai a1, a1, 1
	j .LibroBB0_1
.LibroBB0_5: 
	mul t1, a0, t0
	rem a0, t1, a2
	j .LibroBB0_4
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 2
	addi a1, zero, 10
	lui a2, 2
	addi a2, a2, 1808
	call qpow
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB1_1
.LibroBB1_1: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
