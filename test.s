	.text
	.globl main
	.p2align	2
	.type	main,@function
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -32
	sw ra, 28(sp)
	sw s0, 24(sp)
	sw s1, 20(sp)
	sw s2, 16(sp)
	sw s3, 12(sp)
	sw s4, 8(sp)
	sw s5, 4(sp)
	sw s6, 0(sp)
	addi s0, sp, 32
	j .LibroBB1_1
.LibroBB1_1: 
	j .LibroBB1_2
.LibroBB1_2: 
	la t0, MAXK
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	mv s5, a0
	sw s1, 0(s5)
	la t0, MAXK
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	mv s4, a0
	sw s1, 0(s4)
	la t0, MAXN
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	mv s3, a0
	sw s1, 0(s3)
	call getInt
	mv s2, a0
	call getInt
	mv s1, a0
	addi s6, zero, 0
	j .LibroBB1_3
.LibroBB1_3: 
	bge s6, s2, .LibroBB1_4
	j .LibroBB1_5
.LibroBB1_4: 
	addi t1, s3, 4
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t0, zero, 0
	j .LibroBB1_6
.LibroBB1_5: 
	call getInt
	slli t0, s6, 2
	addi t0, t0, 4
	add t0, s5, t0
	sw a0, 0(t0)
	slli t0, s6, 2
	addi t0, t0, 4
	add t1, s4, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB1_7
.LibroBB1_6: 
	slt t1, s1, t0
	bnez t1, .LibroBB1_8
	j .LibroBB1_9
.LibroBB1_7: 
	addi s6, s6, 1
	j .LibroBB1_3
.LibroBB1_8: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB1_10
.LibroBB1_9: 
	addi t1, zero, 0
	lui t2, 522232
	addi t2, t2, -129
	j .LibroBB1_11
.LibroBB1_10: 
	li a0, 0
	lw s0, 24(sp)
	lw s1, 20(sp)
	lw s2, 16(sp)
	lw s3, 12(sp)
	lw s4, 8(sp)
	lw s5, 4(sp)
	lw s6, 0(sp)
	lw ra, 28(sp)
	addi sp, sp, 32
	ret
.LibroBB1_11: 
	bge t1, s2, .LibroBB1_12
	j .LibroBB1_13
.LibroBB1_12: 
	addi t0, t0, 1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, s3, t1
	sw t2, 0(t1)
	j .LibroBB1_6
.LibroBB1_13: 
	slli a0, t0, 2
	addi a0, a0, 4
	add a0, s3, a0
	lw a2, 0(a0)
	slli a0, t1, 2
	addi a0, a0, 4
	add a0, s5, a0
	lw a1, 0(a0)
	slli a0, t1, 2
	addi a0, a0, 4
	add a0, s4, a0
	lw a0, 0(a0)
	slli a0, a0, 2
	addi a0, a0, 4
	add a0, s3, a0
	lw a0, 0(a0)
	mul a0, a1, a0
	slt a0, a2, a0
	bnez a0, .LibroBB1_15
	j .LibroBB1_14
.LibroBB1_14: 
	slli a0, t1, 2
	addi a0, a0, 4
	add a1, s4, a0
	lw a0, 0(a1)
	addi a0, a0, 1
	sw a0, 0(a1)
	j .LibroBB1_13
.LibroBB1_15: 
	slli a0, t1, 2
	addi a0, a0, 4
	add a0, s5, a0
	lw a1, 0(a0)
	slli a0, t1, 2
	addi a0, a0, 4
	add a0, s4, a0
	lw a0, 0(a0)
	slli a0, a0, 2
	addi a0, a0, 4
	add a0, s3, a0
	lw a0, 0(a0)
	mul a0, a1, a0
	bge a0, t2, .LibroBB1_17
	j .LibroBB1_16
.LibroBB1_16: 
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, s5, t2
	lw a0, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, s4, t2
	lw t2, 0(t2)
	slli t2, t2, 2
	addi t2, t2, 4
	add t2, s3, t2
	lw t2, 0(t2)
	mul t2, a0, t2
	j .LibroBB1_17
.LibroBB1_17: 
	j .LibroBB1_18
.LibroBB1_18: 
	addi t1, t1, 1
	j .LibroBB1_11
.data
	.type	MAXK,@object
MAXK:
	.word	105
	.size	MAXK, 4

	.type	MAXN,@object
MAXN:
	.word	100005
	.size	MAXN, 4

