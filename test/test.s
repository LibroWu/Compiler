	.text
	.globl main
	.p2align	2
	.type	main,@function
check: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	addi s0, sp, 20
	addi t0, zero, 0
	bge a0, a1, .LibroBB0_2
	j .LibroBB0_1
.LibroBB0_1: 
	addi t0, zero, 0
	slt t0, a0, t0
	seqz t0, t0
	j .LibroBB0_2
.LibroBB0_2: 
	mv a0, t0
	j .LibroBB0_3
.LibroBB0_3: 
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
main: 
	addi sp, sp, -180
	sw ra, 176(sp)
	sw s0, 172(sp)
	sw s1, 168(sp)
	sw s2, 164(sp)
	sw s3, 160(sp)
	sw s4, 156(sp)
	sw s5, 152(sp)
	sw s6, 148(sp)
	sw s7, 144(sp)
	sw s8, 140(sp)
	sw s9, 136(sp)
	sw s10, 132(sp)
	sw s11, 128(sp)
	addi s0, sp, 180
	call getInt
	sw a0, -132(s0)
	lw s10, -132(s0)
	addi t0, zero, 0
	sw t0, -136(s0)
	lw s9, -136(s0)
	addi t0, zero, 0
	sw t0, -140(s0)
	lw s8, -140(s0)
	addi t0, zero, 0
	sw t0, -128(s0)
	lw s11, -128(s0)
	addi t0, zero, 0
	sw t0, -168(s0)
	lw s2, -168(s0)
	addi t0, zero, 0
	sw t0, -144(s0)
	lw s7, -144(s0)
	addi t0, zero, 1
	sw t0, -152(s0)
	lw t0, -152(s0)
	sub t0, s10, t0
	sw t0, -152(s0)
	lw s5, -152(s0)
	addi s4, zero, 0
	mv t0, s10
	mul s1, t0, s10
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw a0, -148(s0)
	lw t0, -148(s0)
	sw s1, 0(t0)
	lw s6, -148(s0)
	addi s1, zero, 0
	j .LibroBB1_1
.LibroBB1_1: 
	mv t0, s10
	mul t0, s10, t0
	bge s1, t0, .LibroBB1_3
	j .LibroBB1_4
.LibroBB1_2: 
	j .LibroBB1_1
.LibroBB1_3: 
	mv t0, s10
	mul s1, s10, t0
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s1, 0(a0)
	sw a0, -180(s0)
	addi t0, zero, 0
	sw t0, -172(s0)
	lw s1, -172(s0)
	j .LibroBB1_6
.LibroBB1_4: 
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t1, s6, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB1_2
.LibroBB1_5: 
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s1, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t1, t0, t1
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB1_8
.LibroBB1_6: 
	mv t0, s10
	mul t0, t0, s10
	bge s1, t0, .LibroBB1_7
	j .LibroBB1_5
.LibroBB1_7: 
	addi t0, zero, 4
	mul t0, s10, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw a0, -160(s0)
	lw t0, -160(s0)
	sw s10, 0(t0)
	lw s3, -160(s0)
	addi s1, zero, 0
	j .LibroBB1_11
.LibroBB1_8: 
	j .LibroBB1_6
.LibroBB1_9: 
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s11, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 0
	addi t1, zero, 4
	mul t2, t2, t1
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s2, 0(t0)
	j .LibroBB1_15
.LibroBB1_10: 
	j .LibroBB1_11
.LibroBB1_11: 
	bge s1, s10, .LibroBB1_9
	j .LibroBB1_12
