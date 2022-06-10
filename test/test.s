	.text
	.globl main
	.p2align	2
	.type	main,@function
_taskInline_unsigned_shl: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	sll a0, a1, a2
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_taskInline_taskInline: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t1, a0, 0
	lui t0, 4702
	addi t0, t0, 1425
	sw t0, 0(t1)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_taskStress_main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw a0, 0(t0)
	call printlnInt
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_taskInline_gcd: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a2
	addi t1, zero, 0
	bge t1, t0, .LibroBB3_2
	j .LibroBB3_1
.LibroBB3_1: 
	rem a2, a1, t0
	mv a1, t0
	call _taskInline_gcd
	add a0, zero, a0
	j .LibroBB3_3
.LibroBB3_2: 
	add a0, zero, a1
	j .LibroBB3_3
.LibroBB3_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_taskConst_test: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 0
	addi t0, zero, 0
	j .LibroBB4_1
.LibroBB4_1: 
	addi t1, zero, 200
	bge t0, t1, .LibroBB4_2
	j .LibroBB4_3
.LibroBB4_2: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB4_3: 
	addi t1, a0, 1
	addi t0, t0, 2
	add a0, zero, t1
	add t0, zero, t0
	j .LibroBB4_1
_taskConst_main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t1, zero, 0
	addi t0, zero, 0
	j .LibroBB5_1
.LibroBB5_1: 
	addi t2, zero, 200
	bge t0, t2, .LibroBB5_3
	j .LibroBB5_2
.LibroBB5_2: 
	addi t1, t1, 1
	addi t0, t0, 2
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB5_1
.LibroBB5_3: 
	addi a0, t1, -100
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_taskInline_unsigned_shr: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, zero, 0
	slt t0, a1, t0
	bnez t0, .LibroBB6_1
	j .LibroBB6_2
.LibroBB6_1: 
	addi t0, zero, 31
	sub t0, t0, a2
	addi t1, zero, 1
	sll t1, t1, t0
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a1, t0
	sra t0, t0, a2
	or t0, t1, t0
	add a0, zero, t0
	j .LibroBB6_3
.LibroBB6_2: 
	sra t0, a1, a2
	add a0, zero, t0
	j .LibroBB6_3
.LibroBB6_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_taskSSA_test: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t0, a0, 0
	lw a1, 0(t0)
	addi a0, zero, 0
	addi t1, zero, 0
	j .LibroBB7_1
.LibroBB7_1: 
	bge t1, a1, .LibroBB7_3
	j .LibroBB7_2
.LibroBB7_2: 
	addi s1, t1, 1
	addi t0, zero, 0
	xor t2, s1, t0
	add t0, zero, a0
	beqz t2, .LibroBB7_5
	j .LibroBB7_4
.LibroBB7_3: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB7_4: 
	add t0, zero, s1
	j .LibroBB7_5
.LibroBB7_5: 
	addi t1, t1, 1
	add a0, zero, t0
	add t1, zero, t1
	j .LibroBB7_1
_taskNTT_mulmod: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	rem t1, a1, a3
	addi t0, zero, 0
	xor t0, a2, t0
	addi a0, zero, 0
	beqz t0, .LibroBB8_4
	addi s1, zero, 0
	add t2, zero, a2
	add t1, zero, t1
	j .LibroBB8_1
.LibroBB8_1: 
	andi a0, t2, 1
	addi t0, zero, 0
	xor a0, a0, t0
	add t0, zero, s1
	beqz a0, .LibroBB8_3
	j .LibroBB8_2
.LibroBB8_2: 
	add t0, s1, t1
	rem t0, t0, a3
	add t0, zero, t0
	j .LibroBB8_3
.LibroBB8_3: 
	srai t2, t2, 1
	slli t1, t1, 1
	rem a1, t1, a3
	addi t1, zero, 0
	xor t1, t2, t1
	add a0, zero, t0
	beqz t1, .LibroBB8_4
	add s1, zero, t0
	add t2, zero, t2
	add t1, zero, a1
	j .LibroBB8_1
.LibroBB8_4: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_taskInline_rng: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t0, a0, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor s1, t1, t0
	addi t0, zero, 0
	slt t0, s1, t0
	bnez t0, .LibroBB9_2
	j .LibroBB9_1
.LibroBB9_1: 
	srai t0, s1, 17
	add t0, zero, t0
	j .LibroBB9_3
