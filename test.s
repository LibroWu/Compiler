	.text
	.globl main
	.p2align	2
	.type	main,@function
lohi: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	slli t0, a1, 16
	or a0, a0, t0
	j .LibroBB0_1
.LibroBB0_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_global_var_init.2: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	la t0, MAXCHUNK
	lw t0, 0(t0)
	addi t0, t0, -1
	slli t0, t0, 6
	addi t1, t0, -16
	la t0, MAXLENGTH
	sw t1, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_global_var_init.5: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 24
	call myNew
	addi t0, zero, 5
	sw t0, 0(a0)
	la t0, outputBuffer
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_GLOBAL_: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	sw s2, 8(sp)
	sw s3, 4(sp)
	sw s4, 0(sp)
	addi s0, sp, 24
	j .LibroBB3_1
.LibroBB3_1: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 95
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, a0, 4
	sw t1, 0(t0)
	la t0, asciiTable
	sw a0, 0(t0)
	j .LibroBB3_2
.LibroBB3_2: 
	j .LibroBB3_3
.LibroBB3_3: 
	la t0, MAXCHUNK
	lw t0, 0(t0)
	addi t0, t0, -1
	slli t0, t0, 6
	addi t1, t0, -16
	la t0, MAXLENGTH
	sw t1, 0(t0)
	j .LibroBB3_4
.LibroBB3_4: 
	j .LibroBB3_5
.LibroBB3_5: 
	la t0, MAXCHUNK
	lw s1, 0(t0)
	slli t0, s1, 2
	addi s3, t0, 4
	mv a0, s3
	call myNew
	mv s2, a0
	sw s1, 0(s2)
	addi t0, zero, 4
	j .LibroBB3_6
.LibroBB3_6: 
	addi s1, t0, 4
	bge t0, s3, .LibroBB3_8
	j .LibroBB3_7
.LibroBB3_7: 
	add s4, s2, t0
	addi a0, zero, 324
	call myNew
	addi t0, zero, 80
	sw t0, 0(a0)
	sw a0, 0(s4)
	mv t0, s1
	j .LibroBB3_6
.LibroBB3_8: 
	la t0, chunks
	sw s2, 0(t0)
	j .LibroBB3_9
.LibroBB3_9: 
	j .LibroBB3_10
.LibroBB3_10: 
	la t0, MAXLENGTH
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, inputBuffer
	sw a0, 0(t0)
	j .LibroBB3_11
.LibroBB3_11: 
	j .LibroBB3_12
.LibroBB3_12: 
	addi a0, zero, 24
	call myNew
	addi t0, zero, 5
	sw t0, 0(a0)
	la t0, outputBuffer
	sw a0, 0(t0)
	j .LibroBB3_13
