	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	addi s0, sp, 20
	addi s1, zero, 0
	j .LibroBB0_3
.LibroBB0_1: 
	addi a0, zero, 0
	j .LibroBB0_5
.LibroBB0_2: 
	addi t0, zero, 1
	add t0, s1, t0
	mv s1, t0
	j .LibroBB0_3
.LibroBB0_3: 
	addi t0, zero, 100
	bge s1, t0, .LibroBB0_1
	j .LibroBB0_4
.LibroBB0_4: 
	mv a0, s1
	call printlnInt
	j .LibroBB0_2
.LibroBB0_5: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
.data
