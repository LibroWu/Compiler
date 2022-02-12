	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	addi s0, sp, 16
	call _GLOBAL_
	addi t0, zero, 0
	sw t0, -16(s0)
	j .LibroBB0_2
.LibroBB0_1: 
	la t0, A
	lw a0, 0(t0)
	mv a0, a0
	call toString
	mv s1, a0
	addi a0, zero, 12
	mv a0, a0
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	mv a1, a1
	call _string_stringAppend
	mv s1, a0
	la t0, B
	lw a0, 0(t0)
	mv a0, a0
	call toString
	mv a1, a0
	mv a0, s1
	mv a1, a1
	call _string_stringAppend
	mv s1, a0
	addi a0, zero, 12
	mv a0, a0
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	mv a1, a1
	call _string_stringAppend
	mv s1, a0
	la t0, C
	lw a0, 0(t0)
	mv a0, a0
	call toString
	mv a1, a0
	mv a0, s1
	mv a1, a1
	call _string_stringAppend
	mv a0, a0
	addi t0, a0, 4
	lw a0, 0(t0)
	mv a0, a0
	call println
	addi t0, zero, 0
	sw t0, -16(s0)
	j .LibroBB0_4
.LibroBB0_2: 
	la t0, C
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 29
	sll t1, t1, t0
	slt t1, t2, t1
	addi t0, zero, 0
	mv t0, t0
	beqz t1, .LibroBB0_6
	j .LibroBB0_5
.LibroBB0_3: 
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a0, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a0, a0, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	sub s1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add t0, a1, t0
	sub a0, a0, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a1, a1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a2, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub t0, a2, t0
	sub t0, a1, t0
	add a0, a0, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	sub s1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add a1, a1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a2, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add t0, a2, t0
	add a1, a1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a2, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a2, a2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a3, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub t0, a3, t0
	sub t0, a2, t0
	add t0, a1, t0
	sub t1, a0, t0
	la t0, A
	lw t0, 0(t0)
	la t0, A
	sw t1, 0(t0)
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a0, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a0, a0, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	sub s1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add t0, a1, t0
	sub a0, a0, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a1, a1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a2, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub t0, a2, t0
	sub t0, a1, t0
	add a0, a0, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	sub s1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add a1, a1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a2, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add t0, a2, t0
	add a1, a1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a2, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a2, a2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a3, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub t0, a3, t0
	sub t0, a2, t0
	add t0, a1, t0
	sub t1, a0, t0
	la t0, B
	lw t0, 0(t0)
	la t0, B
	sw t1, 0(t0)
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a0, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a0, a0, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	sub s1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add t0, a1, t0
	sub a0, a0, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a1, a1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a2, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub t0, a2, t0
	sub t0, a1, t0
	add a0, a0, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	sub s1, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add a1, a1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub a2, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add s1, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	sub t0, s1, t0
	add t0, a2, t0
	add a1, a1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t0, t2, t0
	add s1, s1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a2, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub a2, a2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add a3, s1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t2, t2, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub s1, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t2, t1, t0
	la t0, A
	lw t1, 0(t0)
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	sub t2, t2, t0
	la t0, C
	lw t1, 0(t0)
	la t0, A
	lw t0, 0(t0)
	sub t1, t1, t0
	la t0, B
	lw t0, 0(t0)
	add t0, t1, t0
	add t0, t2, t0
	add t0, s1, t0
	sub t0, a3, t0
	sub t0, a2, t0
	add t0, a1, t0
	sub t1, a0, t0
	la t0, C
	lw t0, 0(t0)
	la t0, C
	sw t1, 0(t0)
	j .LibroBB0_2
.LibroBB0_4: 
	lw a0, -16(s0)
	mv a0, a0
	ret
.LibroBB0_5: 
	la t0, C
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 29
	sll t1, t1, t0
	addi t0, zero, 0
	sub t0, t0, t1
	slt t0, t0, t2
	mv t0, t0
	j .LibroBB0_6
.LibroBB0_6: 
	beqz t0, .LibroBB0_1
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	j .LibroBB0_3
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	A,@object
A:
	.word	1
	.size	A, 4

	.type	B,@object
B:
	.word	1
	.size	B, 4

	.type	C,@object
C:
	.word	1
	.size	C, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	" "
	.size	.libro.str, 2

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	" "
	.size	.libro.str.1, 2

