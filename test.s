	.text
	.globl main
	.p2align	2
	.type	main,@function
test: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	la t0, n
	lw a1, 0(t0)
	addi a0, zero, 0
	addi t1, zero, 0
	j .LibroBB0_1
.LibroBB0_1: 
	bge t1, a1, .LibroBB0_2
	j .LibroBB0_3
.LibroBB0_2: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB0_3: 
	addi s1, t1, 1
	addi t0, zero, 0
	xor t2, s1, t0
	add t0, zero, a0
	beqz t2, .LibroBB0_5
	j .LibroBB0_4
.LibroBB0_4: 
	add t0, zero, s1
	j .LibroBB0_5
.LibroBB0_5: 
	addi t1, t1, 1
	add a0, zero, t0
	add t1, zero, t1
	j .LibroBB0_1
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t1, zero, 100
	la t0, n
	sw t1, 0(t0)
	la t0, n
	lw a1, 0(t0)
	addi t2, zero, 0
	addi t1, zero, 0
	j .LibroBB1_1
.LibroBB1_1: 
	bge t1, a1, .LibroBB1_2
	j .LibroBB1_3
.LibroBB1_2: 
	addi t1, zero, 200
	la t0, n
	sw t1, 0(t0)
	la t0, n
	lw a1, 0(t0)
	addi t0, zero, 0
	addi t1, zero, 0
	j .LibroBB1_4
.LibroBB1_3: 
	addi a0, t1, 1
	addi t0, zero, 0
	xor s1, a0, t0
	add t0, zero, t2
	beqz s1, .LibroBB1_8
	j .LibroBB1_5
.LibroBB1_4: 
	bge t1, a1, .LibroBB1_7
	j .LibroBB1_6
.LibroBB1_5: 
	add t0, zero, a0
	j .LibroBB1_8
.LibroBB1_6: 
	addi a0, t1, 1
	addi s1, zero, 0
	xor s1, a0, s1
	add t0, zero, t0
	beqz s1, .LibroBB1_10
	j .LibroBB1_9
.LibroBB1_7: 
	add t0, t2, t0
	addi a0, t0, -300
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB1_8: 
	addi t1, t1, 1
	add t2, zero, t0
	add t1, zero, t1
	j .LibroBB1_1
.LibroBB1_9: 
	add t0, zero, a0
	j .LibroBB1_10
.LibroBB1_10: 
	addi t1, t1, 1
	add t0, zero, t0
	add t1, zero, t1
	j .LibroBB1_4
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

