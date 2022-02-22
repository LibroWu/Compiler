	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	call _GLOBAL_
	call getInt
	la t0, n
	sw a0, 0(t0)
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB0_2
.LibroBB0_1: 
	call getInt
	la t0, p
	sw a0, 0(t0)
	call getInt
	la t0, q
	sw a0, 0(t0)
	call getInt
	la t0, r
	sw a0, 0(t0)
	la t0, x
	lw t1, 0(t0)
	la t0, p
	lw t0, 0(t0)
	add t1, t1, t0
	la t0, x
	sw t1, 0(t0)
	la t0, y
	lw t1, 0(t0)
	la t0, q
	lw t0, 0(t0)
	add t1, t1, t0
	la t0, y
	sw t1, 0(t0)
	la t0, z
	lw t1, 0(t0)
	la t0, r
	lw t0, 0(t0)
	add t1, t1, t0
	la t0, z
	sw t1, 0(t0)
	j .LibroBB0_3
.LibroBB0_2: 
	la t0, i
	lw t1, 0(t0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB0_4
	j .LibroBB0_1
.LibroBB0_3: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB0_2
.LibroBB0_4: 
	la t0, x
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t1, t1, t0
	addi t0, zero, 0
	bnez t1, .LibroBB0_7
	j .LibroBB0_5
.LibroBB0_5: 
	la t0, y
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t1, t1, t0
	addi t0, zero, 0
	bnez t1, .LibroBB0_7
	j .LibroBB0_6
.LibroBB0_6: 
	la t0, z
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	seqz t0, t0
	j .LibroBB0_7
.LibroBB0_7: 
	beqz t0, .LibroBB0_9
	j .LibroBB0_8
.LibroBB0_8: 
	la a0, .libro.str
	call print
	j .LibroBB0_10
.LibroBB0_9: 
	la a0, .libro.str.1
	call print
	j .LibroBB0_10
.LibroBB0_10: 
	j .LibroBB0_11
.LibroBB0_11: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	p,@object
p:
	.word	0
	.size	p, 4

	.type	q,@object
q:
	.word	0
	.size	q, 4

	.type	r,@object
r:
	.word	0
	.size	r, 4

	.type	x,@object
x:
	.word	0
	.size	x, 4

	.type	y,@object
y:
	.word	0
	.size	y, 4

	.type	z,@object
z:
	.word	0
	.size	z, 4

	.type	n,@object
n:
	.word	0
	.size	n, 4

	.type	i,@object
i:
	.word	0
	.size	i, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	"YES"
	.size	.libro.str, 4

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"NO"
	.size	.libro.str.1, 3

