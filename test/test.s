	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -36
	sw ra, 32(sp)
	sw s0, 28(sp)
	addi s0, sp, 36
	call _GLOBAL_
	addi t0, zero, 0
	sw t0, -12(s0)
	call getInt
	la t0, N
	lw t0, 0(t0)
	la t0, N
	sw a0, 0(t0)
	lw t0, -16(s0)
	addi t0, zero, 1
	sw t0, -16(s0)
	j .LibroBB0_3
.LibroBB0_1: 
	lw t1, -16(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -16(s0)
	j .LibroBB0_3
.LibroBB0_2: 
	lw t0, -20(s0)
	addi t0, zero, 1
	sw t0, -20(s0)
	j .LibroBB0_7
.LibroBB0_3: 
	lw t1, -16(s0)
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB0_4
	j .LibroBB0_2
.LibroBB0_4: 
	la t0, total
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB0_9
.LibroBB0_5: 
	j .LibroBB0_1
.LibroBB0_6: 
	lw t0, -24(s0)
	addi t0, zero, 1
	sw t0, -24(s0)
	j .LibroBB0_11
.LibroBB0_7: 
	lw t1, -20(s0)
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB0_5
	j .LibroBB0_6
.LibroBB0_8: 
	lw t1, -20(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -20(s0)
	j .LibroBB0_7
.LibroBB0_9: 
	lw a0, -12(s0)
	lw s0, 28(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
.LibroBB0_10: 
	lw t0, -28(s0)
	addi t0, zero, 1
	sw t0, -28(s0)
	j .LibroBB0_17
.LibroBB0_11: 
	lw t1, -24(s0)
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB0_12
	j .LibroBB0_10
.LibroBB0_12: 
	j .LibroBB0_8
.LibroBB0_13: 
	lw t1, -24(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -24(s0)
	j .LibroBB0_11
.LibroBB0_14: 
	lw t1, -28(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -28(s0)
	j .LibroBB0_17
.LibroBB0_15: 
	lw t0, -32(s0)
	addi t0, zero, 1
	sw t0, -32(s0)
	j .LibroBB0_19
.LibroBB0_16: 
	j .LibroBB0_13
.LibroBB0_17: 
	lw t1, -28(s0)
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB0_16
	j .LibroBB0_15
.LibroBB0_18: 
	j .LibroBB0_14
.LibroBB0_19: 
	lw t1, -32(s0)
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB0_18
	j .LibroBB0_21
.LibroBB0_20: 
	lw t1, -32(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -32(s0)
	j .LibroBB0_19
.LibroBB0_21: 
	lw t0, -36(s0)
	addi t0, zero, 1
	sw t0, -36(s0)
	j .LibroBB0_24
.LibroBB0_22: 
	lw t1, -16(s0)
	lw t0, -20(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_26
.LibroBB0_23: 
	lw t1, -36(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -36(s0)
	j .LibroBB0_24
.LibroBB0_24: 
	lw t1, -36(s0)
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB0_25
	j .LibroBB0_22
.LibroBB0_25: 
	j .LibroBB0_20
.LibroBB0_26: 
	lw t1, -16(s0)
	lw t0, -24(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_27
.LibroBB0_27: 
	lw t1, -16(s0)
	lw t0, -28(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_28
.LibroBB0_28: 
	lw t1, -16(s0)
	lw t0, -32(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_29
.LibroBB0_29: 
	lw t1, -16(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_30
.LibroBB0_30: 
	lw t1, -16(s0)
	la t0, h
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_31
.LibroBB0_31: 
	lw t1, -16(s0)
	la t0, i
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_32
.LibroBB0_32: 
	lw t1, -16(s0)
	la t0, j
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_33
.LibroBB0_33: 
	lw t1, -16(s0)
	la t0, k
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_34
.LibroBB0_34: 
	lw t1, -20(s0)
	lw t0, -24(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_35
.LibroBB0_35: 
	lw t1, -20(s0)
	lw t0, -28(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_36
.LibroBB0_36: 
	lw t1, -20(s0)
	lw t0, -32(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_37
.LibroBB0_37: 
	lw t1, -20(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_38
.LibroBB0_38: 
	lw t1, -20(s0)
	la t0, h
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_39
.LibroBB0_39: 
	lw t1, -20(s0)
	la t0, i
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_40
.LibroBB0_40: 
	lw t1, -20(s0)
	la t0, j
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_41
.LibroBB0_41: 
	lw t1, -20(s0)
	la t0, k
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_42
.LibroBB0_42: 
	lw t1, -24(s0)
	lw t0, -28(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_43
.LibroBB0_43: 
	lw t1, -24(s0)
	lw t0, -32(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_44
.LibroBB0_44: 
	lw t1, -24(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_45
.LibroBB0_45: 
	lw t1, -24(s0)
	la t0, h
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_46
.LibroBB0_46: 
	lw t1, -24(s0)
	la t0, i
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_47
.LibroBB0_47: 
	lw t1, -24(s0)
	la t0, j
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_48
.LibroBB0_48: 
	lw t1, -24(s0)
	la t0, k
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_49
.LibroBB0_49: 
	lw t1, -28(s0)
	lw t0, -32(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_50
.LibroBB0_50: 
	lw t1, -28(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_51
.LibroBB0_51: 
	lw t1, -28(s0)
	la t0, h
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_52
.LibroBB0_52: 
	lw t1, -28(s0)
	la t0, i
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_53
.LibroBB0_53: 
	lw t1, -28(s0)
	la t0, j
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_54
.LibroBB0_54: 
	lw t1, -28(s0)
	la t0, k
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_55
.LibroBB0_55: 
	lw t1, -32(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_56
.LibroBB0_56: 
	lw t1, -32(s0)
	la t0, h
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_57
.LibroBB0_57: 
	lw t1, -32(s0)
	la t0, i
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_58
.LibroBB0_58: 
	lw t1, -32(s0)
	la t0, j
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_59
.LibroBB0_59: 
	lw t1, -32(s0)
	la t0, k
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_60
.LibroBB0_60: 
	lw t1, -36(s0)
	la t0, h
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_61
.LibroBB0_61: 
	lw t1, -36(s0)
	la t0, i
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_62
.LibroBB0_62: 
	lw t1, -36(s0)
	la t0, j
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_63
.LibroBB0_63: 
	lw t1, -36(s0)
	la t0, k
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_64
.LibroBB0_64: 
	la t0, i
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_66
	j .LibroBB0_65
.LibroBB0_65: 
	la t0, h
	lw t1, 0(t0)
	la t0, k
	lw t0, 0(t0)
	xor t0, t1, t0
	snez t0, t0
	j .LibroBB0_66
.LibroBB0_66: 
	beqz t0, .LibroBB0_68
	j .LibroBB0_67
.LibroBB0_67: 
	la t0, total
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, total
	sw t1, 0(t0)
	j .LibroBB0_68
.LibroBB0_68: 
	j .LibroBB0_23
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
	.type	N,@object
N:
	.word	0
	.size	N, 4

	.type	h,@object
h:
	.word	99
	.size	h, 4

	.type	i,@object
i:
	.word	100
	.size	i, 4

	.type	j,@object
j:
	.word	101
	.size	j, 4

	.type	k,@object
k:
	.word	102
	.size	k, 4

	.type	total,@object
total:
	.word	0
	.size	total, 4

