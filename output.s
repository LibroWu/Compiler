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
	la t0, n
	sw a0, 0(t0)
	call getInt
	la t0, p
	sw a0, 0(t0)
	call getInt
	la t0, k
	sw a0, 0(t0)
	la t0, p
	lw t1, 0(t0)
	la t0, k
	lw t0, 0(t0)
	sub t1, t1, t0
	addi t0, zero, 1
	bge t0, t1, .LibroBB0_2
	j .LibroBB0_1
.LibroBB0_1: 
	la a0, .libro.str
	call print
	j .LibroBB0_2
.LibroBB0_2: 
	la t0, p
	lw t1, 0(t0)
	la t0, k
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB0_4
.LibroBB0_3: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB0_4
.LibroBB0_4: 
	la t0, i
	lw t2, 0(t0)
	la t0, p
	lw t1, 0(t0)
	la t0, k
	lw t0, 0(t0)
	add t0, t1, t0
	slt t0, t0, t2
	bnez t0, .LibroBB0_5
	j .LibroBB0_6
.LibroBB0_5: 
	la t0, p
	lw t1, 0(t0)
	la t0, k
	lw t0, 0(t0)
	add t1, t1, t0
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB0_7
	j .LibroBB0_8
.LibroBB0_6: 
	la t0, i
	lw t1, 0(t0)
	addi t0, zero, 1
	slt t1, t1, t0
	addi t0, zero, 0
	bnez t1, .LibroBB0_11
	j .LibroBB0_9
.LibroBB0_7: 
	addi a0, zero, 0
	j .LibroBB0_10
.LibroBB0_8: 
	la a0, .libro.str.4
	call print
	j .LibroBB0_7
.LibroBB0_9: 
	la t0, i
	lw t1, 0(t0)
	la t0, n
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	j .LibroBB0_11
.LibroBB0_10: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB0_11: 
	beqz t0, .LibroBB0_12
	j .LibroBB0_13
.LibroBB0_12: 
	j .LibroBB0_3
.LibroBB0_13: 
	la t0, i
	lw t1, 0(t0)
	la t0, p
	lw t0, 0(t0)
	xor t0, t1, t0
	bnez t0, .LibroBB0_15
	j .LibroBB0_16
.LibroBB0_14: 
	j .LibroBB0_12
.LibroBB0_15: 
	la t0, i
	lw a0, 0(t0)
	call printInt
	la a0, .libro.str.3
	call print
	j .LibroBB0_14
.LibroBB0_16: 
	la a0, .libro.str.1
	call print
	la t0, i
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	la a0, .libro.str.2
	call print
	j .LibroBB0_14
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

	.type	p,@object
p:
	.word	0
	.size	p, 4

	.type	k,@object
k:
	.word	0
	.size	k, 4

	.type	i,@object
i:
	.word	0
	.size	i, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	"<< "
	.size	.libro.str, 4

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"("
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	") "
	.size	.libro.str.2, 3

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	" "
	.size	.libro.str.3, 2

	.type	.libro.str.4,@object
.libro.str.4:
	.asciz	">> "
	.size	.libro.str.4, 4

