	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	addi s0, sp, 24
	addi t0, zero, 0
	sw t0, -12(s0)
	lw t0, -16(s0)
	addi t0, zero, 1
	sw t0, -16(s0)
	lw t1, -16(s0)
	lw t0, -16(s0)
	add t1, t1, t0
	lw t0, -16(s0)
	add t1, t1, t0
	lw t0, -16(s0)
	sw t1, -16(s0)
	lw t0, -16(s0)
	sw t0, -12(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw a0, -12(s0)
	lw s0, 16(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
.data
