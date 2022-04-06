	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.1: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 444
	call myNew
	addi t0, zero, 110
	sw t0, 0(a0)
	la t0, visit
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
	addi a0, zero, 444
	call myNew
	addi t0, zero, 110
	sw t0, 0(a0)
	la t0, pre
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
	addi a0, zero, 444
	call myNew
	addi t0, zero, 110
	sw t0, 0(a0)
	la t0, f
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
	la t0, c
	sw a0, 0(t0)
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB3_1
.LibroBB3_1: 
	la t0, i
	lw t0, 0(t0)
	bge t0, s1, .LibroBB3_2
	j .LibroBB3_3
.LibroBB3_2: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB3_3: 
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	la t0, c
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
	j .LibroBB3_4
.LibroBB3_4: 
	la t0, j
	lw t0, 0(t0)
	bge t0, s1, .LibroBB3_6
	j .LibroBB3_5
.LibroBB3_5: 
	la t0, c
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
	j .LibroBB3_7
.LibroBB3_6: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB3_1
.LibroBB3_7: 
	la t0, j
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB3_4
build: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t1, zero, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_1
.LibroBB4_1: 
	la t0, i
	lw t1, 0(t0)
	addi t0, zero, 49
	slt t0, t0, t1
	bnez t0, .LibroBB4_2
	j .LibroBB4_3
.LibroBB4_2: 
	addi t1, zero, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_4
.LibroBB4_3: 
	addi t1, zero, 50
	la t0, j
	sw t1, 0(t0)
	j .LibroBB4_5
.LibroBB4_4: 
	la t0, i
	lw t1, 0(t0)
	addi t0, zero, 49
	slt t0, t0, t1
	bnez t0, .LibroBB4_6
	j .LibroBB4_7
.LibroBB4_5: 
	la t0, j
	lw t2, 0(t0)
	la t0, i
	lw t1, 0(t0)
	addi t0, zero, 98
	sub t0, t0, t1
	addi t0, t0, 1
	slt t0, t0, t2
	bnez t0, .LibroBB4_8
	j .LibroBB4_9
.LibroBB4_6: 
	addi t1, zero, 50
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_10
.LibroBB4_7: 
	la t0, c
	lw t1, 0(t0)
	slli t0, a0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t1, t1, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	j .LibroBB4_11
.LibroBB4_8: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_1
.LibroBB4_9: 
	la t0, c
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
	addi t0, zero, 1
	sw t0, 0(t1)
	j .LibroBB4_12
.LibroBB4_10: 
	la t0, i
	lw t1, 0(t0)
	addi t0, zero, 98
	slt t0, t0, t1
	bnez t0, .LibroBB4_13
	j .LibroBB4_14
.LibroBB4_11: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_4
.LibroBB4_12: 
	la t0, j
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB4_5
.LibroBB4_13: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB4_14: 
	la t0, c
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t1, t1, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	j .LibroBB4_15
.LibroBB4_15: 
	la t0, i
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_10
find: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	mv t1, a0
	addi t2, zero, 0
	la t0, open
	sw t2, 0(t0)
	addi t2, zero, 1
	la t0, closed
	sw t2, 0(t0)
	addi t2, zero, 1
	la t0, i
	sw t2, 0(t0)
	j .LibroBB5_1
.LibroBB5_1: 
	la t0, i
	lw t0, 0(t0)
	slt t0, t1, t0
	bnez t0, .LibroBB5_3
	j .LibroBB5_2
.LibroBB5_2: 
	la t0, visit
	lw t2, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t2, t2, t0
	addi t0, zero, 0
	sw t0, 0(t2)
	j .LibroBB5_4
.LibroBB5_3: 
	la t0, f
	lw t0, 0(t0)
	addi t0, t0, 8
	sw a1, 0(t0)
	la t0, visit
	lw t2, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t2, t2, t0
	addi t0, zero, 1
	sw t0, 0(t2)
	la t0, pre
	lw t2, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t2, t2, t0
	addi t0, zero, 0
	sw t0, 0(t2)
	addi a0, zero, 0
	j .LibroBB5_5
.LibroBB5_4: 
	la t0, i
	lw t0, 0(t0)
	addi t2, t0, 1
	la t0, i
	sw t2, 0(t0)
	j .LibroBB5_1
.LibroBB5_5: 
	la t0, open
	lw s1, 0(t0)
	la t0, closed
	lw t2, 0(t0)
	addi t0, zero, 0
	bge s1, t2, .LibroBB5_7
	j .LibroBB5_6
.LibroBB5_6: 
	addi t0, zero, 0
	xor t0, a0, t0
	seqz t0, t0
	j .LibroBB5_7