.LibroBB3_13: 
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw s2, 8(sp)
	lw s3, 4(sp)
	lw s4, 0(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
_global_var_init.0: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 95
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, a0, 4
	sw t1, 0(t0)
	la t0, asciiTable
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_global_var_init.4: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	la t0, MAXLENGTH
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, inputBuffer
	sw a0, 0(t0)
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
nextLetter: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, zero, 122
	xor t0, a0, t0
	bnez t0, .LibroBB6_2
	j .LibroBB6_1
.LibroBB6_1: 
	addi a0, zero, -1
	j .LibroBB6_3
.LibroBB6_2: 
	addi t0, zero, 90
	xor t0, a0, t0
	bnez t0, .LibroBB6_5
	j .LibroBB6_4
.LibroBB6_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB6_4: 
	addi a0, zero, 97
	j .LibroBB6_3
.LibroBB6_5: 
	addi t0, zero, 57
	xor t0, a0, t0
	bnez t0, .LibroBB6_7
	j .LibroBB6_6
.LibroBB6_6: 
	addi a0, zero, 65
	j .LibroBB6_3
.LibroBB6_7: 
	addi a0, a0, 1
	j .LibroBB6_3
add: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	lui t1, 16
	addi t1, t1, -1
	and t1, a0, t1
	lui t0, 16
	addi t0, t0, -1
	and t0, a1, t0
	add s1, t1, t0
	srai t0, a0, 16
	lui t2, 16
	addi t2, t2, -1
	and t2, t0, t2
	srai t1, a1, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, t2, t0
	srai t0, s1, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s1, t0
	or a0, t1, t0
	j .LibroBB7_1
.LibroBB7_1: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
main: 
	addi sp, sp, -32
	sw ra, 28(sp)
	sw s0, 24(sp)
	sw s1, 20(sp)
	sw s2, 16(sp)
	sw s3, 12(sp)
	sw s4, 8(sp)
	sw s5, 4(sp)
	sw s6, 0(sp)
	addi s0, sp, 32
	j .LibroBB8_1
.LibroBB8_1: 
	j .LibroBB8_2
.LibroBB8_2: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 95
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, a0, 4
	sw t1, 0(t0)
	la t0, asciiTable
	sw a0, 0(t0)
	j .LibroBB8_3
.LibroBB8_3: 
	j .LibroBB8_4
.LibroBB8_4: 
	la t0, MAXCHUNK
	lw t0, 0(t0)
	addi t0, t0, -1
	slli t0, t0, 6
	addi t1, t0, -16
	la t0, MAXLENGTH
	sw t1, 0(t0)
	j .LibroBB8_5
.LibroBB8_5: 
	j .LibroBB8_6
.LibroBB8_6: 
	la t0, MAXCHUNK
	lw s1, 0(t0)
	slli t0, s1, 2
	addi s3, t0, 4
	mv a0, s3
	call myNew
	mv s2, a0
	sw s1, 0(s2)
	addi t0, zero, 4
	j .LibroBB8_7
.LibroBB8_7: 
	addi s1, t0, 4
	bge t0, s3, .LibroBB8_9
	j .LibroBB8_8
.LibroBB8_8: 
	add s4, s2, t0
	addi a0, zero, 324
	call myNew
	addi t0, zero, 80
	sw t0, 0(a0)
	sw a0, 0(s4)
	mv t0, s1
	j .LibroBB8_7
.LibroBB8_9: 
	la t0, chunks
	sw s2, 0(t0)
	j .LibroBB8_10
.LibroBB8_10: 
	j .LibroBB8_11
.LibroBB8_11: 
	la t0, MAXLENGTH
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, inputBuffer
	sw a0, 0(t0)
	j .LibroBB8_12
.LibroBB8_12: 
	j .LibroBB8_13
.LibroBB8_13: 
	addi a0, zero, 24
	call myNew
	addi t0, zero, 5
	sw t0, 0(a0)
	la t0, outputBuffer
	sw a0, 0(t0)
	j .LibroBB8_14
.LibroBB8_14: 
	j .LibroBB8_15
.LibroBB8_15: 
	j .LibroBB8_16
.LibroBB8_16: 
	j .LibroBB8_17
.LibroBB8_17: 
	call getInt
	mv s4, a0
	addi t0, zero, 0
	xor t0, s4, t0
	bnez t0, .LibroBB8_19
	j .LibroBB8_18
.LibroBB8_18: 
	li a0, 0
	lw s0, 24(sp)
	lw s1, 20(sp)
	lw s2, 16(sp)
	lw s3, 12(sp)
	lw s4, 8(sp)
	lw s5, 4(sp)
	lw s6, 0(sp)
	lw ra, 28(sp)
	addi sp, sp, 32
	ret
.LibroBB8_19: 
	addi t0, zero, 1
	xor t0, s4, t0
	bnez t0, .LibroBB8_20
	j .LibroBB8_21
.LibroBB8_20: 
	addi t0, zero, 2
	xor t0, s4, t0
	bnez t0, .LibroBB8_16
	j .LibroBB8_22
.LibroBB8_21: 
	call getString
	mv s2, a0
	j .LibroBB8_23
.LibroBB8_22: 
	call getString
	call crackSHA1
	j .LibroBB8_16
.LibroBB8_23: 
	addi s1, zero, 0
	j .LibroBB8_24
.LibroBB8_24: 
	mv a0, s2
	call _string_length
	bge s1, a0, .LibroBB8_26
	j .LibroBB8_25
.LibroBB8_25: 
	mv a0, s2
	mv a1, s1
	call _string_ord
	la t0, inputBuffer
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	j .LibroBB8_27
.LibroBB8_26: 
	la t0, inputBuffer
	lw s1, 0(t0)
	mv a0, s2
	call _string_length
	mv a1, a0
	mv a0, s1
	call sha1
	mv s3, a0
	addi s1, zero, 0
	j .LibroBB8_28
.LibroBB8_27: 
	addi s1, s1, 1
	j .LibroBB8_24
.LibroBB8_28: 
	addi t0, s3, 0
	lw t0, 0(t0)
	bge s1, t0, .LibroBB8_29
	j .LibroBB8_30
.LibroBB8_29: 
	la a0, .libro.str.4
	call println
	j .LibroBB8_31
.LibroBB8_30: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw s6, 0(t0)
	j .LibroBB8_32
.LibroBB8_31: 
	j .LibroBB8_33
.LibroBB8_32: 
	addi a0, zero, 12
	call myNew
	mv s2, a0
	addi t1, s2, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.2
	addi t0, s2, 4
	sw t1, 0(t0)
	addi s5, zero, 28
	j .LibroBB8_34
.LibroBB8_33: 
	j .LibroBB8_16
.LibroBB8_34: 
	addi t0, zero, 0
	slt t0, s5, t0
	bnez t0, .LibroBB8_36
	j .LibroBB8_35
.LibroBB8_35: 
	sra t0, s6, s5
	andi t1, t0, 15
	addi t0, zero, 10
	bge t1, t0, .LibroBB8_38
	j .LibroBB8_37
.LibroBB8_36: 
	j .LibroBB8_39
.LibroBB8_37: 
	addi t2, zero, 48
	add t2, t2, t1
	j .LibroBB8_40
.LibroBB8_38: 
	addi t0, zero, 65
	add t0, t0, t1
	addi t2, t0, -10
	j .LibroBB8_41
.LibroBB8_39: 
	addi t0, s2, 4
	lw a0, 0(t0)
	call print
	j .LibroBB8_42
.LibroBB8_40: 
	addi t0, zero, 32
	slt t1, t2, t0
	addi t0, zero, 0
	bnez t1, .LibroBB8_46
	j .LibroBB8_43
.LibroBB8_41: 
	addi t0, zero, 32
	slt t1, t2, t0
	addi t0, zero, 0
	bnez t1, .LibroBB8_45
	j .LibroBB8_44
.LibroBB8_42: 
	addi s1, s1, 1
	j .LibroBB8_28
.LibroBB8_43: 
	addi t0, zero, 126
	slt t0, t0, t2
	seqz t0, t0
	j .LibroBB8_46
.LibroBB8_44: 
	addi t0, zero, 126
	slt t0, t0, t2
	seqz t0, t0
	j .LibroBB8_45
.LibroBB8_45: 
	beqz t0, .LibroBB8_47
	j .LibroBB8_48
.LibroBB8_46: 
	beqz t0, .LibroBB8_49
	j .LibroBB8_50
.LibroBB8_47: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a0, 4
	sw t1, 0(t0)
	j .LibroBB8_51
.LibroBB8_48: 
	la t0, asciiTable
	lw a0, 0(t0)
	addi a1, t2, -32
	addi a2, t2, -31
	call _string_substring
	j .LibroBB8_51
.LibroBB8_49: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a0, 4
	sw t1, 0(t0)
	j .LibroBB8_52
.LibroBB8_50: 
	la t0, asciiTable
	lw a0, 0(t0)
	addi a1, t2, -32
	addi a2, t2, -31
	call _string_substring
	j .LibroBB8_52
.LibroBB8_51: 
	mv a1, a0
	j .LibroBB8_53
.LibroBB8_52: 
	mv a1, a0
	j .LibroBB8_54
.LibroBB8_53: 
	mv a0, s2
	call _string_stringAppend
	j .LibroBB8_55
.LibroBB8_54: 
	mv a0, s2
	call _string_stringAppend
	j .LibroBB8_55
.LibroBB8_55: 
	mv s2, a0
	j .LibroBB8_56
.LibroBB8_56: 
	addi s5, s5, -4
	j .LibroBB8_34
int2chr: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, zero, 32
	slt t1, a0, t0
	addi t0, zero, 0
	bnez t1, .LibroBB9_2
	j .LibroBB9_1
.LibroBB9_1: 
	addi t0, zero, 126
	slt t0, t0, a0
	seqz t0, t0
	j .LibroBB9_2
.LibroBB9_2: 
	beqz t0, .LibroBB9_4
	j .LibroBB9_3
.LibroBB9_3: 
	la t0, asciiTable
	lw t0, 0(t0)
	addi a1, a0, -32
	addi a2, a0, -31
	mv a0, t0
	call _string_substring
	j .LibroBB9_5
.LibroBB9_4: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a0, 4
	sw t1, 0(t0)
	j .LibroBB9_5
.LibroBB9_5: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_global_var_init.3: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	sw s2, 8(sp)
	sw s3, 4(sp)
	sw s4, 0(sp)
	addi s0, sp, 24
	la t0, MAXCHUNK
	lw s1, 0(t0)
	slli t0, s1, 2
	addi s3, t0, 4
	mv a0, s3
	call myNew
	mv s2, a0
	sw s1, 0(s2)
	addi s1, zero, 4
	j .LibroBB10_1
.LibroBB10_1: 
	mv t0, s1
	addi s1, t0, 4
	bge t0, s3, .LibroBB10_2
	j .LibroBB10_3
.LibroBB10_2: 
	la t0, chunks
	sw s2, 0(t0)
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw s2, 8(sp)
	lw s3, 4(sp)
	lw s4, 0(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
.LibroBB10_3: 
	add s4, s2, t0
	addi a0, zero, 324
	call myNew
	addi t0, zero, 80
	sw t0, 0(a0)
	sw a0, 0(s4)
	j .LibroBB10_1
toStringHex: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)
	addi s0, sp, 20
	mv s3, a0
	addi a0, zero, 12
	call myNew
	mv s2, a0
	addi t1, s2, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.2
	addi t0, s2, 4
	sw t1, 0(t0)
	addi s1, zero, 28
	j .LibroBB11_1
.LibroBB11_1: 
	addi t0, zero, 0
	slt t0, s1, t0
	bnez t0, .LibroBB11_3
	j .LibroBB11_2
.LibroBB11_2: 
	sra t0, s3, s1
	andi t1, t0, 15
	addi t0, zero, 10
	bge t1, t0, .LibroBB11_5
	j .LibroBB11_4
.LibroBB11_3: 
	mv a0, s2
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw s3, 0(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
.LibroBB11_4: 
	addi t2, zero, 48
	add t2, t2, t1
	j .LibroBB11_6
.LibroBB11_5: 
	addi t0, zero, 65
	add t0, t0, t1
	addi t2, t0, -10
	j .LibroBB11_7
.LibroBB11_6: 
	addi t0, zero, 32
	slt t1, t2, t0
	addi t0, zero, 0
	bnez t1, .LibroBB11_8
	j .LibroBB11_9
.LibroBB11_7: 
	addi t0, zero, 32
	slt t1, t2, t0
	addi t0, zero, 0
	bnez t1, .LibroBB11_13
	j .LibroBB11_10
.LibroBB11_8: 
	beqz t0, .LibroBB11_12
	j .LibroBB11_11
.LibroBB11_9: 
	addi t0, zero, 126
	slt t0, t0, t2
	seqz t0, t0
	j .LibroBB11_8
.LibroBB11_10: 
	addi t0, zero, 126
	slt t0, t0, t2
	seqz t0, t0
	j .LibroBB11_13
.LibroBB11_11: 
	la t0, asciiTable
	lw a0, 0(t0)
	addi a1, t2, -32
	addi a2, t2, -31
	call _string_substring
	j .LibroBB11_14
.LibroBB11_12: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a0, 4
	sw t1, 0(t0)
	j .LibroBB11_14
.LibroBB11_13: 
	beqz t0, .LibroBB11_16
	j .LibroBB11_15
.LibroBB11_14: 
	mv a1, a0
	j .LibroBB11_17
.LibroBB11_15: 
	la t0, asciiTable
	lw a0, 0(t0)
	addi a1, t2, -32
	addi a2, t2, -31
	call _string_substring
	j .LibroBB11_18
.LibroBB11_16: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a0, 4
	sw t1, 0(t0)
	j .LibroBB11_18
.LibroBB11_17: 
	mv a0, s2
	call _string_stringAppend
	mv s2, a0
	j .LibroBB11_19
.LibroBB11_18: 
	mv a1, a0
	j .LibroBB11_20
.LibroBB11_19: 
	j .LibroBB11_21
.LibroBB11_20: 
	mv a0, s2
	call _string_stringAppend
	mv s2, a0
	j .LibroBB11_19
.LibroBB11_21: 
	addi s1, s1, -4
	j .LibroBB11_1
rotate_left: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, zero, 1
	xor t0, a1, t0
	bnez t0, .LibroBB12_2
	j .LibroBB12_1
.LibroBB12_1: 
	lui t0, 524288
	addi t0, t0, -1
	and t0, a0, t0
	slli t1, t0, 1
	srai t0, a0, 31
	andi t0, t0, 1
	or a0, t1, t0
	j .LibroBB12_3
.LibroBB12_2: 
	addi t0, zero, 31
	xor t0, a1, t0
	bnez t0, .LibroBB12_4
	j .LibroBB12_5
.LibroBB12_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB12_4: 
	addi t1, zero, 32
	sub t1, t1, a1
	addi t0, zero, 1
	sll t0, t0, t1
	addi t0, t0, -1
	and t0, a0, t0
	sll t2, t0, a1
	addi t0, zero, 32
	sub t0, t0, a1
	sra t1, a0, t0
	addi t0, zero, 1
	sll t0, t0, a1
	addi t0, t0, -1
	and t0, t1, t0
	or a0, t2, t0
	j .LibroBB12_3
.LibroBB12_5: 
	andi t0, a0, 1
	slli t2, t0, 31
	srai t1, a0, 1
	lui t0, 524288
	addi t0, t0, -1
	and t0, t1, t0
	or a0, t2, t0
	j .LibroBB12_3
array_equal: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw t1, 0(t0)
	addi t0, a1, 0
	lw t0, 0(t0)
	xor t0, t1, t0
	beqz t0, .LibroBB13_1
	j .LibroBB13_2
.LibroBB13_1: 
	addi t0, zero, 0
	j .LibroBB13_3
.LibroBB13_2: 
	addi a0, zero, 0
	j .LibroBB13_6
.LibroBB13_3: 
	addi t1, a0, 0
	lw t1, 0(t1)
	bge t0, t1, .LibroBB13_4
	j .LibroBB13_5
.LibroBB13_4: 
	addi a0, zero, 1
	j .LibroBB13_6
.LibroBB13_5: 
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a0, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a1, t1
	lw t1, 0(t1)
	xor t1, t2, t1
	beqz t1, .LibroBB13_7
	j .LibroBB13_8
.LibroBB13_6: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB13_7: 
	addi t0, t0, 1
	j .LibroBB13_3
.LibroBB13_8: 
	addi a0, zero, 0
	j .LibroBB13_6
nextText: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t1, a1, -1
	j .LibroBB14_1
.LibroBB14_1: 
	addi t0, zero, 0
	slt t0, t1, t0
	bnez t0, .LibroBB14_3
	j .LibroBB14_2
.LibroBB14_2: 
	slli t0, t1, 2
	addi t0, t0, 4
	add t0, a0, t0
	lw t2, 0(t0)
	j .LibroBB14_4
.LibroBB14_3: 
	addi a0, zero, 0
	j .LibroBB14_16
.LibroBB14_4: 
	addi t0, zero, 122
	xor t0, t2, t0
	bnez t0, .LibroBB14_6
	j .LibroBB14_5
.LibroBB14_5: 
	addi t0, zero, -1
	j .LibroBB14_9
.LibroBB14_6: 
	addi t0, zero, 90
	xor t0, t2, t0
	bnez t0, .LibroBB14_8
	j .LibroBB14_7
.LibroBB14_7: 
	addi t0, zero, 97
	j .LibroBB14_9
.LibroBB14_8: 
	addi t0, zero, 57
	xor t0, t2, t0
	bnez t0, .LibroBB14_11
	j .LibroBB14_10
.LibroBB14_9: 
	j .LibroBB14_12
.LibroBB14_10: 
	addi t0, zero, 65
	j .LibroBB14_9
.LibroBB14_11: 
	addi t0, t2, 1
	j .LibroBB14_9
.LibroBB14_12: 
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, a0, t2
	sw t0, 0(t2)
	slli t0, t1, 2
	addi t0, t0, 4
	add t0, a0, t0
	lw t2, 0(t0)
	addi t0, zero, -1
	xor t0, t2, t0
	bnez t0, .LibroBB14_14
	j .LibroBB14_13
.LibroBB14_13: 
	slli t0, t1, 2
	addi t0, t0, 4
	add t0, a0, t0
	addi t2, zero, 48
	sw t2, 0(t0)
	j .LibroBB14_15
.LibroBB14_14: 
	addi a0, zero, 1
	j .LibroBB14_16
.LibroBB14_15: 
	addi t1, t1, -1
	j .LibroBB14_1
.LibroBB14_16: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
computeSHA1: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	sw s2, 12(sp)
	sw s3, 8(sp)
	sw s4, 4(sp)
	sw s5, 0(sp)
	addi s0, sp, 28
	mv s2, a0
	addi s1, zero, 0
	j .LibroBB15_1
.LibroBB15_1: 
	mv a0, s2
	call _string_length
	bge s1, a0, .LibroBB15_2
	j .LibroBB15_3
.LibroBB15_2: 
	la t0, inputBuffer
	lw s1, 0(t0)
	mv a0, s2
	call _string_length
	mv a1, a0
	mv a0, s1
	call sha1
	mv s2, a0
	addi s1, zero, 0
	j .LibroBB15_4
.LibroBB15_3: 
	mv a0, s2
	mv a1, s1
	call _string_ord
	la t0, inputBuffer
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	j .LibroBB15_5
.LibroBB15_4: 
	addi t0, s2, 0
	lw t0, 0(t0)
	bge s1, t0, .LibroBB15_6
	j .LibroBB15_7
.LibroBB15_5: 
	addi s1, s1, 1
	j .LibroBB15_1
.LibroBB15_6: 
	la a0, .libro.str.4
	call println
	j .LibroBB15_8
.LibroBB15_7: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s2, t0
	lw s5, 0(t0)
	j .LibroBB15_9
.LibroBB15_8: 
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw s2, 12(sp)
	lw s3, 8(sp)
	lw s4, 4(sp)
	lw s5, 0(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB15_9: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.2
	addi t0, a0, 4
	sw t1, 0(t0)
	addi s3, zero, 28
	j .LibroBB15_10
.LibroBB15_10: 
	mv s4, a0
	addi t0, zero, 0
	slt t0, s3, t0
	bnez t0, .LibroBB15_11
	j .LibroBB15_12
.LibroBB15_11: 
	j .LibroBB15_13
.LibroBB15_12: 
	sra t0, s5, s3
	andi t1, t0, 15
	addi t0, zero, 10
	bge t1, t0, .LibroBB15_14
	j .LibroBB15_15
.LibroBB15_13: 
	addi t0, s4, 4
	lw a0, 0(t0)
	call print
	j .LibroBB15_16
.LibroBB15_14: 
	addi t0, zero, 65
	add t0, t0, t1
	addi t2, t0, -10
	j .LibroBB15_17
.LibroBB15_15: 
	addi t2, zero, 48
	add t2, t2, t1
	j .LibroBB15_18
.LibroBB15_16: 
	addi s1, s1, 1
	j .LibroBB15_4
.LibroBB15_17: 
	addi t0, zero, 32
	slt t1, t2, t0
	addi t0, zero, 0
	bnez t1, .LibroBB15_20
	j .LibroBB15_19
.LibroBB15_18: 
	addi t0, zero, 32
	slt t1, t2, t0
	addi t0, zero, 0
	bnez t1, .LibroBB15_24
	j .LibroBB15_21
.LibroBB15_19: 
	addi t0, zero, 126
	slt t0, t0, t2
	seqz t0, t0
	j .LibroBB15_20
.LibroBB15_20: 
	beqz t0, .LibroBB15_22
	j .LibroBB15_23
.LibroBB15_21: 
	addi t0, zero, 126
	slt t0, t0, t2
	seqz t0, t0
	j .LibroBB15_24
.LibroBB15_22: 
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a1, 4
	sw t1, 0(t0)
	j .LibroBB15_25
.LibroBB15_23: 
	la t0, asciiTable
	lw a0, 0(t0)
	addi a1, t2, -32
	addi a2, t2, -31
	call _string_substring
	mv a1, a0
	j .LibroBB15_25
.LibroBB15_24: 
	beqz t0, .LibroBB15_27
	j .LibroBB15_26
.LibroBB15_25: 
	j .LibroBB15_28
.LibroBB15_26: 
	la t0, asciiTable
	lw a0, 0(t0)
	addi a1, t2, -32
	addi a2, t2, -31
	call _string_substring
	j .LibroBB15_29
.LibroBB15_27: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a0, 4
	sw t1, 0(t0)
	j .LibroBB15_29
.LibroBB15_28: 
	mv a0, s4
	call _string_stringAppend
	j .LibroBB15_31
.LibroBB15_29: 
	mv a1, a0
	j .LibroBB15_30
.LibroBB15_30: 
	mv a0, s4
	call _string_stringAppend
	j .LibroBB15_31
.LibroBB15_31: 
	j .LibroBB15_32
.LibroBB15_32: 
	addi s3, s3, -4
	j .LibroBB15_10
hex2int: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)
	addi s0, sp, 20
	mv s3, a0
	addi s2, zero, 0
	addi s1, zero, 0
	j .LibroBB16_1
.LibroBB16_1: 
	mv a0, s3
	call _string_length
	bge s1, a0, .LibroBB16_3
	j .LibroBB16_2
.LibroBB16_2: 
	mv a0, s3
	mv a1, s1
	call _string_ord
	addi t0, zero, 48
	slt t1, a0, t0
	addi t0, zero, 0
	bnez t1, .LibroBB16_5
	j .LibroBB16_4
.LibroBB16_3: 
	mv a0, s2
	j .LibroBB16_20
.LibroBB16_4: 
	addi t0, zero, 57
	slt t0, t0, a0
	seqz t0, t0
	j .LibroBB16_5
.LibroBB16_5: 
	beqz t0, .LibroBB16_7
	j .LibroBB16_6
.LibroBB16_6: 
	slli t0, s2, 4
	add t0, t0, a0
	addi s2, t0, -48
	j .LibroBB16_8
.LibroBB16_7: 
	addi t0, zero, 65
	slt t1, a0, t0
	addi t0, zero, 0
	bnez t1, .LibroBB16_10
	j .LibroBB16_9
.LibroBB16_8: 
	j .LibroBB16_11
.LibroBB16_9: 
	addi t0, zero, 70
	slt t0, t0, a0
	seqz t0, t0
	j .LibroBB16_10
.LibroBB16_10: 
	beqz t0, .LibroBB16_12
	j .LibroBB16_13
.LibroBB16_11: 
	addi s1, s1, 1
	j .LibroBB16_1
.LibroBB16_12: 
	addi t0, zero, 97
	slt t1, a0, t0
	addi t0, zero, 0
	bnez t1, .LibroBB16_16
	j .LibroBB16_14
.LibroBB16_13: 
	slli t0, s2, 4
	add t0, t0, a0
	addi t0, t0, -65
	addi s2, t0, 10
	j .LibroBB16_15
.LibroBB16_14: 
	addi t0, zero, 102
	slt t0, t0, a0
	seqz t0, t0
	j .LibroBB16_16
.LibroBB16_15: 
	j .LibroBB16_8
.LibroBB16_16: 
	beqz t0, .LibroBB16_18
	j .LibroBB16_17
.LibroBB16_17: 
	slli t0, s2, 4
	add t0, t0, a0
	addi t0, t0, -97
	addi s2, t0, 10
	j .LibroBB16_19
.LibroBB16_18: 
	addi a0, zero, 0
	j .LibroBB16_20
.LibroBB16_19: 
	j .LibroBB16_15
.LibroBB16_20: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw s3, 0(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
crackSHA1: 
	addi sp, sp, -40
	sw ra, 36(sp)
	sw s0, 32(sp)
	sw s1, 28(sp)
	sw s2, 24(sp)
	sw s3, 20(sp)
	sw s4, 16(sp)
	sw s5, 12(sp)
	sw s6, 8(sp)
	sw s7, 4(sp)
	sw s8, 0(sp)
	addi s0, sp, 40
	mv s7, a0
	addi a0, zero, 24
	call myNew
	mv s3, a0
	addi t0, zero, 5
	sw t0, 0(s3)
	mv a0, s7
	call _string_length
	addi t0, zero, 40
	xor t0, a0, t0
	beqz t0, .LibroBB17_2
	j .LibroBB17_1
.LibroBB17_1: 
	la a0, .libro.str.5
	call println
	j .LibroBB17_3
.LibroBB17_2: 
	addi t0, zero, 0
	j .LibroBB17_4
.LibroBB17_3: 
	lw s0, 32(sp)
	lw s1, 28(sp)
	lw s2, 24(sp)
	lw s3, 20(sp)
	lw s4, 16(sp)
	lw s5, 12(sp)
	lw s6, 8(sp)
	lw s7, 4(sp)
	lw s8, 0(sp)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret
.LibroBB17_4: 
	addi t1, zero, 5
	bge t0, t1, .LibroBB17_6
	j .LibroBB17_5
.LibroBB17_5: 
	slli t1, t0, 2
	addi t1, t1, 4
	add t2, s3, t1
	addi t1, zero, 0
	sw t1, 0(t2)
	j .LibroBB17_7
.LibroBB17_6: 
	addi s5, zero, 0
	j .LibroBB17_8
.LibroBB17_7: 
	addi t0, t0, 1
	j .LibroBB17_4
.LibroBB17_8: 
	addi t0, zero, 40
	bge s5, t0, .LibroBB17_10
	j .LibroBB17_9
.LibroBB17_9: 
	srai t0, s5, 3
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw s8, 0(t0)
	addi a2, s5, 4
	mv a0, s7
	mv a1, s5
	call _string_substring
	mv s6, a0
	j .LibroBB17_11
.LibroBB17_10: 
	addi s1, zero, 1
	j .LibroBB17_12
.LibroBB17_11: 
	addi s1, zero, 0
	addi s2, zero, 0
	j .LibroBB17_13
.LibroBB17_12: 
	addi t0, zero, 4
	slt t0, t0, s1
	bnez t0, .LibroBB17_14
	j .LibroBB17_15
.LibroBB17_13: 
	mv a0, s6
	call _string_length
	bge s2, a0, .LibroBB17_16
	j .LibroBB17_17
.LibroBB17_14: 
	la a0, .libro.str.7
	call println
	j .LibroBB17_3
.LibroBB17_15: 
	addi t0, zero, 0
	j .LibroBB17_18
.LibroBB17_16: 
	j .LibroBB17_19
.LibroBB17_17: 
	mv a0, s6
	mv a1, s2
	call _string_ord
	addi t0, zero, 48
	slt t1, a0, t0
	addi t0, zero, 0
	bnez t1, .LibroBB17_24
	j .LibroBB17_20
.LibroBB17_18: 
	bge t0, s1, .LibroBB17_22
	j .LibroBB17_21
.LibroBB17_19: 
	j .LibroBB17_23
.LibroBB17_20: 
	addi t0, zero, 57
	slt t0, t0, a0
	seqz t0, t0
	j .LibroBB17_24
.LibroBB17_21: 
	la t1, inputBuffer
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t2, t2, t1
	addi t1, zero, 48
	sw t1, 0(t2)
	j .LibroBB17_25
.LibroBB17_22: 
	j .LibroBB17_26
.LibroBB17_23: 
	srai t0, s5, 2
	andi t1, t0, 1
	addi t0, zero, 1
	sub t0, t0, t1
	slli t0, t0, 4
	sll t0, s1, t0
	or t1, s8, t0
	srai t0, s5, 3
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, s3, t0
	sw t1, 0(t0)
	j .LibroBB17_27
.LibroBB17_24: 
	beqz t0, .LibroBB17_28
	j .LibroBB17_29
.LibroBB17_25: 
	addi t0, t0, 1
	j .LibroBB17_18
.LibroBB17_26: 
	la t0, inputBuffer
	lw a0, 0(t0)
	mv a1, s1
	call sha1
	j .LibroBB17_30
.LibroBB17_27: 
	addi s5, s5, 4
	j .LibroBB17_8
.LibroBB17_28: 
	addi t0, zero, 65
	slt t1, a0, t0
	addi t0, zero, 0
	bnez t1, .LibroBB17_32
	j .LibroBB17_31
.LibroBB17_29: 
	slli t0, s1, 4
	add t0, t0, a0
	addi s1, t0, -48
	j .LibroBB17_33
.LibroBB17_30: 
	addi t0, a0, 0
	lw t1, 0(t0)
	addi t0, s3, 0
	lw t0, 0(t0)
	xor t0, t1, t0
	beqz t0, .LibroBB17_35
	j .LibroBB17_34
.LibroBB17_31: 
	addi t0, zero, 70
	slt t0, t0, a0
	seqz t0, t0
	j .LibroBB17_32
.LibroBB17_32: 
	beqz t0, .LibroBB17_36
	j .LibroBB17_37
.LibroBB17_33: 
	j .LibroBB17_38
.LibroBB17_34: 
	addi t0, zero, 0
	j .LibroBB17_39
.LibroBB17_35: 
	addi t0, zero, 0
	j .LibroBB17_40
.LibroBB17_36: 
	addi t0, zero, 97
	slt t1, a0, t0
	addi t0, zero, 0
	bnez t1, .LibroBB17_45
	j .LibroBB17_41
.LibroBB17_37: 
	slli t0, s1, 4
	add t0, t0, a0
	addi t0, t0, -65
	addi s1, t0, 10
	j .LibroBB17_58
.LibroBB17_38: 
	addi s2, s2, 1
	j .LibroBB17_13
.LibroBB17_39: 
	j .LibroBB17_42
.LibroBB17_40: 
	addi t1, a0, 0
	lw t1, 0(t1)
	bge t0, t1, .LibroBB17_43
	j .LibroBB17_44
.LibroBB17_41: 
	addi t0, zero, 102
	slt t0, t0, a0
	seqz t0, t0
	j .LibroBB17_45
.LibroBB17_42: 
	beqz t0, .LibroBB17_46
	j .LibroBB17_47
.LibroBB17_43: 
	addi t0, zero, 1
	j .LibroBB17_39
.LibroBB17_44: 
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a0, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, s3, t1
	lw t1, 0(t1)
	xor t1, t2, t1
	beqz t1, .LibroBB17_49
	j .LibroBB17_48
.LibroBB17_45: 
	beqz t0, .LibroBB17_51
	j .LibroBB17_50
.LibroBB17_46: 
	la t0, inputBuffer
	lw a0, 0(t0)
	j .LibroBB17_52
.LibroBB17_47: 
	addi s2, zero, 0
	j .LibroBB17_53
.LibroBB17_48: 
	addi t0, zero, 0
	j .LibroBB17_39
.LibroBB17_49: 
	addi t0, t0, 1
	j .LibroBB17_40
.LibroBB17_50: 
	slli t0, s1, 4
	add t0, t0, a0
	addi t0, t0, -97
	addi s1, t0, 10
	j .LibroBB17_54
.LibroBB17_51: 
	addi s1, zero, 0
	j .LibroBB17_19
.LibroBB17_52: 
	addi t1, s1, -1
	j .LibroBB17_55
.LibroBB17_53: 
	bge s2, s1, .LibroBB17_57
	j .LibroBB17_56
.LibroBB17_54: 
	j .LibroBB17_58
.LibroBB17_55: 
	addi t0, zero, 0
	slt t0, t1, t0
	bnez t0, .LibroBB17_59
	j .LibroBB17_60
.LibroBB17_56: 
	la t0, inputBuffer
	lw t1, 0(t0)
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	j .LibroBB17_61
.LibroBB17_57: 
	la a0, .libro.str.6
	call println
	j .LibroBB17_3
.LibroBB17_58: 
	j .LibroBB17_33
.LibroBB17_59: 
	addi t0, zero, 0
	j .LibroBB17_80
.LibroBB17_60: 
	slli t0, t1, 2
	addi t0, t0, 4
	add t0, a0, t0
	lw t2, 0(t0)
	j .LibroBB17_62
.LibroBB17_61: 
	addi t0, zero, 32
	slt t1, t2, t0
	addi t0, zero, 0
	bnez t1, .LibroBB17_63
	j .LibroBB17_64
.LibroBB17_62: 
	addi t0, zero, 122
	xor t0, t2, t0
	bnez t0, .LibroBB17_65
	j .LibroBB17_66
.LibroBB17_63: 
	beqz t0, .LibroBB17_67
	j .LibroBB17_68
.LibroBB17_64: 
	addi t0, zero, 126
	slt t0, t0, t2
	seqz t0, t0
	j .LibroBB17_63
.LibroBB17_65: 
	addi t0, zero, 90
	xor t0, t2, t0
	bnez t0, .LibroBB17_69
	j .LibroBB17_70
.LibroBB17_66: 
	addi t0, zero, -1
	j .LibroBB17_71
.LibroBB17_67: 
	addi a0, zero, 12
	call myNew
	addi t1, a0, 0
	addi t0, zero, 0
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a0, 4
	sw t1, 0(t0)
	j .LibroBB17_72
.LibroBB17_68: 
	la t0, asciiTable
	lw a0, 0(t0)
	addi a1, t2, -32
	addi a2, t2, -31
	call _string_substring
	j .LibroBB17_72
.LibroBB17_69: 
	addi t0, zero, 57
	xor t0, t2, t0
	bnez t0, .LibroBB17_74
	j .LibroBB17_73
.LibroBB17_70: 
	addi t0, zero, 97
	j .LibroBB17_71
.LibroBB17_71: 
	j .LibroBB17_75
.LibroBB17_72: 
	j .LibroBB17_76
.LibroBB17_73: 
	addi t0, zero, 65
	j .LibroBB17_71
.LibroBB17_74: 
	addi t0, t2, 1
	j .LibroBB17_71
.LibroBB17_75: 
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, a0, t2
	sw t0, 0(t2)
	slli t0, t1, 2
	addi t0, t0, 4
	add t0, a0, t0
	lw t2, 0(t0)
	addi t0, zero, -1
	xor t0, t2, t0
	bnez t0, .LibroBB17_77
	j .LibroBB17_78
.LibroBB17_76: 
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB17_79
.LibroBB17_77: 
	addi t0, zero, 1
	j .LibroBB17_80
.LibroBB17_78: 
	slli t0, t1, 2
	addi t0, t0, 4
	add t2, a0, t0
	addi t0, zero, 48
	sw t0, 0(t2)
	j .LibroBB17_81
.LibroBB17_79: 
	addi s2, s2, 1
	j .LibroBB17_53
.LibroBB17_80: 
	j .LibroBB17_82
.LibroBB17_81: 
	addi t1, t1, -1
	j .LibroBB17_55
.LibroBB17_82: 
	xori t0, t0, 1
	beqz t0, .LibroBB17_22
	j .LibroBB17_83
.LibroBB17_83: 
	addi s1, s1, 1
	j .LibroBB17_12
sha1: 
	addi sp, sp, -40
	sw ra, 36(sp)
	sw s0, 32(sp)
	sw s1, 28(sp)
	sw s2, 24(sp)
	sw s3, 20(sp)
	sw s4, 16(sp)
	sw s5, 12(sp)
	sw s6, 8(sp)
	sw s7, 4(sp)
	sw s8, 0(sp)
	addi s0, sp, 40
	addi t0, a1, 64
	addi t0, t0, -56
	srai t0, t0, 6
	addi s5, t0, 1
	la t0, MAXCHUNK
	lw t0, 0(t0)
	bge t0, s5, .LibroBB18_2
	j .LibroBB18_1
.LibroBB18_1: 
	la a0, .libro.str.3
	call println
	addi a0, zero, 0
	j .LibroBB18_27
.LibroBB18_2: 
	addi t1, zero, 0
	j .LibroBB18_3
.LibroBB18_3: 
	bge t1, s5, .LibroBB18_5
	j .LibroBB18_4
.LibroBB18_4: 
	addi t0, zero, 0
	j .LibroBB18_6
.LibroBB18_5: 
	addi t0, zero, 0
	j .LibroBB18_7
.LibroBB18_6: 
	addi t2, zero, 80
	bge t0, t2, .LibroBB18_9
	j .LibroBB18_8
.LibroBB18_7: 
	bge t0, a1, .LibroBB18_10
	j .LibroBB18_11
.LibroBB18_8: 
	la t2, chunks
	lw s1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, s1, t2
	lw s1, 0(t2)
	slli t2, t0, 2
	addi t2, t2, 4
	add s1, s1, t2
	addi t2, zero, 0
	sw t2, 0(s1)
	j .LibroBB18_12
.LibroBB18_9: 
	addi t1, t1, 1
	j .LibroBB18_3
.LibroBB18_10: 
	la t1, chunks
	lw t2, 0(t1)
	srai t1, t0, 6
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw t2, 0(t1)
	andi t1, t0, 63
	srai t1, t1, 2
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw s1, 0(t1)
	andi t2, t0, 3
	addi t1, zero, 3
	sub t1, t1, t2
	slli t2, t1, 3
	addi t1, zero, 128
	sll t1, t1, t2
	or s1, s1, t1
	la t1, chunks
	lw t2, 0(t1)
	srai t1, t0, 6
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw t1, 0(t1)
	andi t0, t0, 63
	srai t0, t0, 2
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw s1, 0(t0)
	slli t2, a1, 3
	la t0, chunks
	lw t1, 0(t0)
	addi t0, s5, -1
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	addi t0, t0, 64
	sw t2, 0(t0)
	srai t0, a1, 29
	andi t2, t0, 7
	la t0, chunks
	lw t1, 0(t0)
	addi t0, s5, -1
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	addi t0, t0, 60
	sw t2, 0(t0)
	j .LibroBB18_13
.LibroBB18_11: 
	la t1, chunks
	lw t2, 0(t1)
	srai t1, t0, 6
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw t2, 0(t1)
	andi t1, t0, 63
	srai t1, t1, 2
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw a2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a0, t1
	lw s1, 0(t1)
	andi t2, t0, 3
	addi t1, zero, 3
	sub t1, t1, t2
	slli t1, t1, 3
	sll t1, s1, t1
	or s1, a2, t1
	la t1, chunks
	lw t2, 0(t1)
	srai t1, t0, 6
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw t2, 0(t1)
	andi t1, t0, 63
	srai t1, t1, 2
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw s1, 0(t1)
	j .LibroBB18_14
.LibroBB18_12: 
	addi t0, t0, 1
	j .LibroBB18_6
.LibroBB18_13: 
	lui t1, 15
	addi t1, t1, -51
	addi t0, zero, 16
	sll t1, t1, t0
	lui s2, 11
	addi s2, s2, -1143
	or s2, s2, t1
	j .LibroBB18_15
.LibroBB18_14: 
	addi t0, t0, 1
	j .LibroBB18_7
.LibroBB18_15: 
	j .LibroBB18_16
.LibroBB18_16: 
	j .LibroBB18_17
.LibroBB18_17: 
	lui t1, 10
	addi t1, t1, -1862
	addi t0, zero, 16
	sll t1, t1, t0
	lui a1, 14
	addi a1, a1, -770
	or a1, a1, t1
	j .LibroBB18_18
.LibroBB18_18: 
	j .LibroBB18_19
.LibroBB18_19: 
	j .LibroBB18_20
.LibroBB18_20: 
	lui t1, 12
	addi t1, t1, 978
	addi t0, zero, 16
	sll t1, t1, t0
	lui s1, 14
	addi s1, s1, 496
	or s1, s1, t1
	j .LibroBB18_21
.LibroBB18_21: 
	j .LibroBB18_22
.LibroBB18_22: 
	addi a7, zero, 0
	addi a5, zero, 0
	addi a4, zero, 0
	addi s4, zero, 0
	addi a3, zero, 0
	addi s3, zero, 0
	lui a0, 66341
	addi a0, a0, 1142
	lui a2, 422994
	addi a2, a2, 769
	addi t2, zero, 0
	j .LibroBB18_23
.LibroBB18_23: 
	bge t2, s5, .LibroBB18_25
	j .LibroBB18_24
.LibroBB18_24: 
	addi t1, zero, 16
	j .LibroBB18_26
.LibroBB18_25: 
	la t0, outputBuffer
	lw t0, 0(t0)
	addi t0, t0, 4
	sw a2, 0(t0)
	la t0, outputBuffer
	lw t0, 0(t0)
	addi t0, t0, 8
	sw s2, 0(t0)
	la t0, outputBuffer
	lw t0, 0(t0)
	addi t0, t0, 12
	sw a1, 0(t0)
	la t0, outputBuffer
	lw t0, 0(t0)
	addi t0, t0, 16
	sw a0, 0(t0)
	la t0, outputBuffer
	lw t0, 0(t0)
	addi t0, t0, 20
	sw s1, 0(t0)
	la t0, outputBuffer
	lw a0, 0(t0)
	j .LibroBB18_27
.LibroBB18_26: 
	addi t0, zero, 80
	bge t1, t0, .LibroBB18_28
	j .LibroBB18_29
.LibroBB18_27: 
	lw s0, 32(sp)
	lw s1, 28(sp)
	lw s2, 24(sp)
	lw s3, 20(sp)
	lw s4, 16(sp)
	lw s5, 12(sp)
	lw s6, 8(sp)
	lw s7, 4(sp)
	lw s8, 0(sp)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret
.LibroBB18_28: 
	mv a5, s1
	mv a4, a0
	mv t0, a1
	mv a3, s2
	mv t1, a2
	addi a6, zero, 0
	j .LibroBB18_30
.LibroBB18_29: 
	la t0, chunks
	lw a3, 0(t0)
	slli t0, t2, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw a3, 0(t0)
	addi t0, t1, -3
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw a4, 0(t0)
	la t0, chunks
	lw a3, 0(t0)
	slli t0, t2, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw a3, 0(t0)
	addi t0, t1, -8
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw t0, 0(t0)
	xor a4, a4, t0
	la t0, chunks
	lw a3, 0(t0)
	slli t0, t2, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw a3, 0(t0)
	addi t0, t1, -14
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw t0, 0(t0)
	xor a4, a4, t0
	la t0, chunks
	lw a3, 0(t0)
	slli t0, t2, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw a3, 0(t0)
	addi t0, t1, -16
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw t0, 0(t0)
	xor a6, a4, t0
	j .LibroBB18_31
.LibroBB18_30: 
	mv s3, t1
	mv s4, t0
	addi t0, zero, 80
	bge a6, t0, .LibroBB18_32
	j .LibroBB18_33
.LibroBB18_31: 
	addi a3, zero, 1
	addi t0, zero, 1
	xor t0, a3, t0
	bnez t0, .LibroBB18_34
	j .LibroBB18_35
.LibroBB18_32: 
	j .LibroBB18_36
.LibroBB18_33: 
	addi t0, zero, 20
	bge a6, t0, .LibroBB18_37
	j .LibroBB18_38
.LibroBB18_34: 
	addi a3, zero, 1
	addi t0, zero, 31
	xor t0, a3, t0
	bnez t0, .LibroBB18_39
	j .LibroBB18_40
.LibroBB18_35: 
	lui t0, 524288
	addi t0, t0, -1
	and t0, a6, t0
	slli a3, t0, 1
	srai t0, a6, 31
	andi t0, t0, 1
	or t0, a3, t0
	j .LibroBB18_44
.LibroBB18_36: 
	lui t1, 16
	addi t1, t1, -1
	and t1, a2, t1
	lui t0, 16
	addi t0, t0, -1
	and t0, s3, t0
	add s6, t1, t0
	srai t0, a2, 16
	lui a2, 16
	addi a2, a2, -1
	and a2, t0, a2
	srai t1, s3, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, a2, t0
	srai t0, s6, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s6, t0
	or a2, t1, t0
	j .LibroBB18_41
.LibroBB18_37: 
	addi t0, zero, 40
	bge a6, t0, .LibroBB18_43
	j .LibroBB18_42
.LibroBB18_38: 
	and t1, a3, s4
	addi t0, zero, -1
	xor t0, t0, a3
	and t0, t0, a4
	or a7, t1, t0
	lui t0, 370728
	addi t0, t0, -1639
	j .LibroBB18_51
.LibroBB18_39: 
	addi a3, zero, 32
	addi t0, zero, 1
	sub a3, a3, t0
	addi t0, zero, 1
	sll t0, t0, a3
	addi t0, t0, -1
	and t0, a6, t0
	slli a5, t0, 1
	addi a3, zero, 32
	addi t0, zero, 1
	sub a3, a3, t0
	sra a4, a6, a3
	addi a3, zero, 1
	addi t0, zero, 1
	sll a3, a3, t0
	addi t0, a3, -1
	and t0, a4, t0
	or t0, a5, t0
	j .LibroBB18_44
.LibroBB18_40: 
	andi t0, a6, 1
	slli a4, t0, 31
	srai a3, a6, 1
	lui t0, 524288
	addi t0, t0, -1
	and t0, a3, t0
	or t0, a4, t0
	j .LibroBB18_44
.LibroBB18_41: 
	j .LibroBB18_45
.LibroBB18_42: 
	xor t0, a3, s4
	xor a7, t0, a4
	lui t0, 454047
	addi t0, t0, -1119
	j .LibroBB18_46
.LibroBB18_43: 
	addi t0, zero, 60
	bge a6, t0, .LibroBB18_48
	j .LibroBB18_47
.LibroBB18_44: 
	j .LibroBB18_49
.LibroBB18_45: 
	j .LibroBB18_50
.LibroBB18_46: 
	j .LibroBB18_51
.LibroBB18_47: 
	and t1, a3, s4
	and t0, a3, a4
	or t1, t1, t0
	and t0, s4, a4
	or a7, t1, t0
	j .LibroBB18_52
.LibroBB18_48: 
	xor t0, a3, s4
	xor a7, t0, a4
	j .LibroBB18_53
.LibroBB18_49: 
	la a3, chunks
	lw a4, 0(a3)
	slli a3, t2, 2
	addi a3, a3, 4
	add a3, a4, a3
	lw a4, 0(a3)
	slli a3, t1, 2
	addi a3, a3, 4
	add a3, a4, a3
	sw t0, 0(a3)
	j .LibroBB18_54
.LibroBB18_50: 
	lui t1, 16
	addi t1, t1, -1
	and t1, s2, t1
	lui t0, 16
	addi t0, t0, -1
	and t0, a3, t0
	add s6, t1, t0
	srai t0, s2, 16
	lui s2, 16
	addi s2, s2, -1
	and s2, t0, s2
	srai t1, a3, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, s2, t0
	srai t0, s6, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s6, t0
	or s2, t1, t0
	j .LibroBB18_55
.LibroBB18_51: 
	j .LibroBB18_56
.LibroBB18_52: 
	lui t1, 9
	addi t1, t1, -229
	addi t0, zero, 16
	sll t1, t1, t0
	lui t0, 12
	addi t0, t0, -804
	or t0, t0, t1
	j .LibroBB18_57
.LibroBB18_53: 
	lui t1, 13
	addi t1, t1, -1438
	addi t0, zero, 16
	sll t1, t1, t0
	lui t0, 12
	addi t0, t0, 470
	or t0, t0, t1
	j .LibroBB18_58
.LibroBB18_54: 
	addi t1, t1, 1
	j .LibroBB18_26
.LibroBB18_55: 
	j .LibroBB18_59
.LibroBB18_56: 
	addi s6, zero, 5
	addi t1, zero, 1
	xor t1, s6, t1
	bnez t1, .LibroBB18_60
	j .LibroBB18_61
.LibroBB18_57: 
	j .LibroBB18_62
.LibroBB18_58: 
	j .LibroBB18_63
.LibroBB18_59: 
	j .LibroBB18_64
.LibroBB18_60: 
	addi s6, zero, 5
	addi t1, zero, 31
	xor t1, s6, t1
	bnez t1, .LibroBB18_65
	j .LibroBB18_66
.LibroBB18_61: 
	lui t1, 524288
	addi t1, t1, -1
	and t1, s3, t1
	slli s6, t1, 1
	srai t1, s3, 31
	andi t1, t1, 1
	or t1, s6, t1
	j .LibroBB18_67
.LibroBB18_62: 
	j .LibroBB18_68
.LibroBB18_63: 
	j .LibroBB18_68
.LibroBB18_64: 
	lui t1, 16
	addi t1, t1, -1
	and t1, a1, t1
	lui t0, 16
	addi t0, t0, -1
	and t0, s4, t0
	add s6, t1, t0
	srai t0, a1, 16
	lui a1, 16
	addi a1, a1, -1
	and a1, t0, a1
	srai t1, s4, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, a1, t0
	srai t0, s6, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s6, t0
	or a1, t1, t0
	j .LibroBB18_69
.LibroBB18_65: 
	addi s6, zero, 32
	addi t1, zero, 5
	sub s6, s6, t1
	addi t1, zero, 1
	sll t1, t1, s6
	addi t1, t1, -1
	and t1, s3, t1
	slli s8, t1, 5
	addi s6, zero, 32
	addi t1, zero, 5
	sub s6, s6, t1
	sra s7, s3, s6
	addi s6, zero, 1
	addi t1, zero, 5
	sll s6, s6, t1
	addi t1, s6, -1
	and t1, s7, t1
	or t1, s8, t1
	j .LibroBB18_67
.LibroBB18_66: 
	andi t1, s3, 1
	slli s7, t1, 31
	srai s6, s3, 1
	lui t1, 524288
	addi t1, t1, -1
	and t1, s6, t1
	or t1, s7, t1
	j .LibroBB18_67
.LibroBB18_67: 
	j .LibroBB18_70
.LibroBB18_68: 
	j .LibroBB18_46
.LibroBB18_69: 
	j .LibroBB18_71
.LibroBB18_70: 
	j .LibroBB18_72
.LibroBB18_71: 
	j .LibroBB18_73
.LibroBB18_72: 
	lui s7, 16
	addi s7, s7, -1
	and s7, t1, s7
	lui s6, 16
	addi s6, s6, -1
	and s6, a5, s6
	add s7, s7, s6
	srai t1, t1, 16
	lui s6, 16
	addi s6, s6, -1
	and s6, t1, s6
	srai a5, a5, 16
	lui t1, 16
	addi t1, t1, -1
	and t1, a5, t1
	add a5, s6, t1
	srai t1, s7, 16
	add a5, a5, t1
	lui t1, 16
	addi t1, t1, -1
	and t1, a5, t1
	slli a5, t1, 16
	lui t1, 16
	addi t1, t1, -1
	and t1, s7, t1
	or s8, a5, t1
	j .LibroBB18_74
.LibroBB18_73: 
	lui t1, 16
	addi t1, t1, -1
	and t1, a0, t1
	lui t0, 16
	addi t0, t0, -1
	and t0, a4, t0
	add s6, t1, t0
	srai t0, a0, 16
	lui a0, 16
	addi a0, a0, -1
	and a0, t0, a0
	srai t1, a4, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, a0, t0
	srai t0, s6, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s6, t0
	or a0, t1, t0
	j .LibroBB18_75
.LibroBB18_74: 
	j .LibroBB18_76
.LibroBB18_75: 
	j .LibroBB18_77
.LibroBB18_76: 
	j .LibroBB18_78
.LibroBB18_77: 
	j .LibroBB18_79
.LibroBB18_78: 
	lui a5, 16
	addi a5, a5, -1
	and a5, a7, a5
	lui t1, 16
	addi t1, t1, -1
	and t1, t0, t1
	add s6, a5, t1
	srai t1, a7, 16
	lui a5, 16
	addi a5, a5, -1
	and a5, t1, a5
	srai t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, a5, t0
	srai t0, s6, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s6, t0
	or s7, t1, t0
	j .LibroBB18_80
.LibroBB18_79: 
	lui t1, 16
	addi t1, t1, -1
	and t1, s1, t1
	lui t0, 16
	addi t0, t0, -1
	and t0, a5, t0
	add s6, t1, t0
	srai t0, s1, 16
	lui s1, 16
	addi s1, s1, -1
	and s1, t0, s1
	srai t1, a5, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, s1, t0
	srai t0, s6, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s6, t0
	or s1, t1, t0
	j .LibroBB18_81
.LibroBB18_80: 
	j .LibroBB18_82
.LibroBB18_81: 
	j .LibroBB18_83
.LibroBB18_82: 
	j .LibroBB18_84
.LibroBB18_83: 
	j .LibroBB18_85
.LibroBB18_84: 
	lui t1, 16
	addi t1, t1, -1
	and t1, s8, t1
	lui t0, 16
	addi t0, t0, -1
	and t0, s7, t0
	add s6, t1, t0
	srai t0, s8, 16
	lui a5, 16
	addi a5, a5, -1
	and a5, t0, a5
	srai t1, s7, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, a5, t0
	srai t0, s6, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s6, t0
	or a5, t1, t0
	j .LibroBB18_86
.LibroBB18_85: 
	addi t2, t2, 1
	j .LibroBB18_23
.LibroBB18_86: 
	j .LibroBB18_87
.LibroBB18_87: 
	la t0, chunks
	lw t1, 0(t0)
	slli t0, t2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, a6, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s7, 0(t0)
	j .LibroBB18_88
.LibroBB18_88: 
	lui t1, 16
	addi t1, t1, -1
	and t1, a5, t1
	lui t0, 16
	addi t0, t0, -1
	and t0, s7, t0
	add s6, t1, t0
	srai t0, a5, 16
	lui a5, 16
	addi a5, a5, -1
	and a5, t0, a5
	srai t1, s7, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	add t1, a5, t0
	srai t0, s6, 16
	add t1, t1, t0
	lui t0, 16
	addi t0, t0, -1
	and t0, t1, t0
	slli t1, t0, 16
	lui t0, 16
	addi t0, t0, -1
	and t0, s6, t0
	or t1, t1, t0
	j .LibroBB18_89
.LibroBB18_89: 
	j .LibroBB18_90
.LibroBB18_90: 
	j .LibroBB18_91
.LibroBB18_91: 
	addi a5, zero, 30
	addi t0, zero, 1
	xor t0, a5, t0
	bnez t0, .LibroBB18_92
	j .LibroBB18_93
.LibroBB18_92: 
	addi a5, zero, 30
	addi t0, zero, 31
	xor t0, a5, t0
	bnez t0, .LibroBB18_95
	j .LibroBB18_94
.LibroBB18_93: 
	lui t0, 524288
	addi t0, t0, -1
	and t0, a3, t0
	slli a5, t0, 1
	srai t0, a3, 31
	andi t0, t0, 1
	or t0, a5, t0
	j .LibroBB18_96
.LibroBB18_94: 
	andi t0, a3, 1
	slli a5, t0, 31
	srai a3, a3, 1
	lui t0, 524288
	addi t0, t0, -1
	and t0, a3, t0
	or t0, a5, t0
	j .LibroBB18_96
.LibroBB18_95: 
	addi a5, zero, 32
	addi t0, zero, 30
	sub a5, a5, t0
	addi t0, zero, 1
	sll t0, t0, a5
	addi t0, t0, -1
	and t0, a3, t0
	slli s6, t0, 30
	addi a5, zero, 32
	addi t0, zero, 30
	sub a5, a5, t0
	sra a5, a3, a5
	addi a3, zero, 1
	addi t0, zero, 30
	sll a3, a3, t0
	addi t0, a3, -1
	and t0, a5, t0
	or t0, s6, t0
	j .LibroBB18_96
.LibroBB18_96: 
	j .LibroBB18_97
.LibroBB18_97: 
	j .LibroBB18_98
.LibroBB18_98: 
	addi a6, a6, 1
	mv a5, a4
	mv a4, s4
	mv a3, s3
	j .LibroBB18_30
.data
	.type	asciiTable,@object
asciiTable:
	.word	0
	.size	asciiTable, 4

	.type	MAXCHUNK,@object
MAXCHUNK:
	.word	100
	.size	MAXCHUNK, 4

	.type	MAXLENGTH,@object
MAXLENGTH:
	.word	0
	.size	MAXLENGTH, 4

	.type	chunks,@object
chunks:
	.word	0
	.size	chunks, 4

	.type	inputBuffer,@object
inputBuffer:
	.word	0
	.size	inputBuffer, 4

	.type	outputBuffer,@object
outputBuffer:
	.word	0
	.size	outputBuffer, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	" !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"
	.size	.libro.str, 96

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	""
	.size	.libro.str.1, 1

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	""
	.size	.libro.str.2, 1

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	"nChunk > MAXCHUNK!"
	.size	.libro.str.3, 19

	.type	.libro.str.4,@object
.libro.str.4:
	.asciz	""
	.size	.libro.str.4, 1

	.type	.libro.str.5,@object
.libro.str.5:
	.asciz	"Invalid input"
	.size	.libro.str.5, 14

	.type	.libro.str.6,@object
.libro.str.6:
	.asciz	""
	.size	.libro.str.6, 1

	.type	.libro.str.7,@object
.libro.str.7:
	.asciz	"Not Found!"
	.size	.libro.str.7, 11

