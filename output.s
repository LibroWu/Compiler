	.text
	.globl main
	.p2align	2
	.type	main,@function
f: 
	addi sp, sp, -48
	sw ra, 44(sp)
	sw s0, 40(sp)
	addi s0, sp, 48
	lw t1, 0(s0)
	addi t0, zero, 0
	sw t0, -12(s0)
	sw a0, -16(s0)
	sw a1, -20(s0)
	sw a2, -24(s0)
	sw a3, -28(s0)
	sw a4, -32(s0)
	sw a5, -36(s0)
	sw a6, -40(s0)
	sw a7, -44(s0)
	sw t1, -48(s0)
	lw t1, -16(s0)
	lw t0, -20(s0)
	add t1, t1, t0
	lw t0, -24(s0)
	add t1, t1, t0
	lw t0, -28(s0)
	add t1, t1, t0
	lw t0, -32(s0)
	add t1, t1, t0
	lw t0, -36(s0)
	add t1, t1, t0
	lw t0, -40(s0)
	add t1, t1, t0
	lw t0, -44(s0)
	add t1, t1, t0
	lw t0, -48(s0)
	add t0, t1, t0
	sw t0, -12(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw a0, -12(s0)
	lw s0, 40(sp)
	lw ra, 44(sp)
	addi sp, sp, 48
	ret
main: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	addi s0, sp, 20
	addi t0, zero, 0
	sw t0, -12(s0)
	addi a0, zero, 1
	addi a1, zero, 2
	addi a2, zero, 3
	addi a3, zero, 4
	addi a4, zero, 5
	addi a5, zero, 6
	addi a6, zero, 7
	addi a7, zero, 8
	addi t0, zero, 9
	sw t0, 0(sp)
	call f
	sw a0, -12(s0)
	j .LibroBB1_1
.LibroBB1_1: 
	lw a0, -12(s0)
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
.data
