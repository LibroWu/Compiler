	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.0: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 84
	call myNew
	addi t0, zero, 20
	sw t0, 0(a0)
	la t0, a
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
jud: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t2, zero, 0
	j .LibroBB1_1
.LibroBB1_1: 
	la t0, n
	lw t0, 0(t0)
	div t0, t0, a0
	bge t2, t0, .LibroBB1_3
	j .LibroBB1_2
.LibroBB1_2: 
	addi t1, zero, 0
	addi t0, zero, 0
	j .LibroBB1_4
.LibroBB1_3: 
	j .LibroBB1_10
.LibroBB1_4: 
	addi s1, a0, -1
	bge t0, s1, .LibroBB1_5
	j .LibroBB1_6
.LibroBB1_5: 
	xori t0, t1, 1
	beqz t0, .LibroBB1_8
	j .LibroBB1_7
.LibroBB1_6: 
	la s1, a
	lw a1, 0(s1)
	mul s1, t2, a0
	add s1, s1, t0
	slli s1, s1, 2
	addi s1, s1, 4
	add s1, a1, s1
	lw a2, 0(s1)
	la s1, a
	lw a1, 0(s1)
	mul s1, t2, a0
	add s1, s1, t0
	addi s1, s1, 1
	slli s1, s1, 2
	addi s1, s1, 4
	add s1, a1, s1
	lw s1, 0(s1)
	bge s1, a2, .LibroBB1_12
	j .LibroBB1_9
.LibroBB1_7: 
	addi a0, zero, 1
	j .LibroBB1_10
.LibroBB1_8: 
	j .LibroBB1_11
.LibroBB1_9: 
	addi s1, zero, 1
	j .LibroBB1_12
.LibroBB1_10: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB1_11: 
	j .LibroBB1_1
.LibroBB1_12: 
	j .LibroBB1_13
.LibroBB1_13: 
	j .LibroBB1_4
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	call _GLOBAL_
	call getInt
	la t0, n
	sw a0, 0(t0)
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB2_1
.LibroBB2_1: 
	la t0, i
	lw t1, 0(t0)
	la t0, n
	lw t0, 0(t0)
	bge t1, t0, .LibroBB2_2
	j .LibroBB2_3
.LibroBB2_2: 
	la t0, n
	lw t1, 0(t0)
	la t0, i
	sw t1, 0(t0)
	j .LibroBB2_4
.LibroBB2_3: 
	call getInt
	la t0, a
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	j .LibroBB2_5
.LibroBB2_4: 
	la t0, i
	lw t1, 0(t0)
	addi t0, zero, 0
	bge t0, t1, .LibroBB2_6
	j .LibroBB2_7
.LibroBB2_5: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB2_1
.LibroBB2_6: 
	j .LibroBB2_11
.LibroBB2_7: 
	la t0, i
	lw a0, 0(t0)
	call jud
	addi t0, zero, 0
	bge t0, a0, .LibroBB2_8
	j .LibroBB2_9
.LibroBB2_8: 
	j .LibroBB2_10
.LibroBB2_9: 
	la t0, i
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	addi s1, zero, 0
	j .LibroBB2_11
.LibroBB2_10: 
	la t0, i
	lw t0, 0(t0)
	srai t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB2_4
.LibroBB2_11: 
	mv a0, s1
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call _global_var_init.0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	n,@object
n:
	.word	0
	.size	n, 4

	.type	a,@object
a:
	.word	0
	.size	a, 4

	.type	i,@object
i:
	.word	0
	.size	i, 4

