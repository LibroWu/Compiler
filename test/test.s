	.text
	.globl main
	.p2align	2
	.type	main,@function
_AAA_AAAprint: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	mv s1, a0
	addi t0, s1, 0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw a0, 0(t0)
	call print
	addi t0, s1, 0
	lw a0, 0(t0)
	call _string_length
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB0_1
.LibroBB0_1: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_AAA_AAA: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi s1, a0, 0
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 5
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, a0, 4
	sw t1, 0(t0)
	sw a0, 0(s1)
	j .LibroBB1_1
.LibroBB1_1: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_BBB_BBB: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t1, a0, 0
	lw t1, 0(t1)
	addi t1, t1, 0
	lw t1, 0(t1)
	add t1, t1, t0
	addi t0, a0, 0
	lw t0, 0(t0)
	addi t0, t0, 0
	sw t1, 0(t0)
	j .LibroBB2_1
.LibroBB2_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)
	addi s0, sp, 20
	addi a0, zero, 44
	call myNew
	mv s2, a0
	addi t0, zero, 10
	sw t0, 0(s2)
	addi t0, zero, 4
	j .LibroBB3_1
.LibroBB3_1: 
	addi s1, t0, 4
	addi t1, zero, 44
	bge t0, t1, .LibroBB3_3
	j .LibroBB3_2
.LibroBB3_2: 
	add s3, s2, t0
	addi a0, zero, 44
	call myNew
	addi t0, zero, 10
	sw t0, 0(a0)
	sw a0, 0(s3)
	mv t0, s1
	j .LibroBB3_1
.LibroBB3_3: 
	addi s1, zero, 1
	j .LibroBB3_4
.LibroBB3_4: 
	addi t0, zero, 10
	slt t0, t0, s1
	bnez t0, .LibroBB3_6
	j .LibroBB3_5
.LibroBB3_5: 
	addi t0, zero, 0
	beqz t0, .LibroBB3_7
	j .LibroBB3_8
.LibroBB3_6: 
	addi t0, s2, 24
	lw t0, 0(t0)
	addi t0, t0, 24
	lw t0, 0(t0)
	addi t0, t0, 0
	lw a0, 0(t0)
	call _AAA_AAAprint
	j .LibroBB3_9
.LibroBB3_7: 
	la a0, .libro.str.3
	call println
	j .LibroBB3_10
.LibroBB3_8: 
	la a0, .libro.str.2
	call print
	j .LibroBB3_10
.LibroBB3_9: 
	li a0, 0
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw s3, 0(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
.LibroBB3_10: 
	j .LibroBB3_11
.LibroBB3_11: 
	addi s1, s1, 1
	j .LibroBB3_4
.data
	.type	.libro.str,@object
.libro.str:
	.asciz	"abcde"
	.size	.libro.str, 6

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"1234567890"
	.size	.libro.str.1, 11

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	"a"
	.size	.libro.str.2, 2

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	"b"
	.size	.libro.str.3, 2

