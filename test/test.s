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
	addi t1, zero, 0
	j .LibroBB0_1
.LibroBB0_1: 
	addi t0, zero, 200
	bge t1, t0, .LibroBB0_2
	j .LibroBB0_3
.LibroBB0_2: 
	j .LibroBB0_4
.LibroBB0_3: 
	j .LibroBB0_5
.LibroBB0_4: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB0_5: 
	j .LibroBB0_6
.LibroBB0_6: 
	addi t0, zero, 1
	j .LibroBB0_7
.LibroBB0_7: 
	beqz t0, .LibroBB0_8
	j .LibroBB0_9
.LibroBB0_8: 
	j .LibroBB0_10
.LibroBB0_9: 
	addi t1, t1, 1
	addi a0, a0, 1
	j .LibroBB0_10
.LibroBB0_10: 
	j .LibroBB0_11
.LibroBB0_11: 
	addi t1, t1, 1
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
