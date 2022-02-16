	.text
	.globl main
	.p2align	2
	.type	main,@function
constructNode: 
	addi sp, sp, -52
	sw ra, 48(sp)
	sw s0, 44(sp)
	sw s1, 40(sp)
	sw s2, 36(sp)
	sw s3, 32(sp)
	sw s4, 28(sp)
	sw s5, 24(sp)
	addi s0, sp, 52
	mv s5, a0
	mv s4, a1
	mv s3, a2
	mv s2, a3
	addi a0, zero, 16
	call myNew
	mv s1, a0
	addi a0, zero, 12
	call myNew
	addi t0, zero, 2
	sw t0, 0(a0)
	addi t0, s1, 4
	sw a0, 0(t0)
	addi t0, s1, 8
	sw s5, 0(t0)
	addi t1, s1, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t0, s1, 0
	sw s4, 0(t0)
	addi t0, s1, 4
	lw t1, 0(t0)
	addi t0, zero, 0
	addi t2, zero, 4
	mul t0, t0, t2
	addi t0, t0, 4
	add t0, t1, t0
	sw s3, 0(t0)
	addi t0, s1, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	sw s2, 0(t0)
	j .LibroBB0_1
.LibroBB0_1: 
	mv a0, s1
	lw s0, 44(sp)
	lw s1, 40(sp)
	lw s2, 36(sp)
	lw s3, 32(sp)
	lw s4, 28(sp)
	lw s5, 24(sp)
	lw ra, 48(sp)
	addi sp, sp, 52
	ret
insertImpl: 
	addi sp, sp, -40
	sw ra, 36(sp)
	sw s0, 32(sp)
	sw s1, 28(sp)
	sw s2, 24(sp)
	addi s0, sp, 40
	mv t0, a0
	mv s2, a1
	mv s1, a2
	addi t1, zero, 0
	xor t1, t0, t1
	bnez t1, .LibroBB1_2
	j .LibroBB1_1
.LibroBB1_1: 
	mv a0, a3
	mv a1, s2
	addi a2, zero, 0
	addi a3, zero, 0
	call constructNode
	mv t0, a0
	addi t1, s2, 4
	lw t2, 0(t1)
	slli t1, s1, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw t0, 0(t1)
	addi a0, zero, 0
	j .LibroBB1_7
.LibroBB1_2: 
	addi t1, t0, 8
	lw t1, 0(t1)
	xor t1, t1, a3
	bnez t1, .LibroBB1_4
	j .LibroBB1_3
.LibroBB1_3: 
	addi t1, t0, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	addi a0, zero, 1
	j .LibroBB1_7
.LibroBB1_4: 
	addi a2, zero, 0
	addi t1, t0, 8
	lw t1, 0(t1)
	bge t1, a3, .LibroBB1_6
	j .LibroBB1_5
.LibroBB1_5: 
	addi a2, zero, 1
	j .LibroBB1_6
.LibroBB1_6: 
	addi t1, t0, 4
	lw t2, 0(t1)
	slli t1, a2, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw a0, 0(t1)
	mv a1, t0
	call insertImpl
	j .LibroBB1_7
.LibroBB1_7: 
	lw s0, 32(sp)
	lw s1, 28(sp)
	lw s2, 24(sp)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret
insert: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	mv a3, a0
	la t0, root
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB2_2
	j .LibroBB2_1
.LibroBB2_1: 
	la t0, root
	lw a0, 0(t0)
	addi a2, zero, 0
	addi t0, zero, 1
	sub a2, a2, t0
	addi a1, zero, 0
	call insertImpl
	j .LibroBB2_3
.LibroBB2_2: 
	mv a0, a3
	addi a1, zero, 0
	addi a2, zero, 0
	addi a3, zero, 0
	call constructNode
	la t0, root
	sw a0, 0(t0)
	addi a0, zero, 0
	j .LibroBB2_3
.LibroBB2_3: 
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
findLargest: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	addi t0, a0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB3_2
	j .LibroBB3_1
.LibroBB3_1: 
	j .LibroBB3_3
.LibroBB3_2: 
	addi t0, a0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw a0, 0(t0)
	call findLargest
	j .LibroBB3_3
.LibroBB3_3: 
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
eraseImpl: 
	addi sp, sp, -48
	sw ra, 44(sp)
	sw s0, 40(sp)
	sw s1, 36(sp)
	sw s2, 32(sp)
	sw s3, 28(sp)
	sw s4, 24(sp)
	addi s0, sp, 48
	mv s4, a0
	mv s3, a1
	mv s2, a2
	mv s1, a3
	addi t0, zero, 0
	xor t0, s4, t0
	bnez t0, .LibroBB4_2
	j .LibroBB4_1
