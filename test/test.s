	.text
	.globl main
	.p2align	2
	.type	main,@function
abs: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	addi t1, zero, 0
	bge t1, t0, .LibroBB0_2
	j .LibroBB0_1
.LibroBB0_1: 
	mv a0, t0
	j .LibroBB0_3
.LibroBB0_2: 
	addi a0, zero, 0
	sub a0, a0, t0
	j .LibroBB0_3
.LibroBB0_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB1_1
.LibroBB1_1: 
	la t0, i
	lw t1, 0(t0)
	addi t0, zero, 5
	bge t1, t0, .LibroBB1_2
	j .LibroBB1_3
.LibroBB1_2: 
	la t0, r
	lw t0, 0(t0)
	addi a0, zero, 2
	sub a0, a0, t0
	call abs
	mv s1, a0
	la t0, c
	lw t0, 0(t0)
	addi a0, zero, 2
	sub a0, a0, t0
	call abs
	add a0, s1, a0
	call printInt
	j .LibroBB1_4
.LibroBB1_3: 
	addi t1, zero, 0
	la t0, j
	sw t1, 0(t0)
	j .LibroBB1_5
.LibroBB1_4: 
	li a0, 0
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB1_5: 
	la t0, j
	lw t1, 0(t0)
	addi t0, zero, 5
	bge t1, t0, .LibroBB1_7
	j .LibroBB1_6
.LibroBB1_6: 
	call getInt
	la t0, n
	sw a0, 0(t0)
	la t0, n
	lw t1, 0(t0)
	addi t0, zero, 1
	xor t0, t1, t0
	bnez t0, .LibroBB1_8
	j .LibroBB1_9
.LibroBB1_7: 
	j .LibroBB1_10
.LibroBB1_8: 
	j .LibroBB1_11
.LibroBB1_9: 
	la t0, i
	lw t1, 0(t0)
	la t0, r
	sw t1, 0(t0)
	la t0, j
	lw t1, 0(t0)
	la t0, c
	sw t1, 0(t0)
	j .LibroBB1_8
.LibroBB1_10: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB1_1
.LibroBB1_11: 
	la t0, j
	lw t0, 0(t0)
	addi t0, t0, 1
	la t1, j
	sw t0, 0(t1)
	j .LibroBB1_5
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

	.type	r,@object
r:
	.word	0
	.size	r, 4

	.type	c,@object
c:
	.word	0
	.size	c, 4

	.type	i,@object
i:
	.word	0
	.size	i, 4

	.type	j,@object
j:
	.word	0
	.size	j, 4

