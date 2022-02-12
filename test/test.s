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
	sb t0, -12(s0)
	sw a0, -16(s0)
	sw a1, -20(s0)
	lw t1, -16(s0)
	lw t0, -20(s0)
	slt t1, t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB0_2
	j .LibroBB0_1
.LibroBB0_1: 
	lw t1, -16(s0)
	addi t0, zero, 0
	slt t0, t1, t0
	seqz t0, t0
	j .LibroBB0_2
.LibroBB0_2: 
	sb t0, -12(s0)
	j .LibroBB0_3
.LibroBB0_3: 
	lb a0, -12(s0)
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
main: 
	addi sp, sp, -80
	sw ra, 76(sp)
	sw s0, 72(sp)
	sw s1, 68(sp)
	addi s0, sp, 80
	addi t0, zero, 0
	sw t0, -16(s0)
	call getInt
	sw a0, -20(s0)
	addi t0, zero, 0
	sw t0, -24(s0)
	addi t0, zero, 0
	sw t0, -44(s0)
	addi t0, zero, 0
	sw t0, -28(s0)
	addi t0, zero, 0
	sw t0, -32(s0)
	lw t1, -20(s0)
	addi t0, zero, 1
	sub t0, t1, t0
	sw t0, -36(s0)
	lw t1, -20(s0)
	addi t0, zero, 1
	sub t0, t1, t0
	sw t0, -40(s0)
	addi t0, zero, 0
	sw t0, -56(s0)
	addi t0, zero, 0
	sw t0, -60(s0)
	addi t0, zero, 0
	sw t0, -52(s0)
	addi t0, zero, 0
	sw t0, -48(s0)
	lw t1, -20(s0)
	lw t0, -20(s0)
	mul s1, t1, t0
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s1, 0(a0)
	sw a0, -64(s0)
	addi t0, zero, 0
	sw t0, -76(s0)
	j .LibroBB1_4
