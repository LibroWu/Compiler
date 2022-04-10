	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t1, zero, 100
	la t0, n
	sw t1, 0(t0)
	j .LibroBB0_1
.LibroBB0_1: 
	la t0, n
	lw a0, 0(t0)
	addi t0, zero, 0
	addi t1, zero, 0
	j .LibroBB0_2
.LibroBB0_2: 
	bge t1, a0, .LibroBB0_3
	j .LibroBB0_4
.LibroBB0_3: 
	j .LibroBB0_5
.LibroBB0_4: 
	addi t2, t1, 1
	addi s1, zero, 0
	xor s1, t2, s1
	beqz s1, .LibroBB0_6
	j .LibroBB0_7
.LibroBB0_5: 
	addi t2, zero, 200
	la t1, n
	sw t2, 0(t1)
	j .LibroBB0_8
.LibroBB0_6: 
	j .LibroBB0_9
.LibroBB0_7: 
	mv t0, t2
	j .LibroBB0_6
.LibroBB0_8: 
	la t1, n
	lw a1, 0(t1)
	addi s1, zero, 0
	addi t1, zero, 0
	j .LibroBB0_10
.LibroBB0_9: 
	addi t1, t1, 1
	j .LibroBB0_2
.LibroBB0_10: 
	bge t1, a1, .LibroBB0_11
	j .LibroBB0_12
.LibroBB0_11: 
	j .LibroBB0_13
.LibroBB0_12: 
	addi t2, t1, 1
	addi a0, zero, 0
	xor a0, t2, a0
	beqz a0, .LibroBB0_16
	j .LibroBB0_14
.LibroBB0_13: 
	add t0, t0, s1
	addi a0, t0, -300
	j .LibroBB0_15
.LibroBB0_14: 
	mv s1, t2
	j .LibroBB0_16
.LibroBB0_15: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB0_16: 
	j .LibroBB0_17
.LibroBB0_17: 
	addi t1, t1, 1
	j .LibroBB0_10
test: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	la t0, n
	lw s1, 0(t0)
	addi a0, zero, 0
	addi t0, zero, 0
	j .LibroBB1_1
.LibroBB1_1: 
	bge t0, s1, .LibroBB1_2
	j .LibroBB1_3
.LibroBB1_2: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB1_3: 
	addi t1, t0, 1
	addi t2, zero, 0
	xor t2, t1, t2
	beqz t2, .LibroBB1_5
	j .LibroBB1_4
.LibroBB1_4: 
	mv a0, t1
	j .LibroBB1_5
.LibroBB1_5: 
	j .LibroBB1_6
.LibroBB1_6: 
	addi t0, t0, 1
	j .LibroBB1_1
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

