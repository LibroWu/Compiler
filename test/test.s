	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.1: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	lui s1, 4
	addi s1, s1, -1379
	mv a0, s1
	call myNew
	mv a0, a0
	lui t0, 4
	addi t0, t0, -1383
	sw t0, 0(a0)
	la t0, b
	sw a0, 0(t0)
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
main: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	sw s2, 12(sp)
	addi s0, sp, 28
	call _GLOBAL_
	addi t0, zero, 0
	sw t0, -20(s0)
	lw t0, -24(s0)
	addi t0, zero, 1
	sw t0, -24(s0)
	j .LibroBB1_2
.LibroBB1_1: 
	lw t1, -24(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -24(s0)
	j .LibroBB1_2
.LibroBB1_2: 
	lw t1, -24(s0)
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB1_3
	j .LibroBB1_4
.LibroBB1_3: 
	lw t0, -24(s0)
	addi t0, zero, 2
	sw t0, -24(s0)
	j .LibroBB1_5
.LibroBB1_4: 
	la t0, b
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t1, zero, 1
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	lb t0, 0(t1)
	addi t0, zero, 1
	mv t0, t0
	sb t0, 0(t1)
	j .LibroBB1_1
.LibroBB1_5: 
	lw t1, -24(s0)
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB1_6
	j .LibroBB1_8
.LibroBB1_6: 
	addi s1, zero, 12
	mv a0, s1
	call myNew
	mv s2, a0
	addi t1, s2, 0
	addi t0, zero, 7
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, s2, 4
	sw t1, 0(t0)
	la t0, resultCount
	lw s1, 0(t0)
	mv a0, s1
	call toString
	mv s1, a0
	mv a0, s2
	mv a1, s1
	call _string_stringAppend
	mv a0, a0
	addi t0, a0, 4
	lw s1, 0(t0)
	mv a0, s1
	call println
	addi t0, zero, 0
	sw t0, -20(s0)
	j .LibroBB1_9
.LibroBB1_7: 
	lw t1, -24(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -24(s0)
	j .LibroBB1_5
.LibroBB1_8: 
	la t0, b
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t1, zero, 1
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lb t0, 0(t0)
	beqz t0, .LibroBB1_11
	j .LibroBB1_10
.LibroBB1_9: 
	lw a0, -20(s0)
	mv a0, a0
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw s2, 12(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB1_10: 
	addi t0, zero, 2
	sw t0, -28(s0)
	lw t1, -24(s0)
	addi t0, zero, 3
	slt t1, t0, t1
	addi t0, zero, 0
	mv t0, t0
	beqz t1, .LibroBB1_13
	j .LibroBB1_12
.LibroBB1_11: 
	j .LibroBB1_7
.LibroBB1_12: 
	la t0, b
	lw t2, 0(t0)
	lw t1, -24(s0)
	addi t0, zero, 2
	sub t0, t1, t0
	addi t1, zero, 1
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lb t0, 0(t0)
	mv t0, t0
	j .LibroBB1_13
.LibroBB1_13: 
	beqz t0, .LibroBB1_15
	j .LibroBB1_14
.LibroBB1_14: 
	la t0, resultCount
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, resultCount
	sw t1, 0(t0)
	lw t0, -24(s0)
	addi s1, zero, 2
	sub s1, t0, s1
	mv a0, s1
	call toString
	mv s2, a0
	addi s1, zero, 12
	mv a0, s1
	call myNew
	mv s1, a0
	addi t1, s1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, s1, 4
	sw t1, 0(t0)
	mv a0, s2
	mv a1, s1
	call _string_stringAppend
	mv s2, a0
	lw s1, -24(s0)
	mv a0, s1
	call toString
	mv s1, a0
	mv a0, s2
	mv a1, s1
	call _string_stringAppend
	mv a0, a0
	addi t0, a0, 4
	lw s1, 0(t0)
	mv a0, s1
	call println
	j .LibroBB1_15
.LibroBB1_15: 
	j .LibroBB1_18
.LibroBB1_16: 
	la t0, b
	lw t2, 0(t0)
	lw t1, -24(s0)
	lw t0, -28(s0)
	mul t0, t1, t0
	addi t1, zero, 1
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	lb t0, 0(t1)
	addi t0, zero, 0
	mv t0, t0
	sb t0, 0(t1)
	lw t1, -28(s0)
	addi t0, zero, 1
	add t0, t1, t0
	sw t0, -28(s0)
	j .LibroBB1_18
.LibroBB1_17: 
	j .LibroBB1_11
.LibroBB1_18: 
	lw t1, -24(s0)
	lw t0, -28(s0)
	mul t1, t1, t0
	la t0, N
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB1_17
	j .LibroBB1_16
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

