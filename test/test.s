	.text
	.globl main
	.p2align	2
	.type	main,@function
init: 
	addi sp, sp, -48
	sw ra, 44(sp)
	sw s0, 40(sp)
	sw s1, 36(sp)
	sw s2, 32(sp)
	sw s3, 28(sp)
	sw s4, 24(sp)
	addi s0, sp, 48
	call getInt
	la t0, n
	sw a0, 0(t0)
	call getInt
	la t0, m
	sw a0, 0(t0)
	la t0, n
	lw s3, 0(t0)
	addi t0, zero, 4
	mul t0, s3, t0
	addi s2, zero, 4
	add s2, t0, s2
	mv a0, s2
	call myNew
	mv s1, a0
	sw s3, 0(s1)
	addi t0, zero, 0
	sw t0, -28(s0)
	j .LibroBB0_3
.LibroBB0_1: 
	la t0, a
	sw s1, 0(t0)
	addi t0, zero, 0
	sw t0, -32(s0)
	j .LibroBB0_5
.LibroBB0_2: 
	add s4, s1, t1
	la t0, n
	lw s3, 0(t0)
	addi t0, zero, 4
	mul t0, s3, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s3, 0(a0)
	sw a0, 0(s4)
	j .LibroBB0_3
.LibroBB0_3: 
	lw t1, -28(s0)
	addi t0, zero, 4
	add t0, t1, t0
	sw t0, -28(s0)
	bge t1, s2, .LibroBB0_1
	j .LibroBB0_2
.LibroBB0_4: 
	addi t0, zero, 0
	sw t0, -32(s0)
	j .LibroBB0_9
.LibroBB0_5: 
	lw t1, -32(s0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB0_4
	j .LibroBB0_6
.LibroBB0_6: 
	addi t0, zero, 0
	sw t0, -36(s0)
	j .LibroBB0_12
.LibroBB0_7: 
	lw t1, -32(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -32(s0)
	j .LibroBB0_5
.LibroBB0_8: 
	addi t0, zero, 0
	sw t0, -32(s0)
	j .LibroBB0_19
.LibroBB0_9: 
	lw t1, -32(s0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB0_8
	j .LibroBB0_10
.LibroBB0_10: 
	la t0, a
	lw t2, 0(t0)
	lw t0, -32(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -32(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB0_11
.LibroBB0_11: 
	lw t1, -32(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -32(s0)
	j .LibroBB0_9
.LibroBB0_12: 
	lw t1, -36(s0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB0_13
	j .LibroBB0_14
.LibroBB0_13: 
	j .LibroBB0_7
.LibroBB0_14: 
	la t0, INF
	lw s1, 0(t0)
	la t0, a
	lw t2, 0(t0)
	lw t0, -32(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -36(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	j .LibroBB0_15
.LibroBB0_15: 
	lw t1, -36(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -36(s0)
	j .LibroBB0_12
.LibroBB0_16: 
	j .LibroBB0_20
.LibroBB0_17: 
	call getInt
	sw a0, -40(s0)
	call getInt
	sw a0, -44(s0)
	call getInt
	sw a0, -48(s0)
	lw s1, -48(s0)
	la t0, a
	lw t2, 0(t0)
	lw t0, -40(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t1, -44(s0)
	addi t0, zero, 4
	mul t0, t1, t0
	addi t1, zero, 4
	add t1, t0, t1
	add t0, t2, t1
	sw s1, 0(t0)
	j .LibroBB0_18
.LibroBB0_18: 
	lw t1, -32(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -32(s0)
	j .LibroBB0_19
.LibroBB0_19: 
	lw t1, -32(s0)
	la t0, m
	lw t0, 0(t0)
	bge t1, t0, .LibroBB0_16
	j .LibroBB0_17
.LibroBB0_20: 
	lw s0, 40(sp)
	lw s1, 36(sp)
	lw s2, 32(sp)
	lw s3, 28(sp)
	lw s4, 24(sp)
	lw ra, 44(sp)
	addi sp, sp, 48
	ret
main: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	addi s0, sp, 28
	call _GLOBAL_
	addi t0, zero, 0
	sw t0, -16(s0)
	call init
	addi t0, zero, 0
	sw t0, -28(s0)
	j .LibroBB1_3
.LibroBB1_1: 
	addi t0, zero, 0
	sw t0, -20(s0)
	j .LibroBB1_8
.LibroBB1_2: 
	lw t1, -28(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -28(s0)
	j .LibroBB1_3
.LibroBB1_3: 
	lw t1, -28(s0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB1_1
	j .LibroBB1_4
.LibroBB1_4: 
	addi t0, zero, 0
	sw t0, -20(s0)
	j .LibroBB1_10
.LibroBB1_5: 
	addi t0, zero, 0
	sw t0, -24(s0)
	j .LibroBB1_14
.LibroBB1_6: 
	lw t1, -20(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -20(s0)
	j .LibroBB1_8
.LibroBB1_7: 
	addi t0, zero, 0
	sw t0, -16(s0)
	j .LibroBB1_17
.LibroBB1_8: 
	lw t1, -20(s0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB1_7
	j .LibroBB1_5
.LibroBB1_9: 
	j .LibroBB1_2
.LibroBB1_10: 
	lw t1, -20(s0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB1_9
	j .LibroBB1_11
.LibroBB1_11: 
	addi t0, zero, 0
	sw t0, -24(s0)
	j .LibroBB1_20
.LibroBB1_12: 
	lw t1, -20(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -20(s0)
	j .LibroBB1_10
.LibroBB1_13: 
	lw t1, -24(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -24(s0)
	j .LibroBB1_14
.LibroBB1_14: 
	lw t1, -24(s0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB1_16
	j .LibroBB1_15
.LibroBB1_15: 
	la t0, a
	lw t2, 0(t0)
	lw t0, -20(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	la t0, INF
	lw t0, 0(t0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB1_24
	j .LibroBB1_23
.LibroBB1_16: 
	la a0, .libro.str.2
	call println
	j .LibroBB1_6
.LibroBB1_17: 
	lw a0, -16(s0)
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB1_18: 
	lw t1, -24(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -24(s0)
	j .LibroBB1_20
.LibroBB1_19: 
	j .LibroBB1_12
.LibroBB1_20: 
	lw t1, -24(s0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB1_19
	j .LibroBB1_21
.LibroBB1_21: 
	la t0, a
	lw t2, 0(t0)
	lw t0, -20(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	la t0, a
	lw t2, 0(t0)
	lw t0, -20(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -28(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw s1, 0(t0)
	la t0, a
	lw t2, 0(t0)
	lw t0, -28(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	add t0, s1, t0
	bge t0, a0, .LibroBB1_25
	j .LibroBB1_26
.LibroBB1_22: 
	la a0, .libro.str.1
	call print
	j .LibroBB1_13
.LibroBB1_23: 
	la a0, .libro.str
	call print
	j .LibroBB1_22
.LibroBB1_24: 
	la t0, a
	lw t2, 0(t0)
	lw t0, -20(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB1_22
.LibroBB1_25: 
	j .LibroBB1_18
.LibroBB1_26: 
	la t0, a
	lw t2, 0(t0)
	lw t0, -20(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -28(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw s1, 0(t0)
	la t0, a
	lw t2, 0(t0)
	lw t0, -28(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	add s1, s1, t0
	la t0, a
	lw t2, 0(t0)
	lw t0, -20(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	j .LibroBB1_25
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

