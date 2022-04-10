	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.2: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lui t1, 524288
	addi t1, t1, -1
	la t0, MaxRandInt
	sw t1, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB1_1
.LibroBB1_1: 
	lui t1, 524288
	addi t1, t1, -1
	la t0, MaxRandInt
	sw t1, 0(t0)
	j .LibroBB1_2
.LibroBB1_2: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
randOp: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB2_1
.LibroBB2_1: 
	la t0, seed
	lw t1, 0(t0)
	slli t0, t1, 13
	xor t0, t1, t0
	lui t1, 524288
	addi t1, t1, -1
	and t1, t0, t1
	srai t0, t1, 17
	xor t1, t1, t0
	slli t0, t1, 5
	xor t0, t1, t0
	lui t1, 524288
	addi t1, t1, -1
	and t1, t0, t1
	la t0, seed
	sw t1, 0(t0)
	j .LibroBB2_2
.LibroBB2_2: 
	j .LibroBB2_3
.LibroBB2_3: 
	bge t1, a0, .LibroBB2_5
	j .LibroBB2_4
.LibroBB2_4: 
	addi a0, zero, 1
	j .LibroBB2_6
.LibroBB2_5: 
	addi a0, zero, 2
	j .LibroBB2_6
.LibroBB2_6: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
erase: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv a3, a0
	la t0, root
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB3_1
	j .LibroBB3_2
.LibroBB3_1: 
	la t0, root
	lw a0, 0(t0)
	addi a1, zero, 0
	addi a2, zero, -1
	call eraseImpl
	j .LibroBB3_3
.LibroBB3_2: 
	addi a0, zero, 0
	j .LibroBB3_3
.LibroBB3_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
insert: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	sw s2, 8(sp)
	sw s3, 4(sp)
	sw s4, 0(sp)
	addi s0, sp, 24
	mv s2, a0
	la t0, root
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB4_1
	j .LibroBB4_2
.LibroBB4_1: 
	j .LibroBB4_3
.LibroBB4_2: 
	la t0, root
	lw s4, 0(t0)
	j .LibroBB4_4
.LibroBB4_3: 
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
	sw s2, 0(t0)
	addi t1, s1, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t1, s1, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 8
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB4_5
.LibroBB4_4: 
	addi t0, zero, 0
	xor t0, s4, t0
	bnez t0, .LibroBB4_7
	j .LibroBB4_6
.LibroBB4_5: 
	j .LibroBB4_8
.LibroBB4_6: 
	j .LibroBB4_9
.LibroBB4_7: 
	addi t0, s4, 8
	lw t0, 0(t0)
	xor t0, t0, s2
	bnez t0, .LibroBB4_10
	j .LibroBB4_11
.LibroBB4_8: 
	la t0, root
	sw s1, 0(t0)
	addi a0, zero, 0
	j .LibroBB4_12
.LibroBB4_9: 
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
	sw s2, 0(t0)
	addi t1, s1, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t1, s1, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 8
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB4_13
.LibroBB4_10: 
	addi t0, s4, 8
	lw t0, 0(t0)
	addi s1, zero, 0
	bge t0, s2, .LibroBB4_15
	j .LibroBB4_14
.LibroBB4_11: 
	addi t1, s4, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	addi a0, zero, 1
	j .LibroBB4_16
