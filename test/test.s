	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -132
	sw s0, 124(sp)
	sw ra, 128(sp)
	addi s0, sp, 132
	addi t0, zero, 0
	sw t0, -12(s0)
	addi t0, zero, 1
	mv t0, t0
	sb t0, -28(s0)
	lb t1, -20(s0)
	lb t0, -20(s0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB0_1
	j .LibroBB0_2
.LibroBB0_1: 
	lw t1, -40(s0)
	lw t0, -40(s0)
	add t1, t1, t0
	lw t0, -40(s0)
	sub t1, t1, t0
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB0_4
	j .LibroBB0_3
.LibroBB0_2: 
	lb t0, -28(s0)
	addi t0, zero, 0
	mv t0, t0
	sb t0, -28(s0)
	j .LibroBB0_1
.LibroBB0_3: 
	lb t0, -28(s0)
	addi t0, zero, 1
	mv t0, t0
	sb t0, -28(s0)
	j .LibroBB0_4
.LibroBB0_4: 
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv t2, a0
	addi t0, zero, 1
	sw t0, 0(t2)
	addi t0, zero, 0
	sw t0, -60(s0)
	j .LibroBB0_5
.LibroBB0_5: 
	lw t1, -60(s0)
	addi t0, zero, 4
	add t0, t1, t0
	sw t0, -60(s0)
	addi t0, zero, 8
	slt t0, t1, t0
	beqz t0, .LibroBB0_6
	j .LibroBB0_7
.LibroBB0_6: 
	sw t2, -56(s0)
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB0_8
	addi t0, zero, 0
	sw t0, -12(s0)
	addi t0, zero, 0
	sw t0, -12(s0)
.LibroBB0_7: 
	add s5, t2, t1
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv t0, a0
	addi t1, zero, 1
	sw t1, 0(t0)
	addi t1, zero, 0
	sw t1, -64(s0)
	j .LibroBB0_9
.LibroBB0_8: 
	lw a0, -12(s0)
	mv a0, a0
	ret
.LibroBB0_9: 
	lw s1, -64(s0)
	addi t1, zero, 4
	add t1, s1, t1
	sw t1, -64(s0)
	addi t1, zero, 8
	slt t1, s1, t1
	beqz t1, .LibroBB0_10
	j .LibroBB0_11
.LibroBB0_10: 
	sw t0, 0(s5)
	j .LibroBB0_5
.LibroBB0_11: 
	add s6, t0, s1
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv s3, a0
	addi t1, zero, 1
	sw t1, 0(s3)
	addi t1, zero, 0
	sw t1, -68(s0)
	j .LibroBB0_12
.LibroBB0_12: 
	lw s1, -68(s0)
	addi t1, zero, 4
	add t1, s1, t1
	sw t1, -68(s0)
	addi t1, zero, 8
	slt t1, s1, t1
	beqz t1, .LibroBB0_14
	j .LibroBB0_13
.LibroBB0_13: 
	add s7, s3, s1
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a7, a0
	addi t1, zero, 1
	sw t1, 0(a7)
	addi t1, zero, 0
	sw t1, -72(s0)
	j .LibroBB0_17
.LibroBB0_14: 
	sw s3, 0(s6)
	j .LibroBB0_9
.LibroBB0_15: 
	sw a7, 0(s7)
	j .LibroBB0_12
.LibroBB0_16: 
	add s8, a7, s1
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a5, a0
	addi t1, zero, 1
	sw t1, 0(a5)
	addi t1, zero, 0
	sw t1, -76(s0)
	j .LibroBB0_19
.LibroBB0_17: 
	lw s1, -72(s0)
	addi t1, zero, 4
	add t1, s1, t1
	sw t1, -72(s0)
	addi t1, zero, 8
	slt t1, s1, t1
	beqz t1, .LibroBB0_15
	j .LibroBB0_16
.LibroBB0_18: 
	add s9, a5, s1
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a3, a0
	addi t1, zero, 1
	sw t1, 0(a3)
	addi t1, zero, 0
	sw t1, -80(s0)
	j .LibroBB0_21
.LibroBB0_19: 
	lw s1, -76(s0)
	addi t1, zero, 4
	add t1, s1, t1
	sw t1, -76(s0)
	addi t1, zero, 8
	slt t1, s1, t1
	beqz t1, .LibroBB0_20
	j .LibroBB0_18
.LibroBB0_20: 
	sw a5, 0(s8)
	j .LibroBB0_17
.LibroBB0_21: 
	lw s1, -80(s0)
	addi t1, zero, 4
	add t1, s1, t1
	sw t1, -80(s0)
	addi t1, zero, 8
	slt t1, s1, t1
	beqz t1, .LibroBB0_23
	j .LibroBB0_22
.LibroBB0_22: 
	add s10, a3, s1
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a1, a0
	addi t1, zero, 1
	sw t1, 0(a1)
	addi t1, zero, 0
	sw t1, -84(s0)
	j .LibroBB0_25
.LibroBB0_23: 
	sw a3, 0(s9)
	j .LibroBB0_19
.LibroBB0_24: 
	sw a1, 0(s10)
	j .LibroBB0_21
.LibroBB0_25: 
	lw s1, -84(s0)
	addi t1, zero, 4
	add t1, s1, t1
	sw t1, -84(s0)
	addi t1, zero, 8
	slt t1, s1, t1
	beqz t1, .LibroBB0_24
	j .LibroBB0_26
.LibroBB0_26: 
	add s11, a1, s1
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv s1, a0
	addi t1, zero, 1
	sw t1, 0(s1)
	addi t1, zero, 0
	sw t1, -88(s0)
	j .LibroBB0_29
.LibroBB0_27: 
	sw s1, 0(s11)
	j .LibroBB0_25
.LibroBB0_28: 
	add t3, s1, a0
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv t1, a0
	addi a0, zero, 1
	sw a0, 0(t1)
	addi a0, zero, 0
	sw a0, -92(s0)
	j .LibroBB0_32
.LibroBB0_29: 
	lw a0, -88(s0)
	addi t1, zero, 4
	add t1, a0, t1
	sw t1, -88(s0)
	addi t1, zero, 8
	slt t1, a0, t1
	beqz t1, .LibroBB0_27
	j .LibroBB0_28
.LibroBB0_30: 
	sw t1, 0(t3)
	j .LibroBB0_29
.LibroBB0_31: 
	add t4, t1, a2
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv s4, a0
	addi a0, zero, 1
	sw a0, 0(s4)
	addi a0, zero, 0
	sw a0, -96(s0)
	j .LibroBB0_33
.LibroBB0_32: 
	lw a2, -92(s0)
	addi a0, zero, 4
	add a0, a2, a0
	sw a0, -92(s0)
	addi a0, zero, 8
	slt a0, a2, a0
	beqz a0, .LibroBB0_30
	j .LibroBB0_31
.LibroBB0_33: 
	lw a2, -96(s0)
	addi a0, zero, 4
	add a0, a2, a0
	sw a0, -96(s0)
	addi a0, zero, 8
	slt a0, a2, a0
	beqz a0, .LibroBB0_35
	j .LibroBB0_34
.LibroBB0_34: 
	add t5, s4, a2
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv s2, a0
	addi a0, zero, 1
	sw a0, 0(s2)
	addi a0, zero, 0
	sw a0, -100(s0)
	j .LibroBB0_37
.LibroBB0_35: 
	sw s4, 0(t4)
	j .LibroBB0_32
.LibroBB0_36: 
	add a0, s2, a2
	sw a0, -124(s0)
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a6, a0
	addi a0, zero, 1
	sw a0, 0(a6)
	addi a0, zero, 0
	sw a0, -104(s0)
	j .LibroBB0_41
.LibroBB0_37: 
	lw a2, -100(s0)
	addi a0, zero, 4
	add a0, a2, a0
	sw a0, -100(s0)
	addi a0, zero, 8
	slt a0, a2, a0
	beqz a0, .LibroBB0_38
	j .LibroBB0_36
.LibroBB0_38: 
	sw s2, 0(t5)
	j .LibroBB0_33
.LibroBB0_39: 
	lw a0, -124(s0)
	sw a6, 0(a0)
	j .LibroBB0_37
.LibroBB0_40: 
	add a0, a6, a2
	sw a0, -116(s0)
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a4, a0
	addi a0, zero, 1
	sw a0, 0(a4)
	addi a0, zero, 0
	sw a0, -108(s0)
	j .LibroBB0_43
.LibroBB0_41: 
	lw a2, -104(s0)
	addi a0, zero, 4
	add a0, a2, a0
	sw a0, -104(s0)
	addi a0, zero, 8
	slt a0, a2, a0
	beqz a0, .LibroBB0_39
	j .LibroBB0_40
.LibroBB0_42: 
	add a0, a4, a2
	sw a0, -128(s0)
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a2, a0
	addi a0, zero, 1
	sw a0, 0(a2)
	addi a0, zero, 0
	sw a0, -112(s0)
	j .LibroBB0_47
.LibroBB0_43: 
	lw a2, -108(s0)
	addi a0, zero, 4
	add a0, a2, a0
	sw a0, -108(s0)
	addi a0, zero, 8
	slt a0, a2, a0
	beqz a0, .LibroBB0_44
	j .LibroBB0_42
.LibroBB0_44: 
	lw a0, -116(s0)
	sw a4, 0(a0)
	j .LibroBB0_41
.LibroBB0_45: 
	lw a0, -128(s0)
	sw a2, 0(a0)
	j .LibroBB0_43
.LibroBB0_46: 
	add a0, a2, t6
	sw a0, -132(s0)
	addi a0, zero, 8
	mv a0, a0
	call myNew
	mv a0, a0
	addi t6, zero, 1
	sw t6, -120(s0)
	lw t6, -120(s0)
	sw t6, 0(a0)
	lw t6, -132(s0)
	sw a0, 0(t6)
	j .LibroBB0_47
.LibroBB0_47: 
	lw t6, -112(s0)
	addi a0, zero, 4
	add a0, t6, a0
	sw a0, -112(s0)
	addi a0, zero, 8
	slt a0, t6, a0
	beqz a0, .LibroBB0_45
	lw s0, 124(sp)
	lw ra, 128(sp)
	addi sp, sp, 132
	j .LibroBB0_46
.data
