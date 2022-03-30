	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.0: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lui a0, 1
	addi a0, a0, -88
	call myNew
	addi t0, zero, 1001
	sw t0, 0(a0)
	la t0, b
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_global_var_init.1: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 684
	call myNew
	addi t0, zero, 170
	sw t0, 0(a0)
	la t0, prime
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_global_var_init.2: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lui a0, 1
	addi a0, a0, -88
	call myNew
	addi t0, zero, 1001
	sw t0, 0(a0)
	la t0, gps
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_global_var_init.3: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 8
	call myNew
	addi t0, zero, 1
	sw t0, 0(a0)
	la t0, tmp
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
origin: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	mv s1, a0
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, result
	sw a0, 0(t0)
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_1
.LibroBB4_1: 
	la t0, i
	lw t0, 0(t0)
	bge t0, s1, .LibroBB4_3
	j .LibroBB4_2
.LibroBB4_2: 
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, result
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	addi t1, zero, 0
	la t0, j
	sw t1, 0(t0)
	j .LibroBB4_4
.LibroBB4_3: 
	j .LibroBB4_5
.LibroBB4_4: 
	la t0, j
	lw t0, 0(t0)
	bge t0, s1, .LibroBB4_6
	j .LibroBB4_7
.LibroBB4_5: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB4_6: 
	j .LibroBB4_8
.LibroBB4_7: 
	la t0, result
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t1, t1, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB4_9
.LibroBB4_8: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_1
.LibroBB4_9: 
	la t0, j
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB4_4
getPrime: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t1, zero, 2
	addi t0, zero, 2
	j .LibroBB5_1
.LibroBB5_1: 
	slt t2, a0, t1
	bnez t2, .LibroBB5_3
	j .LibroBB5_2
.LibroBB5_2: 
	la t2, b
	lw s1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, s1, t2
	lw s1, 0(t2)
	addi t2, zero, 1
	xor t2, s1, t2
	bnez t2, .LibroBB5_6
	j .LibroBB5_4
.LibroBB5_3: 
	j .LibroBB5_5
.LibroBB5_4: 
	la t2, tmp
	lw a1, 0(t2)
	addi s1, zero, 0
	addi t2, zero, 4
	mul s1, s1, t2
	addi t2, s1, 4
	add t2, a1, t2
	lw t2, 0(t2)
	addi a2, t2, 1
	la t2, tmp
	lw a1, 0(t2)
	addi s1, zero, 0
	addi t2, zero, 4
	mul s1, s1, t2
	addi t2, s1, 4
	add t2, a1, t2
	sw a2, 0(t2)
	la t2, prime
	lw a2, 0(t2)
	la t2, tmp
	lw a1, 0(t2)
	addi s1, zero, 0
	addi t2, zero, 4
	mul s1, s1, t2
	addi t2, s1, 4
	add t2, a1, t2
	lw t2, 0(t2)
	slli t2, t2, 2
	addi t2, t2, 4
	add t2, a2, t2
	sw t1, 0(t2)
	la t2, tmp
	lw a1, 0(t2)
	addi s1, zero, 0
	addi t2, zero, 4
	mul s1, s1, t2
	addi t2, s1, 4
	add t2, a1, t2
	lw a1, 0(t2)
	la t2, gps
	lw s1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, s1, t2
	sw a1, 0(t2)
	j .LibroBB5_6
.LibroBB5_5: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB5_6: 
	j .LibroBB5_7
.LibroBB5_7: 
	mul t2, t1, t0
	slt t2, a0, t2
	bnez t2, .LibroBB5_8
	j .LibroBB5_9
.LibroBB5_8: 
	j .LibroBB5_10
.LibroBB5_9: 
	la t2, b
	lw s1, 0(t2)
	mul t2, t1, t0
	slli t2, t2, 2
	addi t2, t2, 4
	add s1, s1, t2
	addi t2, zero, 0
	sw t2, 0(s1)
	addi t0, t0, 1
	j .LibroBB5_7
.LibroBB5_10: 
	addi t1, t1, 1
	addi t0, zero, 2
	j .LibroBB5_1
getResult: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	sw s2, 0(sp)
	addi s0, sp, 16
	mv s2, a1
	mv s1, a2
	la t0, result
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	bnez t0, .LibroBB6_6
	j .LibroBB6_1
.LibroBB6_1: 
	la t0, prime
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	slli t2, t0, 1
	la t0, prime
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	sub t0, t2, t0
	slt t0, a0, t0
	bnez t0, .LibroBB6_5
	j .LibroBB6_2
.LibroBB6_2: 
	la t0, b
	lw a1, 0(t0)
	la t0, prime
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	slli t2, t0, 1
	la t0, prime
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	sub t0, t2, t0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a1, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB6_4
	j .LibroBB6_3
.LibroBB6_3: 
	la t0, gps
	lw a1, 0(t0)
	la t0, prime
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	slli t2, t0, 1
	la t0, prime
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	sub t0, t2, t0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a1, t0
	lw a2, 0(t0)
	mv a1, s1
	call getResult
	addi t2, a0, 1
	la t0, result
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB6_4
.LibroBB6_4: 
	j .LibroBB6_5
.LibroBB6_5: 
	j .LibroBB6_6
.LibroBB6_6: 
	la t0, result
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	bnez t0, .LibroBB6_8
	j .LibroBB6_7
.LibroBB6_7: 
	la t0, result
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t1, t1, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	j .LibroBB6_8
.LibroBB6_8: 
	la t0, result
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	j .LibroBB6_9
.LibroBB6_9: 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw s2, 0(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
printF: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)
	addi s0, sp, 20
	mv s2, a0
	mv s3, a1
	mv s1, a2
	mv a0, s2
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB7_1
.LibroBB7_1: 
	addi t0, zero, 0
	bge t0, s1, .LibroBB7_2
	j .LibroBB7_3
