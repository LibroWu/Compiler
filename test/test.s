	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -56
	sw ra, 52(sp)
	sw s0, 48(sp)
	addi s0, sp, 56
	addi t4, zero, 0
	sw t4, -12(s0)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 0(sp)
	lw t1, 0(sp)
	sw t1, -16(s0)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 4(sp)
	lw t1, 4(sp)
	sw t1, -20(s0)
	lw t2, -16(s0)
	sw t2, 8(sp)
	addi t3, zero, 1
	mv t2, t3
	sw t2, 12(sp)
	lw t1, 12(sp)
	sw t1, -16(s0)
	addi t3, zero, 1
	mv t2, t3
	sw t2, 16(sp)
	j .LibroBB0_1
.LibroBB0_1: 
	lw t2, -16(s0)
	sw t2, 20(sp)
	lw t0, 20(sp)
	beqz t0, .LibroBB0_2
	j .LibroBB0_3
.LibroBB0_2: 
	lw t2, -20(s0)
	sw t2, 24(sp)
	lw t0, 24(sp)
	beqz t0, .LibroBB0_5
	j .LibroBB0_4
.LibroBB0_3: 
	addi t3, zero, 1
	mv a0, t3
	call printlnInt
	j .LibroBB0_2
.LibroBB0_4: 
	addi t3, zero, 2
	mv a0, t3
	call printlnInt
	j .LibroBB0_5
.LibroBB0_5: 
	lui t4, 1
	addi t4, t4, -2048
	sw t4, -24(s0)
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB0_6
.LibroBB0_6: 
	lw t2, -12(s0)
	sw t2, 28(sp)
	lw t0, 28(sp)
	mv a0, t0
	lw s0, 48(sp)
	lw ra, 52(sp)
	addi sp, sp, 56
	ret

.data
