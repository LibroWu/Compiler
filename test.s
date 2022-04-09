	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call getInt
	la t0, n
	sw a0, 0(t0)
	call getInt
	la t0, m
	sw a0, 0(t0)
	call getInt
	la t0, a
	sw a0, 0(t0)
	la t0, m
	lw t1, 0(t0)
	la t0, a
	lw t0, 0(t0)
	add t0, t1, t0
	addi t1, t0, -1
	la t0, a
	lw t0, 0(t0)
	div t2, t1, t0
	la t0, n
	lw t1, 0(t0)
	la t0, a
	lw t0, 0(t0)
	add t0, t1, t0
	addi t1, t0, -1
	la t0, a
	lw t0, 0(t0)
	div t0, t1, t0
	mul a0, t2, t0
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB0_1
.LibroBB0_1: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

	.type	m,@object
m:
	.word	0
	.size	m, 4

	.type	a,@object
a:
	.word	0
	.size	a, 4