.LibroBB1_12: 
	addi t0, zero, 4
	mul t0, s10, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s10, 0(a0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	sw a0, 0(t0)
	addi t0, zero, 0
	j .LibroBB1_17
.LibroBB1_13: 
	addi t0, zero, 1
	xor t0, s4, t0
	seqz t0, t0
	beqz t0, .LibroBB1_21
	j .LibroBB1_20
.LibroBB1_14: 
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw s1, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s1, t0
	lw t0, 0(t0)
	sw t0, -124(s0)
	lw s11, -124(s0)
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t0, 0(t0)
	addi s2, zero, 1
	sub s2, t0, s2
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t0, 0(t0)
	addi s1, zero, 2
	sub s1, t0, s1
	mv a1, s10
	mv a0, s2
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_26
	j .LibroBB1_23
.LibroBB1_15: 
	slt t0, s8, s9
	seqz t0, t0
	beqz t0, .LibroBB1_13
	j .LibroBB1_14
.LibroBB1_16: 
	addi a1, zero, 0
	addi t1, zero, 1
	sub a1, a1, t1
	addi t2, zero, 4
	mul t2, s1, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t1, s3, t1
	lw a0, 0(t1)
	addi t2, zero, 4
	mul t2, t0, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t1, a0, t1
	sw a1, 0(t1)
	j .LibroBB1_18
.LibroBB1_17: 
	bge t0, s10, .LibroBB1_19
	j .LibroBB1_16
.LibroBB1_18: 
	j .LibroBB1_17
.LibroBB1_19: 
	j .LibroBB1_10
.LibroBB1_20: 
	addi t1, zero, 4
	mul t1, s7, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s5, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB1_22
.LibroBB1_21: 
	la a0, .libro.str
	call print
	j .LibroBB1_22
.LibroBB1_22: 
	addi a0, zero, 0
	j .LibroBB1_24
.LibroBB1_23: 
	mv a0, s1
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_26
	j .LibroBB1_25
.LibroBB1_24: 
	lw s0, 172(sp)
	lw s1, 168(sp)
	lw s2, 164(sp)
	lw s3, 160(sp)
	lw s4, 156(sp)
	lw s5, 152(sp)
	lw s6, 148(sp)
	lw s7, 144(sp)
	lw s8, 140(sp)
	lw s9, 136(sp)
	lw s10, 132(sp)
	lw s11, 128(sp)
	lw ra, 176(sp)
	addi sp, sp, 180
	ret
.LibroBB1_25: 
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_26
.LibroBB1_26: 
	beqz t0, .LibroBB1_27
	j .LibroBB1_28
.LibroBB1_27: 
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t0, 0(t0)
	addi s2, zero, 1
	sub s2, t0, s2
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t0, 0(t0)
	addi s1, zero, 2
	add s1, t0, s1
	mv a0, s2
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_33
	j .LibroBB1_29
.LibroBB1_28: 
	addi t0, zero, 1
	add t0, s8, t0
	mv s8, t0
	addi t1, zero, 4
	mul t1, s8, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s2, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s8, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 1
	add a0, s11, a0
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	xor t0, s2, s7
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_32
	j .LibroBB1_30
.LibroBB1_29: 
	mv a1, s10
	mv a0, s1
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_33
	j .LibroBB1_31
.LibroBB1_30: 
	xor t0, s1, s5
	seqz t0, t0
	j .LibroBB1_32
.LibroBB1_31: 
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_33
.LibroBB1_32: 
	beqz t0, .LibroBB1_34
	j .LibroBB1_35
.LibroBB1_33: 
	beqz t0, .LibroBB1_36
	j .LibroBB1_37
.LibroBB1_34: 
	j .LibroBB1_27
.LibroBB1_35: 
	addi s4, zero, 1
	j .LibroBB1_34
.LibroBB1_36: 
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t0, 0(t0)
	addi s2, zero, 1
	add s2, t0, s2
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t0, 0(t0)
	addi s1, zero, 2
	sub s1, t0, s1
	mv a0, s2
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_42
	j .LibroBB1_38
.LibroBB1_37: 
	mv t0, s8
	addi s8, zero, 1
	add s8, t0, s8
	addi t1, zero, 4
	mul t1, s8, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s2, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s8, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 1
	add a0, s11, a0
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	xor t0, s2, s7
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_41
	j .LibroBB1_39
.LibroBB1_38: 
	mv a0, s1
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_42
	j .LibroBB1_40
.LibroBB1_39: 
	xor t0, s1, s5
	seqz t0, t0
	j .LibroBB1_41
.LibroBB1_40: 
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_42
.LibroBB1_41: 
	beqz t0, .LibroBB1_44
	j .LibroBB1_43
.LibroBB1_42: 
	beqz t0, .LibroBB1_46
	j .LibroBB1_45
.LibroBB1_43: 
	addi s4, zero, 1
	j .LibroBB1_44
.LibroBB1_44: 
	j .LibroBB1_36
.LibroBB1_45: 
	mv t0, s8
	addi s8, zero, 1
	add s8, t0, s8
	addi t1, zero, 4
	mul t1, s8, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s2, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s8, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 1
	add a0, s11, a0
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	xor t0, s2, s7
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_49
	j .LibroBB1_47
.LibroBB1_46: 
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	sw t0, -164(s0)
	lw t0, -164(s0)
	add t0, t1, t0
	sw t0, -164(s0)
	lw s2, -164(s0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t1, 0(t0)
	addi t0, zero, 2
	sw t0, -176(s0)
	lw t0, -176(s0)
	add t0, t1, t0
	sw t0, -176(s0)
	lw s1, -176(s0)
	mv a0, s2
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_53
	j .LibroBB1_48
.LibroBB1_47: 
	xor t0, s1, s5
	seqz t0, t0
	j .LibroBB1_49
.LibroBB1_48: 
	mv a0, s1
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_53
	j .LibroBB1_50
.LibroBB1_49: 
	beqz t0, .LibroBB1_52
	j .LibroBB1_51
.LibroBB1_50: 
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_53
.LibroBB1_51: 
	addi s4, zero, 1
	j .LibroBB1_52
.LibroBB1_52: 
	j .LibroBB1_46
.LibroBB1_53: 
	beqz t0, .LibroBB1_55
	j .LibroBB1_54
.LibroBB1_54: 
	mv t0, s8
	addi s8, zero, 1
	add s8, t0, s8
	addi t1, zero, 4
	mul t1, s8, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s2, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s8, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 1
	add a0, s11, a0
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	xor t0, s2, s7
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_58
	j .LibroBB1_56
.LibroBB1_55: 
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t0, 0(t0)
	addi s2, zero, 2
	sub s2, t0, s2
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t0, 0(t0)
	addi s1, zero, 1
	sub s1, t0, s1
	mv a1, s10
	mv a0, s2
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_62
	j .LibroBB1_57
.LibroBB1_56: 
	xor t0, s1, s5
	seqz t0, t0
	j .LibroBB1_58
.LibroBB1_57: 
	mv a0, s1
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_62
	j .LibroBB1_59
.LibroBB1_58: 
	beqz t0, .LibroBB1_61
	j .LibroBB1_60
.LibroBB1_59: 
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_62
.LibroBB1_60: 
	addi s4, zero, 1
	j .LibroBB1_61
.LibroBB1_61: 
	j .LibroBB1_55
.LibroBB1_62: 
	beqz t0, .LibroBB1_64
	j .LibroBB1_63
.LibroBB1_63: 
	mv t0, s8
	addi s8, zero, 1
	add s8, t0, s8
	addi t1, zero, 4
	mul t1, s8, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s2, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s8, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 1
	add a0, s11, a0
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	xor t0, s2, s7
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_67
	j .LibroBB1_65
.LibroBB1_64: 
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t0, 0(t0)
	addi s2, zero, 2
	sub s2, t0, s2
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t0, 0(t0)
	addi s1, zero, 1
	add s1, t0, s1
	mv a1, s10
	mv a0, s2
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_71
	j .LibroBB1_66
.LibroBB1_65: 
	xor t0, s1, s5
	seqz t0, t0
	j .LibroBB1_67
.LibroBB1_66: 
	mv a1, s10
	mv a0, s1
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_71
	j .LibroBB1_68
.LibroBB1_67: 
	beqz t0, .LibroBB1_70
	j .LibroBB1_69
.LibroBB1_68: 
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_71
.LibroBB1_69: 
	addi t0, zero, 1
	sw t0, -156(s0)
	lw s4, -156(s0)
	j .LibroBB1_70
.LibroBB1_70: 
	j .LibroBB1_64
.LibroBB1_71: 
	beqz t0, .LibroBB1_73
	j .LibroBB1_72
.LibroBB1_72: 
	mv t0, s8
	addi s8, zero, 1
	add s8, t0, s8
	addi t1, zero, 4
	mul t1, s8, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s2, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s8, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 1
	add a0, s11, a0
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	xor t0, s2, s7
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_76
	j .LibroBB1_74
.LibroBB1_73: 
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t0, 0(t0)
	addi s2, zero, 2
	add s2, t0, s2
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t0, 0(t0)
	addi s1, zero, 1
	sub s1, t0, s1
	mv a0, s2
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_80
	j .LibroBB1_75
.LibroBB1_74: 
	xor t0, s1, s5
	seqz t0, t0
	j .LibroBB1_76
.LibroBB1_75: 
	mv a1, s10
	mv a0, s1
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_80
	j .LibroBB1_77
.LibroBB1_76: 
	beqz t0, .LibroBB1_79
	j .LibroBB1_78
.LibroBB1_77: 
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_80
.LibroBB1_78: 
	addi s4, zero, 1
	j .LibroBB1_79
.LibroBB1_79: 
	j .LibroBB1_73
.LibroBB1_80: 
	beqz t0, .LibroBB1_82
	j .LibroBB1_81
.LibroBB1_81: 
	addi t0, zero, 1
	add t0, s8, t0
	mv s8, t0
	addi t1, zero, 4
	mul t1, s8, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s2, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s8, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 1
	add a0, s11, a0
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	xor t0, s2, s7
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_85
	j .LibroBB1_83
.LibroBB1_82: 
	addi t1, zero, 4
	mul t1, s9, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	lw t0, 0(t0)
	addi s2, zero, 2
	add s2, t0, s2
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s9, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	lw t0, 0(t0)
	addi s1, zero, 1
	add s1, t0, s1
	mv a0, s2
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_89
	j .LibroBB1_84
.LibroBB1_83: 
	xor t0, s1, s5
	seqz t0, t0
	j .LibroBB1_85
.LibroBB1_84: 
	mv a0, s1
	mv a1, s10
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_89
	j .LibroBB1_86
.LibroBB1_85: 
	beqz t0, .LibroBB1_87
	j .LibroBB1_88
.LibroBB1_86: 
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_89
.LibroBB1_87: 
	j .LibroBB1_82
.LibroBB1_88: 
	addi s4, zero, 1
	j .LibroBB1_87
.LibroBB1_89: 
	beqz t0, .LibroBB1_91
	j .LibroBB1_90
.LibroBB1_90: 
	addi t0, zero, 1
	add t0, s8, t0
	mv s8, t0
	addi t1, zero, 4
	mul t1, s8, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s6, t0
	sw s2, 0(t0)
	lw t0, -180(s0)
	addi t2, zero, 4
	mul t2, s8, t2
	addi t1, zero, 4
	add t1, t2, t1
	add t0, t0, t1
	sw s1, 0(t0)
	addi a0, zero, 1
	add a0, s11, a0
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s3, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	xor t0, s2, s7
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_95
	j .LibroBB1_92
.LibroBB1_91: 
	addi t0, zero, 1
	xor t0, s4, t0
	seqz t0, t0
	beqz t0, .LibroBB1_94
	j .LibroBB1_93
.LibroBB1_92: 
	xor t0, s1, s5
	seqz t0, t0
	j .LibroBB1_95
.LibroBB1_93: 
	j .LibroBB1_13
.LibroBB1_94: 
	addi t0, zero, 1
	add t0, s9, t0
	mv s9, t0
	j .LibroBB1_15
.LibroBB1_95: 
	beqz t0, .LibroBB1_97
	j .LibroBB1_96
.LibroBB1_96: 
	addi s4, zero, 1
	j .LibroBB1_97
.LibroBB1_97: 
	j .LibroBB1_91
.data
	.type	.libro.str,@object
.libro.str:
	.asciz	"no solution!\n"
	.size	.libro.str, 14

