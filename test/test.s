	.text
	.globl main
	.p2align	2
	.type	main,@function
qsort: 
	addi sp, sp, -40
	sw ra, 36(sp)
	sw s0, 32(sp)
	sw s1, 28(sp)
	sw s2, 24(sp)
	addi s0, sp, 40
	mv s2, a0
	sw a1, -20(s0)
	sw a2, -24(s0)
	lw t1, -20(s0)
	lw t0, -24(s0)
	bge t1, t0, .LibroBB0_1
	j .LibroBB0_2
.LibroBB0_1: 
	j .LibroBB0_3
.LibroBB0_2: 
	lw s1, -20(s0)
	lw t1, -24(s0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, s2, t0
	lw t2, 0(t0)
	j .LibroBB0_5
.LibroBB0_3: 
	lw s0, 32(sp)
	lw s1, 28(sp)
	lw s2, 24(sp)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret
.LibroBB0_4: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s2, t0
	sw t2, 0(t0)
	lw a1, -20(s0)
	addi a2, s1, -1
	mv a0, s2
	call qsort
	addi a1, s1, 1
	lw a2, -24(s0)
	mv a0, s2
	call qsort
	j .LibroBB0_1
.LibroBB0_5: 
	bge s1, t1, .LibroBB0_4
	j .LibroBB0_6
.LibroBB0_6: 
	j .LibroBB0_7
.LibroBB0_7: 
	addi t0, zero, 0
	bge s1, t1, .LibroBB0_13
	j .LibroBB0_10
.LibroBB0_8: 
	bge s1, t1, .LibroBB0_11
	j .LibroBB0_12
.LibroBB0_9: 
	addi t1, t1, -1
	j .LibroBB0_7
.LibroBB0_10: 
	slli t0, t1, 2
	addi t0, t0, 4
	add t0, s2, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	addi t0, t2, 8
	lw t0, 0(t0)
	slt t0, a0, t0
	seqz t0, t0
	j .LibroBB0_13
.LibroBB0_11: 
	j .LibroBB0_16
.LibroBB0_12: 
	slli t0, t1, 2
	addi t0, t0, 4
	add t0, s2, t0
	lw a0, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s2, t0
	sw a0, 0(t0)
	addi s1, s1, 1
	j .LibroBB0_11
.LibroBB0_13: 
	beqz t0, .LibroBB0_8
	j .LibroBB0_9
.LibroBB0_14: 
	addi s1, s1, 1
	j .LibroBB0_16
.LibroBB0_15: 
	bge s1, t1, .LibroBB0_17
	j .LibroBB0_18
.LibroBB0_16: 
	addi t0, zero, 0
	bge s1, t1, .LibroBB0_20
	j .LibroBB0_19
.LibroBB0_17: 
	j .LibroBB0_5
.LibroBB0_18: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s2, t0
	lw a0, 0(t0)
	slli t0, t1, 2
	addi t0, t0, 4
	add t0, s2, t0
	sw a0, 0(t0)
	addi t1, t1, -1
	j .LibroBB0_17
.LibroBB0_19: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s2, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	addi t0, t2, 8
	lw t0, 0(t0)
	slt t0, a0, t0
	j .LibroBB0_20
.LibroBB0_20: 
	beqz t0, .LibroBB0_15
	j .LibroBB0_14
init: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	addi s0, sp, 16
	la t0, n
	lw t0, 0(t0)
	addi s1, t0, 1
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, fa
	sw a0, 0(t0)
	la t0, n
	lw t0, 0(t0)
	addi s1, t0, 1
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, rk
	sw a0, 0(t0)
	addi t1, zero, 1
	j .LibroBB1_3
.LibroBB1_1: 
	la t0, fa
	lw t2, 0(t0)
	mv t0, t1
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t2, t0
	sw t1, 0(t0)
	la t0, rk
	lw t2, 0(t0)
	slli t0, t1, 2
	addi t0, t0, 4
	add t2, t2, t0
	addi t0, zero, 1
	sw t0, 0(t2)
	j .LibroBB1_2
.LibroBB1_2: 
	addi t1, t1, 1
	j .LibroBB1_3
.LibroBB1_3: 
	la t0, n
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB1_4
	j .LibroBB1_1
.LibroBB1_4: 
	j .LibroBB1_5
.LibroBB1_5: 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
find: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	addi t0, zero, 0
	sw t0, -12(s0)
	sw a0, -16(s0)
	lw t2, -16(s0)
	la t0, fa
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	xor t0, t2, t0
	seqz t0, t0
	beqz t0, .LibroBB2_1
	j .LibroBB2_2
.LibroBB2_1: 
	la t0, fa
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	call find
	sw a0, -16(s0)
	la t0, fa
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	sw t0, -12(s0)
	j .LibroBB2_3
.LibroBB2_2: 
	lw t0, -16(s0)
	sw t0, -12(s0)
	j .LibroBB2_3
.LibroBB2_3: 
	lw a0, -12(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
union: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	addi s0, sp, 20
	addi t0, zero, 0
	sb t0, -12(s0)
	sw a0, -16(s0)
	sw a1, -20(s0)
	lw a0, -16(s0)
	call find
	sw a0, -16(s0)
	lw a0, -20(s0)
	call find
	sw a0, -20(s0)
	lw t1, -16(s0)
	lw t0, -20(s0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB3_2
	j .LibroBB3_1
.LibroBB3_1: 
	addi t0, zero, 0
	sb t0, -12(s0)
	j .LibroBB3_6
.LibroBB3_2: 
	la t0, rk
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	la t0, rk
	lw t1, 0(t0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	bge t0, t2, .LibroBB3_5
	j .LibroBB3_4
.LibroBB3_3: 
	addi t0, zero, 1
	sb t0, -12(s0)
	j .LibroBB3_6
.LibroBB3_4: 
	lw t2, -16(s0)
	la t0, fa
	lw t1, 0(t0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	la t0, rk
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	la t0, rk
	lw t1, 0(t0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	add t2, t2, t0
	la t0, rk
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB3_3
.LibroBB3_5: 
	lw t2, -20(s0)
	la t0, fa
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	la t0, rk
	lw t1, 0(t0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	la t0, rk
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	add t2, t2, t0
	la t0, rk
	lw t1, 0(t0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB3_3
.LibroBB3_6: 
	lb a0, -12(s0)
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
main: 
	addi sp, sp, -40
	sw ra, 36(sp)
	sw s0, 32(sp)
	sw s1, 28(sp)
	sw s2, 24(sp)
	sw s3, 20(sp)
	addi s0, sp, 40
	call _GLOBAL_
	addi t0, zero, 0
	sw t0, -24(s0)
	call getInt
	la t0, n
	sw a0, 0(t0)
	call getInt
	la t0, m
	sw a0, 0(t0)
	la t0, m
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, e
	sw a0, 0(t0)
	addi s3, zero, 0
	j .LibroBB4_2
.LibroBB4_1: 
	addi a0, zero, 12
	call myNew
	mv s1, a0
	call getInt
	addi t0, s1, 0
	sw a0, 0(t0)
	call getInt
	addi t0, s1, 4
	sw a0, 0(t0)
	call getInt
	addi t0, s1, 8
	sw a0, 0(t0)
	la t0, e
	lw t1, 0(t0)
	slli t0, s3, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw s1, 0(t0)
	j .LibroBB4_3
.LibroBB4_2: 
	la t0, m
	lw t0, 0(t0)
	bge s3, t0, .LibroBB4_4
	j .LibroBB4_1
.LibroBB4_3: 
	addi s3, s3, 1
	j .LibroBB4_2
.LibroBB4_4: 
	la t0, e
	lw a0, 0(t0)
	la t0, m
	lw t0, 0(t0)
	addi a2, t0, -1
	addi a1, zero, 0
	call qsort
	call init
	addi s3, zero, 0
	addi s1, zero, 0
	j .LibroBB4_5
.LibroBB4_5: 
	la t0, n
	lw t0, 0(t0)
	addi t0, t0, -1
	bge s3, t0, .LibroBB4_6
	j .LibroBB4_7
.LibroBB4_6: 
	la t0, rk
	lw s1, 0(t0)
	addi a0, zero, 1
	call find
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, s1, t0
	lw t1, 0(t0)
	la t0, n
	lw t0, 0(t0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB4_9
	j .LibroBB4_10
.LibroBB4_7: 
	la t0, m
	lw t0, 0(t0)
	slt t0, s1, t0
	seqz t0, t0
	beqz t0, .LibroBB4_12
	j .LibroBB4_11
.LibroBB4_8: 
	addi t0, zero, 0
	sw t0, -24(s0)
	j .LibroBB4_13
.LibroBB4_9: 
	addi a0, zero, 0
	addi t0, zero, 1
	sub a0, a0, t0
	call printInt
	j .LibroBB4_8
.LibroBB4_10: 
	la t0, ans
	lw a0, 0(t0)
	call printInt
	j .LibroBB4_8
.LibroBB4_11: 
	addi a0, zero, 0
	addi t0, zero, 1
	sub a0, a0, t0
	call printInt
	addi t0, zero, 0
	sw t0, -24(s0)
	j .LibroBB4_13
.LibroBB4_12: 
	la t0, e
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s2, 0(t0)
	addi s1, s1, 1
	addi t0, s2, 0
	lw a0, 0(t0)
	addi t0, s2, 4
	lw a1, 0(t0)
	call union
	beqz a0, .LibroBB4_14
	j .LibroBB4_15
.LibroBB4_13: 
	lw a0, -24(s0)
	lw s0, 32(sp)
	lw s1, 28(sp)
	lw s2, 24(sp)
	lw s3, 20(sp)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret
.LibroBB4_14: 
	j .LibroBB4_5
.LibroBB4_15: 
	addi s3, s3, 1
	la t0, ans
	lw t1, 0(t0)
	addi t0, s2, 8
	lw t0, 0(t0)
	add t1, t1, t0
	la t0, ans
	sw t1, 0(t0)
	j .LibroBB4_14
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
	.type	n,@object
n:
	.word	0
	.size	n, 4

	.type	m,@object
m:
	.word	0
	.size	m, 4

	.type	ans,@object
ans:
	.word	0
	.size	ans, 4

	.type	fa,@object
fa:
	.word	0
	.size	fa, 4

	.type	rk,@object
rk:
	.word	0
	.size	rk, 4

	.type	e,@object
e:
	.word	0
	.size	e, 4