.LibroBB9_2: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, s1, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB9_3
.LibroBB9_3: 
	xor t1, s1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, a0, 0
	sw t1, 0(t0)
	lui a0, 262144
	addi a0, a0, -1
	and a0, t1, a0
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_taskNTT_taskNTT: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	sw s2, 0(sp)
	addi s0, sp, 16
	mv s1, a0
	addi t1, s1, 0
	addi t0, zero, 999
	sw t0, 0(t1)
	addi t1, s1, 4
	lui t0, 243712
	addi t0, t0, 1
	sw t0, 0(t1)
	addi t0, s1, 0
	lw s2, 0(t0)
	slli t0, s2, 2
	addi a0, t0, 4
	call myNew
	sw s2, 0(a0)
	addi t0, s1, 8
	sw a0, 0(t0)
	addi t0, s1, 0
	lw s2, 0(t0)
	slli t0, s2, 2
	addi a0, t0, 4
	call myNew
	sw s2, 0(a0)
	addi t0, s1, 12
	sw a0, 0(t0)
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw s2, 0(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_taskNTT_reverse: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	bge a2, a3, .LibroBB11_2
	add t1, zero, a3
	add t0, zero, a2
	j .LibroBB11_1
.LibroBB11_1: 
	addi a0, t1, -1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a1, t1
	lw s1, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a1, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a1, t1
	sw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a1, t1
	sw s1, 0(t1)
	addi t0, t0, 1
	bge t0, a0, .LibroBB11_2
	add t1, zero, a0
	add t0, zero, t0
	j .LibroBB11_1
.LibroBB11_2: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_taskSSA_main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t1, a0, 0
	addi t0, zero, 100
	sw t0, 0(t1)
	addi t0, a0, 0
	lw a2, 0(t0)
	addi t2, zero, 0
	addi t1, zero, 0
	j .LibroBB12_1
.LibroBB12_1: 
	bge t1, a2, .LibroBB12_2
	j .LibroBB12_3
.LibroBB12_2: 
	addi t1, a0, 0
	addi t0, zero, 200
	sw t0, 0(t1)
	addi t0, a0, 0
	lw a1, 0(t0)
	addi t0, zero, 0
	addi t1, zero, 0
	j .LibroBB12_4
.LibroBB12_3: 
	addi a1, t1, 1
	addi t0, zero, 0
	xor s1, a1, t0
	add t0, zero, t2
	beqz s1, .LibroBB12_8
	j .LibroBB12_5
.LibroBB12_4: 
	bge t1, a1, .LibroBB12_7
	j .LibroBB12_6
.LibroBB12_5: 
	add t0, zero, a1
	j .LibroBB12_8
.LibroBB12_6: 
	addi a0, t1, 1
	addi s1, zero, 0
	xor s1, a0, s1
	add t0, zero, t0
	beqz s1, .LibroBB12_10
	j .LibroBB12_9
.LibroBB12_7: 
	add t0, t2, t0
	addi a0, t0, -300
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB12_8: 
	addi t1, t1, 1
	add t2, zero, t0
	add t1, zero, t1
	j .LibroBB12_1
.LibroBB12_9: 
	add t0, zero, a0
	j .LibroBB12_10
.LibroBB12_10: 
	addi t1, t1, 1
	add t0, zero, t0
	add t1, zero, t1
	j .LibroBB12_4
_taskNTT_KSM: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t0, zero, 0
	xor t1, a2, t0
	addi t0, zero, 1
	beqz t1, .LibroBB13_10
	addi t0, zero, 1
	add a3, zero, a2
	add a2, zero, a1
	j .LibroBB13_1
.LibroBB13_1: 
	andi t2, a3, 1
	addi t1, zero, 0
	xor t1, t2, t1
	add a1, zero, t0
	beqz t1, .LibroBB13_7
	j .LibroBB13_2
.LibroBB13_2: 
	addi t1, a0, 4
	lw a4, 0(t1)
	rem a1, t0, a4
	addi t0, zero, 0
	xor t1, a2, t0
	addi t0, zero, 0
	beqz t1, .LibroBB13_6
	addi s1, zero, 0
	add t2, zero, a2
	add t0, zero, a1
	j .LibroBB13_3
.LibroBB13_3: 
	andi a1, t2, 1
	addi t1, zero, 0
	xor a1, a1, t1
	add t1, zero, s1
	beqz a1, .LibroBB13_5
	j .LibroBB13_4
.LibroBB13_4: 
	add t1, s1, t0
	rem t1, t1, a4
	add t1, zero, t1
	j .LibroBB13_5
.LibroBB13_5: 
	srai t2, t2, 1
	slli t0, t0, 1
	rem a1, t0, a4
	addi t0, zero, 0
	xor s1, t2, t0
	add t0, zero, t1
	beqz s1, .LibroBB13_6
	add s1, zero, t1
	add t2, zero, t2
	add t0, zero, a1
	j .LibroBB13_3
.LibroBB13_6: 
	add a1, zero, t0
	j .LibroBB13_7
.LibroBB13_7: 
	srai a4, a3, 1
	addi t0, a0, 4
	lw a5, 0(t0)
	rem a3, a2, a5
	addi t0, zero, 0
	xor t0, a2, t0
	addi t1, zero, 0
	beqz t0, .LibroBB13_8
	addi s1, zero, 0
	add t2, zero, a2
	add t1, zero, a3
	j .LibroBB13_9
.LibroBB13_8: 
	addi t0, zero, 0
	xor t2, a4, t0
	add t0, zero, a1
	beqz t2, .LibroBB13_10
	add t0, zero, a1
	add a3, zero, a4
	add a2, zero, t1
	j .LibroBB13_1
.LibroBB13_9: 
	andi a2, t2, 1
	addi t0, zero, 0
	xor a2, a2, t0
	add t0, zero, s1
	beqz a2, .LibroBB13_12
	j .LibroBB13_11
.LibroBB13_10: 
	mv a0, t0
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB13_11: 
	add t0, s1, t1
	rem t0, t0, a5
	add t0, zero, t0
	j .LibroBB13_12
.LibroBB13_12: 
	srai a3, t2, 1
	slli t1, t1, 1
	rem a2, t1, a5
	addi t1, zero, 0
	xor t2, a3, t1
	add t1, zero, t0
	beqz t2, .LibroBB13_8
	add s1, zero, t0
	add t2, zero, a3
	add t1, zero, a2
	j .LibroBB13_9
_taskInline_main: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	sw s2, 0(sp)
	addi s0, sp, 16
	mv s2, a0
	addi t0, s2, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor s1, t1, t0
	addi t0, zero, 0
	slt t0, s1, t0
	bnez t0, .LibroBB14_1
	j .LibroBB14_2
.LibroBB14_1: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, s1, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB14_3
.LibroBB14_2: 
	srai t0, s1, 17
	add t0, zero, t0
	j .LibroBB14_3
.LibroBB14_3: 
	xor t1, s1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s2, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	andi a0, t0, 255
	addi t0, s2, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor s1, t1, t0
	addi t0, zero, 0
	slt t0, s1, t0
	bnez t0, .LibroBB14_4
	j .LibroBB14_5
.LibroBB14_4: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, s1, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB14_6
.LibroBB14_5: 
	srai t0, s1, 17
	add t0, zero, t0
	j .LibroBB14_6
.LibroBB14_6: 
	xor t1, s1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s2, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	andi t0, t0, 255
	xor t1, a0, t0
	addi t0, zero, 0
	beqz t1, .LibroBB14_7
	addi s1, zero, 0
	j .LibroBB14_8
.LibroBB14_7: 
	lui a0, 1
	addi a0, a0, 1551
	xor a0, t0, a0
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw s2, 0(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.LibroBB14_8: 
	addi t0, s2, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a0, t1, t0
	addi t0, zero, 0
	slt t0, a0, t0
	bnez t0, .LibroBB14_10
	j .LibroBB14_9
.LibroBB14_9: 
	srai t0, a0, 17
	add t0, zero, t0
	j .LibroBB14_11
.LibroBB14_10: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a0, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB14_11
.LibroBB14_11: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s2, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	addi a1, t0, 1
	addi t0, s2, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a0, t1, t0
	addi t0, zero, 0
	slt t0, a0, t0
	bnez t0, .LibroBB14_12
	j .LibroBB14_13
.LibroBB14_12: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a0, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB14_14
.LibroBB14_13: 
	srai t0, a0, 17
	add t0, zero, t0
	j .LibroBB14_14
.LibroBB14_14: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s2, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	addi t1, t0, 1
	addi t0, zero, 0
	bge t0, t1, .LibroBB14_16
	j .LibroBB14_15
.LibroBB14_15: 
	rem t2, a1, t1
	addi t0, zero, 0
	bge t0, t2, .LibroBB14_17
	j .LibroBB14_18
.LibroBB14_16: 
	add t0, zero, a1
	j .LibroBB14_19
.LibroBB14_17: 
	add t0, zero, t1
	j .LibroBB14_37
.LibroBB14_18: 
	rem t1, t1, t2
	addi t0, zero, 0
	bge t0, t1, .LibroBB14_21
	j .LibroBB14_20
.LibroBB14_19: 
	xor s1, s1, t0
	addi t0, s2, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a0, t1, t0
	addi t0, zero, 0
	slt t0, a0, t0
	bnez t0, .LibroBB14_22
	j .LibroBB14_23
.LibroBB14_20: 
	rem t2, t2, t1
	addi t0, zero, 0
	bge t0, t2, .LibroBB14_25
	j .LibroBB14_24
.LibroBB14_21: 
	add t0, zero, t2
	j .LibroBB14_34
.LibroBB14_22: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a0, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB14_26
.LibroBB14_23: 
	srai t0, a0, 17
	add t0, zero, t0
	j .LibroBB14_26
.LibroBB14_24: 
	rem t1, t1, t2
	addi t0, zero, 0
	bge t0, t1, .LibroBB14_28
	j .LibroBB14_27
.LibroBB14_25: 
	add t0, zero, t1
	j .LibroBB14_29
.LibroBB14_26: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s2, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	andi a1, t0, 255
	addi t0, s2, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a0, t1, t0
	addi t0, zero, 0
	slt t0, a0, t0
	bnez t0, .LibroBB14_30
	j .LibroBB14_31
.LibroBB14_27: 
	rem a1, t2, t1
	addi t0, zero, 0
	bge t0, a1, .LibroBB14_32
	j .LibroBB14_33
.LibroBB14_28: 
	add t0, zero, t2
	j .LibroBB14_38
.LibroBB14_29: 
	add t0, zero, t0
	j .LibroBB14_34
.LibroBB14_30: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a0, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB14_35
.LibroBB14_31: 
	srai t0, a0, 17
	add t0, zero, t0
	j .LibroBB14_35
.LibroBB14_32: 
	add t0, zero, t1
	j .LibroBB14_36
.LibroBB14_33: 
	rem a2, t1, a1
	mv a0, s2
	call _taskInline_gcd
	add t0, zero, a0
	j .LibroBB14_36
.LibroBB14_34: 
	add t0, zero, t0
	j .LibroBB14_37
.LibroBB14_35: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s2, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	andi t0, t0, 255
	xor t1, a1, t0
	add t0, zero, s1
	beqz t1, .LibroBB14_7
	add s1, zero, s1
	j .LibroBB14_8
.LibroBB14_36: 
	add t0, zero, t0
	j .LibroBB14_38
.LibroBB14_37: 
	add t0, zero, t0
	j .LibroBB14_19
.LibroBB14_38: 
	add t0, zero, t0
	j .LibroBB14_29
_taskNTT_NTT: 
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
	addi t0, zero, 0
	addi t2, zero, 0
	j .LibroBB15_1
.LibroBB15_1: 
	bge t2, a1, .LibroBB15_2
	j .LibroBB15_3
.LibroBB15_2: 
	addi a4, zero, 1
	j .LibroBB15_4
.LibroBB15_3: 
	bge t0, t2, .LibroBB15_8
	j .LibroBB15_5
.LibroBB15_4: 
	bge a4, a1, .LibroBB15_6
	j .LibroBB15_7
.LibroBB15_5: 
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a2, t1
	lw a4, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a2, t1
	lw s1, 0(t1)
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a2, t1
	sw s1, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a2, t1
	sw a4, 0(t1)
	j .LibroBB15_8
.LibroBB15_6: 
	addi t0, zero, -1
	xor t0, a3, t0
	bnez t0, .LibroBB15_18
	j .LibroBB15_9
.LibroBB15_7: 
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t1, t0, -1
	slli t0, a4, 1
	div t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	addi s2, zero, 1
	beqz t0, .LibroBB15_27
	addi s1, zero, 1
	add t0, zero, t1
	addi t2, zero, 3
	j .LibroBB15_10
.LibroBB15_8: 
	srai t1, a1, 1
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB15_11
.LibroBB15_9: 
	addi t0, zero, 1
	bge t0, a1, .LibroBB15_13
	add t1, zero, a1
	addi t0, zero, 1
	j .LibroBB15_12
.LibroBB15_10: 
	andi a5, t0, 1
	addi t1, zero, 0
	xor a5, a5, t1
	add t1, zero, s1
	beqz a5, .LibroBB15_14
	j .LibroBB15_15
.LibroBB15_11: 
	xor s1, t0, t1
	slt t0, s1, t1
	bnez t0, .LibroBB15_16
	add t0, zero, s1
	j .LibroBB15_17
.LibroBB15_12: 
	addi a0, t1, -1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a2, t1
	lw s1, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a2, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a2, t1
	sw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a2, t1
	sw s1, 0(t1)
	addi t0, t0, 1
	bge t0, a0, .LibroBB15_13
	add t1, zero, a0
	add t0, zero, t0
	j .LibroBB15_12
.LibroBB15_13: 
	j .LibroBB15_18
.LibroBB15_14: 
	srai a6, t0, 1
	addi t0, a0, 4
	lw s2, 0(t0)
	rem s1, t2, s2
	addi t0, zero, 0
	xor t0, t2, t0
	addi a5, zero, 0
	beqz t0, .LibroBB15_26
	addi t0, zero, 0
	add a5, zero, t2
	add s1, zero, s1
	j .LibroBB15_19
.LibroBB15_15: 
	addi t1, a0, 4
	lw s3, 0(t1)
	rem a7, s1, s3
	addi t1, zero, 0
	xor t1, t2, t1
	addi s1, zero, 0
	beqz t1, .LibroBB15_20
	addi a6, zero, 0
	add a5, zero, t2
	add s1, zero, a7
	j .LibroBB15_21
.LibroBB15_16: 
	srai t0, t1, 1
	add t1, zero, t0
	add t0, zero, s1
	j .LibroBB15_11
.LibroBB15_17: 
	addi t1, t2, 1
	add t0, zero, t0
	add t2, zero, t1
	j .LibroBB15_1
.LibroBB15_18: 
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
.LibroBB15_19: 
	andi a7, a5, 1
	addi t2, zero, 0
	xor a7, a7, t2
	add t2, zero, t0
	beqz a7, .LibroBB15_24
	j .LibroBB15_22
.LibroBB15_20: 
	add t1, zero, s1
	j .LibroBB15_14
.LibroBB15_21: 
	andi a7, a5, 1
	addi t1, zero, 0
	xor a7, a7, t1
	add t1, zero, a6
	beqz a7, .LibroBB15_25
	j .LibroBB15_23
.LibroBB15_22: 
	add t0, t0, s1
	rem t0, t0, s2
	add t2, zero, t0
	j .LibroBB15_24
.LibroBB15_23: 
	add t1, a6, s1
	rem t1, t1, s3
	add t1, zero, t1
	j .LibroBB15_25
.LibroBB15_24: 
	srai a7, a5, 1
	slli t0, s1, 1
	rem s1, t0, s2
	addi t0, zero, 0
	xor t0, a7, t0
	add a5, zero, t2
	beqz t0, .LibroBB15_26
	add t0, zero, t2
	add a5, zero, a7
	add s1, zero, s1
	j .LibroBB15_19
.LibroBB15_25: 
	srai s2, a5, 1
	slli s1, s1, 1
	rem a7, s1, s3
	addi s1, zero, 0
	xor a5, s2, s1
	add s1, zero, t1
	beqz a5, .LibroBB15_20
	add a6, zero, t1
	add a5, zero, s2
	add s1, zero, a7
	j .LibroBB15_21
.LibroBB15_26: 
	addi t0, zero, 0
	xor t0, a6, t0
	add s2, zero, t1
	beqz t0, .LibroBB15_27
	add s1, zero, t1
	add t0, zero, a6
	add t2, zero, a5
	j .LibroBB15_10
.LibroBB15_27: 
	slli s3, a4, 1
	addi a7, zero, 0
	j .LibroBB15_28
.LibroBB15_28: 
	bge a7, a1, .LibroBB15_30
	j .LibroBB15_29
.LibroBB15_29: 
	addi a6, zero, 1
	addi a5, zero, 0
	j .LibroBB15_31
.LibroBB15_30: 
	slli t0, a4, 1
	add a4, zero, t0
	j .LibroBB15_4
.LibroBB15_31: 
	bge a5, a4, .LibroBB15_32
	j .LibroBB15_33
.LibroBB15_32: 
	add t0, a7, s3
	add a7, zero, t0
	j .LibroBB15_28
.LibroBB15_33: 
	add t0, a7, a4
	add t0, t0, a5
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a2, t0
	lw t2, 0(t0)
	addi t0, a0, 4
	lw s6, 0(t0)
	rem s4, a6, s6
	addi t0, zero, 0
	xor t0, t2, t0
	addi t1, zero, 0
	beqz t0, .LibroBB15_35
	addi s1, zero, 0
	add t2, zero, t2
	add t1, zero, s4
	j .LibroBB15_34
.LibroBB15_34: 
	andi s4, t2, 1
	addi t0, zero, 0
	xor s4, s4, t0
	add t0, zero, s1
	beqz s4, .LibroBB15_39
	j .LibroBB15_36
.LibroBB15_35: 
	add t0, a7, a5
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a2, t0
	lw t0, 0(t0)
	sub t2, t0, t1
	addi t0, a0, 4
	lw t0, 0(t0)
	add t2, t2, t0
	addi t0, a0, 4
	lw t0, 0(t0)
	rem t2, t2, t0
	add t0, a4, a7
	add t0, t0, a5
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a2, t0
	sw t2, 0(t0)
	add t0, a7, a5
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a2, t0
	lw t0, 0(t0)
	add t1, t0, t1
	addi t0, a0, 4
	lw t0, 0(t0)
	rem t1, t1, t0
	add t0, a7, a5
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a2, t0
	sw t1, 0(t0)
	addi t0, a0, 4
	lw s4, 0(t0)
	rem a6, a6, s4
	addi t0, zero, 0
	xor t0, s2, t0
	addi t1, zero, 0
	beqz t0, .LibroBB15_38
	addi s1, zero, 0
	add t2, zero, s2
	add t1, zero, a6
	j .LibroBB15_37
.LibroBB15_36: 
	add t0, s1, t1
	rem t0, t0, s6
	add t0, zero, t0
	j .LibroBB15_39
.LibroBB15_37: 
	andi a6, t2, 1
	addi t0, zero, 0
	xor a6, a6, t0
	add t0, zero, s1
	beqz a6, .LibroBB15_41
	j .LibroBB15_40
.LibroBB15_38: 
	addi t0, a5, 1
	add a6, zero, t1
	add a5, zero, t0
	j .LibroBB15_31
.LibroBB15_39: 
	srai s5, t2, 1
	slli t1, t1, 1
	rem s4, t1, s6
	addi t1, zero, 0
	xor t2, s5, t1
	add t1, zero, t0
	beqz t2, .LibroBB15_35
	add s1, zero, t0
	add t2, zero, s5
	add t1, zero, s4
	j .LibroBB15_34
.LibroBB15_40: 
	add t0, s1, t1
	rem t0, t0, s4
	add t0, zero, t0
	j .LibroBB15_41
.LibroBB15_41: 
	srai s5, t2, 1
	slli t1, t1, 1
	rem a6, t1, s4
	addi t1, zero, 0
	xor t2, s5, t1
	add t1, zero, t0
	beqz t2, .LibroBB15_38
	add s1, zero, t0
	add t2, zero, s5
	add t1, zero, a6
	j .LibroBB15_37
_taskStress_taskStress: 
	addi sp, sp, -340
	sw ra, 336(sp)
	sw s0, 332(sp)
	sw s1, 328(sp)
	sw s2, 324(sp)
	sw s3, 320(sp)
	sw s4, 316(sp)
	sw s5, 312(sp)
	sw s6, 308(sp)
	sw s7, 304(sp)
	sw s8, 300(sp)
	sw s9, 296(sp)
	sw s10, 292(sp)
	sw s11, 288(sp)
	addi s0, sp, 340
	sw a0, -68(s0)
	addi t0, zero, 998
	sw t0, -224(s0)
	addi t0, zero, 3
	sw t0, -228(s0)
	addi t0, zero, 9
	sw t0, -232(s0)
	addi t0, zero, 6
	sw t0, -236(s0)
	addi t0, zero, 2
	sw t0, -240(s0)
	addi t0, zero, 4
	sw t0, -244(s0)
	addi t0, zero, 2
	sw t0, -248(s0)
	addi t0, zero, 1
	sw t0, -252(s0)
	addi t0, zero, 9
	sw t0, -260(s0)
	addi t0, zero, 4
	sw t0, -268(s0)
	addi t0, zero, 4
	sw t0, -272(s0)
	addi t0, zero, 6
	sw t0, -276(s0)
	addi t0, zero, 5
	sw t0, -280(s0)
	addi t0, zero, 9
	sw t0, -284(s0)
	addi t0, zero, 7
	sw t0, -288(s0)
	addi t0, zero, 8
	sw t0, -292(s0)
	addi t0, zero, 6
	sw t0, -296(s0)
	addi t0, zero, 2
	sw t0, -300(s0)
	addi t0, zero, 4
	sw t0, -304(s0)
	addi t0, zero, 7
	sw t0, -308(s0)
	addi t0, zero, 1
	sw t0, -312(s0)
	addi t0, zero, 4
	sw t0, -320(s0)
	addi t0, zero, 8
	sw t0, -324(s0)
	addi t0, zero, 6
	sw t0, -328(s0)
	addi t0, zero, 6
	sw t0, -336(s0)
	addi t5, zero, 1
	addi t6, zero, 3
	addi s11, zero, 9
	addi s9, zero, 4
	addi s7, zero, 4
	addi s2, zero, 1
	addi s8, zero, 4
	addi s10, zero, 2
	addi s5, zero, 8
	addi s6, zero, 6
	addi t3, zero, 5
	addi a7, zero, 3
	addi a6, zero, 3
	addi a5, zero, 1
	addi t4, zero, 8
	addi a4, zero, 4
	addi s3, zero, 1
	addi a3, zero, 5
	addi a2, zero, 8
	addi a1, zero, 7
	addi s4, zero, 5
	addi a0, zero, 5
	addi s1, zero, 2
	addi t2, zero, 7
	addi t1, zero, 7
	addi t0, zero, 0
	j .LibroBB16_1
.LibroBB16_1: 
	sw t0, -76(s0)
	sw t1, -56(s0)
	sw t2, -84(s0)
	sw s1, -264(s0)
	sw a0, -256(s0)
	sw s4, -128(s0)
	mv s4, a1
	sw a2, -340(s0)
	sw a3, -96(s0)
	sw s3, -124(s0)
	mv s3, a4
	sw t4, -92(s0)
	mv t4, a5
	sw a6, -64(s0)
	sw a7, -332(s0)
	sw t3, -156(s0)
	mv t3, s6
	mv s6, s5
	mv s5, s8
	mv s8, s2
	sw s7, -168(s0)
	mv s7, s9
	sw s11, -116(s0)
	mv s11, t6
	mv s9, t5
	lw s2, -336(s0)
	lw a7, -328(s0)
	lw t0, -324(s0)
	sw t0, -104(s0)
	lw a6, -320(s0)
	lw t0, -312(s0)
	sw t0, -316(s0)
	lw a5, -308(s0)
	lw t0, -304(s0)
	sw t0, -100(s0)
	lw t0, -300(s0)
	sw t0, -144(s0)
	lw a4, -296(s0)
	lw t0, -292(s0)
	sw t0, -88(s0)
	lw t0, -288(s0)
	sw t0, -212(s0)
	lw t0, -284(s0)
	sw t0, -216(s0)
	lw t0, -280(s0)
	sw t0, -196(s0)
	lw a3, -276(s0)
	lw a2, -272(s0)
	lw a1, -268(s0)
	lw a0, -260(s0)
	lw t0, -252(s0)
	sw t0, -80(s0)
	lw t0, -248(s0)
	sw t0, -132(s0)
	lw t0, -244(s0)
	sw t0, -60(s0)
	lw s1, -240(s0)
	lw t2, -236(s0)
	lw t0, -232(s0)
	sw t0, -220(s0)
	lw t1, -228(s0)
	lw t0, -224(s0)
	lw t5, -76(s0)
	rem t5, t5, t0
	sw t5, -72(s0)
	addi t6, zero, 100
	lw t5, -72(s0)
	bge t5, t6, .LibroBB16_2
	j .LibroBB16_3
.LibroBB16_2: 
	lw s2, -68(s0)
	addi t5, s2, 0
	addi s2, zero, -1
	sw s2, 0(t5)
	lw s2, -68(s0)
	addi s2, s2, 0
	sw t0, 0(s2)
	add s2, zero, t0
	j .LibroBB16_4
.LibroBB16_3: 
	lw t5, -84(s0)
	addi t5, t5, 6
	sw t5, -108(s0)
	lw t5, -256(s0)
	addi t5, t5, 4
	sw t5, -112(s0)
	lw t5, -128(s0)
	addi t5, t5, 9
	sw t5, -120(s0)
	lw t5, -96(s0)
	addi t5, t5, 1
	sw t5, -136(s0)
	lw t5, -124(s0)
	addi t5, t5, 4
	sw t5, -140(s0)
	lw t5, -92(s0)
	addi t5, t5, 6
	sw t5, -148(s0)
	lw t5, -156(s0)
	addi t5, t5, 6
	sw t5, -152(s0)
	addi s10, s10, 2
	sw s10, -160(s0)
	lw s10, -168(s0)
	addi s10, s10, 1
	sw s10, -164(s0)
	lw s10, -116(s0)
	addi s10, s10, 1
	sw s10, -172(s0)
	addi s10, s11, 4
	sw s10, -176(s0)
	addi s9, s9, 9
	sw s9, -180(s0)
	addi s2, s2, 8
	sw s2, -184(s0)
	addi a7, a7, 9
	sw a7, -188(s0)
	lw a7, -104(s0)
	addi a7, a7, 8
	sw a7, -192(s0)
	addi a6, a6, 6
	sw a6, -200(s0)
	lw a6, -100(s0)
	addi a6, a6, 6
	sw a6, -204(s0)
	addi a4, a4, 7
	sw a4, -208(s0)
	lw a4, -88(s0)
	addi a4, a4, 5
	lw a6, -212(s0)
	addi a6, a6, 1
	lw a7, -216(s0)
	addi a7, a7, 7
	addi a1, a1, 9
	lw s2, -132(s0)
	addi s2, s2, 9
	lw s9, -60(s0)
	addi s9, s9, 9
	addi t2, t2, 9
	lw s10, -220(s0)
	addi s10, s10, 2
	srai s11, t0, 1
	xori t0, t0, 1
	addi t0, t0, 10
	add t0, zero, t0
	sw t0, -224(s0)
	add t0, zero, s11
	sw t0, -228(s0)
	add t0, zero, t1
	sw t0, -232(s0)
	add t0, zero, s10
	sw t0, -236(s0)
	add t0, zero, t2
	sw t0, -240(s0)
	add t0, zero, s1
	sw t0, -244(s0)
	add t0, zero, s9
	sw t0, -248(s0)
	add t0, zero, s2
	sw t0, -252(s0)
	lw t0, -80(s0)
	add t0, zero, t0
	sw t0, -260(s0)
	add t0, zero, a0
	sw t0, -268(s0)
	add t0, zero, a1
	sw t0, -272(s0)
	add t0, zero, a2
	sw t0, -276(s0)
	add t0, zero, a3
	sw t0, -280(s0)
	lw t0, -196(s0)
	add t0, zero, t0
	sw t0, -284(s0)
	add t0, zero, a7
	sw t0, -288(s0)
	add t0, zero, a6
	sw t0, -292(s0)
	add t0, zero, a4
	sw t0, -296(s0)
	lw t0, -208(s0)
	add t0, zero, t0
	sw t0, -300(s0)
	lw t0, -144(s0)
	add t0, zero, t0
	sw t0, -304(s0)
	lw t0, -204(s0)
	add t0, zero, t0
	sw t0, -308(s0)
	add t0, zero, a5
	sw t0, -312(s0)
	lw t0, -316(s0)
	add t0, zero, t0
	sw t0, -320(s0)
	lw t0, -200(s0)
	add t0, zero, t0
	sw t0, -324(s0)
	lw t0, -192(s0)
	add t0, zero, t0
	sw t0, -328(s0)
	lw t0, -188(s0)
	add t0, zero, t0
	sw t0, -336(s0)
	lw t0, -184(s0)
	add t5, zero, t0
	lw t0, -180(s0)
	add t6, zero, t0
	lw t0, -176(s0)
	add s11, zero, t0
	lw t0, -172(s0)
	add s9, zero, t0
	add s7, zero, s7
	lw t0, -164(s0)
	add s2, zero, t0
	add s8, zero, s8
	add s10, zero, s5
	lw t0, -160(s0)
	add s5, zero, t0
	add s6, zero, s6
	add t3, zero, t3
	lw t0, -152(s0)
	add a7, zero, t0
	lw t0, -332(s0)
	add a6, zero, t0
	lw t0, -64(s0)
	add a5, zero, t0
	add t4, zero, t4
	lw t0, -148(s0)
	add a4, zero, t0
	add s3, zero, s3
	lw t0, -140(s0)
	add a3, zero, t0
	lw t0, -136(s0)
	add a2, zero, t0
	lw t0, -340(s0)
	add a1, zero, t0
	add s4, zero, s4
	lw t0, -120(s0)
	add a0, zero, t0
	lw t0, -112(s0)
	add s1, zero, t0
	lw t0, -264(s0)
	add t2, zero, t0
	lw t0, -108(s0)
	add t1, zero, t0
	lw t0, -56(s0)
	add t0, zero, t0
	j .LibroBB16_1
.LibroBB16_4: 
	lw t0, -84(s0)
	xor t5, t0, s2
	addi t0, zero, 0
	bnez t5, .LibroBB16_24
	j .LibroBB16_5
.LibroBB16_5: 
	lw t5, -88(s0)
	lw t0, -92(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB16_6
	j .LibroBB16_7
.LibroBB16_6: 
	beqz t0, .LibroBB16_8
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_7: 
	slt t5, s9, s10
	addi t0, zero, 0
	bnez t5, .LibroBB16_6
	j .LibroBB16_9
.LibroBB16_8: 
	lw t0, -100(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_12
	j .LibroBB16_10
.LibroBB16_9: 
	slt t5, s8, s1
	addi t0, zero, 0
	bnez t5, .LibroBB16_6
	j .LibroBB16_11
.LibroBB16_10: 
	lw t0, -104(s0)
	slt t0, t0, t3
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_12
.LibroBB16_11: 
	lw t0, -332(s0)
	slt t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_6
	j .LibroBB16_13
.LibroBB16_12: 
	beqz t0, .LibroBB16_14
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_13: 
	xor t5, a5, t3
	addi t0, zero, 0
	bnez t5, .LibroBB16_6
	j .LibroBB16_15
.LibroBB16_14: 
	addi t0, zero, 0
	lw t6, -124(s0)
	lw t5, -132(s0)
	bge t6, t5, .LibroBB16_18
	j .LibroBB16_16
.LibroBB16_15: 
	slt t5, a1, s7
	addi t0, zero, 0
	bnez t5, .LibroBB16_6
	j .LibroBB16_17
.LibroBB16_16: 
	lw t5, -144(s0)
	lw t0, -340(s0)
	slt t0, t0, t5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_18
.LibroBB16_17: 
	slt t0, a2, s6
	add t0, zero, t0
	j .LibroBB16_6
.LibroBB16_18: 
	beqz t0, .LibroBB16_19
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_19: 
	slt t0, s11, a7
	bnez t0, .LibroBB16_20
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_20: 
	xor t0, a0, t2
	bnez t0, .LibroBB16_21
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_21: 
	slt t0, a3, a2
	bnez t0, .LibroBB16_23
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_22: 
	add t0, zero, t0
	j .LibroBB16_24
.LibroBB16_23: 
	lw t0, -76(s0)
	bge t0, a3, .LibroBB16_25
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_24: 
	beqz t0, .LibroBB16_27
	j .LibroBB16_26
.LibroBB16_25: 
	lw t5, -256(s0)
	lw t0, -264(s0)
	bge t5, t0, .LibroBB16_28
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_26: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_29
.LibroBB16_27: 
	lw t0, -68(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	addi t0, zero, -1
	xor t0, t1, t0
	bnez t0, .LibroBB16_33
	j .LibroBB16_30
.LibroBB16_28: 
	xor t0, t4, a6
	beqz t0, .LibroBB16_31
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_29: 
	lw t5, -88(s0)
	lw t0, -92(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB16_35
	j .LibroBB16_32
.LibroBB16_30: 
	la a0, .libro.str
	call println
	j .LibroBB16_33
.LibroBB16_31: 
	bge s7, a2, .LibroBB16_34
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_32: 
	slt t5, s9, s10
	addi t0, zero, 0
	bnez t5, .LibroBB16_35
	j .LibroBB16_36
.LibroBB16_33: 
	lw s0, 332(sp)
	lw s1, 328(sp)
	lw s2, 324(sp)
	lw s3, 320(sp)
	lw s4, 316(sp)
	lw s5, 312(sp)
	lw s6, 308(sp)
	lw s7, 304(sp)
	lw s8, 300(sp)
	lw s9, 296(sp)
	lw s10, 292(sp)
	lw s11, 288(sp)
	lw ra, 336(sp)
	addi sp, sp, 340
	ret
.LibroBB16_34: 
	addi t0, zero, 0
	bge t1, s11, .LibroBB16_40
	j .LibroBB16_37
.LibroBB16_35: 
	beqz t0, .LibroBB16_38
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_36: 
	slt t5, s8, s1
	addi t0, zero, 0
	bnez t5, .LibroBB16_35
	j .LibroBB16_39
.LibroBB16_37: 
	xor t0, a2, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_40
.LibroBB16_38: 
	lw t0, -100(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_44
	j .LibroBB16_41
.LibroBB16_39: 
	lw t0, -332(s0)
	slt t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_35
	j .LibroBB16_42
.LibroBB16_40: 
	beqz t0, .LibroBB16_43
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_41: 
	lw t0, -104(s0)
	slt t0, t0, t3
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_44
.LibroBB16_42: 
	xor t5, a5, t3
	addi t0, zero, 0
	bnez t5, .LibroBB16_35
	j .LibroBB16_45
.LibroBB16_43: 
	slt t5, a4, a0
	addi t0, zero, 0
	bnez t5, .LibroBB16_46
	j .LibroBB16_47
.LibroBB16_44: 
	beqz t0, .LibroBB16_48
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_45: 
	slt t5, a1, s7
	addi t0, zero, 0
	bnez t5, .LibroBB16_35
	j .LibroBB16_49
.LibroBB16_46: 
	beqz t0, .LibroBB16_50
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_47: 
	addi t0, zero, 0
	lw t5, -60(s0)
	bge a4, t5, .LibroBB16_46
	j .LibroBB16_51
.LibroBB16_48: 
	addi t0, zero, 0
	lw t6, -124(s0)
	lw t5, -132(s0)
	bge t6, t5, .LibroBB16_52
	j .LibroBB16_53
.LibroBB16_49: 
	slt t0, a2, s6
	add t0, zero, t0
	j .LibroBB16_35
.LibroBB16_50: 
	lw t0, -104(s0)
	xor t0, s8, t0
	bnez t0, .LibroBB16_54
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_51: 
	lw t0, -64(s0)
	xor t5, t0, s9
	addi t0, zero, 0
	beqz t5, .LibroBB16_46
	j .LibroBB16_55
.LibroBB16_52: 
	beqz t0, .LibroBB16_56
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_53: 
	lw t5, -144(s0)
	lw t0, -340(s0)
	slt t0, t0, t5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_52
.LibroBB16_54: 
	addi t0, zero, 0
	lw t5, -340(s0)
	bge t5, s6, .LibroBB16_63
	j .LibroBB16_57
.LibroBB16_55: 
	slt t5, s5, a6
	addi t0, zero, 0
	bnez t5, .LibroBB16_46
	j .LibroBB16_58
.LibroBB16_56: 
	slt t0, s11, a7
	bnez t0, .LibroBB16_59
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_57: 
	lw t5, -144(s0)
	lw t0, -116(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_63
	j .LibroBB16_60
.LibroBB16_58: 
	xor t5, s1, a2
	addi t0, zero, 0
	beqz t5, .LibroBB16_46
	j .LibroBB16_61
.LibroBB16_59: 
	xor t0, a0, t2
	bnez t0, .LibroBB16_62
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_60: 
	lw t0, -100(s0)
	slt t0, a1, t0
	add t0, zero, t0
	j .LibroBB16_63
.LibroBB16_61: 
	lw t0, -80(s0)
	xor t5, t0, s11
	addi t0, zero, 0
	bnez t5, .LibroBB16_46
	j .LibroBB16_64
.LibroBB16_62: 
	slt t0, a3, a2
	bnez t0, .LibroBB16_65
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_63: 
	beqz t0, .LibroBB16_66
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_64: 
	xor t5, s4, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_46
	j .LibroBB16_67
.LibroBB16_65: 
	lw t0, -76(s0)
	bge t0, a3, .LibroBB16_68
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_66: 
	addi t0, zero, 0
	lw t5, -96(s0)
	bge t5, s3, .LibroBB16_72
	j .LibroBB16_69
.LibroBB16_67: 
	slt t5, s11, a7
	addi t0, zero, 0
	bnez t5, .LibroBB16_46
	j .LibroBB16_70
.LibroBB16_68: 
	lw t5, -256(s0)
	lw t0, -264(s0)
	bge t5, t0, .LibroBB16_71
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_69: 
	xor t0, s10, s4
	snez t0, t0
	add t0, zero, t0
	j .LibroBB16_72
.LibroBB16_70: 
	lw t0, -196(s0)
	xor t5, s3, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_46
	j .LibroBB16_73
.LibroBB16_71: 
	xor t0, t4, a6
	beqz t0, .LibroBB16_75
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_72: 
	beqz t0, .LibroBB16_76
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_73: 
	slt t5, t3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_46
	j .LibroBB16_77
.LibroBB16_74: 
	beqz t0, .LibroBB16_78
	j .LibroBB16_79
.LibroBB16_75: 
	bge s7, a2, .LibroBB16_80
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_76: 
	addi t0, zero, 1
	j .LibroBB16_22
.LibroBB16_77: 
	addi t0, zero, 0
	bge s5, t4, .LibroBB16_46
	j .LibroBB16_81
.LibroBB16_78: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_4
.LibroBB16_79: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_82
.LibroBB16_80: 
	addi t0, zero, 0
	bge t1, s11, .LibroBB16_85
	j .LibroBB16_83
.LibroBB16_81: 
	xor t0, a3, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_46
.LibroBB16_82: 
	lw t5, -88(s0)
	lw t0, -92(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB16_97
	j .LibroBB16_84
.LibroBB16_83: 
	xor t0, a2, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_85
.LibroBB16_84: 
	slt t5, s9, s10
	addi t0, zero, 0
	bnez t5, .LibroBB16_97
	j .LibroBB16_86
.LibroBB16_85: 
	beqz t0, .LibroBB16_87
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_86: 
	slt t5, s8, s1
	addi t0, zero, 0
	bnez t5, .LibroBB16_97
	j .LibroBB16_88
.LibroBB16_87: 
	slt t5, a4, a0
	addi t0, zero, 0
	bnez t5, .LibroBB16_96
	j .LibroBB16_89
.LibroBB16_88: 
	lw t0, -332(s0)
	slt t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_97
	j .LibroBB16_90
.LibroBB16_89: 
	addi t0, zero, 0
	lw t5, -60(s0)
	bge a4, t5, .LibroBB16_96
	j .LibroBB16_91
.LibroBB16_90: 
	xor t5, a5, t3
	addi t0, zero, 0
	bnez t5, .LibroBB16_97
	j .LibroBB16_92
.LibroBB16_91: 
	lw t0, -64(s0)
	xor t5, t0, s9
	addi t0, zero, 0
	beqz t5, .LibroBB16_96
	j .LibroBB16_93
.LibroBB16_92: 
	slt t5, a1, s7
	addi t0, zero, 0
	bnez t5, .LibroBB16_97
	j .LibroBB16_94
.LibroBB16_93: 
	slt t5, s5, a6
	addi t0, zero, 0
	bnez t5, .LibroBB16_96
	j .LibroBB16_95
.LibroBB16_94: 
	slt t0, a2, s6
	add t0, zero, t0
	j .LibroBB16_97
.LibroBB16_95: 
	xor t5, s1, a2
	addi t0, zero, 0
	beqz t5, .LibroBB16_96
	j .LibroBB16_98
.LibroBB16_96: 
	beqz t0, .LibroBB16_99
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_97: 
	beqz t0, .LibroBB16_100
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_98: 
	lw t0, -80(s0)
	xor t5, t0, s11
	addi t0, zero, 0
	bnez t5, .LibroBB16_96
	j .LibroBB16_101
.LibroBB16_99: 
	lw t0, -104(s0)
	xor t0, s8, t0
	bnez t0, .LibroBB16_102
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_100: 
	lw t0, -100(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_103
	j .LibroBB16_104
.LibroBB16_101: 
	xor t5, s4, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_96
	j .LibroBB16_105
.LibroBB16_102: 
	addi t0, zero, 0
	lw t5, -340(s0)
	bge t5, s6, .LibroBB16_110
	j .LibroBB16_106
.LibroBB16_103: 
	beqz t0, .LibroBB16_107
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_104: 
	lw t0, -104(s0)
	slt t0, t0, t3
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_103
.LibroBB16_105: 
	slt t5, s11, a7
	addi t0, zero, 0
	bnez t5, .LibroBB16_96
	j .LibroBB16_108
.LibroBB16_106: 
	lw t5, -144(s0)
	lw t0, -116(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_110
	j .LibroBB16_109
.LibroBB16_107: 
	addi t0, zero, 0
	lw t6, -124(s0)
	lw t5, -132(s0)
	bge t6, t5, .LibroBB16_114
	j .LibroBB16_111
.LibroBB16_108: 
	lw t0, -196(s0)
	xor t5, s3, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_96
	j .LibroBB16_112
.LibroBB16_109: 
	lw t0, -100(s0)
	slt t0, a1, t0
	add t0, zero, t0
	j .LibroBB16_110
.LibroBB16_110: 
	beqz t0, .LibroBB16_113
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_111: 
	lw t5, -144(s0)
	lw t0, -340(s0)
	slt t0, t0, t5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_114
.LibroBB16_112: 
	slt t5, t3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_96
	j .LibroBB16_115
.LibroBB16_113: 
	addi t0, zero, 0
	lw t5, -96(s0)
	bge t5, s3, .LibroBB16_116
	j .LibroBB16_117
.LibroBB16_114: 
	beqz t0, .LibroBB16_118
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_115: 
	addi t0, zero, 0
	bge s5, t4, .LibroBB16_96
	j .LibroBB16_119
.LibroBB16_116: 
	beqz t0, .LibroBB16_120
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_117: 
	xor t0, s10, s4
	snez t0, t0
	add t0, zero, t0
	j .LibroBB16_116
.LibroBB16_118: 
	slt t0, s11, a7
	bnez t0, .LibroBB16_121
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_119: 
	xor t0, a3, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_96
.LibroBB16_120: 
	addi t0, zero, 1
	j .LibroBB16_74
.LibroBB16_121: 
	xor t0, a0, t2
	bnez t0, .LibroBB16_122
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_122: 
	slt t0, a3, a2
	bnez t0, .LibroBB16_123
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_123: 
	lw t0, -76(s0)
	bge t0, a3, .LibroBB16_124
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_124: 
	lw t5, -256(s0)
	lw t0, -264(s0)
	bge t5, t0, .LibroBB16_125
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_125: 
	xor t0, t4, a6
	beqz t0, .LibroBB16_126
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_126: 
	bge s7, a2, .LibroBB16_127
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_127: 
	addi t0, zero, 0
	bge t1, s11, .LibroBB16_129
	j .LibroBB16_128
.LibroBB16_128: 
	xor t0, a2, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_129
.LibroBB16_129: 
	beqz t0, .LibroBB16_130
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_130: 
	slt t5, a4, a0
	addi t0, zero, 0
	bnez t5, .LibroBB16_137
	j .LibroBB16_131
.LibroBB16_131: 
	addi t0, zero, 0
	lw t5, -60(s0)
	bge a4, t5, .LibroBB16_137
	j .LibroBB16_132
.LibroBB16_132: 
	lw t0, -64(s0)
	xor t5, t0, s9
	addi t0, zero, 0
	beqz t5, .LibroBB16_137
	j .LibroBB16_133
.LibroBB16_133: 
	slt t5, s5, a6
	addi t0, zero, 0
	bnez t5, .LibroBB16_137
	j .LibroBB16_134
.LibroBB16_134: 
	xor t5, s1, a2
	addi t0, zero, 0
	beqz t5, .LibroBB16_137
	j .LibroBB16_135
.LibroBB16_135: 
	lw t0, -80(s0)
	xor t5, t0, s11
	addi t0, zero, 0
	bnez t5, .LibroBB16_137
	j .LibroBB16_136
.LibroBB16_136: 
	xor t5, s4, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_137
	j .LibroBB16_138
.LibroBB16_137: 
	beqz t0, .LibroBB16_139
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_138: 
	slt t5, s11, a7
	addi t0, zero, 0
	bnez t5, .LibroBB16_137
	j .LibroBB16_140
.LibroBB16_139: 
	lw t0, -104(s0)
	xor t0, s8, t0
	bnez t0, .LibroBB16_141
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_140: 
	lw t0, -196(s0)
	xor t5, s3, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_137
	j .LibroBB16_142
.LibroBB16_141: 
	addi t0, zero, 0
	lw t5, -340(s0)
	bge t5, s6, .LibroBB16_144
	j .LibroBB16_143
.LibroBB16_142: 
	slt t5, t3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_137
	j .LibroBB16_145
.LibroBB16_143: 
	lw t5, -144(s0)
	lw t0, -116(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_144
	j .LibroBB16_146
.LibroBB16_144: 
	beqz t0, .LibroBB16_147
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_145: 
	addi t0, zero, 0
	bge s5, t4, .LibroBB16_137
	j .LibroBB16_148
.LibroBB16_146: 
	lw t0, -100(s0)
	slt t0, a1, t0
	add t0, zero, t0
	j .LibroBB16_144
.LibroBB16_147: 
	addi t0, zero, 0
	lw t5, -96(s0)
	bge t5, s3, .LibroBB16_150
	j .LibroBB16_149
.LibroBB16_148: 
	xor t0, a3, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_137
.LibroBB16_149: 
	xor t0, s10, s4
	snez t0, t0
	add t0, zero, t0
	j .LibroBB16_150
.LibroBB16_150: 
	beqz t0, .LibroBB16_151
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_151: 
	addi t0, zero, 1
	j .LibroBB16_152
.LibroBB16_152: 
	beqz t0, .LibroBB16_154
	j .LibroBB16_153
.LibroBB16_153: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_155
.LibroBB16_154: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_29
.LibroBB16_155: 
	lw t5, -88(s0)
	lw t0, -92(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB16_162
	j .LibroBB16_156
.LibroBB16_156: 
	slt t5, s9, s10
	addi t0, zero, 0
	bnez t5, .LibroBB16_162
	j .LibroBB16_157
.LibroBB16_157: 
	slt t5, s8, s1
	addi t0, zero, 0
	bnez t5, .LibroBB16_162
	j .LibroBB16_158
.LibroBB16_158: 
	lw t0, -332(s0)
	slt t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_162
	j .LibroBB16_159
.LibroBB16_159: 
	xor t5, a5, t3
	addi t0, zero, 0
	bnez t5, .LibroBB16_162
	j .LibroBB16_160
.LibroBB16_160: 
	slt t5, a1, s7
	addi t0, zero, 0
	bnez t5, .LibroBB16_162
	j .LibroBB16_161
.LibroBB16_161: 
	slt t0, a2, s6
	add t0, zero, t0
	j .LibroBB16_162
.LibroBB16_162: 
	beqz t0, .LibroBB16_163
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_163: 
	lw t0, -100(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_164
	j .LibroBB16_165
.LibroBB16_164: 
	beqz t0, .LibroBB16_166
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_165: 
	lw t0, -104(s0)
	slt t0, t0, t3
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_164
.LibroBB16_166: 
	addi t0, zero, 0
	lw t6, -124(s0)
	lw t5, -132(s0)
	bge t6, t5, .LibroBB16_168
	j .LibroBB16_167
.LibroBB16_167: 
	lw t5, -144(s0)
	lw t0, -340(s0)
	slt t0, t0, t5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_168
.LibroBB16_168: 
	beqz t0, .LibroBB16_169
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_169: 
	slt t0, s11, a7
	bnez t0, .LibroBB16_170
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_170: 
	xor t0, a0, t2
	bnez t0, .LibroBB16_171
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_171: 
	slt t0, a3, a2
	bnez t0, .LibroBB16_172
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_172: 
	lw t0, -76(s0)
	bge t0, a3, .LibroBB16_173
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_173: 
	lw t5, -256(s0)
	lw t0, -264(s0)
	bge t5, t0, .LibroBB16_174
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_174: 
	xor t0, t4, a6
	beqz t0, .LibroBB16_175
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_175: 
	bge s7, a2, .LibroBB16_176
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_176: 
	addi t0, zero, 0
	bge t1, s11, .LibroBB16_177
	j .LibroBB16_178
.LibroBB16_177: 
	beqz t0, .LibroBB16_179
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_178: 
	xor t0, a2, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_177
.LibroBB16_179: 
	slt t5, a4, a0
	addi t0, zero, 0
	bnez t5, .LibroBB16_182
	j .LibroBB16_181
.LibroBB16_180: 
	beqz t0, .LibroBB16_183
	j .LibroBB16_184
.LibroBB16_181: 
	addi t0, zero, 0
	lw t5, -60(s0)
	bge a4, t5, .LibroBB16_182
	j .LibroBB16_185
.LibroBB16_182: 
	beqz t0, .LibroBB16_186
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_183: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_82
.LibroBB16_184: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_187
.LibroBB16_185: 
	lw t0, -64(s0)
	xor t5, t0, s9
	addi t0, zero, 0
	beqz t5, .LibroBB16_182
	j .LibroBB16_188
.LibroBB16_186: 
	lw t0, -104(s0)
	xor t0, s8, t0
	bnez t0, .LibroBB16_189
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_187: 
	lw t5, -88(s0)
	lw t0, -92(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB16_191
	j .LibroBB16_190
.LibroBB16_188: 
	slt t5, s5, a6
	addi t0, zero, 0
	bnez t5, .LibroBB16_182
	j .LibroBB16_192
.LibroBB16_189: 
	addi t0, zero, 0
	lw t5, -340(s0)
	bge t5, s6, .LibroBB16_201
	j .LibroBB16_193
.LibroBB16_190: 
	slt t5, s9, s10
	addi t0, zero, 0
	bnez t5, .LibroBB16_191
	j .LibroBB16_194
.LibroBB16_191: 
	beqz t0, .LibroBB16_195
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_192: 
	xor t5, s1, a2
	addi t0, zero, 0
	beqz t5, .LibroBB16_182
	j .LibroBB16_196
.LibroBB16_193: 
	lw t5, -144(s0)
	lw t0, -116(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_201
	j .LibroBB16_197
.LibroBB16_194: 
	slt t5, s8, s1
	addi t0, zero, 0
	bnez t5, .LibroBB16_191
	j .LibroBB16_198
.LibroBB16_195: 
	lw t0, -100(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_203
	j .LibroBB16_199
.LibroBB16_196: 
	lw t0, -80(s0)
	xor t5, t0, s11
	addi t0, zero, 0
	bnez t5, .LibroBB16_182
	j .LibroBB16_200
.LibroBB16_197: 
	lw t0, -100(s0)
	slt t0, a1, t0
	add t0, zero, t0
	j .LibroBB16_201
.LibroBB16_198: 
	lw t0, -332(s0)
	slt t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_191
	j .LibroBB16_202
.LibroBB16_199: 
	lw t0, -104(s0)
	slt t0, t0, t3
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_203
.LibroBB16_200: 
	xor t5, s4, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_182
	j .LibroBB16_204
.LibroBB16_201: 
	beqz t0, .LibroBB16_205
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_202: 
	xor t5, a5, t3
	addi t0, zero, 0
	bnez t5, .LibroBB16_191
	j .LibroBB16_206
.LibroBB16_203: 
	beqz t0, .LibroBB16_207
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_204: 
	slt t5, s11, a7
	addi t0, zero, 0
	bnez t5, .LibroBB16_182
	j .LibroBB16_208
.LibroBB16_205: 
	addi t0, zero, 0
	lw t5, -96(s0)
	bge t5, s3, .LibroBB16_210
	j .LibroBB16_209
.LibroBB16_206: 
	slt t5, a1, s7
	addi t0, zero, 0
	bnez t5, .LibroBB16_191
	j .LibroBB16_211
.LibroBB16_207: 
	addi t0, zero, 0
	lw t6, -124(s0)
	lw t5, -132(s0)
	bge t6, t5, .LibroBB16_212
	j .LibroBB16_213
.LibroBB16_208: 
	lw t0, -196(s0)
	xor t5, s3, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_182
	j .LibroBB16_214
.LibroBB16_209: 
	xor t0, s10, s4
	snez t0, t0
	add t0, zero, t0
	j .LibroBB16_210
.LibroBB16_210: 
	beqz t0, .LibroBB16_215
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_211: 
	slt t0, a2, s6
	add t0, zero, t0
	j .LibroBB16_191
.LibroBB16_212: 
	beqz t0, .LibroBB16_217
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_213: 
	lw t5, -144(s0)
	lw t0, -340(s0)
	slt t0, t0, t5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_212
.LibroBB16_214: 
	slt t5, t3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_182
	j .LibroBB16_218
.LibroBB16_215: 
	addi t0, zero, 1
	j .LibroBB16_180
.LibroBB16_216: 
	beqz t0, .LibroBB16_219
	j .LibroBB16_220
.LibroBB16_217: 
	slt t0, s11, a7
	bnez t0, .LibroBB16_221
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_218: 
	addi t0, zero, 0
	bge s5, t4, .LibroBB16_182
	j .LibroBB16_222
.LibroBB16_219: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_155
.LibroBB16_220: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_223
.LibroBB16_221: 
	xor t0, a0, t2
	bnez t0, .LibroBB16_224
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_222: 
	xor t0, a3, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_182
.LibroBB16_223: 
	lw t5, -88(s0)
	lw t0, -92(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB16_226
	j .LibroBB16_225
.LibroBB16_224: 
	slt t0, a3, a2
	bnez t0, .LibroBB16_227
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_225: 
	slt t5, s9, s10
	addi t0, zero, 0
	bnez t5, .LibroBB16_226
	j .LibroBB16_228
.LibroBB16_226: 
	beqz t0, .LibroBB16_229
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_227: 
	lw t0, -76(s0)
	bge t0, a3, .LibroBB16_230
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_228: 
	slt t5, s8, s1
	addi t0, zero, 0
	bnez t5, .LibroBB16_226
	j .LibroBB16_231
.LibroBB16_229: 
	lw t0, -100(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_235
	j .LibroBB16_232
.LibroBB16_230: 
	lw t5, -256(s0)
	lw t0, -264(s0)
	bge t5, t0, .LibroBB16_233
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_231: 
	lw t0, -332(s0)
	slt t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_226
	j .LibroBB16_234
.LibroBB16_232: 
	lw t0, -104(s0)
	slt t0, t0, t3
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_235
.LibroBB16_233: 
	xor t0, t4, a6
	beqz t0, .LibroBB16_236
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_234: 
	xor t5, a5, t3
	addi t0, zero, 0
	bnez t5, .LibroBB16_226
	j .LibroBB16_237
.LibroBB16_235: 
	beqz t0, .LibroBB16_238
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_236: 
	bge s7, a2, .LibroBB16_239
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_237: 
	slt t5, a1, s7
	addi t0, zero, 0
	bnez t5, .LibroBB16_226
	j .LibroBB16_240
.LibroBB16_238: 
	addi t0, zero, 0
	lw t6, -124(s0)
	lw t5, -132(s0)
	bge t6, t5, .LibroBB16_244
	j .LibroBB16_241
.LibroBB16_239: 
	addi t0, zero, 0
	bge t1, s11, .LibroBB16_243
	j .LibroBB16_242
.LibroBB16_240: 
	slt t0, a2, s6
	add t0, zero, t0
	j .LibroBB16_226
.LibroBB16_241: 
	lw t5, -144(s0)
	lw t0, -340(s0)
	slt t0, t0, t5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_244
.LibroBB16_242: 
	xor t0, a2, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_243
.LibroBB16_243: 
	beqz t0, .LibroBB16_245
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_244: 
	beqz t0, .LibroBB16_246
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_245: 
	slt t5, a4, a0
	addi t0, zero, 0
	bnez t5, .LibroBB16_254
	j .LibroBB16_247
.LibroBB16_246: 
	slt t0, s11, a7
	bnez t0, .LibroBB16_248
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_247: 
	addi t0, zero, 0
	lw t5, -60(s0)
	bge a4, t5, .LibroBB16_254
	j .LibroBB16_250
.LibroBB16_248: 
	xor t0, a0, t2
	bnez t0, .LibroBB16_251
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_249: 
	beqz t0, .LibroBB16_253
	j .LibroBB16_252
.LibroBB16_250: 
	lw t0, -64(s0)
	xor t5, t0, s9
	addi t0, zero, 0
	beqz t5, .LibroBB16_254
	j .LibroBB16_255
.LibroBB16_251: 
	slt t0, a3, a2
	bnez t0, .LibroBB16_256
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_252: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_257
.LibroBB16_253: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_187
.LibroBB16_254: 
	beqz t0, .LibroBB16_258
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_255: 
	slt t5, s5, a6
	addi t0, zero, 0
	bnez t5, .LibroBB16_254
	j .LibroBB16_259
.LibroBB16_256: 
	lw t0, -76(s0)
	bge t0, a3, .LibroBB16_260
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_257: 
	lw t5, -88(s0)
	lw t0, -92(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB16_265
	j .LibroBB16_261
.LibroBB16_258: 
	lw t0, -104(s0)
	xor t0, s8, t0
	bnez t0, .LibroBB16_262
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_259: 
	xor t5, s1, a2
	addi t0, zero, 0
	beqz t5, .LibroBB16_254
	j .LibroBB16_263
.LibroBB16_260: 
	lw t5, -256(s0)
	lw t0, -264(s0)
	bge t5, t0, .LibroBB16_264
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_261: 
	slt t5, s9, s10
	addi t0, zero, 0
	bnez t5, .LibroBB16_265
	j .LibroBB16_266
.LibroBB16_262: 
	addi t0, zero, 0
	lw t5, -340(s0)
	bge t5, s6, .LibroBB16_272
	j .LibroBB16_267
.LibroBB16_263: 
	lw t0, -80(s0)
	xor t5, t0, s11
	addi t0, zero, 0
	bnez t5, .LibroBB16_254
	j .LibroBB16_268
.LibroBB16_264: 
	xor t0, t4, a6
	beqz t0, .LibroBB16_269
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_265: 
	beqz t0, .LibroBB16_270
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_266: 
	slt t5, s8, s1
	addi t0, zero, 0
	bnez t5, .LibroBB16_265
	j .LibroBB16_271
.LibroBB16_267: 
	lw t5, -144(s0)
	lw t0, -116(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_272
	j .LibroBB16_273
.LibroBB16_268: 
	xor t5, s4, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_254
	j .LibroBB16_274
.LibroBB16_269: 
	bge s7, a2, .LibroBB16_275
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_270: 
	lw t0, -100(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_276
	j .LibroBB16_277
.LibroBB16_271: 
	lw t0, -332(s0)
	slt t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_265
	j .LibroBB16_278
.LibroBB16_272: 
	beqz t0, .LibroBB16_279
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_273: 
	lw t0, -100(s0)
	slt t0, a1, t0
	add t0, zero, t0
	j .LibroBB16_272
.LibroBB16_274: 
	slt t5, s11, a7
	addi t0, zero, 0
	bnez t5, .LibroBB16_254
	j .LibroBB16_280
.LibroBB16_275: 
	addi t0, zero, 0
	bge t1, s11, .LibroBB16_286
	j .LibroBB16_281
.LibroBB16_276: 
	beqz t0, .LibroBB16_282
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_277: 
	lw t0, -104(s0)
	slt t0, t0, t3
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_276
.LibroBB16_278: 
	xor t5, a5, t3
	addi t0, zero, 0
	bnez t5, .LibroBB16_265
	j .LibroBB16_283
.LibroBB16_279: 
	addi t0, zero, 0
	lw t5, -96(s0)
	bge t5, s3, .LibroBB16_289
	j .LibroBB16_284
.LibroBB16_280: 
	lw t0, -196(s0)
	xor t5, s3, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_254
	j .LibroBB16_285
.LibroBB16_281: 
	xor t0, a2, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_286
.LibroBB16_282: 
	addi t0, zero, 0
	lw t6, -124(s0)
	lw t5, -132(s0)
	bge t6, t5, .LibroBB16_292
	j .LibroBB16_287
.LibroBB16_283: 
	slt t5, a1, s7
	addi t0, zero, 0
	bnez t5, .LibroBB16_265
	j .LibroBB16_288
.LibroBB16_284: 
	xor t0, s10, s4
	snez t0, t0
	add t0, zero, t0
	j .LibroBB16_289
.LibroBB16_285: 
	slt t5, t3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_254
	j .LibroBB16_290
.LibroBB16_286: 
	beqz t0, .LibroBB16_291
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_287: 
	lw t5, -144(s0)
	lw t0, -340(s0)
	slt t0, t0, t5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_292
.LibroBB16_288: 
	slt t0, a2, s6
	add t0, zero, t0
	j .LibroBB16_265
.LibroBB16_289: 
	beqz t0, .LibroBB16_293
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_290: 
	addi t0, zero, 0
	bge s5, t4, .LibroBB16_254
	j .LibroBB16_294
.LibroBB16_291: 
	slt t5, a4, a0
	addi t0, zero, 0
	bnez t5, .LibroBB16_324
	j .LibroBB16_295
.LibroBB16_292: 
	beqz t0, .LibroBB16_296
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_293: 
	addi t0, zero, 1
	j .LibroBB16_216
.LibroBB16_294: 
	xor t0, a3, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_254
.LibroBB16_295: 
	addi t0, zero, 0
	lw t5, -60(s0)
	bge a4, t5, .LibroBB16_324
	j .LibroBB16_298
.LibroBB16_296: 
	slt t0, s11, a7
	bnez t0, .LibroBB16_299
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_297: 
	beqz t0, .LibroBB16_301
	j .LibroBB16_300
.LibroBB16_298: 
	lw t0, -64(s0)
	xor t5, t0, s9
	addi t0, zero, 0
	beqz t5, .LibroBB16_324
	j .LibroBB16_302
.LibroBB16_299: 
	xor t0, a0, t2
	bnez t0, .LibroBB16_303
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_300: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_304
.LibroBB16_301: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_223
.LibroBB16_302: 
	slt t5, s5, a6
	addi t0, zero, 0
	bnez t5, .LibroBB16_324
	j .LibroBB16_305
.LibroBB16_303: 
	slt t0, a3, a2
	bnez t0, .LibroBB16_306
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_304: 
	lw t5, -88(s0)
	lw t0, -92(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB16_311
	j .LibroBB16_307
.LibroBB16_305: 
	xor t5, s1, a2
	addi t0, zero, 0
	beqz t5, .LibroBB16_324
	j .LibroBB16_308
.LibroBB16_306: 
	lw t0, -76(s0)
	bge t0, a3, .LibroBB16_309
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_307: 
	slt t5, s9, s10
	addi t0, zero, 0
	bnez t5, .LibroBB16_311
	j .LibroBB16_310
.LibroBB16_308: 
	lw t0, -80(s0)
	xor t5, t0, s11
	addi t0, zero, 0
	bnez t5, .LibroBB16_324
	j .LibroBB16_312
.LibroBB16_309: 
	lw t5, -256(s0)
	lw t0, -264(s0)
	bge t5, t0, .LibroBB16_313
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_310: 
	slt t5, s8, s1
	addi t0, zero, 0
	bnez t5, .LibroBB16_311
	j .LibroBB16_314
.LibroBB16_311: 
	beqz t0, .LibroBB16_315
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_312: 
	xor t5, s4, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_324
	j .LibroBB16_316
.LibroBB16_313: 
	xor t0, t4, a6
	beqz t0, .LibroBB16_317
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_314: 
	lw t0, -332(s0)
	slt t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_311
	j .LibroBB16_318
.LibroBB16_315: 
	lw t0, -100(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB16_323
	j .LibroBB16_319
.LibroBB16_316: 
	slt t5, s11, a7
	addi t0, zero, 0
	bnez t5, .LibroBB16_324
	j .LibroBB16_320
.LibroBB16_317: 
	bge s7, a2, .LibroBB16_321
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_318: 
	xor t5, a5, t3
	addi t0, zero, 0
	bnez t5, .LibroBB16_311
	j .LibroBB16_322
.LibroBB16_319: 
	lw t0, -104(s0)
	slt t0, t0, t3
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_323
.LibroBB16_320: 
	lw t0, -196(s0)
	xor t5, s3, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_324
	j .LibroBB16_325
.LibroBB16_321: 
	addi t0, zero, 0
	bge t1, s11, .LibroBB16_331
	j .LibroBB16_326
.LibroBB16_322: 
	slt t5, a1, s7
	addi t0, zero, 0
	bnez t5, .LibroBB16_311
	j .LibroBB16_327
.LibroBB16_323: 
	beqz t0, .LibroBB16_328
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_324: 
	beqz t0, .LibroBB16_329
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_325: 
	slt t5, t3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_324
	j .LibroBB16_330
.LibroBB16_326: 
	xor t0, a2, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_331
.LibroBB16_327: 
	slt t0, a2, s6
	add t0, zero, t0
	j .LibroBB16_311
.LibroBB16_328: 
	addi t0, zero, 0
	lw t6, -124(s0)
	lw t5, -132(s0)
	bge t6, t5, .LibroBB16_336
	j .LibroBB16_332
.LibroBB16_329: 
	lw t0, -104(s0)
	xor t0, s8, t0
	bnez t0, .LibroBB16_333
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_330: 
	addi t0, zero, 0
	bge s5, t4, .LibroBB16_324
	j .LibroBB16_334
.LibroBB16_331: 
	beqz t0, .LibroBB16_335
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_332: 
	lw t5, -144(s0)
	lw t0, -340(s0)
	slt t0, t0, t5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_336
.LibroBB16_333: 
	addi t0, zero, 0
	lw t5, -340(s0)
	bge t5, s6, .LibroBB16_343
	j .LibroBB16_337
.LibroBB16_334: 
	xor t0, a3, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_324
.LibroBB16_335: 
	slt t5, a4, a0
	addi t0, zero, 0
	bnez t5, .LibroBB16_352
	j .LibroBB16_338
.LibroBB16_336: 
	beqz t0, .LibroBB16_339
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_337: 
	lw t5, -144(s0)
	lw t0, -116(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_343
	j .LibroBB16_340
.LibroBB16_338: 
	addi t0, zero, 0
	lw t5, -60(s0)
	bge a4, t5, .LibroBB16_352
	j .LibroBB16_341
.LibroBB16_339: 
	slt t0, s11, a7
	bnez t0, .LibroBB16_342
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_340: 
	lw t0, -100(s0)
	slt t0, a1, t0
	add t0, zero, t0
	j .LibroBB16_343
.LibroBB16_341: 
	lw t0, -64(s0)
	xor t5, t0, s9
	addi t0, zero, 0
	beqz t5, .LibroBB16_352
	j .LibroBB16_344
.LibroBB16_342: 
	xor t0, a0, t2
	bnez t0, .LibroBB16_345
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_343: 
	beqz t0, .LibroBB16_346
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_344: 
	slt t5, s5, a6
	addi t0, zero, 0
	bnez t5, .LibroBB16_352
	j .LibroBB16_347
.LibroBB16_345: 
	slt t0, a3, a2
	bnez t0, .LibroBB16_348
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_346: 
	addi t0, zero, 0
	lw t5, -96(s0)
	bge t5, s3, .LibroBB16_349
	j .LibroBB16_350
.LibroBB16_347: 
	xor t5, s1, a2
	addi t0, zero, 0
	beqz t5, .LibroBB16_352
	j .LibroBB16_351
.LibroBB16_348: 
	lw t0, -76(s0)
	bge t0, a3, .LibroBB16_353
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_349: 
	beqz t0, .LibroBB16_354
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_350: 
	xor t0, s10, s4
	snez t0, t0
	add t0, zero, t0
	j .LibroBB16_349
.LibroBB16_351: 
	lw t0, -80(s0)
	xor t5, t0, s11
	addi t0, zero, 0
	bnez t5, .LibroBB16_352
	j .LibroBB16_355
.LibroBB16_352: 
	beqz t0, .LibroBB16_356
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_353: 
	lw t5, -256(s0)
	lw t0, -264(s0)
	bge t5, t0, .LibroBB16_357
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_354: 
	addi t0, zero, 1
	j .LibroBB16_249
.LibroBB16_355: 
	xor t5, s4, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_352
	j .LibroBB16_358
.LibroBB16_356: 
	lw t0, -104(s0)
	xor t0, s8, t0
	bnez t0, .LibroBB16_359
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_357: 
	xor t0, t4, a6
	beqz t0, .LibroBB16_360
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_358: 
	slt t5, s11, a7
	addi t0, zero, 0
	bnez t5, .LibroBB16_352
	j .LibroBB16_361
.LibroBB16_359: 
	addi t0, zero, 0
	lw t5, -340(s0)
	bge t5, s6, .LibroBB16_368
	j .LibroBB16_362
.LibroBB16_360: 
	bge s7, a2, .LibroBB16_363
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_361: 
	lw t0, -196(s0)
	xor t5, s3, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_352
	j .LibroBB16_364
.LibroBB16_362: 
	lw t5, -144(s0)
	lw t0, -116(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_368
	j .LibroBB16_365
.LibroBB16_363: 
	addi t0, zero, 0
	bge t1, s11, .LibroBB16_369
	j .LibroBB16_366
.LibroBB16_364: 
	slt t5, t3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_352
	j .LibroBB16_367
.LibroBB16_365: 
	lw t0, -100(s0)
	slt t0, a1, t0
	add t0, zero, t0
	j .LibroBB16_368
.LibroBB16_366: 
	xor t0, a2, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_369
.LibroBB16_367: 
	addi t0, zero, 0
	bge s5, t4, .LibroBB16_352
	j .LibroBB16_370
.LibroBB16_368: 
	beqz t0, .LibroBB16_371
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_369: 
	beqz t0, .LibroBB16_372
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_370: 
	xor t0, a3, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_352
.LibroBB16_371: 
	addi t0, zero, 0
	lw t5, -96(s0)
	bge t5, s3, .LibroBB16_374
	j .LibroBB16_373
.LibroBB16_372: 
	slt t5, a4, a0
	addi t0, zero, 0
	bnez t5, .LibroBB16_376
	j .LibroBB16_375
.LibroBB16_373: 
	xor t0, s10, s4
	snez t0, t0
	add t0, zero, t0
	j .LibroBB16_374
.LibroBB16_374: 
	beqz t0, .LibroBB16_377
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_375: 
	addi t0, zero, 0
	lw t5, -60(s0)
	bge a4, t5, .LibroBB16_376
	j .LibroBB16_378
.LibroBB16_376: 
	beqz t0, .LibroBB16_379
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_377: 
	addi t0, zero, 1
	j .LibroBB16_297
.LibroBB16_378: 
	lw t0, -64(s0)
	xor t5, t0, s9
	addi t0, zero, 0
	beqz t5, .LibroBB16_376
	j .LibroBB16_380
.LibroBB16_379: 
	lw t0, -104(s0)
	xor t0, s8, t0
	bnez t0, .LibroBB16_381
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_380: 
	slt t5, s5, a6
	addi t0, zero, 0
	bnez t5, .LibroBB16_376
	j .LibroBB16_382
.LibroBB16_381: 
	addi t0, zero, 0
	lw t5, -340(s0)
	bge t5, s6, .LibroBB16_384
	j .LibroBB16_383
.LibroBB16_382: 
	xor t5, s1, a2
	addi t0, zero, 0
	beqz t5, .LibroBB16_376
	j .LibroBB16_385
.LibroBB16_383: 
	lw t5, -144(s0)
	lw t0, -116(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_384
	j .LibroBB16_386
.LibroBB16_384: 
	beqz t0, .LibroBB16_387
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_385: 
	lw t0, -80(s0)
	xor t5, t0, s11
	addi t0, zero, 0
	bnez t5, .LibroBB16_376
	j .LibroBB16_389
.LibroBB16_386: 
	lw t0, -100(s0)
	slt t0, a1, t0
	add t0, zero, t0
	j .LibroBB16_384
.LibroBB16_387: 
	addi t0, zero, 0
	lw t5, -96(s0)
	bge t5, s3, .LibroBB16_391
	j .LibroBB16_390
.LibroBB16_388: 
	beqz t0, .LibroBB16_393
	j .LibroBB16_392
.LibroBB16_389: 
	xor t5, s4, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_376
	j .LibroBB16_394
.LibroBB16_390: 
	xor t0, s10, s4
	snez t0, t0
	add t0, zero, t0
	j .LibroBB16_391
.LibroBB16_391: 
	beqz t0, .LibroBB16_395
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_392: 
	lw t0, -68(s0)
	addi t0, t0, 0
	sw s2, 0(t0)
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_304
.LibroBB16_393: 
	addi t0, s2, 1
	add s2, zero, t0
	j .LibroBB16_257
.LibroBB16_394: 
	slt t5, s11, a7
	addi t0, zero, 0
	bnez t5, .LibroBB16_376
	j .LibroBB16_396
.LibroBB16_395: 
	addi t0, zero, 1
	j .LibroBB16_388
.LibroBB16_396: 
	lw t0, -196(s0)
	xor t5, s3, t0
	addi t0, zero, 0
	bnez t5, .LibroBB16_376
	j .LibroBB16_397
.LibroBB16_397: 
	slt t5, t3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB16_376
	j .LibroBB16_398
.LibroBB16_398: 
	addi t0, zero, 0
	bge s5, t4, .LibroBB16_376
	j .LibroBB16_399
.LibroBB16_399: 
	xor t0, a3, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB16_376
_taskNTT_main: 
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
	call getInt
	addi t0, s2, 16
	sw a0, 0(t0)
	call getInt
	addi t0, s2, 24
	sw a0, 0(t0)
	addi s1, zero, 0
	j .LibroBB17_1
.LibroBB17_1: 
	addi t0, s2, 16
	lw t0, 0(t0)
	slt t0, t0, s1
	bnez t0, .LibroBB17_2
	j .LibroBB17_3
.LibroBB17_2: 
	addi s1, zero, 0
	j .LibroBB17_4
.LibroBB17_3: 
	call getInt
	addi t0, s2, 8
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	addi t0, s1, 1
	add s1, zero, t0
	j .LibroBB17_1
.LibroBB17_4: 
	addi t0, s2, 24
	lw t0, 0(t0)
	slt t0, t0, s1
	bnez t0, .LibroBB17_6
	j .LibroBB17_5
.LibroBB17_5: 
	call getInt
	addi t0, s2, 12
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	addi t0, s1, 1
	add s1, zero, t0
	j .LibroBB17_4
.LibroBB17_6: 
	addi t1, s2, 20
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t0, s2, 20
	lw t2, 0(t0)
	addi t0, s2, 16
	lw t1, 0(t0)
	addi t0, s2, 24
	lw t0, 0(t0)
	add t0, t1, t0
	slt t0, t0, t2
	bnez t0, .LibroBB17_8
	j .LibroBB17_7
.LibroBB17_7: 
	addi t0, s2, 20
	lw t0, 0(t0)
	slli t1, t0, 1
	addi t0, s2, 20
	sw t1, 0(t0)
	addi t0, s2, 20
	lw t2, 0(t0)
	addi t0, s2, 16
	lw t1, 0(t0)
	addi t0, s2, 24
	lw t0, 0(t0)
	add t0, t1, t0
	slt t0, t0, t2
	bnez t0, .LibroBB17_8
	j .LibroBB17_7
.LibroBB17_8: 
	addi t0, s2, 20
	lw a6, 0(t0)
	addi t0, s2, 8
	lw a5, 0(t0)
	addi t0, zero, 0
	addi t2, zero, 0
	j .LibroBB17_9
.LibroBB17_9: 
	bge t2, a6, .LibroBB17_11
	j .LibroBB17_10
.LibroBB17_10: 
	bge t0, t2, .LibroBB17_14
	j .LibroBB17_12
.LibroBB17_11: 
	addi a4, zero, 1
	j .LibroBB17_13
.LibroBB17_12: 
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw a0, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw s1, 0(t1)
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw s1, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw a0, 0(t1)
	j .LibroBB17_14
.LibroBB17_13: 
	bge a4, a6, .LibroBB17_15
	j .LibroBB17_16
.LibroBB17_14: 
	srai t1, a6, 1
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB17_17
.LibroBB17_15: 
	addi t1, zero, 1
	addi t0, zero, -1
	xor t0, t1, t0
	bnez t0, .LibroBB17_34
	j .LibroBB17_18
.LibroBB17_16: 
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t1, t0, -1
	slli t0, a4, 1
	div t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	addi a3, zero, 1
	beqz t0, .LibroBB17_19
	addi t2, zero, 1
	add t1, zero, t1
	addi t0, zero, 3
	j .LibroBB17_20
.LibroBB17_17: 
	xor s1, t0, t1
	slt t0, s1, t1
	bnez t0, .LibroBB17_22
	add t0, zero, s1
	j .LibroBB17_21
.LibroBB17_18: 
	addi t0, zero, 1
	bge t0, a6, .LibroBB17_27
	add t1, zero, a6
	addi t0, zero, 1
	j .LibroBB17_23
.LibroBB17_19: 
	slli a7, a4, 1
	addi a2, zero, 0
	j .LibroBB17_24
.LibroBB17_20: 
	andi a0, t1, 1
	addi s1, zero, 0
	xor s1, a0, s1
	add a0, zero, t2
	beqz s1, .LibroBB17_25
	j .LibroBB17_26
.LibroBB17_21: 
	addi t1, t2, 1
	add t0, zero, t0
	add t2, zero, t1
	j .LibroBB17_9
.LibroBB17_22: 
	srai t0, t1, 1
	add t1, zero, t0
	add t0, zero, s1
	j .LibroBB17_17
.LibroBB17_23: 
	addi a0, t1, -1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw s1, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw s1, 0(t1)
	addi t0, t0, 1
	bge t0, a0, .LibroBB17_27
	add t1, zero, a0
	add t0, zero, t0
	j .LibroBB17_23
.LibroBB17_24: 
	bge a2, a6, .LibroBB17_28
	j .LibroBB17_29
.LibroBB17_25: 
	srai a2, t1, 1
	addi t1, s2, 4
	lw a3, 0(t1)
	rem a1, t0, a3
	addi t1, zero, 0
	xor t1, t0, t1
	addi s1, zero, 0
	beqz t1, .LibroBB17_31
	addi s1, zero, 0
	add t2, zero, t0
	add t1, zero, a1
	j .LibroBB17_30
.LibroBB17_26: 
	addi s1, s2, 4
	lw a7, 0(s1)
	rem a2, t2, a7
	addi t2, zero, 0
	xor t2, t0, t2
	addi s1, zero, 0
	beqz t2, .LibroBB17_33
	addi a1, zero, 0
	add a0, zero, t0
	add s1, zero, a2
	j .LibroBB17_32
.LibroBB17_27: 
	j .LibroBB17_34
.LibroBB17_28: 
	slli t0, a4, 1
	add a4, zero, t0
	j .LibroBB17_13
.LibroBB17_29: 
	addi a1, zero, 1
	addi a0, zero, 0
	j .LibroBB17_35
.LibroBB17_30: 
	andi a1, t2, 1
	addi t0, zero, 0
	xor a1, a1, t0
	add t0, zero, s1
	beqz a1, .LibroBB17_42
	j .LibroBB17_36
.LibroBB17_31: 
	addi t0, zero, 0
	xor t0, a2, t0
	add a3, zero, a0
	beqz t0, .LibroBB17_19
	add t2, zero, a0
	add t1, zero, a2
	add t0, zero, s1
	j .LibroBB17_20
.LibroBB17_32: 
	andi a2, a0, 1
	addi t2, zero, 0
	xor a2, a2, t2
	add t2, zero, a1
	beqz a2, .LibroBB17_37
	j .LibroBB17_38
.LibroBB17_33: 
	add a0, zero, s1
	j .LibroBB17_25
.LibroBB17_34: 
	addi t0, s2, 20
	lw a5, 0(t0)
	addi t0, s2, 12
	lw a3, 0(t0)
	addi t0, zero, 0
	addi t2, zero, 0
	j .LibroBB17_39
.LibroBB17_35: 
	bge a0, a4, .LibroBB17_40
	j .LibroBB17_41
.LibroBB17_36: 
	add t0, s1, t1
	rem t0, t0, a3
	add t0, zero, t0
	j .LibroBB17_42
.LibroBB17_37: 
	srai a3, a0, 1
	slli s1, s1, 1
	rem a2, s1, a7
	addi s1, zero, 0
	xor a0, a3, s1
	add s1, zero, t2
	beqz a0, .LibroBB17_33
	add a1, zero, t2
	add a0, zero, a3
	add s1, zero, a2
	j .LibroBB17_32
.LibroBB17_38: 
	add t2, a1, s1
	rem t2, t2, a7
	add t2, zero, t2
	j .LibroBB17_37
.LibroBB17_39: 
	bge t2, a5, .LibroBB17_43
	j .LibroBB17_44
.LibroBB17_40: 
	add t0, a2, a7
	add a2, zero, t0
	j .LibroBB17_24
.LibroBB17_41: 
	add t0, a2, a4
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t2, 0(t0)
	addi t0, s2, 4
	lw s5, 0(t0)
	rem s3, a1, s5
	addi t0, zero, 0
	xor t0, t2, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_45
	addi s1, zero, 0
	add t2, zero, t2
	add t1, zero, s3
	j .LibroBB17_46
.LibroBB17_42: 
	srai t2, t2, 1
	slli t1, t1, 1
	rem a1, t1, a3
	addi t1, zero, 0
	xor t1, t2, t1
	add s1, zero, t0
	beqz t1, .LibroBB17_31
	add s1, zero, t0
	add t2, zero, t2
	add t1, zero, a1
	j .LibroBB17_30
.LibroBB17_43: 
	addi a4, zero, 1
	j .LibroBB17_47
.LibroBB17_44: 
	bge t0, t2, .LibroBB17_48
	j .LibroBB17_49
.LibroBB17_45: 
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t0, 0(t0)
	sub t2, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	add t2, t2, t0
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t2, t2, t0
	add t0, a4, a2
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	sw t2, 0(t0)
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t0, 0(t0)
	add t1, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t1, t1, t0
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	sw t1, 0(t0)
	addi t0, s2, 4
	lw s4, 0(t0)
	rem a1, a1, s4
	addi t0, zero, 0
	xor t0, a3, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_51
	addi s1, zero, 0
	add t2, zero, a3
	add t1, zero, a1
	j .LibroBB17_50
.LibroBB17_46: 
	andi s3, t2, 1
	addi t0, zero, 0
	xor s3, s3, t0
	add t0, zero, s1
	beqz s3, .LibroBB17_58
	j .LibroBB17_52
.LibroBB17_47: 
	bge a4, a5, .LibroBB17_53
	j .LibroBB17_54
.LibroBB17_48: 
	srai t1, a5, 1
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB17_55
.LibroBB17_49: 
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a3, t1
	lw a0, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a3, t1
	lw s1, 0(t1)
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a3, t1
	sw s1, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a3, t1
	sw a0, 0(t1)
	j .LibroBB17_48
.LibroBB17_50: 
	andi a1, t2, 1
	addi t0, zero, 0
	xor a1, a1, t0
	add t0, zero, s1
	beqz a1, .LibroBB17_56
	j .LibroBB17_57
.LibroBB17_51: 
	addi t0, a0, 1
	add a1, zero, t1
	add a0, zero, t0
	j .LibroBB17_35
.LibroBB17_52: 
	add t0, s1, t1
	rem t0, t0, s5
	add t0, zero, t0
	j .LibroBB17_58
.LibroBB17_53: 
	addi t1, zero, 1
	addi t0, zero, -1
	xor t0, t1, t0
	bnez t0, .LibroBB17_60
	j .LibroBB17_59
.LibroBB17_54: 
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t1, t0, -1
	slli t0, a4, 1
	div t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	addi a6, zero, 1
	beqz t0, .LibroBB17_79
	addi t0, zero, 1
	add a2, zero, t1
	addi a1, zero, 3
	j .LibroBB17_61
.LibroBB17_55: 
	xor s1, t0, t1
	slt t0, s1, t1
	bnez t0, .LibroBB17_63
	add t0, zero, s1
	j .LibroBB17_62
.LibroBB17_56: 
	srai s3, t2, 1
	slli t1, t1, 1
	rem a1, t1, s4
	addi t1, zero, 0
	xor t2, s3, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_51
	add s1, zero, t0
	add t2, zero, s3
	add t1, zero, a1
	j .LibroBB17_50
.LibroBB17_57: 
	add t0, s1, t1
	rem t0, t0, s4
	add t0, zero, t0
	j .LibroBB17_56
.LibroBB17_58: 
	srai s4, t2, 1
	slli t1, t1, 1
	rem s3, t1, s5
	addi t1, zero, 0
	xor t2, s4, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_45
	add s1, zero, t0
	add t2, zero, s4
	add t1, zero, s3
	j .LibroBB17_46
.LibroBB17_59: 
	addi t0, zero, 1
	bge t0, a5, .LibroBB17_68
	add t1, zero, a5
	addi t0, zero, 1
	j .LibroBB17_64
.LibroBB17_60: 
	addi a0, zero, 0
	j .LibroBB17_65
.LibroBB17_61: 
	andi t2, a2, 1
	addi t1, zero, 0
	xor t1, t2, t1
	add a0, zero, t0
	beqz t1, .LibroBB17_66
	j .LibroBB17_67
.LibroBB17_62: 
	addi t1, t2, 1
	add t0, zero, t0
	add t2, zero, t1
	j .LibroBB17_39
.LibroBB17_63: 
	srai t0, t1, 1
	add t1, zero, t0
	add t0, zero, s1
	j .LibroBB17_55
.LibroBB17_64: 
	addi a0, t1, -1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a3, t1
	lw s1, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a3, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a3, t1
	sw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a3, t1
	sw s1, 0(t1)
	addi t0, t0, 1
	bge t0, a0, .LibroBB17_68
	add t1, zero, a0
	add t0, zero, t0
	j .LibroBB17_64
.LibroBB17_65: 
	addi t0, s2, 20
	lw t0, 0(t0)
	slt t0, t0, a0
	bnez t0, .LibroBB17_69
	j .LibroBB17_70
.LibroBB17_66: 
	srai a7, a2, 1
	addi t0, s2, 4
	lw a6, 0(t0)
	rem a2, a1, a6
	addi t0, zero, 0
	xor t0, a1, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_72
	addi s1, zero, 0
	add t2, zero, a1
	add t1, zero, a2
	j .LibroBB17_71
.LibroBB17_67: 
	addi t1, s2, 4
	lw a7, 0(t1)
	rem a0, t0, a7
	addi t0, zero, 0
	xor t0, a1, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_73
	addi s1, zero, 0
	add t2, zero, a1
	add t1, zero, a0
	j .LibroBB17_74
.LibroBB17_68: 
	j .LibroBB17_60
.LibroBB17_69: 
	addi t0, s2, 20
	lw a6, 0(t0)
	addi t0, s2, 8
	lw a5, 0(t0)
	addi t0, zero, 0
	addi t2, zero, 0
	j .LibroBB17_75
.LibroBB17_70: 
	addi t0, s2, 8
	lw t1, 0(t0)
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s1, 0(t0)
	addi t0, s2, 12
	lw t1, 0(t0)
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	addi t0, s2, 4
	lw a3, 0(t0)
	rem a1, s1, a3
	addi t0, zero, 0
	xor t1, t2, t0
	addi t0, zero, 0
	beqz t1, .LibroBB17_90
	addi s1, zero, 0
	add t2, zero, t2
	add t0, zero, a1
	j .LibroBB17_76
.LibroBB17_71: 
	andi a1, t2, 1
	addi t0, zero, 0
	xor a1, a1, t0
	add t0, zero, s1
	beqz a1, .LibroBB17_77
	j .LibroBB17_78
.LibroBB17_72: 
	addi t0, zero, 0
	xor t0, a7, t0
	add a6, zero, a0
	beqz t0, .LibroBB17_79
	add t0, zero, a0
	add a2, zero, a7
	add a1, zero, t1
	j .LibroBB17_61
.LibroBB17_73: 
	add a0, zero, t1
	j .LibroBB17_66
.LibroBB17_74: 
	andi a0, t2, 1
	addi t0, zero, 0
	xor a0, a0, t0
	add t0, zero, s1
	beqz a0, .LibroBB17_86
	j .LibroBB17_80
.LibroBB17_75: 
	bge t2, a6, .LibroBB17_82
	j .LibroBB17_81
.LibroBB17_76: 
	andi a1, t2, 1
	addi t1, zero, 0
	xor a1, a1, t1
	add t1, zero, s1
	beqz a1, .LibroBB17_83
	j .LibroBB17_84
.LibroBB17_77: 
	srai a2, t2, 1
	slli t1, t1, 1
	rem a1, t1, a6
	addi t1, zero, 0
	xor t2, a2, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_72
	add s1, zero, t0
	add t2, zero, a2
	add t1, zero, a1
	j .LibroBB17_71
.LibroBB17_78: 
	add t0, s1, t1
	rem t0, t0, a6
	add t0, zero, t0
	j .LibroBB17_77
.LibroBB17_79: 
	slli a7, a4, 1
	addi a2, zero, 0
	j .LibroBB17_85
.LibroBB17_80: 
	add t0, s1, t1
	rem t0, t0, a7
	add t0, zero, t0
	j .LibroBB17_86
.LibroBB17_81: 
	bge t0, t2, .LibroBB17_88
	j .LibroBB17_87
.LibroBB17_82: 
	addi a4, zero, 1
	j .LibroBB17_89
.LibroBB17_83: 
	srai a2, t2, 1
	slli t0, t0, 1
	rem a1, t0, a3
	addi t0, zero, 0
	xor t2, a2, t0
	add t0, zero, t1
	beqz t2, .LibroBB17_90
	add s1, zero, t1
	add t2, zero, a2
	add t0, zero, a1
	j .LibroBB17_76
.LibroBB17_84: 
	add t1, s1, t0
	rem t1, t1, a3
	add t1, zero, t1
	j .LibroBB17_83
.LibroBB17_85: 
	bge a2, a5, .LibroBB17_92
	j .LibroBB17_91
.LibroBB17_86: 
	srai a6, t2, 1
	slli t1, t1, 1
	rem a0, t1, a7
	addi t1, zero, 0
	xor t2, a6, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_73
	add s1, zero, t0
	add t2, zero, a6
	add t1, zero, a0
	j .LibroBB17_74
.LibroBB17_87: 
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw a0, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw s1, 0(t1)
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw s1, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw a0, 0(t1)
	j .LibroBB17_88
.LibroBB17_88: 
	srai t1, a6, 1
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB17_93
.LibroBB17_89: 
	bge a4, a6, .LibroBB17_94
	j .LibroBB17_95
.LibroBB17_90: 
	addi t1, s2, 8
	lw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw t0, 0(t1)
	addi t0, a0, 1
	add a0, zero, t0
	j .LibroBB17_65
.LibroBB17_91: 
	addi a1, zero, 1
	addi a0, zero, 0
	j .LibroBB17_96
.LibroBB17_92: 
	slli t0, a4, 1
	add a4, zero, t0
	j .LibroBB17_47
.LibroBB17_93: 
	xor s1, t0, t1
	slt t0, s1, t1
	bnez t0, .LibroBB17_98
	add t0, zero, s1
	j .LibroBB17_97
.LibroBB17_94: 
	addi t1, zero, -1
	addi t0, zero, -1
	xor t0, t1, t0
	bnez t0, .LibroBB17_109
	j .LibroBB17_99
.LibroBB17_95: 
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t1, t0, -1
	slli t0, a4, 1
	div t2, t1, t0
	addi t0, zero, 0
	xor t0, t2, t0
	addi a3, zero, 1
	beqz t0, .LibroBB17_128
	addi t1, zero, 1
	add a2, zero, t2
	addi a1, zero, 3
	j .LibroBB17_100
.LibroBB17_96: 
	bge a0, a4, .LibroBB17_101
	j .LibroBB17_102
.LibroBB17_97: 
	addi t1, t2, 1
	add t0, zero, t0
	add t2, zero, t1
	j .LibroBB17_75
.LibroBB17_98: 
	srai t0, t1, 1
	add t1, zero, t0
	add t0, zero, s1
	j .LibroBB17_93
.LibroBB17_99: 
	addi t0, zero, 1
	bge t0, a6, .LibroBB17_104
	add t1, zero, a6
	addi t0, zero, 1
	j .LibroBB17_103
.LibroBB17_100: 
	andi t2, a2, 1
	addi t0, zero, 0
	xor t0, t2, t0
	add a0, zero, t1
	beqz t0, .LibroBB17_106
	j .LibroBB17_105
.LibroBB17_101: 
	add t0, a2, a7
	add a2, zero, t0
	j .LibroBB17_85
.LibroBB17_102: 
	add t0, a2, a4
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw t2, 0(t0)
	addi t0, s2, 4
	lw s5, 0(t0)
	rem s3, a1, s5
	addi t0, zero, 0
	xor t0, t2, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_108
	addi s1, zero, 0
	add t2, zero, t2
	add t1, zero, s3
	j .LibroBB17_107
.LibroBB17_103: 
	addi a0, t1, -1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw s1, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw s1, 0(t1)
	addi t0, t0, 1
	bge t0, a0, .LibroBB17_104
	add t1, zero, a0
	add t0, zero, t0
	j .LibroBB17_103
.LibroBB17_104: 
	j .LibroBB17_109
.LibroBB17_105: 
	addi t0, s2, 4
	lw a7, 0(t0)
	rem a0, t1, a7
	addi t0, zero, 0
	xor t1, a1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB17_124
	addi s1, zero, 0
	add t2, zero, a1
	add t0, zero, a0
	j .LibroBB17_110
.LibroBB17_106: 
	srai a2, a2, 1
	addi t0, s2, 4
	lw a7, 0(t0)
	rem a3, a1, a7
	addi t0, zero, 0
	xor t1, a1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB17_125
	addi s1, zero, 0
	add t2, zero, a1
	add t0, zero, a3
	j .LibroBB17_111
.LibroBB17_107: 
	andi s3, t2, 1
	addi t0, zero, 0
	xor s3, s3, t0
	add t0, zero, s1
	beqz s3, .LibroBB17_112
	j .LibroBB17_113
.LibroBB17_108: 
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw t0, 0(t0)
	sub t2, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	add t2, t2, t0
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t2, t2, t0
	add t0, a4, a2
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	sw t2, 0(t0)
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	lw t0, 0(t0)
	add t1, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t1, t1, t0
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a3, t0
	sw t1, 0(t0)
	addi t0, s2, 4
	lw s4, 0(t0)
	rem a1, a1, s4
	addi t0, zero, 0
	xor t0, a6, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_115
	addi s1, zero, 0
	add t2, zero, a6
	add t1, zero, a1
	j .LibroBB17_114
.LibroBB17_109: 
	addi t0, s2, 20
	lw s1, 0(t0)
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t2, t0, -2
	addi t0, zero, 0
	xor t0, t2, t0
	addi a1, zero, 1
	beqz t0, .LibroBB17_142
	addi t1, zero, 1
	add a2, zero, t2
	add a1, zero, s1
	j .LibroBB17_116
.LibroBB17_110: 
	andi a0, t2, 1
	addi t1, zero, 0
	xor a0, a0, t1
	add t1, zero, s1
	beqz a0, .LibroBB17_117
	j .LibroBB17_118
.LibroBB17_111: 
	andi a1, t2, 1
	addi t1, zero, 0
	xor a1, a1, t1
	add t1, zero, s1
	beqz a1, .LibroBB17_119
	j .LibroBB17_120
.LibroBB17_112: 
	srai s4, t2, 1
	slli t1, t1, 1
	rem s3, t1, s5
	addi t1, zero, 0
	xor t2, s4, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_108
	add s1, zero, t0
	add t2, zero, s4
	add t1, zero, s3
	j .LibroBB17_107
.LibroBB17_113: 
	add t0, s1, t1
	rem t0, t0, s5
	add t0, zero, t0
	j .LibroBB17_112
.LibroBB17_114: 
	andi a1, t2, 1
	addi t0, zero, 0
	xor a1, a1, t0
	add t0, zero, s1
	beqz a1, .LibroBB17_121
	j .LibroBB17_122
.LibroBB17_115: 
	addi t0, a0, 1
	add a1, zero, t1
	add a0, zero, t0
	j .LibroBB17_96
.LibroBB17_116: 
	andi t2, a2, 1
	addi t0, zero, 0
	xor t0, t2, t0
	add a0, zero, t1
	beqz t0, .LibroBB17_129
	j .LibroBB17_123
.LibroBB17_117: 
	srai a3, t2, 1
	slli t0, t0, 1
	rem a0, t0, a7
	addi t0, zero, 0
	xor t2, a3, t0
	add t0, zero, t1
	beqz t2, .LibroBB17_124
	add s1, zero, t1
	add t2, zero, a3
	add t0, zero, a0
	j .LibroBB17_110
.LibroBB17_118: 
	add t1, s1, t0
	rem t1, t1, a7
	add t1, zero, t1
	j .LibroBB17_117
.LibroBB17_119: 
	srai a3, t2, 1
	slli t0, t0, 1
	rem a1, t0, a7
	addi t0, zero, 0
	xor t2, a3, t0
	add t0, zero, t1
	beqz t2, .LibroBB17_125
	add s1, zero, t1
	add t2, zero, a3
	add t0, zero, a1
	j .LibroBB17_111
.LibroBB17_120: 
	add t1, s1, t0
	rem t1, t1, a7
	add t1, zero, t1
	j .LibroBB17_119
.LibroBB17_121: 
	srai s3, t2, 1
	slli t1, t1, 1
	rem a1, t1, s4
	addi t1, zero, 0
	xor t2, s3, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_115
	add s1, zero, t0
	add t2, zero, s3
	add t1, zero, a1
	j .LibroBB17_114
.LibroBB17_122: 
	add t0, s1, t1
	rem t0, t0, s4
	add t0, zero, t0
	j .LibroBB17_121
.LibroBB17_123: 
	addi t0, s2, 4
	lw a4, 0(t0)
	rem a0, t1, a4
	addi t0, zero, 0
	xor t0, a1, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_126
	addi s1, zero, 0
	add t2, zero, a1
	add t1, zero, a0
	j .LibroBB17_127
.LibroBB17_124: 
	add a0, zero, t0
	j .LibroBB17_106
.LibroBB17_125: 
	addi t1, zero, 0
	xor t1, a2, t1
	add a3, zero, a0
	beqz t1, .LibroBB17_128
	add t1, zero, a0
	add a2, zero, a2
	add a1, zero, t0
	j .LibroBB17_100
.LibroBB17_126: 
	add a0, zero, t1
	j .LibroBB17_129
.LibroBB17_127: 
	andi a0, t2, 1
	addi t0, zero, 0
	xor a0, a0, t0
	add t0, zero, s1
	beqz a0, .LibroBB17_133
	j .LibroBB17_130
.LibroBB17_128: 
	slli a7, a4, 1
	addi a2, zero, 0
	j .LibroBB17_131
.LibroBB17_129: 
	srai a3, a2, 1
	addi t0, s2, 4
	lw a4, 0(t0)
	rem a2, a1, a4
	addi t0, zero, 0
	xor t1, a1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB17_139
	addi s1, zero, 0
	add t2, zero, a1
	add t0, zero, a2
	j .LibroBB17_132
.LibroBB17_130: 
	add t0, s1, t1
	rem t0, t0, a4
	add t0, zero, t0
	j .LibroBB17_133
.LibroBB17_131: 
	bge a2, a6, .LibroBB17_134
	j .LibroBB17_135
.LibroBB17_132: 
	andi a1, t2, 1
	addi t1, zero, 0
	xor a1, a1, t1
	add t1, zero, s1
	beqz a1, .LibroBB17_137
	j .LibroBB17_136
.LibroBB17_133: 
	srai a3, t2, 1
	slli t1, t1, 1
	rem a0, t1, a4
	addi t1, zero, 0
	xor t2, a3, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_126
	add s1, zero, t0
	add t2, zero, a3
	add t1, zero, a0
	j .LibroBB17_127
.LibroBB17_134: 
	slli t0, a4, 1
	add a4, zero, t0
	j .LibroBB17_89
.LibroBB17_135: 
	addi a1, zero, 1
	addi a0, zero, 0
	j .LibroBB17_138
.LibroBB17_136: 
	add t1, s1, t0
	rem t1, t1, a4
	add t1, zero, t1
	j .LibroBB17_137
.LibroBB17_137: 
	srai a2, t2, 1
	slli t0, t0, 1
	rem a1, t0, a4
	addi t0, zero, 0
	xor t2, a2, t0
	add t0, zero, t1
	beqz t2, .LibroBB17_139
	add s1, zero, t1
	add t2, zero, a2
	add t0, zero, a1
	j .LibroBB17_132
.LibroBB17_138: 
	bge a0, a4, .LibroBB17_140
	j .LibroBB17_141
.LibroBB17_139: 
	addi t1, zero, 0
	xor t1, a3, t1
	add a1, zero, a0
	beqz t1, .LibroBB17_142
	add t1, zero, a0
	add a2, zero, a3
	add a1, zero, t0
	j .LibroBB17_116
.LibroBB17_140: 
	add t0, a2, a7
	add a2, zero, t0
	j .LibroBB17_131
.LibroBB17_141: 
	add t0, a2, a4
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t2, 0(t0)
	addi t0, s2, 4
	lw s5, 0(t0)
	rem s3, a1, s5
	addi t0, zero, 0
	xor t0, t2, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_144
	addi s1, zero, 0
	add t2, zero, t2
	add t1, zero, s3
	j .LibroBB17_143
.LibroBB17_142: 
	addi a0, zero, 0
	j .LibroBB17_145
.LibroBB17_143: 
	andi s3, t2, 1
	addi t0, zero, 0
	xor s3, s3, t0
	add t0, zero, s1
	beqz s3, .LibroBB17_150
	j .LibroBB17_146
.LibroBB17_144: 
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t0, 0(t0)
	sub t2, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	add t2, t2, t0
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t2, t2, t0
	add t0, a4, a2
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	sw t2, 0(t0)
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t0, 0(t0)
	add t1, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t1, t1, t0
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	sw t1, 0(t0)
	addi t0, s2, 4
	lw s4, 0(t0)
	rem a1, a1, s4
	addi t0, zero, 0
	xor t1, a3, t0
	addi t0, zero, 0
	beqz t1, .LibroBB17_160
	addi s1, zero, 0
	add t2, zero, a3
	add t0, zero, a1
	j .LibroBB17_147
.LibroBB17_145: 
	addi t0, s2, 20
	lw t0, 0(t0)
	bge a0, t0, .LibroBB17_149
	j .LibroBB17_148
.LibroBB17_146: 
	add t0, s1, t1
	rem t0, t0, s5
	add t0, zero, t0
	j .LibroBB17_150
.LibroBB17_147: 
	andi a1, t2, 1
	addi t1, zero, 0
	xor a1, a1, t1
	add t1, zero, s1
	beqz a1, .LibroBB17_155
	j .LibroBB17_151
.LibroBB17_148: 
	addi t0, s2, 8
	lw t1, 0(t0)
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	addi t0, s2, 4
	lw a4, 0(t0)
	rem a2, t1, a4
	addi t0, zero, 0
	xor t0, a1, t0
	addi t1, zero, 0
	beqz t0, .LibroBB17_153
	addi s1, zero, 0
	add t2, zero, a1
	add t1, zero, a2
	j .LibroBB17_152
.LibroBB17_149: 
	addi s1, zero, 0
	j .LibroBB17_154
.LibroBB17_150: 
	srai s4, t2, 1
	slli t1, t1, 1
	rem s3, t1, s5
	addi t1, zero, 0
	xor t2, s4, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_144
	add s1, zero, t0
	add t2, zero, s4
	add t1, zero, s3
	j .LibroBB17_143
.LibroBB17_151: 
	add t1, s1, t0
	rem t1, t1, s4
	add t1, zero, t1
	j .LibroBB17_155
.LibroBB17_152: 
	andi a2, t2, 1
	addi t0, zero, 0
	xor a2, a2, t0
	add t0, zero, s1
	beqz a2, .LibroBB17_157
	j .LibroBB17_156
.LibroBB17_153: 
	addi t0, s2, 8
	lw t2, 0(t0)
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, t2, t0
	sw t1, 0(t0)
	addi t0, a0, 1
	add a0, zero, t0
	j .LibroBB17_145
.LibroBB17_154: 
	addi t0, s2, 24
	lw t1, 0(t0)
	addi t0, s2, 16
	lw t0, 0(t0)
	add t0, t1, t0
	slt t0, t0, s1
	bnez t0, .LibroBB17_158
	j .LibroBB17_159
.LibroBB17_155: 
	srai s3, t2, 1
	slli t0, t0, 1
	rem a1, t0, s4
	addi t0, zero, 0
	xor t2, s3, t0
	add t0, zero, t1
	beqz t2, .LibroBB17_160
	add s1, zero, t1
	add t2, zero, s3
	add t0, zero, a1
	j .LibroBB17_147
.LibroBB17_156: 
	add t0, s1, t1
	rem t0, t0, a4
	add t0, zero, t0
	j .LibroBB17_157
.LibroBB17_157: 
	srai a3, t2, 1
	slli t1, t1, 1
	rem a2, t1, a4
	addi t1, zero, 0
	xor t2, a3, t1
	add t1, zero, t0
	beqz t2, .LibroBB17_153
	add s1, zero, t0
	add t2, zero, a3
	add t1, zero, a2
	j .LibroBB17_152
.LibroBB17_158: 
	li a0, 0
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw s2, 12(sp)
	lw s3, 8(sp)
	lw s4, 4(sp)
	lw s5, 0(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB17_159: 
	addi t0, s2, 8
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	call printlnInt
	addi t0, s1, 1
	add s1, zero, t0
	j .LibroBB17_154
.LibroBB17_160: 
	addi t1, a0, 1
	add a1, zero, t0
	add a0, zero, t1
	j .LibroBB17_138
main: 
	addi sp, sp, -332
	sw ra, 328(sp)
	sw s0, 324(sp)
	sw s1, 320(sp)
	sw s2, 316(sp)
	sw s3, 312(sp)
	sw s4, 308(sp)
	sw s5, 304(sp)
	sw s6, 300(sp)
	sw s7, 296(sp)
	sw s8, 292(sp)
	sw s9, 288(sp)
	sw s10, 284(sp)
	sw s11, 280(sp)
	addi s0, sp, 332
	addi a0, zero, 28
	call myNew
	mv s2, a0
	addi t1, s2, 0
	addi t0, zero, 999
	sw t0, 0(t1)
	addi t1, s2, 4
	lui t0, 243712
	addi t0, t0, 1
	sw t0, 0(t1)
	addi t0, s2, 0
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	addi t0, s2, 8
	sw a0, 0(t0)
	addi t0, s2, 0
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	addi t0, s2, 12
	sw a0, 0(t0)
	call getInt
	addi t0, s2, 16
	sw a0, 0(t0)
	call getInt
	addi t0, s2, 24
	sw a0, 0(t0)
	addi s1, zero, 0
	j .LibroBB18_1
.LibroBB18_1: 
	addi t0, s2, 16
	lw t0, 0(t0)
	slt t0, t0, s1
	bnez t0, .LibroBB18_3
	j .LibroBB18_2
.LibroBB18_2: 
	call getInt
	addi t0, s2, 8
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	addi t0, s1, 1
	add s1, zero, t0
	j .LibroBB18_1
.LibroBB18_3: 
	addi s1, zero, 0
	j .LibroBB18_4
.LibroBB18_4: 
	addi t0, s2, 24
	lw t0, 0(t0)
	slt t0, t0, s1
	bnez t0, .LibroBB18_6
	j .LibroBB18_5
.LibroBB18_5: 
	call getInt
	addi t0, s2, 12
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	addi t0, s1, 1
	add s1, zero, t0
	j .LibroBB18_4
.LibroBB18_6: 
	addi t1, s2, 20
	addi t0, zero, 1
	sw t0, 0(t1)
	addi t0, s2, 20
	lw t2, 0(t0)
	addi t0, s2, 16
	lw t1, 0(t0)
	addi t0, s2, 24
	lw t0, 0(t0)
	add t0, t1, t0
	slt t0, t0, t2
	bnez t0, .LibroBB18_8
	j .LibroBB18_7
.LibroBB18_7: 
	addi t0, s2, 20
	lw t0, 0(t0)
	slli t1, t0, 1
	addi t0, s2, 20
	sw t1, 0(t0)
	addi t0, s2, 20
	lw t2, 0(t0)
	addi t0, s2, 16
	lw t1, 0(t0)
	addi t0, s2, 24
	lw t0, 0(t0)
	add t0, t1, t0
	slt t0, t0, t2
	bnez t0, .LibroBB18_8
	j .LibroBB18_7
.LibroBB18_8: 
	addi t0, s2, 20
	lw a6, 0(t0)
	addi t0, s2, 8
	lw a5, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 0
	j .LibroBB18_9
.LibroBB18_9: 
	bge t0, a6, .LibroBB18_10
	j .LibroBB18_11
.LibroBB18_10: 
	addi a4, zero, 1
	j .LibroBB18_12
.LibroBB18_11: 
	bge t1, t0, .LibroBB18_14
	j .LibroBB18_13
.LibroBB18_12: 
	bge a4, a6, .LibroBB18_16
	j .LibroBB18_15
.LibroBB18_13: 
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, a5, t2
	lw a0, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, a5, t2
	lw s1, 0(t2)
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, a5, t2
	sw s1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, a5, t2
	sw a0, 0(t2)
	j .LibroBB18_14
.LibroBB18_14: 
	srai t2, a6, 1
	add t2, zero, t2
	add t1, zero, t1
	j .LibroBB18_17
.LibroBB18_15: 
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t1, t0, -1
	slli t0, a4, 1
	div t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	addi a3, zero, 1
	beqz t0, .LibroBB18_49
	addi t0, zero, 1
	add a2, zero, t1
	addi a1, zero, 3
	j .LibroBB18_18
.LibroBB18_16: 
	addi t1, zero, 1
	addi t0, zero, -1
	xor t0, t1, t0
	bnez t0, .LibroBB18_19
	j .LibroBB18_20
.LibroBB18_17: 
	xor s1, t1, t2
	slt t1, s1, t2
	bnez t1, .LibroBB18_22
	add t1, zero, s1
	j .LibroBB18_21
.LibroBB18_18: 
	andi t2, a2, 1
	addi t1, zero, 0
	xor t1, t2, t1
	add a0, zero, t0
	beqz t1, .LibroBB18_39
	j .LibroBB18_23
.LibroBB18_19: 
	addi t0, s2, 20
	lw a6, 0(t0)
	addi t0, s2, 12
	lw a5, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 0
	j .LibroBB18_24
.LibroBB18_20: 
	addi t0, zero, 1
	bge t0, a6, .LibroBB18_29
	add t1, zero, a6
	addi t0, zero, 1
	j .LibroBB18_25
.LibroBB18_21: 
	addi t0, t0, 1
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB18_9
.LibroBB18_22: 
	srai t1, t2, 1
	add t2, zero, t1
	add t1, zero, s1
	j .LibroBB18_17
.LibroBB18_23: 
	addi t1, s2, 4
	lw a7, 0(t1)
	rem a0, t0, a7
	addi t0, zero, 0
	xor t1, a1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB18_35
	addi s1, zero, 0
	add t2, zero, a1
	add t0, zero, a0
	j .LibroBB18_26
.LibroBB18_24: 
	bge t0, a6, .LibroBB18_28
	j .LibroBB18_27
.LibroBB18_25: 
	addi a0, t1, -1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw s1, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw s1, 0(t1)
	addi t0, t0, 1
	bge t0, a0, .LibroBB18_29
	add t1, zero, a0
	add t0, zero, t0
	j .LibroBB18_25
.LibroBB18_26: 
	andi a0, t2, 1
	addi t1, zero, 0
	xor a0, a0, t1
	add t1, zero, s1
	beqz a0, .LibroBB18_30
	j .LibroBB18_31
.LibroBB18_27: 
	bge t1, t0, .LibroBB18_33
	j .LibroBB18_32
.LibroBB18_28: 
	addi t0, zero, 1
	j .LibroBB18_34
.LibroBB18_29: 
	j .LibroBB18_19
.LibroBB18_30: 
	srai a3, t2, 1
	slli t0, t0, 1
	rem a0, t0, a7
	addi t0, zero, 0
	xor t2, a3, t0
	add t0, zero, t1
	beqz t2, .LibroBB18_35
	add s1, zero, t1
	add t2, zero, a3
	add t0, zero, a0
	j .LibroBB18_26
.LibroBB18_31: 
	add t1, s1, t0
	rem t1, t1, a7
	add t1, zero, t1
	j .LibroBB18_30
.LibroBB18_32: 
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, a5, t2
	lw a0, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, a5, t2
	lw s1, 0(t2)
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, a5, t2
	sw s1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, a5, t2
	sw a0, 0(t2)
	j .LibroBB18_33
.LibroBB18_33: 
	srai t2, a6, 1
	add t2, zero, t2
	add t1, zero, t1
	j .LibroBB18_36
.LibroBB18_34: 
	bge t0, a6, .LibroBB18_37
	j .LibroBB18_38
.LibroBB18_35: 
	add a0, zero, t0
	j .LibroBB18_39
.LibroBB18_36: 
	xor s1, t1, t2
	slt t1, s1, t2
	bnez t1, .LibroBB18_40
	add t1, zero, s1
	j .LibroBB18_41
.LibroBB18_37: 
	addi t1, zero, 1
	addi t0, zero, -1
	xor t0, t1, t0
	bnez t0, .LibroBB18_51
	j .LibroBB18_42
.LibroBB18_38: 
	addi t1, s2, 4
	lw t1, 0(t1)
	addi t2, t1, -1
	slli t1, t0, 1
	div s1, t2, t1
	addi t1, zero, 0
	xor t1, s1, t1
	addi a4, zero, 1
	beqz t1, .LibroBB18_102
	addi t2, zero, 1
	add a3, zero, s1
	addi a2, zero, 3
	j .LibroBB18_43
.LibroBB18_39: 
	srai a7, a2, 1
	addi t0, s2, 4
	lw a3, 0(t0)
	rem a2, a1, a3
	addi t0, zero, 0
	xor t0, a1, t0
	addi t1, zero, 0
	beqz t0, .LibroBB18_44
	addi s1, zero, 0
	add t2, zero, a1
	add t1, zero, a2
	j .LibroBB18_45
.LibroBB18_40: 
	srai t1, t2, 1
	add t2, zero, t1
	add t1, zero, s1
	j .LibroBB18_36
.LibroBB18_41: 
	addi t0, t0, 1
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB18_24
.LibroBB18_42: 
	addi t0, zero, 1
	bge t0, a6, .LibroBB18_46
	add t1, zero, a6
	addi t0, zero, 1
	j .LibroBB18_47
.LibroBB18_43: 
	andi s1, a3, 1
	addi t1, zero, 0
	xor t1, s1, t1
	add a1, zero, t2
	beqz t1, .LibroBB18_71
	j .LibroBB18_48
.LibroBB18_44: 
	addi t0, zero, 0
	xor t0, a7, t0
	add a3, zero, a0
	beqz t0, .LibroBB18_49
	add t0, zero, a0
	add a2, zero, a7
	add a1, zero, t1
	j .LibroBB18_18
.LibroBB18_45: 
	andi a1, t2, 1
	addi t0, zero, 0
	xor a1, a1, t0
	add t0, zero, s1
	beqz a1, .LibroBB18_54
	j .LibroBB18_50
.LibroBB18_46: 
	j .LibroBB18_51
.LibroBB18_47: 
	addi a0, t1, -1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw s1, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw s1, 0(t1)
	addi t0, t0, 1
	bge t0, a0, .LibroBB18_46
	add t1, zero, a0
	add t0, zero, t0
	j .LibroBB18_47
.LibroBB18_48: 
	addi t1, s2, 4
	lw a7, 0(t1)
	rem a1, t2, a7
	addi t1, zero, 0
	xor t2, a2, t1
	addi t1, zero, 0
	beqz t2, .LibroBB18_65
	addi a0, zero, 0
	add s1, zero, a2
	add t1, zero, a1
	j .LibroBB18_52
.LibroBB18_49: 
	slli a7, a4, 1
	addi a2, zero, 0
	j .LibroBB18_53
.LibroBB18_50: 
	add t0, s1, t1
	rem t0, t0, a3
	add t0, zero, t0
	j .LibroBB18_54
.LibroBB18_51: 
	addi a0, zero, 0
	j .LibroBB18_55
.LibroBB18_52: 
	andi a1, s1, 1
	addi t2, zero, 0
	xor a1, a1, t2
	add t2, zero, a0
	beqz a1, .LibroBB18_61
	j .LibroBB18_56
.LibroBB18_53: 
	bge a2, a6, .LibroBB18_57
	j .LibroBB18_58
.LibroBB18_54: 
	srai a2, t2, 1
	slli t1, t1, 1
	rem a1, t1, a3
	addi t1, zero, 0
	xor t2, a2, t1
	add t1, zero, t0
	beqz t2, .LibroBB18_44
	add s1, zero, t0
	add t2, zero, a2
	add t1, zero, a1
	j .LibroBB18_45
.LibroBB18_55: 
	addi t0, s2, 20
	lw t0, 0(t0)
	slt t0, t0, a0
	bnez t0, .LibroBB18_60
	j .LibroBB18_59
.LibroBB18_56: 
	add t2, a0, t1
	rem t2, t2, a7
	add t2, zero, t2
	j .LibroBB18_61
.LibroBB18_57: 
	slli t0, a4, 1
	add a4, zero, t0
	j .LibroBB18_12
.LibroBB18_58: 
	addi a1, zero, 1
	addi a0, zero, 0
	j .LibroBB18_62
.LibroBB18_59: 
	addi t0, s2, 8
	lw t1, 0(t0)
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s1, 0(t0)
	addi t0, s2, 12
	lw t1, 0(t0)
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	addi t0, s2, 4
	lw a3, 0(t0)
	rem a1, s1, a3
	addi t0, zero, 0
	xor t1, t2, t0
	addi t0, zero, 0
	beqz t1, .LibroBB18_81
	addi s1, zero, 0
	add t2, zero, t2
	add t0, zero, a1
	j .LibroBB18_63
.LibroBB18_60: 
	addi t0, s2, 20
	lw a5, 0(t0)
	addi t0, s2, 8
	lw a4, 0(t0)
	addi t0, zero, 0
	addi t2, zero, 0
	j .LibroBB18_64
.LibroBB18_61: 
	srai a4, s1, 1
	slli t1, t1, 1
	rem a1, t1, a7
	addi t1, zero, 0
	xor s1, a4, t1
	add t1, zero, t2
	beqz s1, .LibroBB18_65
	add a0, zero, t2
	add s1, zero, a4
	add t1, zero, a1
	j .LibroBB18_52
.LibroBB18_62: 
	bge a0, a4, .LibroBB18_67
	j .LibroBB18_66
.LibroBB18_63: 
	andi a1, t2, 1
	addi t1, zero, 0
	xor a1, a1, t1
	add t1, zero, s1
	beqz a1, .LibroBB18_74
	j .LibroBB18_68
.LibroBB18_64: 
	bge t2, a5, .LibroBB18_69
	j .LibroBB18_70
.LibroBB18_65: 
	add a1, zero, t1
	j .LibroBB18_71
.LibroBB18_66: 
	add t0, a2, a4
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t2, 0(t0)
	addi t0, s2, 4
	lw s5, 0(t0)
	rem s3, a1, s5
	addi t0, zero, 0
	xor t0, t2, t0
	addi t1, zero, 0
	beqz t0, .LibroBB18_72
	addi s1, zero, 0
	add t2, zero, t2
	add t1, zero, s3
	j .LibroBB18_73
.LibroBB18_67: 
	add t0, a2, a7
	add a2, zero, t0
	j .LibroBB18_53
.LibroBB18_68: 
	add t1, s1, t0
	rem t1, t1, a3
	add t1, zero, t1
	j .LibroBB18_74
.LibroBB18_69: 
	addi a3, zero, 1
	j .LibroBB18_75
.LibroBB18_70: 
	bge t0, t2, .LibroBB18_84
	j .LibroBB18_76
.LibroBB18_71: 
	srai a3, a3, 1
	addi t1, s2, 4
	lw a7, 0(t1)
	rem a4, a2, a7
	addi t1, zero, 0
	xor t2, a2, t1
	addi t1, zero, 0
	beqz t2, .LibroBB18_94
	addi a0, zero, 0
	add s1, zero, a2
	add t1, zero, a4
	j .LibroBB18_77
.LibroBB18_72: 
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t0, 0(t0)
	sub t2, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	add t2, t2, t0
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t2, t2, t0
	add t0, a4, a2
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	sw t2, 0(t0)
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	lw t0, 0(t0)
	add t1, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t1, t1, t0
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a5, t0
	sw t1, 0(t0)
	addi t0, s2, 4
	lw s4, 0(t0)
	rem a1, a1, s4
	addi t0, zero, 0
	xor t0, a3, t0
	addi t1, zero, 0
	beqz t0, .LibroBB18_79
	addi s1, zero, 0
	add t2, zero, a3
	add t1, zero, a1
	j .LibroBB18_78
.LibroBB18_73: 
	andi s3, t2, 1
	addi t0, zero, 0
	xor s3, s3, t0
	add t0, zero, s1
	beqz s3, .LibroBB18_88
	j .LibroBB18_80
.LibroBB18_74: 
	srai a2, t2, 1
	slli t0, t0, 1
	rem a1, t0, a3
	addi t0, zero, 0
	xor t2, a2, t0
	add t0, zero, t1
	beqz t2, .LibroBB18_81
	add s1, zero, t1
	add t2, zero, a2
	add t0, zero, a1
	j .LibroBB18_63
.LibroBB18_75: 
	bge a3, a5, .LibroBB18_83
	j .LibroBB18_82
.LibroBB18_76: 
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a4, t1
	lw a0, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a4, t1
	lw s1, 0(t1)
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, a4, t1
	sw s1, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a4, t1
	sw a0, 0(t1)
	j .LibroBB18_84
.LibroBB18_77: 
	andi a2, s1, 1
	addi t2, zero, 0
	xor a2, a2, t2
	add t2, zero, a0
	beqz a2, .LibroBB18_85
	j .LibroBB18_86
.LibroBB18_78: 
	andi a1, t2, 1
	addi t0, zero, 0
	xor a1, a1, t0
	add t0, zero, s1
	beqz a1, .LibroBB18_95
	j .LibroBB18_87
.LibroBB18_79: 
	addi t0, a0, 1
	add a1, zero, t1
	add a0, zero, t0
	j .LibroBB18_62
.LibroBB18_80: 
	add t0, s1, t1
	rem t0, t0, s5
	add t0, zero, t0
	j .LibroBB18_88
.LibroBB18_81: 
	addi t1, s2, 8
	lw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw t0, 0(t1)
	addi t0, a0, 1
	add a0, zero, t0
	j .LibroBB18_55
.LibroBB18_82: 
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t1, t0, -1
	slli t0, a3, 1
	div t1, t1, t0
	addi t0, zero, 0
	xor t0, t1, t0
	addi a6, zero, 1
	beqz t0, .LibroBB18_89
	addi t0, zero, 1
	add a2, zero, t1
	addi a1, zero, 3
	j .LibroBB18_90
.LibroBB18_83: 
	addi t1, zero, -1
	addi t0, zero, -1
	xor t0, t1, t0
	bnez t0, .LibroBB18_91
	j .LibroBB18_92
.LibroBB18_84: 
	srai t1, a5, 1
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB18_93
.LibroBB18_85: 
	srai a4, s1, 1
	slli t1, t1, 1
	rem a2, t1, a7
	addi t1, zero, 0
	xor s1, a4, t1
	add t1, zero, t2
	beqz s1, .LibroBB18_94
	add a0, zero, t2
	add s1, zero, a4
	add t1, zero, a2
	j .LibroBB18_77
.LibroBB18_86: 
	add t2, a0, t1
	rem t2, t2, a7
	add t2, zero, t2
	j .LibroBB18_85
.LibroBB18_87: 
	add t0, s1, t1
	rem t0, t0, s4
	add t0, zero, t0
	j .LibroBB18_95
.LibroBB18_88: 
	srai s4, t2, 1
	slli t1, t1, 1
	rem s3, t1, s5
	addi t1, zero, 0
	xor t2, s4, t1
	add t1, zero, t0
	beqz t2, .LibroBB18_72
	add s1, zero, t0
	add t2, zero, s4
	add t1, zero, s3
	j .LibroBB18_73
.LibroBB18_89: 
	slli a7, a3, 1
	addi a2, zero, 0
	j .LibroBB18_96
.LibroBB18_90: 
	andi t2, a2, 1
	addi t1, zero, 0
	xor t1, t2, t1
	add a0, zero, t0
	beqz t1, .LibroBB18_123
	j .LibroBB18_97
.LibroBB18_91: 
	addi t0, s2, 20
	lw s1, 0(t0)
	addi t0, s2, 4
	lw t0, 0(t0)
	addi t1, t0, -2
	addi t0, zero, 0
	xor t0, t1, t0
	addi a1, zero, 1
	beqz t0, .LibroBB18_145
	addi t2, zero, 1
	add a1, zero, t1
	add a0, zero, s1
	j .LibroBB18_98
.LibroBB18_92: 
	addi t0, zero, 1
	bge t0, a5, .LibroBB18_107
	add t1, zero, a5
	addi t0, zero, 1
	j .LibroBB18_99
.LibroBB18_93: 
	xor s1, t0, t1
	slt t0, s1, t1
	bnez t0, .LibroBB18_101
	add t0, zero, s1
	j .LibroBB18_100
.LibroBB18_94: 
	addi t2, zero, 0
	xor t2, a3, t2
	add a4, zero, a1
	beqz t2, .LibroBB18_102
	add t2, zero, a1
	add a3, zero, a3
	add a2, zero, t1
	j .LibroBB18_43
.LibroBB18_95: 
	srai s3, t2, 1
	slli t1, t1, 1
	rem a1, t1, s4
	addi t1, zero, 0
	xor t2, s3, t1
	add t1, zero, t0
	beqz t2, .LibroBB18_79
	add s1, zero, t0
	add t2, zero, s3
	add t1, zero, a1
	j .LibroBB18_78
.LibroBB18_96: 
	bge a2, a5, .LibroBB18_104
	j .LibroBB18_103
.LibroBB18_97: 
	addi t1, s2, 4
	lw a7, 0(t1)
	rem a0, t0, a7
	addi t0, zero, 0
	xor t1, a1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB18_117
	addi s1, zero, 0
	add t2, zero, a1
	add t0, zero, a0
	j .LibroBB18_105
.LibroBB18_98: 
	andi t1, a1, 1
	addi t0, zero, 0
	xor t0, t1, t0
	add t1, zero, t2
	beqz t0, .LibroBB18_133
	j .LibroBB18_106
.LibroBB18_99: 
	addi a0, t1, -1
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a4, t1
	lw s1, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a4, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a4, t1
	sw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, a4, t1
	sw s1, 0(t1)
	addi t0, t0, 1
	bge t0, a0, .LibroBB18_107
	add t1, zero, a0
	add t0, zero, t0
	j .LibroBB18_99
.LibroBB18_100: 
	addi t1, t2, 1
	add t0, zero, t0
	add t2, zero, t1
	j .LibroBB18_64
.LibroBB18_101: 
	srai t0, t1, 1
	add t1, zero, t0
	add t0, zero, s1
	j .LibroBB18_93
.LibroBB18_102: 
	slli a7, t0, 1
	addi a3, zero, 0
	j .LibroBB18_108
.LibroBB18_103: 
	addi a1, zero, 1
	addi a0, zero, 0
	j .LibroBB18_109
.LibroBB18_104: 
	slli t0, a3, 1
	add a3, zero, t0
	j .LibroBB18_75
.LibroBB18_105: 
	andi a0, t2, 1
	addi t1, zero, 0
	xor a0, a0, t1
	add t1, zero, s1
	beqz a0, .LibroBB18_111
	j .LibroBB18_110
.LibroBB18_106: 
	addi t0, s2, 4
	lw a4, 0(t0)
	rem a2, t2, a4
	addi t0, zero, 0
	xor t1, a0, t0
	addi t0, zero, 0
	beqz t1, .LibroBB18_124
	addi s1, zero, 0
	add t2, zero, a0
	add t0, zero, a2
	j .LibroBB18_112
.LibroBB18_107: 
	j .LibroBB18_91
.LibroBB18_108: 
	bge a3, a6, .LibroBB18_113
	j .LibroBB18_114
.LibroBB18_109: 
	bge a0, a3, .LibroBB18_115
	j .LibroBB18_116
.LibroBB18_110: 
	add t1, s1, t0
	rem t1, t1, a7
	add t1, zero, t1
	j .LibroBB18_111
.LibroBB18_111: 
	srai a6, t2, 1
	slli t0, t0, 1
	rem a0, t0, a7
	addi t0, zero, 0
	xor t2, a6, t0
	add t0, zero, t1
	beqz t2, .LibroBB18_117
	add s1, zero, t1
	add t2, zero, a6
	add t0, zero, a0
	j .LibroBB18_105
.LibroBB18_112: 
	andi a2, t2, 1
	addi t1, zero, 0
	xor a2, a2, t1
	add t1, zero, s1
	beqz a2, .LibroBB18_118
	j .LibroBB18_119
.LibroBB18_113: 
	slli t0, t0, 1
	add t0, zero, t0
	j .LibroBB18_34
.LibroBB18_114: 
	addi a2, zero, 1
	addi a1, zero, 0
	j .LibroBB18_120
.LibroBB18_115: 
	add t0, a2, a7
	add a2, zero, t0
	j .LibroBB18_96
.LibroBB18_116: 
	add t0, a2, a3
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a4, t0
	lw t2, 0(t0)
	addi t0, s2, 4
	lw s5, 0(t0)
	rem s3, a1, s5
	addi t0, zero, 0
	xor t0, t2, t0
	addi t1, zero, 0
	beqz t0, .LibroBB18_122
	addi s1, zero, 0
	add t2, zero, t2
	add t1, zero, s3
	j .LibroBB18_121
.LibroBB18_117: 
	add a0, zero, t0
	j .LibroBB18_123
.LibroBB18_118: 
	srai a3, t2, 1
	slli t0, t0, 1
	rem a2, t0, a4
	addi t0, zero, 0
	xor t2, a3, t0
	add t0, zero, t1
	beqz t2, .LibroBB18_124
	add s1, zero, t1
	add t2, zero, a3
	add t0, zero, a2
	j .LibroBB18_112
.LibroBB18_119: 
	add t1, s1, t0
	rem t1, t1, a4
	add t1, zero, t1
	j .LibroBB18_118
.LibroBB18_120: 
	bge a1, t0, .LibroBB18_125
	j .LibroBB18_126
.LibroBB18_121: 
	andi s3, t2, 1
	addi t0, zero, 0
	xor s3, s3, t0
	add t0, zero, s1
	beqz s3, .LibroBB18_127
	j .LibroBB18_128
.LibroBB18_122: 
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a4, t0
	lw t0, 0(t0)
	sub t2, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	add t2, t2, t0
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t2, t2, t0
	add t0, a3, a2
	add t0, t0, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a4, t0
	sw t2, 0(t0)
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a4, t0
	lw t0, 0(t0)
	add t1, t0, t1
	addi t0, s2, 4
	lw t0, 0(t0)
	rem t1, t1, t0
	add t0, a2, a0
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, a4, t0
	sw t1, 0(t0)
	addi t0, s2, 4
	lw s4, 0(t0)
	rem a1, a1, s4
	addi t0, zero, 0
	xor t0, a6, t0
	addi t1, zero, 0
	beqz t0, .LibroBB18_129
	addi s1, zero, 0
	add t2, zero, a6
	add t1, zero, a1
	j .LibroBB18_130
.LibroBB18_123: 
	srai a7, a2, 1
	addi t0, s2, 4
	lw a6, 0(t0)
	rem a2, a1, a6
	addi t0, zero, 0
	xor t0, a1, t0
	addi t1, zero, 0
	beqz t0, .LibroBB18_132
	addi s1, zero, 0
	add t2, zero, a1
	add t1, zero, a2
	j .LibroBB18_131
.LibroBB18_124: 
	add t1, zero, t0
	j .LibroBB18_133
.LibroBB18_125: 
	add t1, a3, a7
	add a3, zero, t1
	j .LibroBB18_108
.LibroBB18_126: 
	add t1, a3, t0
	add t1, t1, a1
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw s1, 0(t1)
	addi t1, s2, 4
	lw s5, 0(t1)
	rem s3, a2, s5
	addi t1, zero, 0
	xor t1, s1, t1
	addi t2, zero, 0
	beqz t1, .LibroBB18_134
	addi a0, zero, 0
	add s1, zero, s1
	add t2, zero, s3
	j .LibroBB18_135
.LibroBB18_127: 
	srai s4, t2, 1
	slli t1, t1, 1
	rem s3, t1, s5
	addi t1, zero, 0
	xor t2, s4, t1
	add t1, zero, t0
	beqz t2, .LibroBB18_122
	add s1, zero, t0
	add t2, zero, s4
	add t1, zero, s3
	j .LibroBB18_121
.LibroBB18_128: 
	add t0, s1, t1
	rem t0, t0, s5
	add t0, zero, t0
	j .LibroBB18_127
.LibroBB18_129: 
	addi t0, a0, 1
	add a1, zero, t1
	add a0, zero, t0
	j .LibroBB18_109
.LibroBB18_130: 
	andi a1, t2, 1
	addi t0, zero, 0
	xor a1, a1, t0
	add t0, zero, s1
	beqz a1, .LibroBB18_136
	j .LibroBB18_137
.LibroBB18_131: 
	andi a1, t2, 1
	addi t0, zero, 0
	xor a1, a1, t0
	add t0, zero, s1
	beqz a1, .LibroBB18_139
	j .LibroBB18_138
.LibroBB18_132: 
	addi t0, zero, 0
	xor t0, a7, t0
	add a6, zero, a0
	beqz t0, .LibroBB18_89
	add t0, zero, a0
	add a2, zero, a7
	add a1, zero, t1
	j .LibroBB18_90
.LibroBB18_133: 
	srai a3, a1, 1
	addi t0, s2, 4
	lw a4, 0(t0)
	rem a2, a0, a4
	addi t0, zero, 0
	xor t2, a0, t0
	addi t0, zero, 0
	beqz t2, .LibroBB18_140
	addi a1, zero, 0
	add s1, zero, a0
	add t0, zero, a2
	j .LibroBB18_141
.LibroBB18_134: 
	add t1, a3, a1
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw t1, 0(t1)
	sub s1, t1, t2
	addi t1, s2, 4
	lw t1, 0(t1)
	add s1, s1, t1
	addi t1, s2, 4
	lw t1, 0(t1)
	rem s1, s1, t1
	add t1, t0, a3
	add t1, t1, a1
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw s1, 0(t1)
	add t1, a3, a1
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, a5, t1
	lw t1, 0(t1)
	add t2, t1, t2
	addi t1, s2, 4
	lw t1, 0(t1)
	rem t2, t2, t1
	add t1, a3, a1
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, a5, t1
	sw t2, 0(t1)
	addi t1, s2, 4
	lw s4, 0(t1)
	rem a2, a2, s4
	addi t1, zero, 0
	xor t1, a4, t1
	addi t2, zero, 0
	beqz t1, .LibroBB18_142
	addi a0, zero, 0
	add s1, zero, a4
	add t2, zero, a2
	j .LibroBB18_143
.LibroBB18_135: 
	andi s3, s1, 1
	addi t1, zero, 0
	xor s3, s3, t1
	add t1, zero, a0
	beqz s3, .LibroBB18_149
	j .LibroBB18_144
.LibroBB18_136: 
	srai s3, t2, 1
	slli t1, t1, 1
	rem a1, t1, s4
	addi t1, zero, 0
	xor t2, s3, t1
	add t1, zero, t0
	beqz t2, .LibroBB18_129
	add s1, zero, t0
	add t2, zero, s3
	add t1, zero, a1
	j .LibroBB18_130
.LibroBB18_137: 
	add t0, s1, t1
	rem t0, t0, s4
	add t0, zero, t0
	j .LibroBB18_136
.LibroBB18_138: 
	add t0, s1, t1
	rem t0, t0, a6
	add t0, zero, t0
	j .LibroBB18_139
.LibroBB18_139: 
	srai a2, t2, 1
	slli t1, t1, 1
	rem a1, t1, a6
	addi t1, zero, 0
	xor t2, a2, t1
	add t1, zero, t0
	beqz t2, .LibroBB18_132
	add s1, zero, t0
	add t2, zero, a2
	add t1, zero, a1
	j .LibroBB18_131
.LibroBB18_140: 
	addi t2, zero, 0
	xor t2, a3, t2
	add a1, zero, t1
	beqz t2, .LibroBB18_145
	add t2, zero, t1
	add a1, zero, a3
	add a0, zero, t0
	j .LibroBB18_98
.LibroBB18_141: 
	andi a0, s1, 1
	addi t2, zero, 0
	xor a0, a0, t2
	add t2, zero, a1
	beqz a0, .LibroBB18_147
	j .LibroBB18_146
.LibroBB18_142: 
	addi t1, a1, 1
	add a2, zero, t2
	add a1, zero, t1
	j .LibroBB18_120
.LibroBB18_143: 
	andi a2, s1, 1
	addi t1, zero, 0
	xor a2, a2, t1
	add t1, zero, a0
	beqz a2, .LibroBB18_151
	j .LibroBB18_148
.LibroBB18_144: 
	add t1, a0, t2
	rem t1, t1, s5
	add t1, zero, t1
	j .LibroBB18_149
.LibroBB18_145: 
	addi a0, zero, 0
	j .LibroBB18_150
.LibroBB18_146: 
	add t2, a1, t0
	rem t2, t2, a4
	add t2, zero, t2
	j .LibroBB18_147
.LibroBB18_147: 
	srai a2, s1, 1
	slli t0, t0, 1
	rem a0, t0, a4
	addi t0, zero, 0
	xor s1, a2, t0
	add t0, zero, t2
	beqz s1, .LibroBB18_140
	add a1, zero, t2
	add s1, zero, a2
	add t0, zero, a0
	j .LibroBB18_141
.LibroBB18_148: 
	add t1, a0, t2
	rem t1, t1, s4
	add t1, zero, t1
	j .LibroBB18_151
.LibroBB18_149: 
	srai s4, s1, 1
	slli t2, t2, 1
	rem s3, t2, s5
	addi t2, zero, 0
	xor s1, s4, t2
	add t2, zero, t1
	beqz s1, .LibroBB18_134
	add a0, zero, t1
	add s1, zero, s4
	add t2, zero, s3
	j .LibroBB18_135
.LibroBB18_150: 
	addi t0, s2, 20
	lw t0, 0(t0)
	bge a0, t0, .LibroBB18_153
	j .LibroBB18_152
.LibroBB18_151: 
	srai s3, s1, 1
	slli t2, t2, 1
	rem a2, t2, s4
	addi t2, zero, 0
	xor s1, s3, t2
	add t2, zero, t1
	beqz s1, .LibroBB18_142
	add a0, zero, t1
	add s1, zero, s3
	add t2, zero, a2
	j .LibroBB18_143
.LibroBB18_152: 
	addi t0, s2, 8
	lw t1, 0(t0)
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	addi t0, s2, 4
	lw a4, 0(t0)
	rem a2, t1, a4
	addi t0, zero, 0
	xor t1, a1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB18_160
	addi s1, zero, 0
	add t2, zero, a1
	add t0, zero, a2
	j .LibroBB18_154
.LibroBB18_153: 
	addi s1, zero, 0
	j .LibroBB18_155
.LibroBB18_154: 
	andi a2, t2, 1
	addi t1, zero, 0
	xor a2, a2, t1
	add t1, zero, s1
	beqz a2, .LibroBB18_156
	j .LibroBB18_157
.LibroBB18_155: 
	addi t0, s2, 24
	lw t1, 0(t0)
	addi t0, s2, 16
	lw t0, 0(t0)
	add t0, t1, t0
	slt t0, t0, s1
	bnez t0, .LibroBB18_158
	j .LibroBB18_159
.LibroBB18_156: 
	srai a3, t2, 1
	slli t0, t0, 1
	rem a2, t0, a4
	addi t0, zero, 0
	xor t2, a3, t0
	add t0, zero, t1
	beqz t2, .LibroBB18_160
	add s1, zero, t1
	add t2, zero, a3
	add t0, zero, a2
	j .LibroBB18_154
.LibroBB18_157: 
	add t1, s1, t0
	rem t1, t1, a4
	add t1, zero, t1
	j .LibroBB18_156
.LibroBB18_158: 
	addi a0, zero, 4
	call myNew
	sw a0, -176(s0)
	addi t0, zero, 998
	sw t0, -292(s0)
	addi t0, zero, 3
	sw t0, -296(s0)
	addi t0, zero, 9
	sw t0, -300(s0)
	addi t0, zero, 6
	sw t0, -304(s0)
	addi t0, zero, 2
	sw t0, -312(s0)
	addi t0, zero, 4
	sw t0, -316(s0)
	addi t0, zero, 2
	sw t0, -324(s0)
	addi t0, zero, 1
	sw t0, -328(s0)
	addi t0, zero, 9
	sw t0, -60(s0)
	addi t0, zero, 4
	sw t0, -64(s0)
	addi t0, zero, 4
	sw t0, -68(s0)
	addi t0, zero, 6
	sw t0, -72(s0)
	addi t0, zero, 5
	sw t0, -84(s0)
	addi t0, zero, 9
	sw t0, -88(s0)
	addi t0, zero, 7
	sw t0, -96(s0)
	addi t0, zero, 8
	sw t0, -100(s0)
	addi t0, zero, 6
	sw t0, -104(s0)
	addi t0, zero, 2
	sw t0, -108(s0)
	addi t0, zero, 4
	sw t0, -116(s0)
	addi t0, zero, 7
	sw t0, -120(s0)
	addi t0, zero, 1
	sw t0, -124(s0)
	addi t0, zero, 4
	sw t0, -136(s0)
	addi t0, zero, 8
	sw t0, -140(s0)
	addi t0, zero, 6
	sw t0, -144(s0)
	addi t0, zero, 6
	sw t0, -148(s0)
	addi s8, zero, 1
	addi s9, zero, 3
	addi s7, zero, 9
	addi s6, zero, 4
	addi s10, zero, 4
	addi s5, zero, 1
	addi s11, zero, 4
	addi s3, zero, 2
	addi s2, zero, 8
	addi t3, zero, 6
	addi t4, zero, 5
	addi a7, zero, 3
	addi a6, zero, 3
	addi a5, zero, 1
	addi s4, zero, 8
	addi a4, zero, 4
	addi t5, zero, 1
	addi a3, zero, 5
	addi a2, zero, 8
	addi t6, zero, 7
	addi a1, zero, 5
	addi a0, zero, 5
	addi s1, zero, 2
	addi t2, zero, 7
	addi t1, zero, 7
	addi t0, zero, 0
	j .LibroBB18_161
.LibroBB18_159: 
	addi t0, s2, 8
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	call printlnInt
	addi t0, s1, 1
	add s1, zero, t0
	j .LibroBB18_155
.LibroBB18_160: 
	addi t1, s2, 8
	lw t2, 0(t1)
	slli t1, a0, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw t0, 0(t1)
	addi t0, a0, 1
	add a0, zero, t0
	j .LibroBB18_150
.LibroBB18_161: 
	sw t0, -184(s0)
	sw t1, -168(s0)
	sw t2, -192(s0)
	sw s1, -76(s0)
	sw a0, -200(s0)
	sw a1, -208(s0)
	sw t6, -132(s0)
	mv a1, a2
	sw a3, -216(s0)
	sw t5, -224(s0)
	mv s1, a4
	sw s4, -232(s0)
	mv s4, a5
	sw a6, -152(s0)
	sw a7, -172(s0)
	sw t4, -240(s0)
	mv t1, t3
	mv a2, s2
	sw s3, -248(s0)
	sw s11, -156(s0)
	mv a3, s5
	sw s10, -256(s0)
	mv a6, s6
	sw s7, -264(s0)
	mv t3, s9
	mv t0, s8
	sw t0, -332(s0)
	lw t4, -148(s0)
	lw t0, -144(s0)
	mv s11, t0
	lw t0, -140(s0)
	mv s10, t0
	lw t0, -136(s0)
	mv s9, t0
	lw t0, -124(s0)
	sw t0, -128(s0)
	lw t0, -120(s0)
	mv a4, t0
	lw t0, -116(s0)
	mv s8, t0
	lw t0, -108(s0)
	mv a0, t0
	lw t0, -104(s0)
	mv s7, t0
	lw t0, -100(s0)
	sw t0, -308(s0)
	lw t0, -96(s0)
	sw t0, -320(s0)
	lw t0, -88(s0)
	sw t0, -56(s0)
	lw t0, -84(s0)
	sw t0, -164(s0)
	lw t0, -72(s0)
	mv a7, t0
	lw t0, -68(s0)
	mv s2, t0
	lw t0, -64(s0)
	mv s6, t0
	lw t0, -60(s0)
	mv s3, t0
	lw t0, -328(s0)
	sw t0, -160(s0)
	lw t0, -324(s0)
	sw t0, -80(s0)
	lw t0, -316(s0)
	sw t0, -92(s0)
	lw t0, -312(s0)
	mv t2, t0
	lw t0, -304(s0)
	mv s5, t0
	lw t0, -300(s0)
	sw t0, -112(s0)
	lw t0, -296(s0)
	mv a5, t0
	lw t0, -292(s0)
	lw t5, -184(s0)
	rem t5, t5, t0
	sw t5, -180(s0)
	addi t5, zero, 100
	lw t6, -180(s0)
	bge t6, t5, .LibroBB18_162
	j .LibroBB18_163
.LibroBB18_162: 
	lw t4, -176(s0)
	addi t5, t4, 0
	addi t4, zero, -1
	sw t4, 0(t5)
	lw t4, -176(s0)
	addi t4, t4, 0
	sw t0, 0(t4)
	add t4, zero, t0
	j .LibroBB18_164
.LibroBB18_163: 
	lw t5, -192(s0)
	addi t5, t5, 6
	sw t5, -188(s0)
	lw t5, -200(s0)
	addi t5, t5, 4
	sw t5, -196(s0)
	lw t5, -208(s0)
	addi t5, t5, 9
	sw t5, -204(s0)
	lw t5, -216(s0)
	addi t5, t5, 1
	sw t5, -212(s0)
	lw t5, -224(s0)
	addi t5, t5, 4
	sw t5, -220(s0)
	lw t5, -232(s0)
	addi t5, t5, 6
	sw t5, -228(s0)
	lw t5, -240(s0)
	addi t5, t5, 6
	sw t5, -236(s0)
	lw t5, -248(s0)
	addi t5, t5, 2
	sw t5, -244(s0)
	lw t5, -256(s0)
	addi t5, t5, 1
	sw t5, -252(s0)
	lw t5, -264(s0)
	addi t5, t5, 1
	sw t5, -260(s0)
	addi t3, t3, 4
	sw t3, -268(s0)
	lw t3, -332(s0)
	addi t3, t3, 9
	sw t3, -272(s0)
	addi t3, t4, 8
	sw t3, -276(s0)
	addi s11, s11, 9
	sw s11, -280(s0)
	addi s10, s10, 8
	sw s10, -284(s0)
	addi s9, s9, 6
	sw s9, -288(s0)
	addi t3, s8, 6
	addi t4, s7, 7
	lw s7, -308(s0)
	addi s11, s7, 5
	lw s7, -320(s0)
	addi s10, s7, 1
	lw s7, -56(s0)
	addi s9, s7, 7
	addi t5, s6, 9
	lw s6, -80(s0)
	addi s8, s6, 9
	lw s6, -92(s0)
	addi s7, s6, 9
	addi t6, s5, 9
	lw s5, -112(s0)
	addi s6, s5, 2
	srai s5, t0, 1
	xori t0, t0, 1
	addi t0, t0, 10
	add t0, zero, t0
	sw t0, -292(s0)
	add t0, zero, s5
	sw t0, -296(s0)
	add t0, zero, a5
	sw t0, -300(s0)
	add t0, zero, s6
	sw t0, -304(s0)
	add t0, zero, t6
	sw t0, -312(s0)
	add t0, zero, t2
	sw t0, -316(s0)
	add t0, zero, s7
	sw t0, -324(s0)
	add t0, zero, s8
	sw t0, -328(s0)
	lw t0, -160(s0)
	add t0, zero, t0
	sw t0, -60(s0)
	add t0, zero, s3
	sw t0, -64(s0)
	add t0, zero, t5
	sw t0, -68(s0)
	add t0, zero, s2
	sw t0, -72(s0)
	add t0, zero, a7
	sw t0, -84(s0)
	lw t0, -164(s0)
	add t0, zero, t0
	sw t0, -88(s0)
	add t0, zero, s9
	sw t0, -96(s0)
	add t0, zero, s10
	sw t0, -100(s0)
	add t0, zero, s11
	sw t0, -104(s0)
	add t0, zero, t4
	sw t0, -108(s0)
	add t0, zero, a0
	sw t0, -116(s0)
	add t0, zero, t3
	sw t0, -120(s0)
	add t0, zero, a4
	sw t0, -124(s0)
	lw t0, -128(s0)
	add t0, zero, t0
	sw t0, -136(s0)
	lw t0, -288(s0)
	add t0, zero, t0
	sw t0, -140(s0)
	lw t0, -284(s0)
	add t0, zero, t0
	sw t0, -144(s0)
	lw t0, -280(s0)
	add t0, zero, t0
	sw t0, -148(s0)
	lw t0, -276(s0)
	add s8, zero, t0
	lw t0, -272(s0)
	add s9, zero, t0
	lw t0, -268(s0)
	add s7, zero, t0
	lw t0, -260(s0)
	add s6, zero, t0
	add s10, zero, a6
	lw t0, -252(s0)
	add s5, zero, t0
	add s11, zero, a3
	lw t0, -156(s0)
	add s3, zero, t0
	lw t0, -244(s0)
	add s2, zero, t0
	add t3, zero, a2
	add t4, zero, t1
	lw t0, -236(s0)
	add a7, zero, t0
	lw t0, -172(s0)
	add a6, zero, t0
	lw t0, -152(s0)
	add a5, zero, t0
	add s4, zero, s4
	lw t0, -228(s0)
	add a4, zero, t0
	add t5, zero, s1
	lw t0, -220(s0)
	add a3, zero, t0
	lw t0, -212(s0)
	add a2, zero, t0
	add t6, zero, a1
	lw t0, -132(s0)
	add a1, zero, t0
	lw t0, -204(s0)
	add a0, zero, t0
	lw t0, -196(s0)
	add s1, zero, t0
	lw t0, -76(s0)
	add t2, zero, t0
	lw t0, -188(s0)
	add t1, zero, t0
	lw t0, -168(s0)
	add t0, zero, t0
	j .LibroBB18_161
.LibroBB18_164: 
	lw t0, -192(s0)
	xor t5, t0, t4
	addi t0, zero, 0
	bnez t5, .LibroBB18_172
	j .LibroBB18_165
.LibroBB18_165: 
	lw t5, -308(s0)
	lw t0, -232(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_167
	j .LibroBB18_166
.LibroBB18_166: 
	lw t5, -248(s0)
	lw t0, -332(s0)
	slt t5, t0, t5
	addi t0, zero, 0
	bnez t5, .LibroBB18_167
	j .LibroBB18_168
.LibroBB18_167: 
	beqz t0, .LibroBB18_170
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_168: 
	slt t5, a3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB18_167
	j .LibroBB18_171
.LibroBB18_169: 
	add t0, zero, t0
	j .LibroBB18_172
.LibroBB18_170: 
	xor t5, s8, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_173
	j .LibroBB18_174
.LibroBB18_171: 
	lw t0, -172(s0)
	slt t5, t0, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_167
	j .LibroBB18_175
.LibroBB18_172: 
	beqz t0, .LibroBB18_176
	j .LibroBB18_177
.LibroBB18_173: 
	beqz t0, .LibroBB18_178
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_174: 
	slt t0, s10, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_173
.LibroBB18_175: 
	xor t5, a4, t1
	addi t0, zero, 0
	bnez t5, .LibroBB18_167
	j .LibroBB18_179
.LibroBB18_176: 
	lw t0, -176(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	addi t0, zero, -1
	xor t0, t1, t0
	bnez t0, .LibroBB18_184
	j .LibroBB18_180
.LibroBB18_177: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_181
.LibroBB18_178: 
	addi t0, zero, 0
	lw t6, -224(s0)
	lw t5, -80(s0)
	bge t6, t5, .LibroBB18_186
	j .LibroBB18_182
.LibroBB18_179: 
	slt t5, s6, a6
	addi t0, zero, 0
	bnez t5, .LibroBB18_167
	j .LibroBB18_183
.LibroBB18_180: 
	la a0, .libro.str
	call println
	j .LibroBB18_184
.LibroBB18_181: 
	lw t5, -308(s0)
	lw t0, -232(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_189
	j .LibroBB18_185
.LibroBB18_182: 
	slt t0, a1, a0
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_186
.LibroBB18_183: 
	slt t0, s2, a2
	add t0, zero, t0
	j .LibroBB18_167
.LibroBB18_184: 
	lw t0, -176(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	call printlnInt
	addi a0, zero, 4
	call myNew
	mv s1, a0
	addi t1, s1, 0
	lui t0, 4702
	addi t0, t0, 1425
	sw t0, 0(t1)
	addi t0, s1, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a0, t1, t0
	addi t0, zero, 0
	slt t0, a0, t0
	bnez t0, .LibroBB18_187
	j .LibroBB18_188
.LibroBB18_185: 
	lw t5, -248(s0)
	lw t0, -332(s0)
	slt t5, t0, t5
	addi t0, zero, 0
	bnez t5, .LibroBB18_189
	j .LibroBB18_190
.LibroBB18_186: 
	beqz t0, .LibroBB18_191
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_187: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a0, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB18_192
.LibroBB18_188: 
	srai t0, a0, 17
	add t0, zero, t0
	j .LibroBB18_192
.LibroBB18_189: 
	beqz t0, .LibroBB18_193
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_190: 
	slt t5, a3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB18_189
	j .LibroBB18_194
.LibroBB18_191: 
	slt t0, t3, s11
	bnez t0, .LibroBB18_195
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_192: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s1, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	andi a1, t0, 255
	addi t0, s1, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a0, t1, t0
	addi t0, zero, 0
	slt t0, a0, t0
	bnez t0, .LibroBB18_197
	j .LibroBB18_196
.LibroBB18_193: 
	xor t5, s8, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_198
	j .LibroBB18_199
.LibroBB18_194: 
	lw t0, -172(s0)
	slt t5, t0, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_189
	j .LibroBB18_200
.LibroBB18_195: 
	xor t0, s3, s5
	bnez t0, .LibroBB18_201
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_196: 
	srai t0, a0, 17
	add t0, zero, t0
	j .LibroBB18_202
.LibroBB18_197: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a0, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB18_202
.LibroBB18_198: 
	beqz t0, .LibroBB18_203
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_199: 
	slt t0, s10, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_198
.LibroBB18_200: 
	xor t5, a4, t1
	addi t0, zero, 0
	bnez t5, .LibroBB18_189
	j .LibroBB18_204
.LibroBB18_201: 
	slt t0, a7, s2
	bnez t0, .LibroBB18_205
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_202: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s1, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	andi t0, t0, 255
	xor t1, a1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB18_263
	addi s2, zero, 0
	j .LibroBB18_206
.LibroBB18_203: 
	addi t0, zero, 0
	lw t6, -224(s0)
	lw t5, -80(s0)
	bge t6, t5, .LibroBB18_207
	j .LibroBB18_208
.LibroBB18_204: 
	slt t5, s6, a6
	addi t0, zero, 0
	bnez t5, .LibroBB18_189
	j .LibroBB18_209
.LibroBB18_205: 
	lw t0, -184(s0)
	bge t0, a7, .LibroBB18_210
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_206: 
	addi t0, s1, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a0, t1, t0
	addi t0, zero, 0
	slt t0, a0, t0
	bnez t0, .LibroBB18_212
	j .LibroBB18_211
.LibroBB18_207: 
	beqz t0, .LibroBB18_213
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_208: 
	slt t0, a1, a0
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_207
.LibroBB18_209: 
	slt t0, s2, a2
	add t0, zero, t0
	j .LibroBB18_189
.LibroBB18_210: 
	lw t5, -200(s0)
	lw t0, -76(s0)
	bge t5, t0, .LibroBB18_214
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_211: 
	srai t0, a0, 17
	add t0, zero, t0
	j .LibroBB18_215
.LibroBB18_212: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a0, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB18_215
.LibroBB18_213: 
	slt t0, t3, s11
	bnez t0, .LibroBB18_216
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_214: 
	xor t0, s4, s9
	beqz t0, .LibroBB18_217
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_215: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s1, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	addi a1, t0, 1
	addi t0, s1, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a0, t1, t0
	addi t0, zero, 0
	slt t0, a0, t0
	bnez t0, .LibroBB18_218
	j .LibroBB18_219
.LibroBB18_216: 
	xor t0, s3, s5
	bnez t0, .LibroBB18_220
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_217: 
	bge a6, s2, .LibroBB18_221
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_218: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a0, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB18_222
.LibroBB18_219: 
	srai t0, a0, 17
	add t0, zero, t0
	j .LibroBB18_222
.LibroBB18_220: 
	slt t0, a7, s2
	bnez t0, .LibroBB18_223
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_221: 
	addi t0, zero, 0
	bge a5, t3, .LibroBB18_224
	j .LibroBB18_225
.LibroBB18_222: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s1, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	addi t1, t0, 1
	addi t0, zero, 0
	bge t0, t1, .LibroBB18_227
	j .LibroBB18_226
.LibroBB18_223: 
	lw t0, -184(s0)
	bge t0, a7, .LibroBB18_228
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_224: 
	beqz t0, .LibroBB18_229
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_225: 
	xor t0, s2, a4
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_224
.LibroBB18_226: 
	rem t2, a1, t1
	addi t0, zero, 0
	bge t0, t2, .LibroBB18_230
	j .LibroBB18_231
.LibroBB18_227: 
	add t0, zero, a1
	j .LibroBB18_232
.LibroBB18_228: 
	lw t5, -200(s0)
	lw t0, -76(s0)
	bge t5, t0, .LibroBB18_233
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_229: 
	slt t5, s7, s3
	addi t0, zero, 0
	bnez t5, .LibroBB18_254
	j .LibroBB18_234
.LibroBB18_230: 
	add t0, zero, t1
	j .LibroBB18_235
.LibroBB18_231: 
	rem t1, t1, t2
	addi t0, zero, 0
	bge t0, t1, .LibroBB18_237
	j .LibroBB18_236
.LibroBB18_232: 
	xor a0, s2, t0
	addi t0, s1, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a1, t1, t0
	addi t0, zero, 0
	slt t0, a1, t0
	bnez t0, .LibroBB18_238
	j .LibroBB18_239
.LibroBB18_233: 
	xor t0, s4, s9
	beqz t0, .LibroBB18_240
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_234: 
	addi t0, zero, 0
	lw t5, -92(s0)
	bge s7, t5, .LibroBB18_254
	j .LibroBB18_241
.LibroBB18_235: 
	add t0, zero, t0
	j .LibroBB18_232
.LibroBB18_236: 
	rem t2, t2, t1
	addi t0, zero, 0
	bge t0, t2, .LibroBB18_242
	j .LibroBB18_243
.LibroBB18_237: 
	add t0, zero, t2
	j .LibroBB18_255
.LibroBB18_238: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a1, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB18_244
.LibroBB18_239: 
	srai t0, a1, 17
	add t0, zero, t0
	j .LibroBB18_244
.LibroBB18_240: 
	bge a6, s2, .LibroBB18_245
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_241: 
	lw t5, -152(s0)
	lw t0, -332(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_254
	j .LibroBB18_246
.LibroBB18_242: 
	add t0, zero, t1
	j .LibroBB18_247
.LibroBB18_243: 
	rem t1, t1, t2
	addi t0, zero, 0
	bge t0, t1, .LibroBB18_249
	j .LibroBB18_248
.LibroBB18_244: 
	xor t1, a1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s1, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	andi a2, t0, 255
	addi t0, s1, 0
	lw t1, 0(t0)
	slli t0, t1, 13
	xor a1, t1, t0
	addi t0, zero, 0
	slt t0, a1, t0
	bnez t0, .LibroBB18_250
	j .LibroBB18_251
.LibroBB18_245: 
	addi t0, zero, 0
	bge a5, t3, .LibroBB18_259
	j .LibroBB18_252
.LibroBB18_246: 
	lw t0, -156(s0)
	slt t5, t0, s9
	addi t0, zero, 0
	bnez t5, .LibroBB18_254
	j .LibroBB18_253
.LibroBB18_247: 
	add t0, zero, t0
	j .LibroBB18_255
.LibroBB18_248: 
	rem a1, t2, t1
	addi t0, zero, 0
	bge t0, a1, .LibroBB18_257
	j .LibroBB18_256
.LibroBB18_249: 
	add t0, zero, t2
	j .LibroBB18_267
.LibroBB18_250: 
	addi t2, zero, 31
	addi t0, zero, 17
	sub t2, t2, t0
	addi t1, zero, 1
	sll t1, t1, t2
	lui t0, 524288
	addi t0, t0, 0
	xor t0, a1, t0
	srai t0, t0, 17
	or t0, t1, t0
	add t0, zero, t0
	j .LibroBB18_258
.LibroBB18_251: 
	srai t0, a1, 17
	add t0, zero, t0
	j .LibroBB18_258
.LibroBB18_252: 
	xor t0, s2, a4
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_259
.LibroBB18_253: 
	xor t5, t2, s2
	addi t0, zero, 0
	beqz t5, .LibroBB18_254
	j .LibroBB18_260
.LibroBB18_254: 
	beqz t0, .LibroBB18_261
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_255: 
	add t0, zero, t0
	j .LibroBB18_235
.LibroBB18_256: 
	rem a2, t1, a1
	mv a0, s1
	call _taskInline_gcd
	add t0, zero, a0
	j .LibroBB18_262
.LibroBB18_257: 
	add t0, zero, t1
	j .LibroBB18_262
.LibroBB18_258: 
	xor t1, a1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	addi t0, s1, 0
	sw t1, 0(t0)
	lui t0, 262144
	addi t0, t0, -1
	and t0, t1, t0
	andi t0, t0, 255
	xor t1, a2, t0
	add t0, zero, a0
	beqz t1, .LibroBB18_263
	add s2, zero, a0
	j .LibroBB18_206
.LibroBB18_259: 
	beqz t0, .LibroBB18_264
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_260: 
	lw t0, -160(s0)
	xor t5, t0, t3
	addi t0, zero, 0
	bnez t5, .LibroBB18_254
	j .LibroBB18_265
.LibroBB18_261: 
	xor t0, a3, s10
	bnez t0, .LibroBB18_266
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_262: 
	add t0, zero, t0
	j .LibroBB18_267
.LibroBB18_263: 
	lui t1, 1
	addi t1, t1, 1551
	xor t1, t0, t1
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB18_269
	j .LibroBB18_268
.LibroBB18_264: 
	slt t5, s7, s3
	addi t0, zero, 0
	bnez t5, .LibroBB18_270
	j .LibroBB18_271
.LibroBB18_265: 
	lw t0, -132(s0)
	xor t5, t0, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_254
	j .LibroBB18_272
.LibroBB18_266: 
	addi t0, zero, 0
	bge a1, a2, .LibroBB18_284
	j .LibroBB18_273
.LibroBB18_267: 
	add t0, zero, t0
	j .LibroBB18_247
.LibroBB18_268: 
	addi a0, zero, -1
	j .LibroBB18_306
.LibroBB18_269: 
	addi a0, zero, 4
	call myNew
	addi t1, a0, 0
	addi t0, zero, 100
	sw t0, 0(t1)
	addi t0, a0, 0
	lw a2, 0(t0)
	addi t2, zero, 0
	addi t1, zero, 0
	j .LibroBB18_274
.LibroBB18_270: 
	beqz t0, .LibroBB18_275
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_271: 
	addi t0, zero, 0
	lw t5, -92(s0)
	bge s7, t5, .LibroBB18_270
	j .LibroBB18_276
.LibroBB18_272: 
	slt t5, t3, s11
	addi t0, zero, 0
	bnez t5, .LibroBB18_254
	j .LibroBB18_277
.LibroBB18_273: 
	lw t0, -264(s0)
	xor t5, a0, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_284
	j .LibroBB18_278
.LibroBB18_274: 
	bge t1, a2, .LibroBB18_279
	j .LibroBB18_280
.LibroBB18_275: 
	xor t0, a3, s10
	bnez t0, .LibroBB18_281
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_276: 
	lw t5, -152(s0)
	lw t0, -332(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_270
	j .LibroBB18_282
.LibroBB18_277: 
	lw t0, -164(s0)
	xor t5, s1, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_254
	j .LibroBB18_283
.LibroBB18_278: 
	slt t0, s6, s8
	add t0, zero, t0
	j .LibroBB18_284
.LibroBB18_279: 
	addi t1, a0, 0
	addi t0, zero, 200
	sw t0, 0(t1)
	addi t0, a0, 0
	lw a1, 0(t0)
	addi t0, zero, 0
	addi t1, zero, 0
	j .LibroBB18_285
.LibroBB18_280: 
	addi a1, t1, 1
	addi t0, zero, 0
	xor s1, a1, t0
	add t0, zero, t2
	beqz s1, .LibroBB18_287
	j .LibroBB18_286
.LibroBB18_281: 
	addi t0, zero, 0
	bge a1, a2, .LibroBB18_301
	j .LibroBB18_288
.LibroBB18_282: 
	lw t0, -156(s0)
	slt t5, t0, s9
	addi t0, zero, 0
	bnez t5, .LibroBB18_270
	j .LibroBB18_289
.LibroBB18_283: 
	slt t5, t1, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_254
	j .LibroBB18_290
.LibroBB18_284: 
	beqz t0, .LibroBB18_291
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_285: 
	bge t1, a1, .LibroBB18_293
	j .LibroBB18_292
.LibroBB18_286: 
	add t0, zero, a1
	j .LibroBB18_287
.LibroBB18_287: 
	addi t1, t1, 1
	add t2, zero, t0
	add t1, zero, t1
	j .LibroBB18_274
.LibroBB18_288: 
	lw t0, -264(s0)
	xor t5, a0, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_301
	j .LibroBB18_294
.LibroBB18_289: 
	xor t5, t2, s2
	addi t0, zero, 0
	beqz t5, .LibroBB18_270
	j .LibroBB18_295
.LibroBB18_290: 
	addi t0, zero, 0
	lw t5, -156(s0)
	bge t5, s4, .LibroBB18_254
	j .LibroBB18_296
.LibroBB18_291: 
	addi t0, zero, 0
	lw t5, -216(s0)
	bge t5, s1, .LibroBB18_303
	j .LibroBB18_297
.LibroBB18_292: 
	addi a0, t1, 1
	addi s1, zero, 0
	xor s1, a0, s1
	add t0, zero, t0
	beqz s1, .LibroBB18_304
	j .LibroBB18_298
.LibroBB18_293: 
	add t0, t2, t0
	addi t1, t0, -300
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB18_299
	j .LibroBB18_300
.LibroBB18_294: 
	slt t0, s6, s8
	add t0, zero, t0
	j .LibroBB18_301
.LibroBB18_295: 
	lw t0, -160(s0)
	xor t5, t0, t3
	addi t0, zero, 0
	bnez t5, .LibroBB18_270
	j .LibroBB18_302
.LibroBB18_296: 
	xor t0, a7, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_254
.LibroBB18_297: 
	lw t5, -248(s0)
	lw t0, -132(s0)
	xor t0, t5, t0
	snez t0, t0
	add t0, zero, t0
	j .LibroBB18_303
.LibroBB18_298: 
	add t0, zero, a0
	j .LibroBB18_304
.LibroBB18_299: 
	addi a0, zero, 0
	call myNew
	addi t1, zero, 0
	addi t0, zero, 0
	j .LibroBB18_305
.LibroBB18_300: 
	addi a0, zero, -1
	j .LibroBB18_306
.LibroBB18_301: 
	beqz t0, .LibroBB18_307
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_302: 
	lw t0, -132(s0)
	xor t5, t0, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_270
	j .LibroBB18_308
.LibroBB18_303: 
	beqz t0, .LibroBB18_309
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_304: 
	addi t1, t1, 1
	add t0, zero, t0
	add t1, zero, t1
	j .LibroBB18_285
.LibroBB18_305: 
	addi t2, zero, 200
	bge t0, t2, .LibroBB18_310
	j .LibroBB18_311
.LibroBB18_306: 
	lw s0, 324(sp)
	lw s1, 320(sp)
	lw s2, 316(sp)
	lw s3, 312(sp)
	lw s4, 308(sp)
	lw s5, 304(sp)
	lw s6, 300(sp)
	lw s7, 296(sp)
	lw s8, 292(sp)
	lw s9, 288(sp)
	lw s10, 284(sp)
	lw s11, 280(sp)
	lw ra, 328(sp)
	addi sp, sp, 332
	ret
.LibroBB18_307: 
	addi t0, zero, 0
	lw t5, -216(s0)
	bge t5, s1, .LibroBB18_312
	j .LibroBB18_313
.LibroBB18_308: 
	slt t5, t3, s11
	addi t0, zero, 0
	bnez t5, .LibroBB18_270
	j .LibroBB18_314
.LibroBB18_309: 
	addi t0, zero, 1
	j .LibroBB18_169
.LibroBB18_310: 
	addi t1, t1, -100
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB18_315
	j .LibroBB18_316
.LibroBB18_311: 
	addi t1, t1, 1
	addi t0, t0, 2
	add t1, zero, t1
	add t0, zero, t0
	j .LibroBB18_305
.LibroBB18_312: 
	beqz t0, .LibroBB18_317
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_313: 
	lw t5, -248(s0)
	lw t0, -132(s0)
	xor t0, t5, t0
	snez t0, t0
	add t0, zero, t0
	j .LibroBB18_312
.LibroBB18_314: 
	lw t0, -164(s0)
	xor t5, s1, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_270
	j .LibroBB18_318
.LibroBB18_315: 
	addi a0, zero, 0
	j .LibroBB18_306
.LibroBB18_316: 
	addi a0, zero, -1
	j .LibroBB18_306
.LibroBB18_317: 
	addi t0, zero, 1
	j .LibroBB18_319
.LibroBB18_318: 
	slt t5, t1, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_270
	j .LibroBB18_320
.LibroBB18_319: 
	beqz t0, .LibroBB18_321
	j .LibroBB18_322
.LibroBB18_320: 
	addi t0, zero, 0
	lw t5, -156(s0)
	bge t5, s4, .LibroBB18_270
	j .LibroBB18_323
.LibroBB18_321: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_164
.LibroBB18_322: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_324
.LibroBB18_323: 
	xor t0, a7, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_270
.LibroBB18_324: 
	lw t5, -308(s0)
	lw t0, -232(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_326
	j .LibroBB18_325
.LibroBB18_325: 
	lw t5, -248(s0)
	lw t0, -332(s0)
	slt t5, t0, t5
	addi t0, zero, 0
	bnez t5, .LibroBB18_326
	j .LibroBB18_327
.LibroBB18_326: 
	beqz t0, .LibroBB18_328
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_327: 
	slt t5, a3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB18_326
	j .LibroBB18_330
.LibroBB18_328: 
	xor t5, s8, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_332
	j .LibroBB18_331
.LibroBB18_329: 
	beqz t0, .LibroBB18_333
	j .LibroBB18_334
.LibroBB18_330: 
	lw t0, -172(s0)
	slt t5, t0, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_326
	j .LibroBB18_335
.LibroBB18_331: 
	slt t0, s10, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_332
.LibroBB18_332: 
	beqz t0, .LibroBB18_336
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_333: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_181
.LibroBB18_334: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_337
.LibroBB18_335: 
	xor t5, a4, t1
	addi t0, zero, 0
	bnez t5, .LibroBB18_326
	j .LibroBB18_338
.LibroBB18_336: 
	addi t0, zero, 0
	lw t6, -224(s0)
	lw t5, -80(s0)
	bge t6, t5, .LibroBB18_342
	j .LibroBB18_339
.LibroBB18_337: 
	lw t5, -308(s0)
	lw t0, -232(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_353
	j .LibroBB18_340
.LibroBB18_338: 
	slt t5, s6, a6
	addi t0, zero, 0
	bnez t5, .LibroBB18_326
	j .LibroBB18_341
.LibroBB18_339: 
	slt t0, a1, a0
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_342
.LibroBB18_340: 
	lw t5, -248(s0)
	lw t0, -332(s0)
	slt t5, t0, t5
	addi t0, zero, 0
	bnez t5, .LibroBB18_353
	j .LibroBB18_343
.LibroBB18_341: 
	slt t0, s2, a2
	add t0, zero, t0
	j .LibroBB18_326
.LibroBB18_342: 
	beqz t0, .LibroBB18_344
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_343: 
	slt t5, a3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB18_353
	j .LibroBB18_345
.LibroBB18_344: 
	slt t0, t3, s11
	bnez t0, .LibroBB18_346
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_345: 
	lw t0, -172(s0)
	slt t5, t0, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_353
	j .LibroBB18_347
.LibroBB18_346: 
	xor t0, s3, s5
	bnez t0, .LibroBB18_348
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_347: 
	xor t5, a4, t1
	addi t0, zero, 0
	bnez t5, .LibroBB18_353
	j .LibroBB18_349
.LibroBB18_348: 
	slt t0, a7, s2
	bnez t0, .LibroBB18_350
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_349: 
	slt t5, s6, a6
	addi t0, zero, 0
	bnez t5, .LibroBB18_353
	j .LibroBB18_351
.LibroBB18_350: 
	lw t0, -184(s0)
	bge t0, a7, .LibroBB18_352
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_351: 
	slt t0, s2, a2
	add t0, zero, t0
	j .LibroBB18_353
.LibroBB18_352: 
	lw t5, -200(s0)
	lw t0, -76(s0)
	bge t5, t0, .LibroBB18_354
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_353: 
	beqz t0, .LibroBB18_356
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_354: 
	xor t0, s4, s9
	beqz t0, .LibroBB18_357
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_355: 
	beqz t0, .LibroBB18_359
	j .LibroBB18_358
.LibroBB18_356: 
	xor t5, s8, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_361
	j .LibroBB18_360
.LibroBB18_357: 
	bge a6, s2, .LibroBB18_362
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_358: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_363
.LibroBB18_359: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_324
.LibroBB18_360: 
	slt t0, s10, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_361
.LibroBB18_361: 
	beqz t0, .LibroBB18_364
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_362: 
	addi t0, zero, 0
	bge a5, t3, .LibroBB18_368
	j .LibroBB18_365
.LibroBB18_363: 
	lw t5, -308(s0)
	lw t0, -232(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_370
	j .LibroBB18_366
.LibroBB18_364: 
	addi t0, zero, 0
	lw t6, -224(s0)
	lw t5, -80(s0)
	bge t6, t5, .LibroBB18_371
	j .LibroBB18_367
.LibroBB18_365: 
	xor t0, s2, a4
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_368
.LibroBB18_366: 
	lw t5, -248(s0)
	lw t0, -332(s0)
	slt t5, t0, t5
	addi t0, zero, 0
	bnez t5, .LibroBB18_370
	j .LibroBB18_369
.LibroBB18_367: 
	slt t0, a1, a0
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_371
.LibroBB18_368: 
	beqz t0, .LibroBB18_372
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_369: 
	slt t5, a3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB18_370
	j .LibroBB18_373
.LibroBB18_370: 
	beqz t0, .LibroBB18_374
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_371: 
	beqz t0, .LibroBB18_375
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_372: 
	slt t5, s7, s3
	addi t0, zero, 0
	bnez t5, .LibroBB18_392
	j .LibroBB18_376
.LibroBB18_373: 
	lw t0, -172(s0)
	slt t5, t0, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_370
	j .LibroBB18_377
.LibroBB18_374: 
	xor t5, s8, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_378
	j .LibroBB18_379
.LibroBB18_375: 
	slt t0, t3, s11
	bnez t0, .LibroBB18_380
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_376: 
	addi t0, zero, 0
	lw t5, -92(s0)
	bge s7, t5, .LibroBB18_392
	j .LibroBB18_381
.LibroBB18_377: 
	xor t5, a4, t1
	addi t0, zero, 0
	bnez t5, .LibroBB18_370
	j .LibroBB18_382
.LibroBB18_378: 
	beqz t0, .LibroBB18_384
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_379: 
	slt t0, s10, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_378
.LibroBB18_380: 
	xor t0, s3, s5
	bnez t0, .LibroBB18_385
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_381: 
	lw t5, -152(s0)
	lw t0, -332(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_392
	j .LibroBB18_386
.LibroBB18_382: 
	slt t5, s6, a6
	addi t0, zero, 0
	bnez t5, .LibroBB18_370
	j .LibroBB18_387
.LibroBB18_383: 
	beqz t0, .LibroBB18_389
	j .LibroBB18_388
.LibroBB18_384: 
	addi t0, zero, 0
	lw t6, -224(s0)
	lw t5, -80(s0)
	bge t6, t5, .LibroBB18_395
	j .LibroBB18_390
.LibroBB18_385: 
	slt t0, a7, s2
	bnez t0, .LibroBB18_391
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_386: 
	lw t0, -156(s0)
	slt t5, t0, s9
	addi t0, zero, 0
	bnez t5, .LibroBB18_392
	j .LibroBB18_393
.LibroBB18_387: 
	slt t0, s2, a2
	add t0, zero, t0
	j .LibroBB18_370
.LibroBB18_388: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_394
.LibroBB18_389: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_337
.LibroBB18_390: 
	slt t0, a1, a0
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_395
.LibroBB18_391: 
	lw t0, -184(s0)
	bge t0, a7, .LibroBB18_396
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_392: 
	beqz t0, .LibroBB18_397
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_393: 
	xor t5, t2, s2
	addi t0, zero, 0
	beqz t5, .LibroBB18_392
	j .LibroBB18_398
.LibroBB18_394: 
	lw t5, -308(s0)
	lw t0, -232(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_411
	j .LibroBB18_399
.LibroBB18_395: 
	beqz t0, .LibroBB18_400
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_396: 
	lw t5, -200(s0)
	lw t0, -76(s0)
	bge t5, t0, .LibroBB18_401
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_397: 
	xor t0, a3, s10
	bnez t0, .LibroBB18_402
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_398: 
	lw t0, -160(s0)
	xor t5, t0, t3
	addi t0, zero, 0
	bnez t5, .LibroBB18_392
	j .LibroBB18_403
.LibroBB18_399: 
	lw t5, -248(s0)
	lw t0, -332(s0)
	slt t5, t0, t5
	addi t0, zero, 0
	bnez t5, .LibroBB18_411
	j .LibroBB18_404
.LibroBB18_400: 
	slt t0, t3, s11
	bnez t0, .LibroBB18_405
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_401: 
	xor t0, s4, s9
	beqz t0, .LibroBB18_406
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_402: 
	addi t0, zero, 0
	bge a1, a2, .LibroBB18_407
	j .LibroBB18_408
.LibroBB18_403: 
	lw t0, -132(s0)
	xor t5, t0, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_392
	j .LibroBB18_409
.LibroBB18_404: 
	slt t5, a3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB18_411
	j .LibroBB18_410
.LibroBB18_405: 
	xor t0, s3, s5
	bnez t0, .LibroBB18_412
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_406: 
	bge a6, s2, .LibroBB18_413
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_407: 
	beqz t0, .LibroBB18_414
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_408: 
	lw t0, -264(s0)
	xor t5, a0, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_407
	j .LibroBB18_415
.LibroBB18_409: 
	slt t5, t3, s11
	addi t0, zero, 0
	bnez t5, .LibroBB18_392
	j .LibroBB18_416
.LibroBB18_410: 
	lw t0, -172(s0)
	slt t5, t0, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_411
	j .LibroBB18_417
.LibroBB18_411: 
	beqz t0, .LibroBB18_418
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_412: 
	slt t0, a7, s2
	bnez t0, .LibroBB18_420
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_413: 
	addi t0, zero, 0
	bge a5, t3, .LibroBB18_430
	j .LibroBB18_421
.LibroBB18_414: 
	addi t0, zero, 0
	lw t5, -216(s0)
	bge t5, s1, .LibroBB18_431
	j .LibroBB18_422
.LibroBB18_415: 
	slt t0, s6, s8
	add t0, zero, t0
	j .LibroBB18_407
.LibroBB18_416: 
	lw t0, -164(s0)
	xor t5, s1, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_392
	j .LibroBB18_423
.LibroBB18_417: 
	xor t5, a4, t1
	addi t0, zero, 0
	bnez t5, .LibroBB18_411
	j .LibroBB18_424
.LibroBB18_418: 
	xor t5, s8, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_426
	j .LibroBB18_425
.LibroBB18_419: 
	beqz t0, .LibroBB18_428
	j .LibroBB18_427
.LibroBB18_420: 
	lw t0, -184(s0)
	bge t0, a7, .LibroBB18_429
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_421: 
	xor t0, s2, a4
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_430
.LibroBB18_422: 
	lw t5, -248(s0)
	lw t0, -132(s0)
	xor t0, t5, t0
	snez t0, t0
	add t0, zero, t0
	j .LibroBB18_431
.LibroBB18_423: 
	slt t5, t1, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_392
	j .LibroBB18_432
.LibroBB18_424: 
	slt t5, s6, a6
	addi t0, zero, 0
	bnez t5, .LibroBB18_411
	j .LibroBB18_433
.LibroBB18_425: 
	slt t0, s10, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_426
.LibroBB18_426: 
	beqz t0, .LibroBB18_434
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_427: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_435
.LibroBB18_428: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_363
.LibroBB18_429: 
	lw t5, -200(s0)
	lw t0, -76(s0)
	bge t5, t0, .LibroBB18_436
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_430: 
	beqz t0, .LibroBB18_437
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_431: 
	beqz t0, .LibroBB18_438
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_432: 
	addi t0, zero, 0
	lw t5, -156(s0)
	bge t5, s4, .LibroBB18_392
	j .LibroBB18_439
.LibroBB18_433: 
	slt t0, s2, a2
	add t0, zero, t0
	j .LibroBB18_411
.LibroBB18_434: 
	addi t0, zero, 0
	lw t6, -224(s0)
	lw t5, -80(s0)
	bge t6, t5, .LibroBB18_440
	j .LibroBB18_441
.LibroBB18_435: 
	lw t5, -308(s0)
	lw t0, -232(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_442
	j .LibroBB18_443
.LibroBB18_436: 
	xor t0, s4, s9
	beqz t0, .LibroBB18_444
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_437: 
	slt t5, s7, s3
	addi t0, zero, 0
	bnez t5, .LibroBB18_508
	j .LibroBB18_445
.LibroBB18_438: 
	addi t0, zero, 1
	j .LibroBB18_329
.LibroBB18_439: 
	xor t0, a7, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_392
.LibroBB18_440: 
	beqz t0, .LibroBB18_446
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_441: 
	slt t0, a1, a0
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_440
.LibroBB18_442: 
	beqz t0, .LibroBB18_448
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_443: 
	lw t5, -248(s0)
	lw t0, -332(s0)
	slt t5, t0, t5
	addi t0, zero, 0
	bnez t5, .LibroBB18_442
	j .LibroBB18_449
.LibroBB18_444: 
	bge a6, s2, .LibroBB18_450
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_445: 
	addi t0, zero, 0
	lw t5, -92(s0)
	bge s7, t5, .LibroBB18_508
	j .LibroBB18_451
.LibroBB18_446: 
	slt t0, t3, s11
	bnez t0, .LibroBB18_452
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_447: 
	beqz t0, .LibroBB18_454
	j .LibroBB18_453
.LibroBB18_448: 
	xor t5, s8, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_461
	j .LibroBB18_455
.LibroBB18_449: 
	slt t5, a3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB18_442
	j .LibroBB18_456
.LibroBB18_450: 
	addi t0, zero, 0
	bge a5, t3, .LibroBB18_463
	j .LibroBB18_457
.LibroBB18_451: 
	lw t5, -152(s0)
	lw t0, -332(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_508
	j .LibroBB18_458
.LibroBB18_452: 
	xor t0, s3, s5
	bnez t0, .LibroBB18_459
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_453: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_460
.LibroBB18_454: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_394
.LibroBB18_455: 
	slt t0, s10, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_461
.LibroBB18_456: 
	lw t0, -172(s0)
	slt t5, t0, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_442
	j .LibroBB18_462
.LibroBB18_457: 
	xor t0, s2, a4
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_463
.LibroBB18_458: 
	lw t0, -156(s0)
	slt t5, t0, s9
	addi t0, zero, 0
	bnez t5, .LibroBB18_508
	j .LibroBB18_464
.LibroBB18_459: 
	slt t0, a7, s2
	bnez t0, .LibroBB18_465
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_460: 
	lw t5, -308(s0)
	lw t0, -232(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_504
	j .LibroBB18_466
.LibroBB18_461: 
	beqz t0, .LibroBB18_467
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_462: 
	xor t5, a4, t1
	addi t0, zero, 0
	bnez t5, .LibroBB18_442
	j .LibroBB18_468
.LibroBB18_463: 
	beqz t0, .LibroBB18_469
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_464: 
	xor t5, t2, s2
	addi t0, zero, 0
	beqz t5, .LibroBB18_508
	j .LibroBB18_470
.LibroBB18_465: 
	lw t0, -184(s0)
	bge t0, a7, .LibroBB18_471
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_466: 
	lw t5, -248(s0)
	lw t0, -332(s0)
	slt t5, t0, t5
	addi t0, zero, 0
	bnez t5, .LibroBB18_504
	j .LibroBB18_472
.LibroBB18_467: 
	addi t0, zero, 0
	lw t6, -224(s0)
	lw t5, -80(s0)
	bge t6, t5, .LibroBB18_480
	j .LibroBB18_473
.LibroBB18_468: 
	slt t5, s6, a6
	addi t0, zero, 0
	bnez t5, .LibroBB18_442
	j .LibroBB18_474
.LibroBB18_469: 
	slt t5, s7, s3
	addi t0, zero, 0
	bnez t5, .LibroBB18_476
	j .LibroBB18_475
.LibroBB18_470: 
	lw t0, -160(s0)
	xor t5, t0, t3
	addi t0, zero, 0
	bnez t5, .LibroBB18_508
	j .LibroBB18_477
.LibroBB18_471: 
	lw t5, -200(s0)
	lw t0, -76(s0)
	bge t5, t0, .LibroBB18_478
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_472: 
	slt t5, a3, t2
	addi t0, zero, 0
	bnez t5, .LibroBB18_504
	j .LibroBB18_479
.LibroBB18_473: 
	slt t0, a1, a0
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_480
.LibroBB18_474: 
	slt t0, s2, a2
	add t0, zero, t0
	j .LibroBB18_442
.LibroBB18_475: 
	addi t0, zero, 0
	lw t5, -92(s0)
	bge s7, t5, .LibroBB18_476
	j .LibroBB18_481
.LibroBB18_476: 
	beqz t0, .LibroBB18_482
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_477: 
	lw t0, -132(s0)
	xor t5, t0, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_508
	j .LibroBB18_483
.LibroBB18_478: 
	xor t0, s4, s9
	beqz t0, .LibroBB18_484
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_479: 
	lw t0, -172(s0)
	slt t5, t0, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_504
	j .LibroBB18_485
.LibroBB18_480: 
	beqz t0, .LibroBB18_486
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_481: 
	lw t5, -152(s0)
	lw t0, -332(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_476
	j .LibroBB18_487
.LibroBB18_482: 
	xor t0, a3, s10
	bnez t0, .LibroBB18_488
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_483: 
	slt t5, t3, s11
	addi t0, zero, 0
	bnez t5, .LibroBB18_508
	j .LibroBB18_489
.LibroBB18_484: 
	bge a6, s2, .LibroBB18_490
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_485: 
	xor t5, a4, t1
	addi t0, zero, 0
	bnez t5, .LibroBB18_504
	j .LibroBB18_491
.LibroBB18_486: 
	slt t0, t3, s11
	bnez t0, .LibroBB18_492
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_487: 
	lw t0, -156(s0)
	slt t5, t0, s9
	addi t0, zero, 0
	bnez t5, .LibroBB18_476
	j .LibroBB18_493
.LibroBB18_488: 
	addi t0, zero, 0
	bge a1, a2, .LibroBB18_507
	j .LibroBB18_494
.LibroBB18_489: 
	lw t0, -164(s0)
	xor t5, s1, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_508
	j .LibroBB18_495
.LibroBB18_490: 
	addi t0, zero, 0
	bge a5, t3, .LibroBB18_496
	j .LibroBB18_497
.LibroBB18_491: 
	slt t5, s6, a6
	addi t0, zero, 0
	bnez t5, .LibroBB18_504
	j .LibroBB18_498
.LibroBB18_492: 
	xor t0, s3, s5
	bnez t0, .LibroBB18_499
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_493: 
	xor t5, t2, s2
	addi t0, zero, 0
	beqz t5, .LibroBB18_476
	j .LibroBB18_500
.LibroBB18_494: 
	lw t0, -264(s0)
	xor t5, a0, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_507
	j .LibroBB18_501
.LibroBB18_495: 
	slt t5, t1, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_508
	j .LibroBB18_502
.LibroBB18_496: 
	beqz t0, .LibroBB18_503
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_497: 
	xor t0, s2, a4
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_496
.LibroBB18_498: 
	slt t0, s2, a2
	add t0, zero, t0
	j .LibroBB18_504
.LibroBB18_499: 
	slt t0, a7, s2
	bnez t0, .LibroBB18_505
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_500: 
	lw t0, -160(s0)
	xor t5, t0, t3
	addi t0, zero, 0
	bnez t5, .LibroBB18_476
	j .LibroBB18_506
.LibroBB18_501: 
	slt t0, s6, s8
	add t0, zero, t0
	j .LibroBB18_507
.LibroBB18_502: 
	addi t0, zero, 0
	lw t5, -156(s0)
	bge t5, s4, .LibroBB18_508
	j .LibroBB18_509
.LibroBB18_503: 
	slt t5, s7, s3
	addi t0, zero, 0
	bnez t5, .LibroBB18_569
	j .LibroBB18_510
.LibroBB18_504: 
	beqz t0, .LibroBB18_511
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_505: 
	lw t0, -184(s0)
	bge t0, a7, .LibroBB18_513
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_506: 
	lw t0, -132(s0)
	xor t5, t0, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_476
	j .LibroBB18_514
.LibroBB18_507: 
	beqz t0, .LibroBB18_515
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_508: 
	beqz t0, .LibroBB18_516
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_509: 
	xor t0, a7, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_508
.LibroBB18_510: 
	addi t0, zero, 0
	lw t5, -92(s0)
	bge s7, t5, .LibroBB18_569
	j .LibroBB18_517
.LibroBB18_511: 
	xor t5, s8, s4
	addi t0, zero, 0
	bnez t5, .LibroBB18_518
	j .LibroBB18_519
.LibroBB18_512: 
	beqz t0, .LibroBB18_521
	j .LibroBB18_520
.LibroBB18_513: 
	lw t5, -200(s0)
	lw t0, -76(s0)
	bge t5, t0, .LibroBB18_522
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_514: 
	slt t5, t3, s11
	addi t0, zero, 0
	bnez t5, .LibroBB18_476
	j .LibroBB18_523
.LibroBB18_515: 
	addi t0, zero, 0
	lw t5, -216(s0)
	bge t5, s1, .LibroBB18_530
	j .LibroBB18_524
.LibroBB18_516: 
	xor t0, a3, s10
	bnez t0, .LibroBB18_525
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_517: 
	lw t5, -152(s0)
	lw t0, -332(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_569
	j .LibroBB18_526
.LibroBB18_518: 
	beqz t0, .LibroBB18_527
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_519: 
	slt t0, s10, t1
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_518
.LibroBB18_520: 
	lw t0, -176(s0)
	addi t0, t0, 0
	sw t4, 0(t0)
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_460
.LibroBB18_521: 
	addi t0, t4, 1
	add t4, zero, t0
	j .LibroBB18_435
.LibroBB18_522: 
	xor t0, s4, s9
	beqz t0, .LibroBB18_528
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_523: 
	lw t0, -164(s0)
	xor t5, s1, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_476
	j .LibroBB18_529
.LibroBB18_524: 
	lw t5, -248(s0)
	lw t0, -132(s0)
	xor t0, t5, t0
	snez t0, t0
	add t0, zero, t0
	j .LibroBB18_530
.LibroBB18_525: 
	addi t0, zero, 0
	bge a1, a2, .LibroBB18_542
	j .LibroBB18_531
.LibroBB18_526: 
	lw t0, -156(s0)
	slt t5, t0, s9
	addi t0, zero, 0
	bnez t5, .LibroBB18_569
	j .LibroBB18_532
.LibroBB18_527: 
	addi t0, zero, 0
	lw t6, -224(s0)
	lw t5, -80(s0)
	bge t6, t5, .LibroBB18_539
	j .LibroBB18_533
.LibroBB18_528: 
	bge a6, s2, .LibroBB18_534
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_529: 
	slt t5, t1, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_476
	j .LibroBB18_535
.LibroBB18_530: 
	beqz t0, .LibroBB18_536
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_531: 
	lw t0, -264(s0)
	xor t5, a0, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_542
	j .LibroBB18_537
.LibroBB18_532: 
	xor t5, t2, s2
	addi t0, zero, 0
	beqz t5, .LibroBB18_569
	j .LibroBB18_538
.LibroBB18_533: 
	slt t0, a1, a0
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_539
.LibroBB18_534: 
	addi t0, zero, 0
	bge a5, t3, .LibroBB18_545
	j .LibroBB18_540
.LibroBB18_535: 
	addi t0, zero, 0
	lw t5, -156(s0)
	bge t5, s4, .LibroBB18_476
	j .LibroBB18_541
.LibroBB18_536: 
	addi t0, zero, 1
	j .LibroBB18_383
.LibroBB18_537: 
	slt t0, s6, s8
	add t0, zero, t0
	j .LibroBB18_542
.LibroBB18_538: 
	lw t0, -160(s0)
	xor t5, t0, t3
	addi t0, zero, 0
	bnez t5, .LibroBB18_569
	j .LibroBB18_543
.LibroBB18_539: 
	beqz t0, .LibroBB18_544
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_540: 
	xor t0, s2, a4
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_545
.LibroBB18_541: 
	xor t0, a7, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_476
.LibroBB18_542: 
	beqz t0, .LibroBB18_546
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_543: 
	lw t0, -132(s0)
	xor t5, t0, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_569
	j .LibroBB18_547
.LibroBB18_544: 
	slt t0, t3, s11
	bnez t0, .LibroBB18_548
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_545: 
	beqz t0, .LibroBB18_549
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_546: 
	addi t0, zero, 0
	lw t5, -216(s0)
	bge t5, s1, .LibroBB18_551
	j .LibroBB18_550
.LibroBB18_547: 
	slt t5, t3, s11
	addi t0, zero, 0
	bnez t5, .LibroBB18_569
	j .LibroBB18_552
.LibroBB18_548: 
	xor t0, s3, s5
	bnez t0, .LibroBB18_553
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_549: 
	slt t5, s7, s3
	addi t0, zero, 0
	bnez t5, .LibroBB18_555
	j .LibroBB18_554
.LibroBB18_550: 
	lw t5, -248(s0)
	lw t0, -132(s0)
	xor t0, t5, t0
	snez t0, t0
	add t0, zero, t0
	j .LibroBB18_551
.LibroBB18_551: 
	beqz t0, .LibroBB18_556
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_552: 
	lw t0, -164(s0)
	xor t5, s1, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_569
	j .LibroBB18_557
.LibroBB18_553: 
	slt t0, a7, s2
	bnez t0, .LibroBB18_558
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_554: 
	addi t0, zero, 0
	lw t5, -92(s0)
	bge s7, t5, .LibroBB18_555
	j .LibroBB18_559
.LibroBB18_555: 
	beqz t0, .LibroBB18_560
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_556: 
	addi t0, zero, 1
	j .LibroBB18_355
.LibroBB18_557: 
	slt t5, t1, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_569
	j .LibroBB18_561
.LibroBB18_558: 
	lw t0, -184(s0)
	bge t0, a7, .LibroBB18_562
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_559: 
	lw t5, -152(s0)
	lw t0, -332(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_555
	j .LibroBB18_563
.LibroBB18_560: 
	xor t0, a3, s10
	bnez t0, .LibroBB18_564
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_561: 
	addi t0, zero, 0
	lw t5, -156(s0)
	bge t5, s4, .LibroBB18_569
	j .LibroBB18_565
.LibroBB18_562: 
	lw t5, -200(s0)
	lw t0, -76(s0)
	bge t5, t0, .LibroBB18_566
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_563: 
	lw t0, -156(s0)
	slt t5, t0, s9
	addi t0, zero, 0
	bnez t5, .LibroBB18_555
	j .LibroBB18_567
.LibroBB18_564: 
	addi t0, zero, 0
	bge a1, a2, .LibroBB18_576
	j .LibroBB18_568
.LibroBB18_565: 
	xor t0, a7, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_569
.LibroBB18_566: 
	xor t0, s4, s9
	beqz t0, .LibroBB18_570
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_567: 
	xor t5, t2, s2
	addi t0, zero, 0
	beqz t5, .LibroBB18_555
	j .LibroBB18_571
.LibroBB18_568: 
	lw t0, -264(s0)
	xor t5, a0, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_576
	j .LibroBB18_572
.LibroBB18_569: 
	beqz t0, .LibroBB18_573
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_570: 
	bge a6, s2, .LibroBB18_574
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_571: 
	lw t0, -160(s0)
	xor t5, t0, t3
	addi t0, zero, 0
	bnez t5, .LibroBB18_555
	j .LibroBB18_575
.LibroBB18_572: 
	slt t0, s6, s8
	add t0, zero, t0
	j .LibroBB18_576
.LibroBB18_573: 
	xor t0, a3, s10
	bnez t0, .LibroBB18_577
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_574: 
	addi t0, zero, 0
	bge a5, t3, .LibroBB18_579
	j .LibroBB18_578
.LibroBB18_575: 
	lw t0, -132(s0)
	xor t5, t0, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_555
	j .LibroBB18_580
.LibroBB18_576: 
	beqz t0, .LibroBB18_581
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_577: 
	addi t0, zero, 0
	bge a1, a2, .LibroBB18_586
	j .LibroBB18_582
.LibroBB18_578: 
	xor t0, s2, a4
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_579
.LibroBB18_579: 
	beqz t0, .LibroBB18_583
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_580: 
	slt t5, t3, s11
	addi t0, zero, 0
	bnez t5, .LibroBB18_555
	j .LibroBB18_584
.LibroBB18_581: 
	addi t0, zero, 0
	lw t5, -216(s0)
	bge t5, s1, .LibroBB18_591
	j .LibroBB18_585
.LibroBB18_582: 
	lw t0, -264(s0)
	xor t5, a0, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_586
	j .LibroBB18_587
.LibroBB18_583: 
	slt t5, s7, s3
	addi t0, zero, 0
	bnez t5, .LibroBB18_588
	j .LibroBB18_589
.LibroBB18_584: 
	lw t0, -164(s0)
	xor t5, s1, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_555
	j .LibroBB18_590
.LibroBB18_585: 
	lw t5, -248(s0)
	lw t0, -132(s0)
	xor t0, t5, t0
	snez t0, t0
	add t0, zero, t0
	j .LibroBB18_591
.LibroBB18_586: 
	beqz t0, .LibroBB18_592
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_587: 
	slt t0, s6, s8
	add t0, zero, t0
	j .LibroBB18_586
.LibroBB18_588: 
	beqz t0, .LibroBB18_593
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_589: 
	addi t0, zero, 0
	lw t5, -92(s0)
	bge s7, t5, .LibroBB18_588
	j .LibroBB18_594
.LibroBB18_590: 
	slt t5, t1, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_555
	j .LibroBB18_595
.LibroBB18_591: 
	beqz t0, .LibroBB18_596
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_592: 
	addi t0, zero, 0
	lw t5, -216(s0)
	bge t5, s1, .LibroBB18_601
	j .LibroBB18_597
.LibroBB18_593: 
	xor t0, a3, s10
	bnez t0, .LibroBB18_598
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_594: 
	lw t5, -152(s0)
	lw t0, -332(s0)
	xor t5, t5, t0
	addi t0, zero, 0
	beqz t5, .LibroBB18_588
	j .LibroBB18_599
.LibroBB18_595: 
	addi t0, zero, 0
	lw t5, -156(s0)
	bge t5, s4, .LibroBB18_555
	j .LibroBB18_600
.LibroBB18_596: 
	addi t0, zero, 1
	j .LibroBB18_447
.LibroBB18_597: 
	lw t5, -248(s0)
	lw t0, -132(s0)
	xor t0, t5, t0
	snez t0, t0
	add t0, zero, t0
	j .LibroBB18_601
.LibroBB18_598: 
	addi t0, zero, 0
	bge a1, a2, .LibroBB18_607
	j .LibroBB18_602
.LibroBB18_599: 
	lw t0, -156(s0)
	slt t5, t0, s9
	addi t0, zero, 0
	bnez t5, .LibroBB18_588
	j .LibroBB18_603
.LibroBB18_600: 
	xor t0, a7, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_555
.LibroBB18_601: 
	beqz t0, .LibroBB18_604
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_602: 
	lw t0, -264(s0)
	xor t5, a0, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_607
	j .LibroBB18_605
.LibroBB18_603: 
	xor t5, t2, s2
	addi t0, zero, 0
	beqz t5, .LibroBB18_588
	j .LibroBB18_606
.LibroBB18_604: 
	addi t0, zero, 1
	j .LibroBB18_419
.LibroBB18_605: 
	slt t0, s6, s8
	add t0, zero, t0
	j .LibroBB18_607
.LibroBB18_606: 
	lw t0, -160(s0)
	xor t5, t0, t3
	addi t0, zero, 0
	bnez t5, .LibroBB18_588
	j .LibroBB18_608
.LibroBB18_607: 
	beqz t0, .LibroBB18_609
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_608: 
	lw t0, -132(s0)
	xor t5, t0, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_588
	j .LibroBB18_610
.LibroBB18_609: 
	addi t0, zero, 0
	lw t5, -216(s0)
	bge t5, s1, .LibroBB18_613
	j .LibroBB18_611
.LibroBB18_610: 
	slt t5, t3, s11
	addi t0, zero, 0
	bnez t5, .LibroBB18_588
	j .LibroBB18_612
.LibroBB18_611: 
	lw t5, -248(s0)
	lw t0, -132(s0)
	xor t0, t5, t0
	snez t0, t0
	add t0, zero, t0
	j .LibroBB18_613
.LibroBB18_612: 
	lw t0, -164(s0)
	xor t5, s1, t0
	addi t0, zero, 0
	bnez t5, .LibroBB18_588
	j .LibroBB18_614
.LibroBB18_613: 
	beqz t0, .LibroBB18_615
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_614: 
	slt t5, t1, s5
	addi t0, zero, 0
	bnez t5, .LibroBB18_588
	j .LibroBB18_616
.LibroBB18_615: 
	addi t0, zero, 1
	j .LibroBB18_512
.LibroBB18_616: 
	addi t0, zero, 0
	lw t5, -156(s0)
	bge t5, s4, .LibroBB18_588
	j .LibroBB18_617
.LibroBB18_617: 
	xor t0, a7, a5
	seqz t0, t0
	add t0, zero, t0
	j .LibroBB18_588
.data
	.type	.libro.str,@object
.libro.str:
	.asciz	"wtf"
	.size	.libro.str, 4

