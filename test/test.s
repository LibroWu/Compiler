	.text
	.globl main
	.p2align	2
	.type	main,@function
init: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	sw s2, 12(sp)
	sw s3, 8(sp)
	sw s4, 4(sp)
	sw s5, 0(sp)
	addi s0, sp, 28
	call getInt
	la t0, n
	sw a0, 0(t0)
	call getInt
	la t0, m
	sw a0, 0(t0)
	la t0, n
	lw s1, 0(t0)
	slli t0, s1, 2
	addi s3, t0, 4
	mv a0, s3
	call myNew
	mv s2, a0
	sw s1, 0(s2)
	addi t0, zero, 4
	j .LibroBB0_1
.LibroBB0_1: 
	addi s1, t0, 4
	bge t0, s3, .LibroBB0_3
	j .LibroBB0_2
.LibroBB0_2: 
	add s5, s2, t0
	la t0, n
	lw s4, 0(t0)
	slli t0, s4, 2
	addi a0, t0, 4
	call myNew
	sw s4, 0(a0)
	sw a0, 0(s5)
	mv t0, s1
	j .LibroBB0_1
.LibroBB0_3: 
	la t0, a
	sw s2, 0(t0)
	addi t0, zero, 0
	addi t1, zero, 0
	j .LibroBB0_4
.LibroBB0_4: 
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB0_6
	j .LibroBB0_5
.LibroBB0_5: 
	addi t0, zero, 0
	j .LibroBB0_7
.LibroBB0_6: 
	addi t0, zero, 0
	j .LibroBB0_8
.LibroBB0_7: 
	la t2, n
	lw t2, 0(t2)
	bge t0, t2, .LibroBB0_9
	j .LibroBB0_10
.LibroBB0_8: 
	la t1, n
	lw t1, 0(t1)
	bge t0, t1, .LibroBB0_12
	j .LibroBB0_11
.LibroBB0_9: 
	j .LibroBB0_13
.LibroBB0_10: 
	la t2, INF
	lw a0, 0(t2)
	la t2, a
	lw s1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, s1, t2
	lw s1, 0(t2)
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, s1, t2
	sw a0, 0(t2)
	j .LibroBB0_14
.LibroBB0_11: 
	la t1, a
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t2, t2, t1
	addi t1, zero, 0
	sw t1, 0(t2)
	j .LibroBB0_15
.LibroBB0_12: 
	addi s1, zero, 0
	j .LibroBB0_16
.LibroBB0_13: 
	addi t1, t1, 1
	j .LibroBB0_4
.LibroBB0_14: 
	addi t0, t0, 1
	j .LibroBB0_7
.LibroBB0_15: 
	addi t0, t0, 1
	j .LibroBB0_8
.LibroBB0_16: 
	la t0, m
	lw t0, 0(t0)
	bge s1, t0, .LibroBB0_17
	j .LibroBB0_18
.LibroBB0_17: 
	j .LibroBB0_19
.LibroBB0_18: 
	call getInt
	mv s3, a0
	call getInt
	mv s2, a0
	call getInt
	la t0, a
	lw t1, 0(t0)
	slli t0, s3, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	j .LibroBB0_20
.LibroBB0_19: 
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw s2, 12(sp)
	lw s3, 8(sp)
	lw s4, 4(sp)
	lw s5, 0(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB0_20: 
	addi s1, s1, 1
	j .LibroBB0_16
main: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	sw s2, 0(sp)
	addi s0, sp, 16
	call _GLOBAL_
	call init
	addi t0, zero, 0
	addi t1, zero, 0
	addi t2, zero, 0
	j .LibroBB1_1
.LibroBB1_1: 
	la t2, n
	lw t2, 0(t2)
	bge t0, t2, .LibroBB1_3
	j .LibroBB1_2
.LibroBB1_2: 
	addi t2, zero, 0
	j .LibroBB1_4
.LibroBB1_3: 
	addi s1, zero, 0
	j .LibroBB1_5
.LibroBB1_4: 
	la s1, n
	lw s1, 0(s1)
	bge t2, s1, .LibroBB1_7
	j .LibroBB1_6
.LibroBB1_5: 
	la t0, n
	lw t0, 0(t0)
	bge s1, t0, .LibroBB1_9
	j .LibroBB1_8
.LibroBB1_6: 
	addi t1, zero, 0
	j .LibroBB1_10
.LibroBB1_7: 
	j .LibroBB1_11
.LibroBB1_8: 
	addi s2, zero, 0
	j .LibroBB1_12
.LibroBB1_9: 
	j .LibroBB1_13
.LibroBB1_10: 
	la s1, n
	lw s1, 0(s1)
	bge t1, s1, .LibroBB1_15
	j .LibroBB1_14
.LibroBB1_11: 
	addi t0, t0, 1
	j .LibroBB1_1
.LibroBB1_12: 
	la t0, n
	lw t0, 0(t0)
	bge s2, t0, .LibroBB1_16
	j .LibroBB1_17
.LibroBB1_13: 
	li a0, 0
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw s2, 0(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.LibroBB1_14: 
	la s1, a
	lw a0, 0(s1)
	slli s1, t2, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a0, 0(s1)
	slli s1, t1, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a2, 0(s1)
	la s1, a
	lw a0, 0(s1)
	slli s1, t2, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a0, 0(s1)
	slli s1, t0, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a1, 0(s1)
	la s1, a
	lw a0, 0(s1)
	slli s1, t0, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a0, 0(s1)
	slli s1, t1, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw s1, 0(s1)
	add s1, a1, s1
	bge s1, a2, .LibroBB1_23
	j .LibroBB1_18
.LibroBB1_15: 
	j .LibroBB1_19
.LibroBB1_16: 
	la a0, .libro.str.2
	call println
	j .LibroBB1_20
.LibroBB1_17: 
	la t0, a
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, INF
	lw t0, 0(t0)
	xor t0, t1, t0
	bnez t0, .LibroBB1_21
	j .LibroBB1_22
.LibroBB1_18: 
	la s1, a
	lw a0, 0(s1)
	slli s1, t2, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a0, 0(s1)
	slli s1, t0, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a1, 0(s1)
	la s1, a
	lw a0, 0(s1)
	slli s1, t0, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a0, 0(s1)
	slli s1, t1, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw s1, 0(s1)
	add a1, a1, s1
	la s1, a
	lw a0, 0(s1)
	slli s1, t2, 2
	addi s1, s1, 4
	add s1, a0, s1
	lw a0, 0(s1)
	slli s1, t1, 2
	addi s1, s1, 4
	add s1, a0, s1
	sw a1, 0(s1)
	j .LibroBB1_23
.LibroBB1_19: 
	addi t2, t2, 1
	j .LibroBB1_4
.LibroBB1_20: 
	addi s1, s1, 1
	j .LibroBB1_5
.LibroBB1_21: 
	la t0, a
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB1_24
.LibroBB1_22: 
	la a0, .libro.str
	call print
	j .LibroBB1_24
.LibroBB1_23: 
	j .LibroBB1_25
.LibroBB1_24: 
	la a0, .libro.str.1
	call print
	j .LibroBB1_26
.LibroBB1_25: 
	addi t1, t1, 1
	j .LibroBB1_10
.LibroBB1_26: 
	addi s2, s2, 1
	j .LibroBB1_12
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	INF,@object
INF:
	.word	10000000
	.size	INF, 4

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

	.type	.libro.str,@object
.libro.str:
	.asciz	"-1"
	.size	.libro.str, 3

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	" "
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	""
	.size	.libro.str.2, 1

