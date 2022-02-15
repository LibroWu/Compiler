	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.0: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lui a0, 12
	addi a0, a0, -1148
	call myNew
	lui t0, 3
	addi t0, t0, -288
	sw t0, 0(a0)
	la t0, xlist
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
	lui a0, 12
	addi a0, a0, -1148
	call myNew
	lui t0, 3
	addi t0, t0, -288
	sw t0, 0(a0)
	la t0, ylist
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
	addi a0, zero, 36
	call myNew
	addi t0, zero, 8
	sw t0, 0(a0)
	la t0, dx
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
	addi a0, zero, 40
	call myNew
	addi t0, zero, 9
	sw t0, 0(a0)
	la t0, dy
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
origin: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	addi s0, sp, 16
	mv s1, a0
	addi t1, zero, 0
	la t0, head
	sw t1, 0(t0)
	addi t1, zero, 0
	la t0, tail
	sw t1, 0(t0)
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s1, 0(a0)
	la t0, step
	sw a0, 0(t0)
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_1
.LibroBB4_1: 
	la t0, i
	lw t0, 0(t0)
	bge t0, s1, .LibroBB4_4
	j .LibroBB4_3
.LibroBB4_2: 
	la t0, i
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB4_1
.LibroBB4_3: 
	addi t0, zero, 4
	mul t0, s1, t0
	addi a0, zero, 4
	add a0, t0, a0
	call myNew
	sw s1, 0(a0)
	la t0, step
	lw t2, 0(t0)
	la t0, i
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	addi t1, zero, 0
	la t0, j
	sw t1, 0(t0)
	j .LibroBB4_8
.LibroBB4_4: 
	j .LibroBB4_9
.LibroBB4_5: 
	la t0, step
	lw t2, 0(t0)
	la t0, i
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	la t0, j
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB4_6
.LibroBB4_6: 
	la t0, j
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB4_8
.LibroBB4_7: 
	j .LibroBB4_2
.LibroBB4_8: 
	la t0, j
	lw t0, 0(t0)
	bge t0, s1, .LibroBB4_7
	j .LibroBB4_5
.LibroBB4_9: 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
check: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	la t0, N
	lw t1, 0(t0)
	addi t0, zero, 0
	bge a0, t1, .LibroBB5_2
	j .LibroBB5_1
.LibroBB5_1: 
	addi t0, zero, 0
	slt t0, a0, t0
	seqz t0, t0
	j .LibroBB5_2
.LibroBB5_2: 
	j .LibroBB5_3
.LibroBB5_3: 
	mv a0, t0
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
addList: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	sw s2, 8(sp)
	addi s0, sp, 24
	mv s2, a0
	mv s1, a1
	mv a0, s2
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB6_3
	j .LibroBB6_1
.LibroBB6_1: 
	mv a0, s1
	call check
	addi t0, zero, 0
	beqz a0, .LibroBB6_3
	j .LibroBB6_2
.LibroBB6_2: 
	la t0, step
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, t2, t1
	seqz t0, t0
	j .LibroBB6_3
.LibroBB6_3: 
	beqz t0, .LibroBB6_5
	j .LibroBB6_4
.LibroBB6_4: 
	la t0, tail
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, tail
	sw t1, 0(t0)
	la t0, xlist
	lw t2, 0(t0)
	la t0, tail
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s2, 0(t0)
	la t0, ylist
	lw t2, 0(t0)
	la t0, tail
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	la t0, now
	lw t0, 0(t0)
	addi a0, zero, 1
	add a0, t0, a0
	la t0, step
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s2, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	addi t1, zero, 4
	mul t1, s1, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw a0, 0(t0)
	la t0, targetx
	lw t0, 0(t0)
	xor t0, s2, t0
	seqz t1, t0
	addi t0, zero, 0
	beqz t1, .LibroBB6_8
	j .LibroBB6_6
.LibroBB6_5: 
	j .LibroBB6_7
.LibroBB6_6: 
	la t0, targety
	lw t0, 0(t0)
	xor t0, s1, t0
	seqz t0, t0
	j .LibroBB6_8
