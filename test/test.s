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
	addi t1, zero, 0
	addi t0, zero, 0
	j .LibroBB0_2
.LibroBB0_2: 
	addi t2, zero, 200
	bge t0, t2, .LibroBB0_4
	j .LibroBB0_3
.LibroBB0_3: 
	addi t0, t0, 1
	addi t1, t1, 1
	j .LibroBB0_5
.LibroBB0_4: 
	j .LibroBB0_6
.LibroBB0_5: 
	addi t0, t0, 1
	j .LibroBB0_2
.LibroBB0_6: 
	addi a0, t1, -100
	j .LibroBB0_7
.LibroBB0_7: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
test: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 0
	addi t0, zero, 0
	j .LibroBB1_1
.LibroBB1_1: 
	addi t1, zero, 200
	bge t0, t1, .LibroBB1_3
	j .LibroBB1_2
.LibroBB1_2: 
	addi t0, t0, 1
	addi a0, a0, 1
	j .LibroBB1_4
.LibroBB1_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB1_4: 
	addi t0, t0, 1
	j .LibroBB1_1
.data
