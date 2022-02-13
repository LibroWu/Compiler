	.text
	.globl main
	.p2align	2
	.type	main,@function
init: 
	addi sp, sp, -32
	sw ra, 28(sp)
	sw s0, 24(sp)
	sw s1, 20(sp)
	sw s2, 16(sp)
	sw s3, 12(sp)
	addi s0, sp, 32
	call getInt
	la t0, n
	sw a0, 0(t0)
	la t0, n
	lw a0, 0(t0)
	call printlnInt
	call getInt
	la t0, m
	sw a0, 0(t0)
	la t0, m
	lw a0, 0(t0)
	call printlnInt
	la t0, n
	lw s3, 0(t0)
	addi t0, zero, 4
	mul t0, s3, t0
	addi s1, zero, 4
	add s1, t0, s1
	mv a0, s1
	call myNew
	sw s3, 0(a0)
	addi t0, zero, 0
	sw t0, -24(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw s2, -24(s0)
	addi t0, zero, 4
	add t0, s2, t0
	sw t0, -24(s0)
	slt t0, s2, s1
	beqz t0, .LibroBB0_2
	j .LibroBB0_3
.LibroBB0_2: 
	la t0, a
	sw a0, 0(t0)
	addi a0, zero, 0
	call printlnInt
	addi t0, zero, 0
	sw t0, -28(s0)
	j .LibroBB0_6
.LibroBB0_3: 
	add s2, a0, s2
	la t0, n
	lw s1, 0(t0)
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s1, 0(a0)
	sw a0, 0(s2)
	j .LibroBB0_1
.LibroBB0_4: 
	j .LibroBB0_8
.LibroBB0_5: 
	lw t1, -28(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -28(s0)
	j .LibroBB0_6
.LibroBB0_6: 
	lw t1, -28(s0)
	addi t0, zero, 100
	slt t0, t1, t0
	beqz t0, .LibroBB0_4
	j .LibroBB0_7
.LibroBB0_7: 
	addi t0, zero, 0
	sw t0, -32(s0)
	j .LibroBB0_10
.LibroBB0_8: 
	lw s0, 24(sp)
	lw s1, 20(sp)
	lw s2, 16(sp)
	lw s3, 12(sp)
	lw ra, 28(sp)
	addi sp, sp, 32
	ret
.LibroBB0_9: 
	j .LibroBB0_5
.LibroBB0_10: 
	lw t1, -32(s0)
	addi t0, zero, 100
	slt t0, t1, t0
	beqz t0, .LibroBB0_9
	j .LibroBB0_12
.LibroBB0_11: 
	lw t1, -32(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -32(s0)
	j .LibroBB0_10
.LibroBB0_12: 
	addi a0, zero, 2
	call printlnInt
	la t0, INF
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
	lw t0, -32(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	j .LibroBB0_11
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	addi s0, sp, 12
	call _GLOBAL_
	addi t0, zero, 0
	sw t0, -12(s0)
	la a0, .libro.str
	call println
	call init
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB1_1
.LibroBB1_1: 
	lw a0, -12(s0)
	lw s0, 4(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
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
	.asciz	"begin"
	.size	.libro.str, 6