.LibroBB7_2: 
	la a0, .libro.str.1
	call print
	j .LibroBB7_4
.LibroBB7_3: 
	la a0, .libro.str
	call print
	mv a0, s3
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	slli t0, s3, 1
	sub s3, t0, s2
	add t0, s2, s3
	srai s2, t0, 1
	addi s1, s1, -1
	j .LibroBB7_1
.LibroBB7_4: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw s3, 0(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call _GLOBAL_
	addi a0, zero, 170
	call origin
	addi t1, zero, 1000
	la t0, N
	sw t1, 0(t0)
	call getInt
	la t0, M
	sw a0, 0(t0)
	addi t1, zero, 0
	la t0, primeCount
	sw t1, 0(t0)
	addi t1, zero, 0
	la t0, resultCount
	sw t1, 0(t0)
	la t0, tmp
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t1, t2, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB8_1
.LibroBB8_1: 
	la t0, i
	lw t1, 0(t0)
	la t0, N
	lw t0, 0(t0)
	addi t0, t0, 1
	bge t1, t0, .LibroBB8_2
	j .LibroBB8_3
.LibroBB8_2: 
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB8_4
.LibroBB8_3: 
	la t0, b
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t1, t1, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t0, gps
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t1, t1, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB8_5
.LibroBB8_4: 
	la t0, i
	lw t1, 0(t0)
	la t0, M
	lw t0, 0(t0)
	addi t0, t0, 1
	bge t1, t0, .LibroBB8_6
	j .LibroBB8_7
.LibroBB8_5: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB8_1
.LibroBB8_6: 
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB8_8
.LibroBB8_7: 
	la t0, prime
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t1, t1, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB8_9
.LibroBB8_8: 
	la t0, i
	lw t1, 0(t0)
	la t0, M
	lw t0, 0(t0)
	slt t0, t0, t1
	bnez t0, .LibroBB8_11
	j .LibroBB8_10
.LibroBB8_9: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB8_4
.LibroBB8_10: 
	addi t1, zero, 0
	la t0, j
	sw t1, 0(t0)
	j .LibroBB8_12
.LibroBB8_11: 
	la t0, N
	lw a0, 0(t0)
	call getPrime
	la t0, tmp
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t1, 0(t0)
	la t0, primeCount
	sw t1, 0(t0)
	addi t1, zero, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB8_13
.LibroBB8_12: 
	la t0, j
	lw t1, 0(t0)
	la t0, M
	lw t0, 0(t0)
	slt t0, t0, t1
	bnez t0, .LibroBB8_15
	j .LibroBB8_14
.LibroBB8_13: 
	la t0, i
	lw t1, 0(t0)
	la t0, primeCount
	lw t0, 0(t0)
	bge t1, t0, .LibroBB8_17
	j .LibroBB8_16
.LibroBB8_14: 
	addi t2, zero, 0
	addi t0, zero, 1
	sub t2, t2, t0
	la t0, result
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB8_18
.LibroBB8_15: 
	j .LibroBB8_19
.LibroBB8_16: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB8_20
.LibroBB8_17: 
	la a0, .libro.str.2
	call print
	la t0, resultCount
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB8_21
.LibroBB8_18: 
	la t0, j
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB8_12
.LibroBB8_19: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB8_8
.LibroBB8_20: 
	la t0, j
	lw t1, 0(t0)
	la t0, primeCount
	lw t0, 0(t0)
	slt t0, t0, t1
	bnez t0, .LibroBB8_22
	j .LibroBB8_23
.LibroBB8_21: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB8_22: 
	j .LibroBB8_24
.LibroBB8_23: 
	la t0, result
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	bnez t0, .LibroBB8_28
	j .LibroBB8_25
.LibroBB8_24: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB8_13
.LibroBB8_25: 
	la t0, N
	lw a0, 0(t0)
	la t0, i
	lw a1, 0(t0)
	la t0, j
	lw a2, 0(t0)
	call getResult
	la t0, result
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	la t0, result
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	bge t0, t1, .LibroBB8_27
	j .LibroBB8_26
.LibroBB8_26: 
	la t0, prime
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	la t0, prime
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a1, 0(t0)
	la t0, result
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a2, 0(t0)
	call printF
	la t0, resultCount
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, resultCount
	sw t1, 0(t0)
	j .LibroBB8_27
.LibroBB8_27: 
	j .LibroBB8_28
.LibroBB8_28: 
	j .LibroBB8_29
.LibroBB8_29: 
	la t0, j
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB8_20
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call _global_var_init.0
	call _global_var_init.1
	call _global_var_init.2
	call _global_var_init.3
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	N,@object
N:
	.word	0
	.size	N, 4

	.type	M,@object
M:
	.word	0
	.size	M, 4

	.type	i,@object
i:
	.word	0
	.size	i, 4

	.type	j,@object
j:
	.word	0
	.size	j, 4

	.type	primeCount,@object
primeCount:
	.word	0
	.size	primeCount, 4

	.type	resultCount,@object
resultCount:
	.word	0
	.size	resultCount, 4

	.type	b,@object
b:
	.word	0
	.size	b, 4

	.type	prime,@object
prime:
	.word	0
	.size	prime, 4

	.type	gps,@object
gps:
	.word	0
	.size	gps, 4

	.type	tmp,@object
tmp:
	.word	0
	.size	tmp, 4

	.type	result,@object
result:
	.word	0
	.size	result, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	" "
	.size	.libro.str, 2

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"\n"
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	"Total: "
	.size	.libro.str.2, 8

