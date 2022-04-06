	.text
	.globl main
	.p2align	2
	.type	main,@function
init: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call getInt
	la t0, n
	sw a0, 0(t0)
	j .LibroBB0_1
.LibroBB0_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
is_prime: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, zero, 1
	xor t1, a0, t0
	addi t0, zero, 2
	bnez t1, .LibroBB1_1
	addi t1, zero, 0
	j .LibroBB1_2
.LibroBB1_1: 
	mul t1, t0, t0
	slt t2, a0, t1
	addi t1, zero, 1
	bnez t2, .LibroBB1_2
	j .LibroBB1_3
.LibroBB1_2: 
	mv a0, t1
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB1_3: 
	rem t2, a0, t0
	addi t1, zero, 0
	xor t1, t2, t1
	bnez t1, .LibroBB1_4
	addi t1, zero, 0
	j .LibroBB1_2
.LibroBB1_4: 
	addi t0, t0, 1
	j .LibroBB1_1
find: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)
	addi s0, sp, 20
	mv s2, a0
	mv s1, a1
	mv a0, s2
	call is_prime
	beqz a0, .LibroBB2_2
	j .LibroBB2_1
.LibroBB2_1: 
	addi t0, zero, 0
	bge t0, s1, .LibroBB2_3
	j .LibroBB2_4
.LibroBB2_2: 
	addi t0, zero, -1
	xor t0, s1, t0
	bnez t0, .LibroBB2_5
	j .LibroBB2_6
.LibroBB2_3: 
	la a0, .libro.str.2
	call println
	mv a0, s2
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB2_7
.LibroBB2_4: 
	la a0, .libro.str
	call println
	mv a0, s1
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	mv s1, a0
	mv a0, s2
	call toString
	mv a1, a0
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB2_7
.LibroBB2_5: 
	addi s3, s2, -1
	j .LibroBB2_8
.LibroBB2_6: 
	addi s1, s2, -2
	j .LibroBB2_9
.LibroBB2_7: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw s3, 0(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
.LibroBB2_8: 
	j .LibroBB2_10
.LibroBB2_9: 
	j .LibroBB2_11
.LibroBB2_10: 
	mv a0, s3
	call is_prime
	addi t0, zero, 0
	beqz a0, .LibroBB2_15
	j .LibroBB2_12
.LibroBB2_11: 
	mv a0, s1
	call is_prime
	beqz a0, .LibroBB2_13
	j .LibroBB2_14
.LibroBB2_12: 
	sub a0, s2, s3
	call is_prime
	mv t0, a0
	j .LibroBB2_15
.LibroBB2_13: 
	addi s1, s1, -1
	j .LibroBB2_9
.LibroBB2_14: 
	sub a0, s2, s1
	mv a1, s1
	call find
	j .LibroBB2_7
.LibroBB2_15: 
	beqz t0, .LibroBB2_17
	j .LibroBB2_16
.LibroBB2_16: 
	la a0, .libro.str.3
	call println
	mv a0, s1
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.4
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	mv s1, a0
	mv a0, s3
	call toString
	mv a1, a0
	mv a0, s1
	call _string_stringAppend
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.5
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	mv s1, a0
	sub a0, s2, s3
	call toString
	mv a1, a0
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB2_7
.LibroBB2_17: 
	addi s3, s3, -1
	j .LibroBB2_8
work: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	la t0, n
	lw a0, 0(t0)
	addi a1, zero, -1
	call find
	j .LibroBB3_1
.LibroBB3_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call init
	call work
	j .LibroBB4_1
.LibroBB4_1: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	"2"
	.size	.libro.str, 2

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	" "
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	"1"
	.size	.libro.str.2, 2

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	"3"
	.size	.libro.str.3, 2

	.type	.libro.str.4,@object
.libro.str.4:
	.asciz	" "
	.size	.libro.str.4, 2

	.type	.libro.str.5,@object
.libro.str.5:
	.asciz	" "
	.size	.libro.str.5, 2