.LibroBB5_7: 
	beqz t0, .LibroBB5_9
	j .LibroBB5_8
.LibroBB5_8: 
	la t0, open
	lw t0, 0(t0)
	addi t2, t0, 1
	la t0, open
	sw t2, 0(t0)
	la t0, f
	lw t2, 0(t0)
	la t0, open
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t2, t0
	lw t2, 0(t0)
	la t0, i
	sw t2, 0(t0)
	addi t2, zero, 1
	la t0, j
	sw t2, 0(t0)
	j .LibroBB5_10
.LibroBB5_9: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB5_10: 
	la t0, j
	lw t0, 0(t0)
	slt t0, t1, t0
	bnez t0, .LibroBB5_5
	j .LibroBB5_11
.LibroBB5_11: 
	la t0, c
	lw t2, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t2, t0
	lw t2, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t2, t0
	lw s1, 0(t0)
	addi t2, zero, 0
	addi t0, zero, 0
	bge t2, s1, .LibroBB5_12
	j .LibroBB5_13
.LibroBB5_12: 
	beqz t0, .LibroBB5_16
	j .LibroBB5_14
.LibroBB5_13: 
	la t0, visit
	lw t2, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t2, t0
	lw t2, 0(t0)
	addi t0, zero, 0
	xor t0, t2, t0
	seqz t0, t0
	j .LibroBB5_12
.LibroBB5_14: 
	la t0, visit
	lw t2, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t2, t2, t0
	addi t0, zero, 1
	sw t0, 0(t2)
	la t0, closed
	lw t0, 0(t0)
	addi t2, t0, 1
	la t0, closed
	sw t2, 0(t0)
	la t0, j
	lw s1, 0(t0)
	la t0, f
	lw t2, 0(t0)
	la t0, closed
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t2, t0
	sw s1, 0(t0)
	la t0, i
	lw s1, 0(t0)
	la t0, pre
	lw t2, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t2, t0
	sw s1, 0(t0)
	la t0, closed
	lw t0, 0(t0)
	xor t0, t0, t1
	seqz a0, t0
	j .LibroBB5_15
.LibroBB5_15: 
	j .LibroBB5_16
.LibroBB5_16: 
	j .LibroBB5_17
.LibroBB5_17: 
	la t0, j
	lw t0, 0(t0)
	addi t2, t0, 1
	la t0, j
	sw t2, 0(t0)
	j .LibroBB5_10
improve: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	la t0, i
	sw a0, 0(t0)
	la t0, ans
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, ans
	sw t1, 0(t0)
	j .LibroBB6_1
.LibroBB6_1: 
	la t0, pre
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	addi t0, zero, 0
	bge t0, t1, .LibroBB6_3
	j .LibroBB6_2
.LibroBB6_2: 
	la t0, pre
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, j
	sw t1, 0(t0)
	la t0, c
	lw t1, 0(t0)
	la t0, j
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t1, 0(t0)
	la t0, i
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t1, t1, t0
	lw t0, 0(t1)
	addi t0, t0, -1
	sw t0, 0(t1)
	la t0, c
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
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	la t0, j
	lw t1, 0(t0)
	la t0, i
	sw t1, 0(t0)
	j .LibroBB6_1
.LibroBB6_3: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call _GLOBAL_
	addi a0, zero, 110
	call origin
	addi a0, zero, 99
	addi a1, zero, 100
	call build
	j .LibroBB7_1
.LibroBB7_1: 
	addi a0, zero, 100
	addi a1, zero, 99
	addi a2, zero, 0
	call find
	addi t0, zero, 0
	bge t0, a0, .LibroBB7_2
	j .LibroBB7_3
.LibroBB7_2: 
	la t0, ans
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB7_4
.LibroBB7_3: 
	addi a0, zero, 100
	call improve
	j .LibroBB7_1
.LibroBB7_4: 
	li a0, 0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call _global_var_init.1
	call _global_var_init.2
	call _global_var_init.3
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	c,@object
c:
	.word	0
	.size	c, 4

	.type	ans,@object
ans:
	.word	0
	.size	ans, 4

	.type	visit,@object
visit:
	.word	0
	.size	visit, 4

	.type	pre,@object
pre:
	.word	0
	.size	pre, 4

	.type	f,@object
f:
	.word	0
	.size	f, 4

	.type	i,@object
i:
	.word	0
	.size	i, 4

	.type	j,@object
j:
	.word	0
	.size	j, 4

	.type	open,@object
open:
	.word	0
	.size	open, 4

	.type	closed,@object
closed:
	.word	0
	.size	closed, 4

