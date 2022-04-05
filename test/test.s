	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB0_1
.LibroBB0_1: 
	j .LibroBB0_2
.LibroBB0_2: 
	j .LibroBB0_3
.LibroBB0_3: 
	j .LibroBB0_4
.LibroBB0_4: 
	j .LibroBB0_5
.LibroBB0_5: 
	j .LibroBB0_6
.LibroBB0_6: 
	j .LibroBB0_7
.LibroBB0_7: 
	li a0, 30
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
