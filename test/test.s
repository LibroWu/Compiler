	.text
	.globl main
	.p2align	2
	.type	main,@function
test: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, zero, 0
	addi t0, zero, 0
	j .LibroBB0_1
.LibroBB0_1: 
	addi t1, zero, 200
	bge t0, t1, .LibroBB0_3
	j .LibroBB0_2
.LibroBB0_2: 
	addi t0, t0, 1
	addi a0, a0, 1
	j .LibroBB0_4
.LibroBB0_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.LibroBB0_4: 
	addi t0, t0, 1
	j .LibroBB0_1
naivedce: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	li a0, 1919
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
dceconst: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	li a0, 114514
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	call _GLOBAL_
	call test
	mv s1, a0
	call naivedce
	add s1, s1, a0
	call dceconst
	add t0, s1, a0
	lui a0, 1048564
	addi a0, a0, -1845
	add a0, t0, a0
	j .LibroBB3_1
.LibroBB3_1: 
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
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	N,@object
N:
	.word	80
	.size	N, 4

