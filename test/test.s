	.text
	.globl main
	.p2align	2
	.type	main,@function
_B_B: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB0_1
.LibroBB0_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_C_func: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB1_1
.LibroBB1_1: 
	li a0, 93
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB2_1
.LibroBB2_1: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
func: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB3_1
.LibroBB3_1: 
	j .LibroBB3_2
.LibroBB3_2: 
	j .LibroBB3_3
.LibroBB3_3: 
	j .LibroBB3_4
.LibroBB3_4: 
	j .LibroBB3_3
.LibroBB3_5: 
	j .LibroBB3_6
.LibroBB3_6: 
	j .LibroBB3_7
.LibroBB3_7: 
	j .LibroBB3_6
.LibroBB3_8: 
	j .LibroBB3_9
	addi a0, zero, 44
	call myNew
	addi t0, zero, 10
	sw t0, 0(a0)
	addi a0, zero, 0
	call myNew
	call _C_func
	addi a0, zero, 0
	call myNew
	call _C_func
.LibroBB3_9: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