.LibroBB6_7: 
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw s2, 8(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
.LibroBB6_8: 
	beqz t0, .LibroBB6_9
	j .LibroBB6_10
.LibroBB6_9: 
	j .LibroBB6_5
.LibroBB6_10: 
	addi t1, zero, 1
	la t0, ok
	sw t1, 0(t0)
	j .LibroBB6_9
main: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	addi s0, sp, 16
	call _GLOBAL_
	addi a0, zero, 106
	call origin
	call getInt
	la t0, N
	sw a0, 0(t0)
	la t0, N
	lw t0, 0(t0)
	addi t1, zero, 1
	sub t1, t0, t1
	la t0, targety
	sw t1, 0(t0)
	la t0, targety
	lw t1, 0(t0)
	la t0, targetx
	sw t1, 0(t0)
	addi t1, zero, 0
	la t0, i
	sw t1, 0(t0)
	j .LibroBB7_4
.LibroBB7_1: 
	la t0, i
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, i
	sw t1, 0(t0)
	j .LibroBB7_4
.LibroBB7_2: 
	addi t1, zero, 0
	la t0, j
	sw t1, 0(t0)
	j .LibroBB7_8
.LibroBB7_3: 
	addi s1, zero, 0
	addi t0, zero, 2
	sub s1, s1, t0
	la t0, dx
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	addi s1, zero, 0
	addi t0, zero, 1
	sub s1, s1, t0
	la t0, dy
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	addi s1, zero, 0
	addi t0, zero, 2
	sub s1, s1, t0
	la t0, dx
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	la t0, dy
	lw t2, 0(t0)
	addi t1, zero, 1
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t0, dx
	lw t2, 0(t0)
	addi t1, zero, 2
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 2
	sw t0, 0(t1)
	addi s1, zero, 0
	addi t0, zero, 1
	sub s1, s1, t0
	la t0, dy
	lw t2, 0(t0)
	addi t1, zero, 2
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	la t0, dx
	lw t2, 0(t0)
	addi t1, zero, 3
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 2
	sw t0, 0(t1)
	la t0, dy
	lw t2, 0(t0)
	addi t1, zero, 3
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	addi s1, zero, 0
	addi t0, zero, 1
	sub s1, s1, t0
	la t0, dx
	lw t2, 0(t0)
	addi t1, zero, 4
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	addi s1, zero, 0
	addi t0, zero, 2
	sub s1, s1, t0
	la t0, dy
	lw t2, 0(t0)
	addi t1, zero, 4
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	addi s1, zero, 0
	addi t0, zero, 1
	sub s1, s1, t0
	la t0, dx
	lw t2, 0(t0)
	addi t1, zero, 5
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	la t0, dy
	lw t2, 0(t0)
	addi t1, zero, 5
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 2
	sw t0, 0(t1)
	la t0, dx
	lw t2, 0(t0)
	addi t1, zero, 6
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	addi s1, zero, 0
	addi t0, zero, 2
	sub s1, s1, t0
	la t0, dy
	lw t2, 0(t0)
	addi t1, zero, 6
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	la t0, dx
	lw t2, 0(t0)
	addi t1, zero, 7
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t0, dy
	lw t2, 0(t0)
	addi t1, zero, 7
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, zero, 4
	add t0, t1, t0
	add t1, t2, t0
	addi t0, zero, 2
	sw t0, 0(t1)
	j .LibroBB7_10
.LibroBB7_4: 
	la t0, i
	lw t1, 0(t0)
	la t0, N
	lw t0, 0(t0)
	bge t1, t0, .LibroBB7_3
	j .LibroBB7_2
.LibroBB7_5: 
	j .LibroBB7_1
.LibroBB7_6: 
	addi s1, zero, 0
	addi t0, zero, 1
	sub s1, s1, t0
	la t0, step
	lw t2, 0(t0)
	la t0, i
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	la t0, j
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	sw s1, 0(t0)
	j .LibroBB7_7
.LibroBB7_7: 
	la t0, j
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB7_8
.LibroBB7_8: 
	la t0, j
	lw t1, 0(t0)
	la t0, N
	lw t0, 0(t0)
	bge t1, t0, .LibroBB7_5
	j .LibroBB7_6
.LibroBB7_9: 
	la t0, ok
	lw t1, 0(t0)
	addi t0, zero, 1
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB7_12
	j .LibroBB7_14
.LibroBB7_10: 
	la t0, head
	lw t1, 0(t0)
	la t0, tail
	lw t0, 0(t0)
	slt t0, t0, t1
	seqz t0, t0
	beqz t0, .LibroBB7_9
	j .LibroBB7_11
.LibroBB7_11: 
	la t0, xlist
	lw t2, 0(t0)
	la t0, head
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	la t0, x
	sw t1, 0(t0)
	la t0, ylist
	lw t2, 0(t0)
	la t0, head
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	la t0, y
	sw t1, 0(t0)
	la t0, step
	lw t2, 0(t0)
	la t0, x
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	la t0, y
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t1, 0(t0)
	la t0, now
	sw t1, 0(t0)
	addi t1, zero, 0
	la t0, j
	sw t1, 0(t0)
	j .LibroBB7_16
.LibroBB7_12: 
	la a0, .libro.str
	call print
	j .LibroBB7_13
.LibroBB7_13: 
	addi a0, zero, 0
	j .LibroBB7_19
.LibroBB7_14: 
	la t0, step
	lw t2, 0(t0)
	la t0, targetx
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t2, 0(t0)
	la t0, targety
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call println
	j .LibroBB7_13
.LibroBB7_15: 
	la t0, ok
	lw t1, 0(t0)
	addi t0, zero, 1
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB7_21
	j .LibroBB7_20
.LibroBB7_16: 
	la t0, j
	lw t1, 0(t0)
	addi t0, zero, 8
	bge t1, t0, .LibroBB7_15
	j .LibroBB7_17
.LibroBB7_17: 
	la t0, x
	lw s1, 0(t0)
	la t0, dx
	lw t2, 0(t0)
	la t0, j
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	add a0, s1, t0
	la t0, y
	lw s1, 0(t0)
	la t0, dy
	lw t2, 0(t0)
	la t0, j
	lw t0, 0(t0)
	addi t1, zero, 4
	mul t1, t0, t1
	addi t0, zero, 4
	add t0, t1, t0
	add t0, t2, t0
	lw t0, 0(t0)
	add a1, s1, t0
	call addList
	j .LibroBB7_18
.LibroBB7_18: 
	la t0, j
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, j
	sw t1, 0(t0)
	j .LibroBB7_16
.LibroBB7_19: 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.LibroBB7_20: 
	j .LibroBB7_9
.LibroBB7_21: 
	la t0, head
	lw t0, 0(t0)
	addi t1, zero, 1
	add t1, t0, t1
	la t0, head
	sw t1, 0(t0)
	j .LibroBB7_10
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

	.type	head,@object
head:
	.word	0
	.size	head, 4

	.type	startx,@object
startx:
	.word	0
	.size	startx, 4

	.type	starty,@object
starty:
	.word	0
	.size	starty, 4

	.type	targetx,@object
targetx:
	.word	0
	.size	targetx, 4

	.type	targety,@object
targety:
	.word	0
	.size	targety, 4

	.type	x,@object
x:
	.word	0
	.size	x, 4

	.type	y,@object
y:
	.word	0
	.size	y, 4

	.type	xlist,@object
xlist:
	.word	0
	.size	xlist, 4

	.type	ylist,@object
ylist:
	.word	0
	.size	ylist, 4

	.type	tail,@object
tail:
	.word	0
	.size	tail, 4

	.type	ok,@object
ok:
	.word	0
	.size	ok, 4

	.type	now,@object
now:
	.word	0
	.size	now, 4

	.type	dx,@object
dx:
	.word	0
	.size	dx, 4

	.type	dy,@object
dy:
	.word	0
	.size	dy, 4

	.type	step,@object
step:
	.word	0
	.size	step, 4

	.type	i,@object
i:
	.word	0
	.size	i, 4

	.type	j,@object
j:
	.word	0
	.size	j, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	"no solution!\n"
	.size	.libro.str, 14