.LibroBB4_1: 
	addi a0, zero, 0
	j .LibroBB4_29
.LibroBB4_2: 
	addi t0, s4, 8
	lw t0, 0(t0)
	bge s1, t0, .LibroBB4_3
	j .LibroBB4_4
.LibroBB4_3: 
	addi t0, s4, 8
	lw t0, 0(t0)
	bge t0, s1, .LibroBB4_5
	j .LibroBB4_6
.LibroBB4_4: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw a0, 0(t0)
	mv a1, s4
	mv a3, s1
	addi a2, zero, 0
	call eraseImpl
	j .LibroBB4_29
.LibroBB4_5: 
	addi t1, s4, 12
	lw t0, 0(t1)
	addi t0, t0, -1
	sw t0, 0(t1)
	addi t0, s4, 12
	lw t1, 0(t0)
	addi t0, zero, 0
	bge t0, t1, .LibroBB4_7
	j .LibroBB4_8
.LibroBB4_6: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw a0, 0(t0)
	mv a1, s4
	addi a2, zero, 1
	mv a3, s1
	call eraseImpl
	j .LibroBB4_29
.LibroBB4_7: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB4_9
	j .LibroBB4_10
.LibroBB4_8: 
	addi a0, zero, 1
	j .LibroBB4_29
.LibroBB4_9: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw a0, 0(t0)
	call findLargest
	la t0, root
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, s1, t0
	bnez t0, .LibroBB4_12
	j .LibroBB4_11
.LibroBB4_10: 
	addi t0, zero, 0
	xor t0, s3, t0
	beqz t0, .LibroBB4_14
	j .LibroBB4_13
.LibroBB4_11: 
	la t0, root
	sw a0, 0(t0)
	j .LibroBB4_12
.LibroBB4_12: 
	addi t0, a0, 8
	lw s1, 0(t0)
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, s1, t0
	beqz t0, .LibroBB4_15
	j .LibroBB4_16
.LibroBB4_13: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t2, 0(t0)
	addi t0, s3, 4
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB4_14
.LibroBB4_14: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB4_17
	j .LibroBB4_18
.LibroBB4_15: 
	addi t0, zero, 0
	xor t0, s3, t0
	beqz t0, .LibroBB4_19
	j .LibroBB4_20
.LibroBB4_16: 
	addi t0, a0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw s1, 0(t0)
	addi t0, a0, 0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	sw s1, 0(t0)
	addi t0, a0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB4_21
	j .LibroBB4_22
.LibroBB4_17: 
	la t0, root
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, s1, t0
	bnez t0, .LibroBB4_23
	j .LibroBB4_24
.LibroBB4_18: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw s3, 0(t0)
	j .LibroBB4_17
.LibroBB4_19: 
	addi t0, a0, 0
	sw s3, 0(t0)
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw s1, 0(t0)
	addi t0, a0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	sw s1, 0(t0)
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB4_25
	j .LibroBB4_26
.LibroBB4_20: 
	addi t0, s3, 4
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	j .LibroBB4_19
.LibroBB4_21: 
	j .LibroBB4_15
.LibroBB4_22: 
	addi t0, a0, 0
	lw s1, 0(t0)
	addi t0, a0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw s1, 0(t0)
	j .LibroBB4_21
.LibroBB4_23: 
	addi a0, zero, 1
	j .LibroBB4_29
.LibroBB4_24: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t1, 0(t0)
	la t0, root
	sw t1, 0(t0)
	j .LibroBB4_23
.LibroBB4_25: 
	addi t0, a0, 8
	lw s1, 0(t0)
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, s1, t0
	beqz t0, .LibroBB4_27
	j .LibroBB4_28
.LibroBB4_26: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw a0, 0(t0)
	j .LibroBB4_25
.LibroBB4_27: 
	addi a0, zero, 1
	j .LibroBB4_29
.LibroBB4_28: 
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw s1, 0(t0)
	addi t0, a0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	sw s1, 0(t0)
	addi t0, s4, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw a0, 0(t0)
	j .LibroBB4_27
.LibroBB4_29: 
	lw s0, 40(sp)
	lw s1, 36(sp)
	lw s2, 32(sp)
	lw s3, 28(sp)
	lw s4, 24(sp)
	lw ra, 44(sp)
	addi sp, sp, 48
	ret
erase: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	mv a3, a0
	la t0, root
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB5_1
	j .LibroBB5_2
.LibroBB5_1: 
	la t0, root
	lw a0, 0(t0)
	addi a2, zero, 0
	addi t0, zero, 1
	sub a2, a2, t0
	addi a1, zero, 0
	call eraseImpl
	j .LibroBB5_3
