	.text
	.globl main
	.p2align	2
	.type	main,@function
constructNode: 
	addi sp, sp, -36
	sw ra, 32(sp)
	sw s0, 28(sp)
	sw s1, 24(sp)
	addi s0, sp, 36
	addi t0, zero, 0
	sw t0, -16(s0)
	sw a0, -20(s0)
	sw a1, -24(s0)
	sw a2, -28(s0)
	sw a3, -32(s0)
	addi a0, zero, 16
	call myNew
	sw a0, -36(s0)
	addi a0, zero, 12
	call myNew
	addi t0, zero, 2
	sw t0, 0(a0)
	lw t0, -36(s0)
	addi t0, t0, 4
	sw a0, 0(t0)
	lw t1, -20(s0)
	lw t0, -36(s0)
	addi t0, t0, 8
	sw t1, 0(t0)
	lw t0, -36(s0)
	addi t1, t0, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	lw t1, -24(s0)
	lw t0, -36(s0)
	addi t0, t0, 0
	sw t1, 0(t0)
	lw s1, -28(s0)
	lw t0, -36(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -32(s0)
	lw t0, -36(s0)
	addi t0, t0, 4
	lw s1, 0(t0)
	addi t2, zero, 1
	addi t0, zero, 4
	mul t2, t2, t0
	addi t0, zero, 4
	add t0, t2, t0
	add t0, s1, t0
	sw t1, 0(t0)
	lw t0, -36(s0)
	sw t0, -16(s0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw a0, -16(s0)
	lw s0, 28(sp)
	lw s1, 24(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
insertImpl: 
	addi sp, sp, -36
	sw ra, 32(sp)
	sw s0, 28(sp)
	sw s1, 24(sp)
	addi s0, sp, 36
	addi t0, zero, 0
	sw t0, -16(s0)
	sw a0, -20(s0)
	sw a1, -24(s0)
	sw a2, -28(s0)
	sw a3, -32(s0)
	lw t1, -20(s0)
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB1_2
	j .LibroBB1_1
.LibroBB1_1: 
	lw a0, -32(s0)
	lw a1, -24(s0)
	addi a2, zero, 0
	addi a3, zero, 0
	call constructNode
	sw a0, -20(s0)
	lw s1, -20(s0)
	lw t0, -24(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	lw t0, -28(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	addi t0, zero, 0
	sw t0, -16(s0)
	j .LibroBB1_7
.LibroBB1_2: 
	lw t0, -20(s0)
	addi t0, t0, 8
	lw t1, 0(t0)
	lw t0, -32(s0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB1_4
	j .LibroBB1_3
.LibroBB1_3: 
	lw t0, -20(s0)
	addi t2, t0, 12
	lw t1, 0(t2)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, 0(t2)
	addi t0, zero, 1
	sw t0, -16(s0)
	j .LibroBB1_7
.LibroBB1_4: 
	addi t0, zero, 0
	sw t0, -36(s0)
	lw t0, -20(s0)
	addi t0, t0, 8
	lw t1, 0(t0)
	lw t0, -32(s0)
	bge t1, t0, .LibroBB1_5
	j .LibroBB1_6
.LibroBB1_5: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	lw t0, -36(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	lw a1, -20(s0)
	lw a2, -36(s0)
	lw a3, -32(s0)
	call insertImpl
	sw a0, -16(s0)
	j .LibroBB1_7
.LibroBB1_6: 
	addi t0, zero, 1
	sw t0, -36(s0)
	j .LibroBB1_5
.LibroBB1_7: 
	lw a0, -16(s0)
	lw s0, 28(sp)
	lw s1, 24(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
insert: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	addi t0, zero, 0
	sw t0, -12(s0)
	sw a0, -16(s0)
	la t0, root
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	snez t0, t0
	beqz t0, .LibroBB2_2
	j .LibroBB2_1
.LibroBB2_1: 
	la t0, root
	lw a0, 0(t0)
	addi a2, zero, 0
	addi t0, zero, 1
	sub a2, a2, t0
	lw a3, -16(s0)
	addi a1, zero, 0
	call insertImpl
	sw a0, -12(s0)
	j .LibroBB2_3
.LibroBB2_2: 
	lw a0, -16(s0)
	addi a1, zero, 0
	addi a2, zero, 0
	addi a3, zero, 0
	call constructNode
	la t0, root
	sw a0, 0(t0)
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB2_3
.LibroBB2_3: 
	lw a0, -12(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
findLargest: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	addi t0, zero, 0
	sw t0, -12(s0)
	sw a0, -16(s0)
	lw t0, -16(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB3_2
	j .LibroBB3_1
.LibroBB3_1: 
	lw t0, -16(s0)
	sw t0, -12(s0)
	j .LibroBB3_3
.LibroBB3_2: 
	lw t0, -16(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	call findLargest
	sw a0, -12(s0)
	j .LibroBB3_3
.LibroBB3_3: 
	lw a0, -12(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
eraseImpl: 
	addi sp, sp, -36
	sw ra, 32(sp)
	sw s0, 28(sp)
	sw s1, 24(sp)
	addi s0, sp, 36
	addi t0, zero, 0
	sw t0, -16(s0)
	sw a0, -20(s0)
	sw a1, -24(s0)
	sw a2, -28(s0)
	sw a3, -32(s0)
	lw t1, -20(s0)
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB4_1
	j .LibroBB4_2
.LibroBB4_1: 
	lw t0, -20(s0)
	addi t0, t0, 8
	lw t1, 0(t0)
	lw t0, -32(s0)
	bge t0, t1, .LibroBB4_4
	j .LibroBB4_3
.LibroBB4_2: 
	addi t0, zero, 0
	sw t0, -16(s0)
	j .LibroBB4_29
.LibroBB4_3: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	lw a1, -20(s0)
	lw a3, -32(s0)
	addi a2, zero, 0
	call eraseImpl
	sw a0, -16(s0)
	j .LibroBB4_29
.LibroBB4_4: 
	lw t0, -20(s0)
	addi t0, t0, 8
	lw t1, 0(t0)
	lw t0, -32(s0)
	bge t1, t0, .LibroBB4_6
	j .LibroBB4_5
.LibroBB4_5: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	lw a1, -20(s0)
	lw a3, -32(s0)
	addi a2, zero, 1
	call eraseImpl
	sw a0, -16(s0)
	j .LibroBB4_29
.LibroBB4_6: 
	lw t0, -20(s0)
	addi t2, t0, 12
	lw t1, 0(t2)
	addi t0, zero, 1
	sub t0, t1, t0
	sw t0, 0(t2)
	lw t0, -20(s0)
	addi t0, t0, 12
	lw t1, 0(t0)
	addi t0, zero, 0
	bge t0, t1, .LibroBB4_8
	j .LibroBB4_7
.LibroBB4_7: 
	addi t0, zero, 1
	sw t0, -16(s0)
	j .LibroBB4_29
.LibroBB4_8: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB4_9
	j .LibroBB4_10
.LibroBB4_9: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	call findLargest
	sw a0, -36(s0)
	lw t1, -32(s0)
	la t0, root
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB4_11
	j .LibroBB4_12
.LibroBB4_10: 
	lw t1, -24(s0)
	addi t0, zero, 0
	xor t0, t1, t0
	snez t0, t0
	beqz t0, .LibroBB4_13
	j .LibroBB4_14
.LibroBB4_11: 
	lw t0, -36(s0)
	addi t0, t0, 8
	lw s1, 0(t0)
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, s1, t0
	snez t0, t0
	beqz t0, .LibroBB4_16
	j .LibroBB4_15
.LibroBB4_12: 
	lw t1, -36(s0)
	la t0, root
	sw t1, 0(t0)
	j .LibroBB4_11
.LibroBB4_13: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	snez t0, t0
	beqz t0, .LibroBB4_18
	j .LibroBB4_17
.LibroBB4_14: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw s1, 0(t0)
	lw t0, -24(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	lw t0, -28(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	j .LibroBB4_13
.LibroBB4_15: 
	lw t0, -36(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw s1, 0(t0)
	lw t0, -36(s0)
	addi t0, t0, 0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -36(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	snez t0, t0
	beqz t0, .LibroBB4_20
	j .LibroBB4_19
.LibroBB4_16: 
	lw t1, -24(s0)
	addi t0, zero, 0
	xor t0, t1, t0
	snez t0, t0
	beqz t0, .LibroBB4_21
	j .LibroBB4_22
.LibroBB4_17: 
	lw s1, -24(s0)
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw s1, 0(t0)
	j .LibroBB4_18
.LibroBB4_18: 
	lw t1, -32(s0)
	la t0, root
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB4_24
	j .LibroBB4_23
.LibroBB4_19: 
	lw t0, -36(s0)
	addi t0, t0, 0
	lw s1, 0(t0)
	lw t0, -36(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw s1, 0(t0)
	j .LibroBB4_20
.LibroBB4_20: 
	j .LibroBB4_16
.LibroBB4_21: 
	lw t1, -24(s0)
	lw t0, -36(s0)
	addi t0, t0, 0
	sw t1, 0(t0)
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw s1, 0(t0)
	lw t0, -36(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	snez t0, t0
	beqz t0, .LibroBB4_26
	j .LibroBB4_25
.LibroBB4_22: 
	lw s1, -36(s0)
	lw t0, -24(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	lw t0, -28(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	j .LibroBB4_21
.LibroBB4_23: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	la t0, root
	sw t1, 0(t0)
	j .LibroBB4_24
.LibroBB4_24: 
	addi t0, zero, 1
	sw t0, -16(s0)
	j .LibroBB4_29
.LibroBB4_25: 
	lw s1, -36(s0)
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw s1, 0(t0)
	j .LibroBB4_26
.LibroBB4_26: 
	lw t0, -36(s0)
	addi t0, t0, 8
	lw s1, 0(t0)
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, s1, t0
	snez t0, t0
	beqz t0, .LibroBB4_28
	j .LibroBB4_27
.LibroBB4_27: 
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw s1, 0(t0)
	lw t0, -36(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -36(s0)
	lw t0, -20(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw s1, 0(t0)
	j .LibroBB4_28
.LibroBB4_28: 
	addi t0, zero, 1
	sw t0, -16(s0)
	j .LibroBB4_29
.LibroBB4_29: 
	lw a0, -16(s0)
	lw s0, 28(sp)
	lw s1, 24(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
erase: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	addi t0, zero, 0
	sw t0, -12(s0)
	sw a0, -16(s0)
	la t0, root
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB5_2
	j .LibroBB5_1
.LibroBB5_1: 
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB5_3
.LibroBB5_2: 
	la t0, root
	lw a0, 0(t0)
	addi a2, zero, 0
	addi t0, zero, 1
	sub a2, a2, t0
	lw a3, -16(s0)
	addi a1, zero, 0
	call eraseImpl
	sw a0, -12(s0)
	j .LibroBB5_3
.LibroBB5_3: 
	lw a0, -12(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
printTree: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	addi s0, sp, 16
	sw a0, -16(s0)
	lw t1, -16(s0)
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB6_1
	j .LibroBB6_2
.LibroBB6_1: 
	lw t0, -16(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	call printTree
	lw t0, -16(s0)
	addi t0, t0, 8
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
	lw t0, -16(s0)
	addi t0, t0, 12
	lw a0, 0(t0)
	call toString
	mv a1, a0
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	lw t0, -16(s0)
	addi t0, t0, 4
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	call printTree
	j .LibroBB6_3
.LibroBB6_2: 
	j .LibroBB6_3
.LibroBB6_3: 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_global_var_init.2: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t1, zero, 1
	addi t0, zero, 31
	sll t1, t1, t0
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
	addi t0, zero, 0
	sw t0, -12(s0)
	la t0, seed
	lw t0, 0(t0)
	sw t0, -16(s0)
	lw t2, -16(s0)
	lw t1, -16(s0)
	addi t0, zero, 13
	sll t0, t1, t0
	xor t0, t2, t0
	sw t0, -16(s0)
	lw t2, -16(s0)
	addi t1, zero, 1
	addi t0, zero, 31
	sll t1, t1, t0
	and t0, t2, t1
	sw t0, -16(s0)
	lw t2, -16(s0)
	lw t1, -16(s0)
	addi t0, zero, 17
	sra t0, t1, t0
	xor t0, t2, t0
	sw t0, -16(s0)
	lw t2, -16(s0)
	lw t1, -16(s0)
	addi t0, zero, 5
	sll t0, t1, t0
	xor t0, t2, t0
	sw t0, -16(s0)
	lw t2, -16(s0)
	addi t1, zero, 1
	addi t0, zero, 31
	sll t1, t1, t0
	and t0, t2, t1
	sw t0, -16(s0)
	lw t1, -16(s0)
	la t0, seed
	sw t1, 0(t0)
	lw t0, -16(s0)
	sw t0, -12(s0)
	j .LibroBB8_1
.LibroBB8_1: 
	lw a0, -12(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
randOp: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	addi t0, zero, 0
	sw t0, -12(s0)
	sw a0, -16(s0)
	call randInt31
	lw t0, -16(s0)
	bge a0, t0, .LibroBB9_1
	j .LibroBB9_2
.LibroBB9_1: 
	addi t0, zero, 2
	sw t0, -12(s0)
	j .LibroBB9_3
.LibroBB9_2: 
	addi t0, zero, 1
	sw t0, -12(s0)
	j .LibroBB9_3
.LibroBB9_3: 
	lw a0, -12(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
generateOperations: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	addi s0, sp, 28
	sw a0, -16(s0)
	sw a1, -20(s0)
	addi t0, zero, 0
	sw t0, -24(s0)
	j .LibroBB10_1
.LibroBB10_1: 
	lw t1, -24(s0)
	lw t0, -20(s0)
	bge t1, t0, .LibroBB10_2
	j .LibroBB10_4
.LibroBB10_2: 
	j .LibroBB10_5
.LibroBB10_3: 
	lw t1, -24(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -24(s0)
	j .LibroBB10_1
.LibroBB10_4: 
	call randInt31
	la t0, MAX
	lw t0, 0(t0)
	rem s1, a0, t0
	lw a0, -16(s0)
	call randOp
	addi t0, zero, 1
	xor t0, a0, t0
	seqz t0, t0
	beqz t0, .LibroBB10_8
	j .LibroBB10_7
.LibroBB10_5: 
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB10_6: 
	j .LibroBB10_3
.LibroBB10_7: 
	mv a0, s1
	call insert
	j .LibroBB10_6
.LibroBB10_8: 
	mv a0, s1
	call erase
	j .LibroBB10_6
main: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	call _GLOBAL_
	addi t0, zero, 0
	sw t0, -12(s0)
	call getInt
	la t0, seed
	sw a0, 0(t0)
	lui t0, 12
	addi t0, t0, 848
	sw t0, -16(s0)
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 8
	mul a0, a0, t0
	lw a1, -16(s0)
	call generateOperations
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 2
	mul a0, a0, t0
	lw t0, -16(s0)
	addi a1, zero, 2
	mul a1, a1, t0
	call generateOperations
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 4
	mul a0, a0, t0
	lw a1, -16(s0)
	call generateOperations
	la t0, root
	lw a0, 0(t0)
	call printTree
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB11_1
.LibroBB11_1: 
	lw a0, -12(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
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

