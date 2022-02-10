	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -24
	sw s0, 16(sp)
	sw ra, 20(sp)
	addi s0, sp, 24
	addi t2, zero, 0
	sw t2, 0(sp)
	lw t1, 0(sp)
	sw t1, -12(s0)
	addi t2, zero, 0
	sw t2, 4(sp)
	lw t1, 4(sp)
	sw t1, -12(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw t2, -12(s0)
	sw t2, 8(sp)
	lw t0, 8(sp)
	mv a0, t0
	lw s0, 16(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
.data
