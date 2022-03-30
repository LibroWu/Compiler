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
	lw t2, 0(t0)
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi t0, zero, 0
	addi a0, zero, 0
	addi t0, zero, 0
	j .LibroBB0_1
.LibroBB0_1: 
	bge t0, t2, .LibroBB0_3
	j .LibroBB0_2
.LibroBB0_2: 
	addi t1, t0, 1
	addi s1, zero, 0
	xor s1, t1, s1
	beqz s1, .LibroBB0_6
	j .LibroBB0_4
.LibroBB0_3: 
	j .LibroBB0_5
.LibroBB0_4: 
	mv a0, t1
	j .LibroBB0_6
.LibroBB0_5: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB0_6: 
	j .LibroBB0_7
.LibroBB0_7: 
	addi t0, t0, 1
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
	call test
	mv s1, a0
	addi t1, zero, 200
	la t0, n
	sw t1, 0(t0)
	call test
	add t0, s1, a0
	addi a0, t0, -300
	j .LibroBB1_1
.LibroBB1_1: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

