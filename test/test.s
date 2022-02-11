	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -80
	sw s0, 72(sp)
	sw ra, 76(sp)
	addi s0, sp, 80
	addi t1, zero, 0
	sw t1, -12(s0)
	addi t1, zero, 10
	sw t1, -16(s0)
	addi t1, zero, 100
	sw t1, -20(s0)
	addi t0, zero, 1000
	sw t0, -24(s0)
	lui t0, 2
	addi t0, t0, 1808
	sw t0, -28(s0)
	lw t1, -16(s0)
	lw t0, -20(s0)
	mul t1, t1, t0
	lw t0, -24(s0)
	sub t1, t1, t0
	lw t0, -28(s0)
	add t0, t1, t0
	sw t0, -12(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw a3, -12(s0)
	mv a0, a3
	lw s0, 72(sp)
	lw ra, 76(sp)
	addi sp, sp, 80
	ret
.data