.LibroBB5_2: 
	addi a0, zero, 0
	j .LibroBB5_3
.LibroBB5_3: 
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
printTree: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	addi s0, sp, 20
	mv s2, a0
	addi t0, zero, 0
	xor t0, s2, t0
	bnez t0, .LibroBB6_2
	j .LibroBB6_1
.LibroBB6_1: 
	j .LibroBB6_3
.LibroBB6_2: 
	addi t0, s2, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw a0, 0(t0)
	call printTree
	addi t0, s2, 8
	lw a0, 0(t0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 2
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	mv s1, a0
	addi t0, s2, 12
	lw a0, 0(t0)
	call toString
	mv a1, a0
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	addi t0, s2, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw a0, 0(t0)
	call printTree
	j .LibroBB6_3
.LibroBB6_3: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
_global_var_init.2: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t2, zero, 1
	addi t0, zero, 31
	sll t2, t2, t0
	addi t1, zero, -1
	xor t1, t1, t2
	la t0, MaxRandInt
	sw t1, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
randInt31: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	la t0, seed
	lw a0, 0(t0)
	mv t0, a0
	slli t0, t0, 13
	xor a0, a0, t0
	addi t1, zero, 1
	addi t0, zero, 31
	sll t1, t1, t0
	addi t0, zero, -1
	xor t0, t0, t1
	and a0, a0, t0
	mv t0, a0
	srai t1, a0, 17
	xor a0, t0, t1
	mv t0, a0
	slli t1, a0, 5
	xor a0, t0, t1
	addi t1, zero, 1
	addi t0, zero, 31
	sll t1, t1, t0
	addi t0, zero, -1
	xor t0, t0, t1
	and a0, a0, t0
	la t0, seed
	sw a0, 0(t0)
	j .LibroBB8_1
.LibroBB8_1: 
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
randOp: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	addi s0, sp, 20
	mv s1, a0
	call randInt31
	bge a0, s1, .LibroBB9_1
	j .LibroBB9_2
.LibroBB9_1: 
	addi a0, zero, 2
	j .LibroBB9_3
.LibroBB9_2: 
	addi a0, zero, 1
	j .LibroBB9_3
.LibroBB9_3: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
generateOperations: 
	addi sp, sp, -40
	sw ra, 36(sp)
	sw s0, 32(sp)
	sw s1, 28(sp)
	sw s2, 24(sp)
	sw s3, 20(sp)
	sw s4, 16(sp)
	addi s0, sp, 40
	mv s4, a0
	mv s3, a1
	addi s1, zero, 0
	j .LibroBB10_3
.LibroBB10_1: 
	call randInt31
	la t0, MAX
	lw t0, 0(t0)
	rem s2, a0, t0
	mv a0, s4
	call randOp
	addi t0, zero, 1
	xor t0, a0, t0
	bnez t0, .LibroBB10_6
	j .LibroBB10_7
.LibroBB10_2: 
	j .LibroBB10_8
.LibroBB10_3: 
	bge s1, s3, .LibroBB10_2
	j .LibroBB10_1
.LibroBB10_4: 
	addi s1, s1, 1
	j .LibroBB10_3
.LibroBB10_5: 
	j .LibroBB10_4
.LibroBB10_6: 
	mv a0, s2
	call erase
	j .LibroBB10_5
.LibroBB10_7: 
	mv a0, s2
	call insert
	j .LibroBB10_5
.LibroBB10_8: 
	lw s0, 32(sp)
	lw s1, 28(sp)
	lw s2, 24(sp)
	lw s3, 20(sp)
	lw s4, 16(sp)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret
main: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	addi s0, sp, 20
	call _GLOBAL_
	call getInt
	la t0, seed
	sw a0, 0(t0)
	lui s1, 12
	addi s1, s1, 848
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 8
	mul a0, a0, t0
	mv a1, s1
	call generateOperations
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 2
	mul a0, a0, t0
	addi a1, zero, 2
	mul a1, a1, s1
	call generateOperations
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 4
	mul a0, a0, t0
	mv a1, s1
	call generateOperations
	la t0, root
	lw a0, 0(t0)
	call printTree
	addi a0, zero, 0
	j .LibroBB11_1
.LibroBB11_1: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call _global_var_init.2
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	root,@object
root:
	.word	0
	.size	root, 4

	.type	MAX,@object
MAX:
	.word	128
	.size	MAX, 4

	.type	MaxRandInt,@object
MaxRandInt:
	.word	0
	.size	MaxRandInt, 4

	.type	seed,@object
seed:
	.word	0
	.size	seed, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	": "
	.size	.libro.str, 3

