	.text
	.globl main
	.p2align	2
	.type	main,@function
tak: 
	addi sp, sp, -24
	sw s0, 16(sp)
	sw ra, 20(sp)
	addi s0, sp, 24
	mv a0, a0
	mv a1, a1
	mv a2, a2
	addi t0, zero, 0
	sw t0, -12(s0)
	sw a0, -16(s0)
	sw a1, -20(s0)
	sw a2, -24(s0)
	lw t1, -20(s0)
	lw t0, -16(s0)
	slt t0, t1, t0
	beqz t0, .LibroBB0_3
	j .LibroBB0_1
.LibroBB0_1: 
	lw t0, -16(s0)
	addi a0, zero, 1
	sub a0, t0, a0
	lw a1, -20(s0)
	lw a2, -24(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call tak
	mv a0, a0
	lw t1, -20(s0)
	addi t0, zero, 1
	sub t0, t1, t0
	lw a1, -24(s0)
	lw a2, -16(s0)
	mv a0, t0
	mv a1, a1
	mv a2, a2
	call tak
	mv t1, a0
	lw t2, -24(s0)
	addi t0, zero, 1
	sub t0, t2, t0
	lw a1, -16(s0)
	lw a2, -20(s0)
	mv a0, t0
	mv a1, a1
	mv a2, a2
	call tak
	mv a2, a0
	mv a0, a0
	mv a1, t1
	mv a2, a2
	call tak
	mv a0, a0
	addi t0, zero, 1
	add t0, t0, a0
	sw t0, -12(s0)
	j .LibroBB0_4
.LibroBB0_2: 
	addi t0, zero, 0
	sw t0, -12(s0)
	j .LibroBB0_4
.LibroBB0_3: 
	lw t0, -24(s0)
	sw t0, -12(s0)
	j .LibroBB0_4
.LibroBB0_4: 
	lw a0, -12(s0)
	mv a0, a0
	lw s0, 16(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
main: 
	addi sp, sp, -12
	sw s0, 4(sp)
	sw ra, 8(sp)
	addi s0, sp, 12
	addi t0, zero, 0
	sw t0, -12(s0)
	addi a0, zero, 18
	mv a0, a0
	addi a1, zero, 12
	mv a1, a1
	addi a2, zero, 6
	mv a2, a2
	call tak
	mv a0, a0
	sw a0, -12(s0)
	j .LibroBB1_1
.LibroBB1_1: 
	lw a0, -12(s0)
	mv a0, a0
	lw s0, 4(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.data
