	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw ra, 12(sp)
	addi s0, sp, 16
	addi t0, zero, 0
	sw t0, -12(s0)
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a0, a0
	addi t0, zero, 1
	sw t0, 0(a0)
	sw a0, -16(s0)
	lw t2, -16(s0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	lw t0, 0(t1)
	addi t0, zero, 10
	sw t0, 0(t1)
	lw t2, -16(s0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 20
	add t0, t1, t0
	sw t0, -12(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw a0, -12(s0)
	mv a0, a0
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.data
