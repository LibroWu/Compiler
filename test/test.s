	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -32
	sw s0, 24(sp)
	sw ra, 28(sp)
	addi s0, sp, 32
	addi t0, zero, 0
	sw t0, -12(s0)
	addi t0, zero, 10
	sw t0, -16(s0)
	addi t0, zero, 0
	sw t0, -20(s0)
	addi t0, zero, 1
	sw t0, -24(s0)
	lw t0, -32(s0)
	addi t0, zero, 1
	sw t0, -32(s0)
	j .LibroBB0_4
.LibroBB0_1: 
	lw t0, -28(s0)
	sw t0, -12(s0)
	j .LibroBB0_5
.LibroBB0_2: 
	lw t1, -32(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -32(s0)
	j .LibroBB0_4
.LibroBB0_3: 
	lw t1, -20(s0)
	lw t0, -24(s0)
	add t1, t1, t0
	lw t0, -28(s0)
	sw t1, -28(s0)
	lw t1, -24(s0)
	lw t0, -20(s0)
	sw t1, -20(s0)
	lw t1, -28(s0)
	lw t0, -24(s0)
	sw t1, -24(s0)
	j .LibroBB0_2
.LibroBB0_4: 
	lw t1, -32(s0)
	lw t0, -16(s0)
	slt t0, t1, t0
	beqz t0, .LibroBB0_1
	j .LibroBB0_3
.LibroBB0_5: 
	lw a0, -12(s0)
	mv a0, a0
	lw s0, 24(sp)
	lw ra, 28(sp)
	addi sp, sp, 32
	ret
.data
