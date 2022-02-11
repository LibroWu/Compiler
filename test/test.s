	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw ra, 12(sp)
	addi s0, sp, 16
	addi t1, zero, 0
	sw t1, -12(s0)
	addi t1, zero, 10
	sw t1, -16(s0)
	lw t2, -16(s0)
	addi t1, zero, 10
	xor t1, t2, t1
	seqz t1, t1
	beqz t1, .LibroBB0_1
	j .LibroBB0_3
.LibroBB0_1: 
	lw t1, -16(s0)
	addi t0, zero, 30
	sw t0, -16(s0)
	j .LibroBB0_2
.LibroBB0_2: 
	lw t0, -16(s0)
	sw t0, -12(s0)
	j .LibroBB0_4
.LibroBB0_3: 
	lw t1, -16(s0)
	addi t0, zero, 20
	sw t0, -16(s0)
	j .LibroBB0_2
.LibroBB0_4: 
	lw a3, -12(s0)
	mv a0, a3
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.data