.LibroBB1_1: 
	lw t1, -76(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -76(s0)
	j .LibroBB1_4
.LibroBB1_2: 
	lw t2, -64(s0)
	lw t0, -76(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB1_1
.LibroBB1_3: 
	lw t1, -20(s0)
	lw t0, -20(s0)
	mul s1, t1, t0
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s1, 0(a0)
	sw a0, -68(s0)
	addi t0, zero, 0
	sw t0, -76(s0)
	j .LibroBB1_6
.LibroBB1_4: 
	lw t2, -76(s0)
	lw t1, -20(s0)
	lw t0, -20(s0)
	mul t0, t1, t0
	slt t0, t2, t0
	beqz t0, .LibroBB1_3
	j .LibroBB1_2
.LibroBB1_5: 
	lw t2, -68(s0)
	lw t0, -76(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB1_8
.LibroBB1_6: 
	lw t2, -76(s0)
	lw t1, -20(s0)
	lw t0, -20(s0)
	mul t0, t1, t0
	slt t0, t2, t0
	beqz t0, .LibroBB1_7
	j .LibroBB1_5
.LibroBB1_7: 
	lw s1, -20(s0)
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s1, 0(a0)
	sw a0, -72(s0)
	addi t0, zero, 0
	sw t0, -76(s0)
	j .LibroBB1_10
.LibroBB1_8: 
	lw t1, -76(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -76(s0)
	j .LibroBB1_6
.LibroBB1_9: 
	lw t1, -76(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -76(s0)
	j .LibroBB1_10
.LibroBB1_10: 
	lw t1, -76(s0)
	lw t0, -20(s0)
	slt t0, t1, t0
	beqz t0, .LibroBB1_12
	j .LibroBB1_11
.LibroBB1_11: 
	lw s1, -20(s0)
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s1, 0(a0)
	lw t2, -72(s0)
	lw t0, -76(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	addi t0, zero, 0
	sw t0, -80(s0)
	j .LibroBB1_13
.LibroBB1_12: 
	lw s1, -28(s0)
	lw t2, -64(s0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -32(s0)
	lw t2, -68(s0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t2, -72(s0)
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
	add t1, t2, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB1_19
.LibroBB1_13: 
	lw t1, -80(s0)
	lw t0, -20(s0)
	slt t0, t1, t0
	beqz t0, .LibroBB1_16
	j .LibroBB1_14
.LibroBB1_14: 
	addi s1, zero, 0
	addi t0, zero, 1
	sub s1, s1, t0
	lw t2, -72(s0)
	lw t0, -76(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -80(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	j .LibroBB1_15
.LibroBB1_15: 
	lw t1, -80(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -80(s0)
	j .LibroBB1_13
.LibroBB1_16: 
	j .LibroBB1_9
.LibroBB1_17: 
	lw s1, -72(s0)
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s1, t0
	lw s1, 0(t0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, s1, t0
	lw t0, 0(t0)
	sw t0, -52(s0)
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	sub t0, t1, t0
	sw t0, -56(s0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 2
	sub t0, t1, t0
	sw t0, -60(s0)
	lw a0, -56(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_26
	j .LibroBB1_20
.LibroBB1_18: 
	lw t1, -48(s0)
	addi t0, zero, 1
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB1_22
	j .LibroBB1_21
.LibroBB1_19: 
	lw t1, -24(s0)
	lw t0, -44(s0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB1_18
	j .LibroBB1_17
.LibroBB1_20: 
	lw a0, -60(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_26
	j .LibroBB1_24
.LibroBB1_21: 
	lw t2, -72(s0)
	lw t0, -36(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -40(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB1_23
.LibroBB1_22: 
	la a0, .libro.str
	call print
	j .LibroBB1_23
.LibroBB1_23: 
	addi t0, zero, 0
	sw t0, -16(s0)
	j .LibroBB1_25
.LibroBB1_24: 
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
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
.LibroBB1_25: 
	lw a0, -16(s0)
	lw s0, 72(sp)
	lw s1, 68(sp)
	lw ra, 76(sp)
	addi sp, sp, 80
	ret
.LibroBB1_26: 
	beqz t0, .LibroBB1_28
	j .LibroBB1_27
.LibroBB1_27: 
	lw t1, -44(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -44(s0)
	lw s1, -56(s0)
	lw t2, -64(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -60(s0)
	lw t2, -68(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -52(s0)
	addi s1, zero, 1
	add s1, t0, s1
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -56(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_31
	j .LibroBB1_29
.LibroBB1_28: 
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	sub t0, t1, t0
	sw t0, -56(s0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 2
	add t0, t1, t0
	sw t0, -60(s0)
	lw a0, -56(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_35
	j .LibroBB1_30
.LibroBB1_29: 
	lw t1, -60(s0)
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB1_31
.LibroBB1_30: 
	lw a0, -60(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_35
	j .LibroBB1_32
.LibroBB1_31: 
	beqz t0, .LibroBB1_33
	j .LibroBB1_34
.LibroBB1_32: 
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_35
.LibroBB1_33: 
	j .LibroBB1_28
.LibroBB1_34: 
	addi t0, zero, 1
	sw t0, -48(s0)
	j .LibroBB1_33
.LibroBB1_35: 
	beqz t0, .LibroBB1_36
	j .LibroBB1_37
.LibroBB1_36: 
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -56(s0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 2
	sub t0, t1, t0
	sw t0, -60(s0)
	lw a0, -56(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_42
	j .LibroBB1_38
.LibroBB1_37: 
	lw t1, -44(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -44(s0)
	lw s1, -56(s0)
	lw t2, -64(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -60(s0)
	lw t2, -68(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -52(s0)
	addi s1, zero, 1
	add s1, t0, s1
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -56(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_41
	j .LibroBB1_39
.LibroBB1_38: 
	lw a0, -60(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_42
	j .LibroBB1_40
.LibroBB1_39: 
	lw t1, -60(s0)
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB1_41
.LibroBB1_40: 
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
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
	beqz t0, .LibroBB1_45
	j .LibroBB1_46
.LibroBB1_43: 
	addi t0, zero, 1
	sw t0, -48(s0)
	j .LibroBB1_44
.LibroBB1_44: 
	j .LibroBB1_36
.LibroBB1_45: 
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -56(s0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 2
	add t0, t1, t0
	sw t0, -60(s0)
	lw a0, -56(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_51
	j .LibroBB1_47
.LibroBB1_46: 
	lw t1, -44(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -44(s0)
	lw s1, -56(s0)
	lw t2, -64(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -60(s0)
	lw t2, -68(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -52(s0)
	addi s1, zero, 1
	add s1, t0, s1
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -56(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_50
	j .LibroBB1_48
.LibroBB1_47: 
	lw a0, -60(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_51
	j .LibroBB1_49
.LibroBB1_48: 
	lw t1, -60(s0)
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB1_50
.LibroBB1_49: 
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_51
.LibroBB1_50: 
	beqz t0, .LibroBB1_53
	j .LibroBB1_52
.LibroBB1_51: 
	beqz t0, .LibroBB1_55
	j .LibroBB1_54
.LibroBB1_52: 
	addi t0, zero, 1
	sw t0, -48(s0)
	j .LibroBB1_53
.LibroBB1_53: 
	j .LibroBB1_45
.LibroBB1_54: 
	lw t1, -44(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -44(s0)
	lw s1, -56(s0)
	lw t2, -64(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -60(s0)
	lw t2, -68(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -52(s0)
	addi s1, zero, 1
	add s1, t0, s1
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -56(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_58
	j .LibroBB1_56
.LibroBB1_55: 
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 2
	sub t0, t1, t0
	sw t0, -56(s0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	sub t0, t1, t0
	sw t0, -60(s0)
	lw a0, -56(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_62
	j .LibroBB1_57
.LibroBB1_56: 
	lw t1, -60(s0)
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB1_58
.LibroBB1_57: 
	lw a0, -60(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_62
	j .LibroBB1_59
.LibroBB1_58: 
	beqz t0, .LibroBB1_60
	j .LibroBB1_61
.LibroBB1_59: 
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
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
	j .LibroBB1_55
.LibroBB1_61: 
	addi t0, zero, 1
	sw t0, -48(s0)
	j .LibroBB1_60
.LibroBB1_62: 
	beqz t0, .LibroBB1_63
	j .LibroBB1_64
.LibroBB1_63: 
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 2
	sub t0, t1, t0
	sw t0, -56(s0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -60(s0)
	lw a0, -56(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_69
	j .LibroBB1_65
.LibroBB1_64: 
	lw t1, -44(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -44(s0)
	lw s1, -56(s0)
	lw t2, -64(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -60(s0)
	lw t2, -68(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -52(s0)
	addi s1, zero, 1
	add s1, t0, s1
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -56(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_68
	j .LibroBB1_66
.LibroBB1_65: 
	lw a0, -60(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_69
	j .LibroBB1_67
.LibroBB1_66: 
	lw t1, -60(s0)
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB1_68
.LibroBB1_67: 
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB1_69
.LibroBB1_68: 
	beqz t0, .LibroBB1_71
	j .LibroBB1_70
.LibroBB1_69: 
	beqz t0, .LibroBB1_73
	j .LibroBB1_72
.LibroBB1_70: 
	addi t0, zero, 1
	sw t0, -48(s0)
	j .LibroBB1_71
.LibroBB1_71: 
	j .LibroBB1_63
.LibroBB1_72: 
	lw t1, -44(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -44(s0)
	lw s1, -56(s0)
	lw t2, -64(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -60(s0)
	lw t2, -68(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -52(s0)
	addi s1, zero, 1
	add s1, t0, s1
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -56(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_76
	j .LibroBB1_74
.LibroBB1_73: 
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 2
	add t0, t1, t0
	sw t0, -56(s0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	sub t0, t1, t0
	sw t0, -60(s0)
	lw a0, -56(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_80
	j .LibroBB1_75
.LibroBB1_74: 
	lw t1, -60(s0)
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB1_76
.LibroBB1_75: 
	lw a0, -60(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_80
	j .LibroBB1_77
.LibroBB1_76: 
	beqz t0, .LibroBB1_79
	j .LibroBB1_78
.LibroBB1_77: 
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
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
	addi t0, zero, 1
	sw t0, -48(s0)
	j .LibroBB1_79
.LibroBB1_79: 
	j .LibroBB1_73
.LibroBB1_80: 
	beqz t0, .LibroBB1_82
	j .LibroBB1_81
.LibroBB1_81: 
	lw t1, -44(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -44(s0)
	lw s1, -56(s0)
	lw t2, -64(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -60(s0)
	lw t2, -68(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -52(s0)
	addi s1, zero, 1
	add s1, t0, s1
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -56(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_85
	j .LibroBB1_83
.LibroBB1_82: 
	lw t2, -64(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 2
	add t0, t1, t0
	sw t0, -56(s0)
	lw t2, -68(s0)
	lw t0, -24(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -60(s0)
	lw a0, -56(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_89
	j .LibroBB1_84
.LibroBB1_83: 
	lw t1, -60(s0)
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB1_85
.LibroBB1_84: 
	lw a0, -60(s0)
	lw a1, -20(s0)
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB1_89
	j .LibroBB1_86
.LibroBB1_85: 
	beqz t0, .LibroBB1_88
	j .LibroBB1_87
.LibroBB1_86: 
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
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
	addi t0, zero, 1
	sw t0, -48(s0)
	j .LibroBB1_88
.LibroBB1_88: 
	j .LibroBB1_82
.LibroBB1_89: 
	beqz t0, .LibroBB1_90
	j .LibroBB1_91
.LibroBB1_90: 
	lw t1, -48(s0)
	addi t0, zero, 1
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB1_93
	j .LibroBB1_92
.LibroBB1_91: 
	lw t1, -44(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -44(s0)
	lw s1, -56(s0)
	lw t2, -64(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw s1, -60(s0)
	lw t2, -68(s0)
	lw t0, -44(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t0, -52(s0)
	addi s1, zero, 1
	add s1, t0, s1
	lw t2, -72(s0)
	lw t0, -56(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	lw t0, -60(s0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	lw t1, -56(s0)
	lw t0, -36(s0)
	xor t0, t1, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB1_95
	j .LibroBB1_94
.LibroBB1_92: 
	j .LibroBB1_18
.LibroBB1_93: 
	lw t1, -24(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -24(s0)
	j .LibroBB1_19
.LibroBB1_94: 
	lw t1, -60(s0)
	lw t0, -40(s0)
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB1_95
.LibroBB1_95: 
	beqz t0, .LibroBB1_97
	j .LibroBB1_96
.LibroBB1_96: 
	addi t0, zero, 1
	sw t0, -48(s0)
	j .LibroBB1_97
.LibroBB1_97: 
	j .LibroBB1_90
.data
	.type	.libro.str,@object
.libro.str:
	.asciz	"no solution!\n"
	.size	.libro.str, 14

