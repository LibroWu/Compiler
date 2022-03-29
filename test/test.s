	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call getInt
	la t0, w
	sw a0, 0(t0)
	la t0, w
	lw t0, 0(t0)
	andi t1, t0, 1
	addi t0, zero, 0
	xor t1, t1, t0
	addi t0, zero, 0
	bnez t1, .LibroBB0_2
	j .LibroBB0_1
.LibroBB0_1: 
	la t0, w
	lw t1, 0(t0)
	addi t0, zero, 2
	slt t0, t0, t1
	j .LibroBB0_2
.LibroBB0_2: 
	beqz t0, .LibroBB0_3
	j .LibroBB0_4
.LibroBB0_3: 
	la a0, .libro.str.1
	call print
	j .LibroBB0_5
.LibroBB0_4: 
	la a0, .libro.str
	call print
	j .LibroBB0_5
.LibroBB0_5: 
	j .LibroBB0_6
.LibroBB0_6: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	w,@object
w:
	.word	0
	.size	w, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	"YES"
	.size	.libro.str, 4

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"NO"
	.size	.libro.str.1, 3

