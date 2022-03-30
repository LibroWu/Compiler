	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t2, zero, 5
	addi t0, zero, 1
	add t2, t2, t0
	addi t1, zero, 5
	addi t0, zero, 5
	add t1, t1, t0
	add a0, t1, t2
	j .LibroBB0_1
.LibroBB0_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
