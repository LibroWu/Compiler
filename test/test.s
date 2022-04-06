	.text
	.globl main
	.p2align	2
	.type	main,@function
test: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 0
	addi t0, zero, 0
	j .LibroBB0_1
.LibroBB0_1: 
	addi t1, zero, 200
	bge t0, t1, .LibroBB0_3
	j .LibroBB0_2
.LibroBB0_2: 
	j .LibroBB0_4
.LibroBB0_3: 
	j .LibroBB0_5
.LibroBB0_4: 
	j .LibroBB0_6
.LibroBB0_5: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB0_6: 
	j .LibroBB0_7
.LibroBB0_7: 
	j .LibroBB0_8
.LibroBB0_8: 
	addi t0, t0, 1
	addi a0, a0, 1
	j .LibroBB0_9
.LibroBB0_9: 
	j .LibroBB0_10
.LibroBB0_10: 
	addi t0, t0, 1
	j .LibroBB0_1
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call test
	addi a0, a0, -100
	j .LibroBB1_1
.LibroBB1_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
