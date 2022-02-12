	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	addi s0, sp, 28
	addi t0, zero, 0
	sw t0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	addi t0, zero, 0
	sw t0, -20(s0)
	j .LibroBB0_4
.LibroBB0_1: 
	lw t1, -20(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -20(s0)
	j .LibroBB0_4
.LibroBB0_2: 
	addi t0, zero, 0
	sw t0, -24(s0)
	j .LibroBB0_5
.LibroBB0_3: 
	lw t0, -16(s0)
	sw t0, -12(s0)
	j .LibroBB0_9
.LibroBB0_4: 
	lw t1, -20(s0)
	addi t0, zero, 10
	slt t0, t1, t0
	beqz t0, .LibroBB0_3
	j .LibroBB0_2
.LibroBB0_5: 
	lw t1, -24(s0)
	addi t0, zero, 10
	slt t0, t1, t0
	beqz t0, .LibroBB0_8
	j .LibroBB0_6
.LibroBB0_6: 
	addi t0, zero, 0
	sw t0, -28(s0)
	j .LibroBB0_13
.LibroBB0_7: 
	lw t1, -24(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -24(s0)
	j .LibroBB0_5
.LibroBB0_8: 
	j .LibroBB0_1
.LibroBB0_9: 
	lw a0, -12(s0)
	lw s0, 20(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB0_10: 
	lw t1, -28(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -28(s0)
	j .LibroBB0_13
.LibroBB0_11: 
	j .LibroBB0_7
.LibroBB0_12: 
	lw t1, -16(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -16(s0)
	j .LibroBB0_10
.LibroBB0_13: 
	lw t1, -28(s0)
	addi t0, zero, 10
	slt t0, t1, t0
	beqz t0, .LibroBB0_11
	j .LibroBB0_12
.data
