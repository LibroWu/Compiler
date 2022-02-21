	.text
	.globl main
	.p2align	2
	.type	main,@function
test: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	la t1, n
	lw a0, 0(t1)
	addi s1, zero, 0
	j .LibroBB0_3
.LibroBB0_1: 
	addi t2, s1, 1
	mv t1, t2
	addi t2, zero, 0
	xor t2, t1, t2
	beqz t2, .LibroBB0_6
	j .LibroBB0_5
.LibroBB0_2: 
	j .LibroBB0_7
.LibroBB0_3: 
	bge s1, a0, .LibroBB0_2
	j .LibroBB0_1
.LibroBB0_4: 
	addi s1, s1, 1
	j .LibroBB0_3
.LibroBB0_5: 
	j .LibroBB0_6
.LibroBB0_6: 
	j .LibroBB0_4
.LibroBB0_7: 
	ret
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi t1, zero, 100
	la t0, n
	sw t1, 0(t0)
	call test
	mv s1, a0
	addi t1, zero, 200
	la t0, n
	sw t1, 0(t0)
	call test
	add t0, s1, a0
	j .LibroBB1_1
.LibroBB1_1: 
	ret
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

