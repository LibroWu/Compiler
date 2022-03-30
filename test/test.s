	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.1: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lui a0, 4
	addi a0, a0, -1379
	call myNew
	lui t0, 4
	addi t0, t0, -1383
	sw t0, 0(a0)
	la t0, b
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	sw s2, 0(sp)
	addi s0, sp, 16
	call _GLOBAL_
	addi t0, zero, 1
	j .LibroBB1_1
.LibroBB1_1: 
	la t1, N
	lw t1, 0(t1)
	slt t1, t1, t0
	bnez t1, .LibroBB1_3
	j .LibroBB1_2
.LibroBB1_2: 
	la t1, b
	lw t2, 0(t1)
	slli t1, t0, 0
	addi t1, t1, 4
	add t2, t2, t1
	addi t1, zero, 1
	sb t1, 0(t2)
	j .LibroBB1_4
.LibroBB1_3: 
	addi t0, zero, 0
	addi s1, zero, 2
	j .LibroBB1_5
.LibroBB1_4: 
	addi t0, t0, 1
	j .LibroBB1_1
.LibroBB1_5: 
	la t1, N
	lw t1, 0(t1)
	slt t1, t1, s1
	bnez t1, .LibroBB1_7
	j .LibroBB1_6
.LibroBB1_6: 
	la t1, b
	lw t2, 0(t1)
	slli t1, s1, 0
	addi t1, t1, 4
	add t1, t2, t1
	lb t1, 0(t1)
	beqz t1, .LibroBB1_17
	j .LibroBB1_8
.LibroBB1_7: 
	addi a0, zero, 12
	call myNew
	mv s1, a0
	addi t1, s1, 0
	addi t0, zero, 7
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, s1, 4
	sw t1, 0(t0)
	la t0, resultCount
	lw a0, 0(t0)
	call toString
	mv a1, a0
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB1_9
.LibroBB1_8: 
	addi t1, zero, 3
	addi t0, zero, 0
	bge t1, s1, .LibroBB1_11
	j .LibroBB1_10
.LibroBB1_9: 
	li a0, 0
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw s2, 0(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.LibroBB1_10: 
	la t0, b
	lw t1, 0(t0)
	addi t0, s1, -2
	slli t0, t0, 0
	addi t0, t0, 4
	add t0, t1, t0
	lb t0, 0(t0)
	j .LibroBB1_11
.LibroBB1_11: 
	beqz t0, .LibroBB1_13
	j .LibroBB1_12
.LibroBB1_12: 
	la t0, resultCount
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, resultCount
	sw t1, 0(t0)
	addi a0, s1, -2
	call toString
	mv s2, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s2
	call _string_stringAppend
	mv s2, a0
	mv a0, s1
	call toString
	mv a1, a0
	mv a0, s2
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB1_13
.LibroBB1_13: 
	addi t0, zero, 2
	j .LibroBB1_14
.LibroBB1_14: 
	mul t2, s1, t0
	la t1, N
	lw t1, 0(t1)
	slt t1, t1, t2
	bnez t1, .LibroBB1_15
	j .LibroBB1_16
.LibroBB1_15: 
	j .LibroBB1_17
.LibroBB1_16: 
	la t1, b
	lw t2, 0(t1)
	mul t1, s1, t0
	slli t1, t1, 0
	addi t1, t1, 4
	add t2, t2, t1
	addi t1, zero, 0
	sb t1, 0(t2)
	addi t0, t0, 1
	j .LibroBB1_14
.LibroBB1_17: 
	j .LibroBB1_18
.LibroBB1_18: 
	addi s1, s1, 1
	j .LibroBB1_5
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call _global_var_init.1
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	N,@object
N:
	.word	15000
	.size	N, 4

	.type	b,@object
b:
	.word	0
	.size	b, 4

	.type	resultCount,@object
resultCount:
	.word	0
	.size	resultCount, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	" "
	.size	.libro.str, 2

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"Total: "
	.size	.libro.str.1, 8