.LibroBB4_12: 
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw s2, 8(sp)
	lw s3, 4(sp)
	lw s4, 0(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
.LibroBB4_13: 
	j .LibroBB4_17
.LibroBB4_14: 
	addi s1, zero, 1
	j .LibroBB4_15
.LibroBB4_15: 
	addi t0, s4, 4
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a1, 0(t0)
	j .LibroBB4_18
.LibroBB4_16: 
	j .LibroBB4_19
.LibroBB4_17: 
	addi t0, s3, 4
	lw t2, 0(t0)
	addi t1, zero, -1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	sw s1, 0(t0)
	addi a0, zero, 0
	j .LibroBB4_16
.LibroBB4_18: 
	addi t0, zero, 0
	xor t0, a1, t0
	bnez t0, .LibroBB4_20
	j .LibroBB4_21
.LibroBB4_19: 
	j .LibroBB4_12
.LibroBB4_20: 
	addi t0, a1, 8
	lw t0, 0(t0)
	xor t0, t0, s2
	bnez t0, .LibroBB4_22
	j .LibroBB4_23
.LibroBB4_21: 
	j .LibroBB4_24
.LibroBB4_22: 
	addi t0, a1, 8
	lw t0, 0(t0)
	addi a2, zero, 0
	bge t0, s2, .LibroBB4_27
	j .LibroBB4_25
.LibroBB4_23: 
	addi t1, a1, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	addi a0, zero, 1
	j .LibroBB4_29
.LibroBB4_24: 
	addi a0, zero, 16
	call myNew
	mv s3, a0
	addi a0, zero, 12
	call myNew
	addi t0, zero, 2
	sw t0, 0(a0)
	addi t0, s3, 4
	sw a0, 0(t0)
	addi t0, s3, 8
	sw s2, 0(t0)
	addi t1, s3, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t0, s3, 0
	sw s4, 0(t0)
	addi t0, s3, 4
	lw t0, 0(t0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s3, 4
	lw t0, 0(t0)
	addi t1, t0, 8
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB4_26
.LibroBB4_25: 
	addi a2, zero, 1
	j .LibroBB4_27
.LibroBB4_26: 
	j .LibroBB4_28
.LibroBB4_27: 
	addi t0, a1, 4
	lw t1, 0(t0)
	slli t0, a2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	mv a3, s2
	call insertImpl
	j .LibroBB4_29
.LibroBB4_28: 
	addi t0, s4, 4
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw s3, 0(t0)
	addi a0, zero, 0
	j .LibroBB4_29
.LibroBB4_29: 
	j .LibroBB4_30
.LibroBB4_30: 
	j .LibroBB4_16
randInt31: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	la t0, seed
	lw t1, 0(t0)
	slli t0, t1, 13
	xor t0, t1, t0
	lui t1, 524288
	addi t1, t1, -1
	and t1, t0, t1
	srai t0, t1, 17
	xor t1, t1, t0
	slli t0, t1, 5
	xor t0, t1, t0
	lui a0, 524288
	addi a0, a0, -1
	and a0, t0, a0
	la t0, seed
	sw a0, 0(t0)
	j .LibroBB5_1
.LibroBB5_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
generateOperations: 
	addi sp, sp, -40
	sw ra, 36(sp)
	sw s0, 32(sp)
	sw s1, 28(sp)
	sw s2, 24(sp)
	sw s3, 20(sp)
	sw s4, 16(sp)
	sw s5, 12(sp)
	sw s6, 8(sp)
	sw s7, 4(sp)
	sw s8, 0(sp)
	addi s0, sp, 40
	mv s4, a0
	mv s3, a1
	addi s5, zero, 0
	j .LibroBB6_1
.LibroBB6_1: 
	bge s5, s3, .LibroBB6_2
	j .LibroBB6_3
.LibroBB6_2: 
	lw s0, 32(sp)
	lw s1, 28(sp)
	lw s2, 24(sp)
	lw s3, 20(sp)
	lw s4, 16(sp)
	lw s5, 12(sp)
	lw s6, 8(sp)
	lw s7, 4(sp)
	lw s8, 0(sp)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret
.LibroBB6_3: 
	j .LibroBB6_4
.LibroBB6_4: 
	la t0, seed
	lw t1, 0(t0)
	slli t0, t1, 13
	xor t0, t1, t0
	lui t1, 524288
	addi t1, t1, -1
	and t1, t0, t1
	srai t0, t1, 17
	xor t1, t1, t0
	slli t0, t1, 5
	xor t0, t1, t0
	lui t1, 524288
	addi t1, t1, -1
	and t1, t0, t1
	la t0, seed
	sw t1, 0(t0)
	j .LibroBB6_5
.LibroBB6_5: 
	j .LibroBB6_6
.LibroBB6_6: 
	la t0, MAX
	lw t0, 0(t0)
	rem s2, t1, t0
	j .LibroBB6_7
.LibroBB6_7: 
	j .LibroBB6_8
.LibroBB6_8: 
	la t0, seed
	lw t1, 0(t0)
	slli t0, t1, 13
	xor t0, t1, t0
	lui t1, 524288
	addi t1, t1, -1
	and t1, t0, t1
	srai t0, t1, 17
	xor t1, t1, t0
	slli t0, t1, 5
	xor t0, t1, t0
	lui t1, 524288
	addi t1, t1, -1
	and t1, t0, t1
	la t0, seed
	sw t1, 0(t0)
	j .LibroBB6_9
.LibroBB6_9: 
	j .LibroBB6_10
.LibroBB6_10: 
	bge t1, s4, .LibroBB6_11
	j .LibroBB6_12
.LibroBB6_11: 
	addi t0, zero, 2
	j .LibroBB6_13
.LibroBB6_12: 
	addi t0, zero, 1
	j .LibroBB6_13
.LibroBB6_13: 
	j .LibroBB6_14
.LibroBB6_14: 
	addi t1, zero, 1
	xor t0, t0, t1
	bnez t0, .LibroBB6_16
	j .LibroBB6_15
.LibroBB6_15: 
	j .LibroBB6_17
.LibroBB6_16: 
	j .LibroBB6_18
.LibroBB6_17: 
	la t0, root
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB6_20
	j .LibroBB6_19
.LibroBB6_18: 
	la t0, root
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB6_22
	j .LibroBB6_21
.LibroBB6_19: 
	la t0, root
	lw s8, 0(t0)
	j .LibroBB6_23
.LibroBB6_20: 
	j .LibroBB6_24
.LibroBB6_21: 
	j .LibroBB6_25
.LibroBB6_22: 
	la t0, root
	lw a0, 0(t0)
	addi a1, zero, 0
	addi a2, zero, -1
	mv a3, s2
	call eraseImpl
	j .LibroBB6_25
.LibroBB6_23: 
	addi t0, zero, 0
	xor t0, s8, t0
	bnez t0, .LibroBB6_26
	j .LibroBB6_27
.LibroBB6_24: 
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
	sw s2, 0(t0)
	addi t1, s1, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t1, s1, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 8
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB6_28
.LibroBB6_25: 
	j .LibroBB6_29
.LibroBB6_26: 
	addi t0, s8, 8
	lw t0, 0(t0)
	xor t0, t0, s2
	bnez t0, .LibroBB6_30
	j .LibroBB6_31
.LibroBB6_27: 
	j .LibroBB6_32
.LibroBB6_28: 
	j .LibroBB6_33
.LibroBB6_29: 
	j .LibroBB6_34
.LibroBB6_30: 
	addi t0, s8, 8
	lw t0, 0(t0)
	addi s1, zero, 0
	bge t0, s2, .LibroBB6_35
	j .LibroBB6_36
.LibroBB6_31: 
	addi t1, s8, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	addi a0, zero, 1
	j .LibroBB6_42
.LibroBB6_32: 
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
	sw s2, 0(t0)
	addi t1, s1, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t1, s1, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 8
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB6_37
.LibroBB6_33: 
	la t0, root
	sw s1, 0(t0)
	j .LibroBB6_50
.LibroBB6_34: 
	addi s5, s5, 1
	j .LibroBB6_1
.LibroBB6_35: 
	addi t0, s8, 4
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a1, 0(t0)
	j .LibroBB6_38
.LibroBB6_36: 
	addi s1, zero, 1
	j .LibroBB6_35
.LibroBB6_37: 
	j .LibroBB6_39
.LibroBB6_38: 
	addi t0, zero, 0
	xor t0, a1, t0
	bnez t0, .LibroBB6_40
	j .LibroBB6_41
.LibroBB6_39: 
	addi t0, s7, 4
	lw t2, 0(t0)
	addi t1, zero, -1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	sw s1, 0(t0)
	addi a0, zero, 0
	j .LibroBB6_42
.LibroBB6_40: 
	addi t0, a1, 8
	lw t0, 0(t0)
	xor t0, t0, s2
	bnez t0, .LibroBB6_43
	j .LibroBB6_44
.LibroBB6_41: 
	j .LibroBB6_45
.LibroBB6_42: 
	j .LibroBB6_46
.LibroBB6_43: 
	addi t0, a1, 8
	lw t0, 0(t0)
	addi a2, zero, 0
	bge t0, s2, .LibroBB6_47
	j .LibroBB6_48
.LibroBB6_44: 
	addi t1, a1, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	addi a0, zero, 1
	j .LibroBB6_53
.LibroBB6_45: 
	addi a0, zero, 16
	call myNew
	mv s6, a0
	addi a0, zero, 12
	call myNew
	addi t0, zero, 2
	sw t0, 0(a0)
	addi t0, s6, 4
	sw a0, 0(t0)
	addi t0, s6, 8
	sw s2, 0(t0)
	addi t1, s6, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t0, s6, 0
	sw s8, 0(t0)
	addi t0, s6, 4
	lw t0, 0(t0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s6, 4
	lw t0, 0(t0)
	addi t1, t0, 8
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB6_49
.LibroBB6_46: 
	j .LibroBB6_50
.LibroBB6_47: 
	addi t0, a1, 4
	lw t1, 0(t0)
	slli t0, a2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	mv a3, s2
	call insertImpl
	j .LibroBB6_53
.LibroBB6_48: 
	addi a2, zero, 1
	j .LibroBB6_47
.LibroBB6_49: 
	j .LibroBB6_51
.LibroBB6_50: 
	j .LibroBB6_52
.LibroBB6_51: 
	addi s7, s8, 4
	lw t1, 0(s7)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw s6, 0(t0)
	addi a0, zero, 0
	j .LibroBB6_53
.LibroBB6_52: 
	j .LibroBB6_34
.LibroBB6_53: 
	j .LibroBB6_54
.LibroBB6_54: 
	j .LibroBB6_42
findLargest: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB7_1
	j .LibroBB7_2
.LibroBB7_1: 
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	call findLargest
	j .LibroBB7_3
.LibroBB7_2: 
	j .LibroBB7_3
.LibroBB7_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)
	addi s0, sp, 20
	j .LibroBB8_1
.LibroBB8_1: 
	j .LibroBB8_2
.LibroBB8_2: 
	lui t1, 524288
	addi t1, t1, -1
	la t0, MaxRandInt
	sw t1, 0(t0)
	j .LibroBB8_3
.LibroBB8_3: 
	j .LibroBB8_4
.LibroBB8_4: 
	call getInt
	la t0, seed
	sw a0, 0(t0)
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 8
	mul a0, a0, t0
	lui a1, 12
	addi a1, a1, 848
	call generateOperations
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 2
	mul a0, a0, t0
	lui a1, 24
	addi a1, a1, 1696
	call generateOperations
	la t0, MaxRandInt
	lw t1, 0(t0)
	addi t0, zero, 10
	div t0, t1, t0
	addi a0, zero, 4
	mul a0, a0, t0
	lui a1, 12
	addi a1, a1, 848
	call generateOperations
	la t0, root
	lw s2, 0(t0)
	j .LibroBB8_5
.LibroBB8_5: 
	addi t0, zero, 0
	xor t0, s2, t0
	bnez t0, .LibroBB8_7
	j .LibroBB8_6
.LibroBB8_6: 
	j .LibroBB8_8
.LibroBB8_7: 
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw s3, 0(t0)
	j .LibroBB8_9
.LibroBB8_8: 
	j .LibroBB8_10
.LibroBB8_9: 
	addi t0, zero, 0
	xor t0, s3, t0
	bnez t0, .LibroBB8_11
	j .LibroBB8_12
.LibroBB8_10: 
	li a0, 0
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw s3, 0(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
.LibroBB8_11: 
	addi t0, s3, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw a0, 0(t0)
	call printTree
	addi t0, s3, 8
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
	addi t0, s3, 12
	lw a0, 0(t0)
	call toString
	mv a1, a0
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	addi t0, s3, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	call printTree
	j .LibroBB8_12
.LibroBB8_12: 
	j .LibroBB8_13
.LibroBB8_13: 
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
	lw t0, 0(t0)
	addi t0, t0, 8
	lw s2, 0(t0)
	j .LibroBB8_14
.LibroBB8_14: 
	addi t0, zero, 0
	xor t0, s2, t0
	bnez t0, .LibroBB8_16
	j .LibroBB8_15
.LibroBB8_15: 
	j .LibroBB8_17
.LibroBB8_16: 
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t0, t0, 4
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
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	call printTree
	j .LibroBB8_15
.LibroBB8_17: 
	j .LibroBB8_6
constructNode: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	sw s2, 12(sp)
	sw s3, 8(sp)
	sw s4, 4(sp)
	sw s5, 0(sp)
	addi s0, sp, 28
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
	lw t0, 0(t0)
	addi t0, t0, 4
	sw s3, 0(t0)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	sw s2, 0(t0)
	j .LibroBB9_1
.LibroBB9_1: 
	mv a0, s1
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw s2, 12(sp)
	lw s3, 8(sp)
	lw s4, 4(sp)
	lw s5, 0(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
printTree: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	sw s2, 0(sp)
	addi s0, sp, 16
	mv s2, a0
	addi t0, zero, 0
	xor t0, s2, t0
	bnez t0, .LibroBB10_1
	j .LibroBB10_2
.LibroBB10_1: 
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t0, t0, 4
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
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	call printTree
	j .LibroBB10_2
.LibroBB10_2: 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw s2, 0(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
insertImpl: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	sw s2, 8(sp)
	sw s3, 4(sp)
	sw s4, 0(sp)
	addi s0, sp, 24
	mv t0, a0
	mv s4, a1
	mv s3, a2
	mv s2, a3
	addi t1, zero, 0
	xor t1, t0, t1
	bnez t1, .LibroBB11_2
	j .LibroBB11_1
.LibroBB11_1: 
	j .LibroBB11_3
.LibroBB11_2: 
	addi t1, t0, 8
	lw t1, 0(t1)
	xor t1, t1, s2
	bnez t1, .LibroBB11_5
	j .LibroBB11_4
.LibroBB11_3: 
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
	sw s2, 0(t0)
	addi t1, s1, 12
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t0, s1, 0
	sw s4, 0(t0)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, s1, 4
	lw t0, 0(t0)
	addi t1, t0, 8
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB11_6
.LibroBB11_4: 
	addi t1, t0, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	addi a0, zero, 1
	j .LibroBB11_10
.LibroBB11_5: 
	addi t1, t0, 8
	lw t1, 0(t1)
	addi a2, zero, 0
	bge t1, s2, .LibroBB11_9
	j .LibroBB11_7
.LibroBB11_6: 
	j .LibroBB11_8
.LibroBB11_7: 
	addi a2, zero, 1
	j .LibroBB11_9
.LibroBB11_8: 
	addi t0, s4, 4
	lw t0, 0(t0)
	slli t1, s3, 2
	addi t1, t1, 4
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 0
	j .LibroBB11_10
.LibroBB11_9: 
	addi t1, t0, 4
	lw t2, 0(t1)
	slli t1, a2, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw a0, 0(t1)
	mv a1, t0
	mv a3, s2
	call insertImpl
	j .LibroBB11_10
.LibroBB11_10: 
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw s2, 8(sp)
	lw s3, 4(sp)
	lw s4, 0(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
eraseImpl: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	sw s2, 8(sp)
	sw s3, 4(sp)
	sw s4, 0(sp)
	addi s0, sp, 24
	mv s4, a0
	mv s3, a1
	mv s2, a2
	mv s1, a3
	addi t0, zero, 0
	xor t0, s4, t0
	bnez t0, .LibroBB12_1
	j .LibroBB12_2
.LibroBB12_1: 
	addi t0, s4, 8
	lw t0, 0(t0)
	bge s1, t0, .LibroBB12_3
	j .LibroBB12_4
.LibroBB12_2: 
	addi a0, zero, 0
	j .LibroBB12_5
.LibroBB12_3: 
	addi t0, s4, 8
	lw t0, 0(t0)
	bge t0, s1, .LibroBB12_7
	j .LibroBB12_6
.LibroBB12_4: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw a0, 0(t0)
	mv a1, s4
	addi a2, zero, 0
	mv a3, s1
	call eraseImpl
	j .LibroBB12_5
.LibroBB12_5: 
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw s2, 8(sp)
	lw s3, 4(sp)
	lw s4, 0(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
.LibroBB12_6: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	mv a1, s4
	addi a2, zero, 1
	mv a3, s1
	call eraseImpl
	j .LibroBB12_5
.LibroBB12_7: 
	addi t1, s4, 12
	lw t0, 0(t1)
	addi t0, t0, -1
	sw t0, 0(t1)
	addi t0, s4, 12
	lw t1, 0(t0)
	addi t0, zero, 0
	bge t0, t1, .LibroBB12_8
	j .LibroBB12_9
.LibroBB12_8: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB12_11
	j .LibroBB12_10
.LibroBB12_9: 
	addi a0, zero, 1
	j .LibroBB12_5
.LibroBB12_10: 
	addi t0, zero, 0
	xor t0, s3, t0
	beqz t0, .LibroBB12_14
	j .LibroBB12_12
.LibroBB12_11: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw a0, 0(t0)
	j .LibroBB12_13
.LibroBB12_12: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t2, 0(t0)
	addi t0, s3, 4
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB12_14
.LibroBB12_13: 
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB12_16
	j .LibroBB12_15
.LibroBB12_14: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB12_19
	j .LibroBB12_17
.LibroBB12_15: 
	j .LibroBB12_26
.LibroBB12_16: 
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	j .LibroBB12_18
.LibroBB12_17: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	addi t0, t0, 0
	sw s3, 0(t0)
	j .LibroBB12_19
.LibroBB12_18: 
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB12_21
	j .LibroBB12_20
.LibroBB12_19: 
	la t0, root
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, s1, t0
	bnez t0, .LibroBB12_22
	j .LibroBB12_23
.LibroBB12_20: 
	j .LibroBB12_24
.LibroBB12_21: 
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw a0, 0(t0)
	call findLargest
	j .LibroBB12_24
.LibroBB12_22: 
	addi a0, zero, 1
	j .LibroBB12_5
.LibroBB12_23: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	la t0, root
	sw t1, 0(t0)
	j .LibroBB12_22
.LibroBB12_24: 
	j .LibroBB12_25
.LibroBB12_25: 
	j .LibroBB12_26
.LibroBB12_26: 
	j .LibroBB12_27
.LibroBB12_27: 
	la t0, root
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, s1, t0
	bnez t0, .LibroBB12_29
	j .LibroBB12_28
.LibroBB12_28: 
	la t0, root
	sw a0, 0(t0)
	j .LibroBB12_29
.LibroBB12_29: 
	addi t0, a0, 8
	lw t1, 0(t0)
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, t1, t0
	beqz t0, .LibroBB12_32
	j .LibroBB12_30
.LibroBB12_30: 
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t1, 0(t0)
	addi t0, a0, 0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	sw t1, 0(t0)
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB12_32
	j .LibroBB12_31
.LibroBB12_31: 
	addi t0, a0, 0
	lw t1, 0(t0)
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi t0, t0, 0
	sw t1, 0(t0)
	j .LibroBB12_32
.LibroBB12_32: 
	addi t0, zero, 0
	xor t0, s3, t0
	beqz t0, .LibroBB12_34
	j .LibroBB12_33
.LibroBB12_33: 
	addi t0, s3, 4
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	j .LibroBB12_34
.LibroBB12_34: 
	addi t0, a0, 0
	sw s3, 0(t0)
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	sw t1, 0(t0)
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB12_36
	j .LibroBB12_35
.LibroBB12_35: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	addi t0, t0, 0
	sw a0, 0(t0)
	j .LibroBB12_36
.LibroBB12_36: 
	addi t0, a0, 8
	lw t1, 0(t0)
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	xor t0, t1, t0
	beqz t0, .LibroBB12_38
	j .LibroBB12_37
.LibroBB12_37: 
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t1, 0(t0)
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	sw t1, 0(t0)
	addi t0, s4, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi t0, t0, 0
	sw a0, 0(t0)
	j .LibroBB12_38
.LibroBB12_38: 
	addi a0, zero, 1
	j .LibroBB12_5
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

