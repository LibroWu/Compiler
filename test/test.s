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
	addi t0, zero, 0
	beqz t0, .LibroBB0_3
	j .LibroBB0_2
.LibroBB0_2: 
	addi a0, zero, 10
	j .LibroBB0_4
.LibroBB0_3: 
	addi a0, zero, 20
	j .LibroBB0_4
.LibroBB0_4: 
	addi t0, zero, 10
	xor t0, a0, t0
	bnez t0, .LibroBB0_6
	j .LibroBB0_5
.LibroBB0_5: 
	j .LibroBB0_6
.LibroBB0_6: 
	addi t0, zero, 1
	beqz t0, .LibroBB0_7
	j .LibroBB0_8
.LibroBB0_7: 
	j .LibroBB0_9
.LibroBB0_8: 
	addi a0, zero, 30
	j .LibroBB0_7
.LibroBB0_9: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
