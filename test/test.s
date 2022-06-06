	.text
	.globl main
	.p2align	2
	.type	main,@function
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
block: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call block
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add1: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 1
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add2: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 2
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add4: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 4
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add8: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 8
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add16: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 16
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add32: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 32
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add64: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 64
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add128: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 128
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add256: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 256
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add512: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 512
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add131072: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	lui a0, 32
	addi a0, a0, 0
	add a0, t0, a0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add1024: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi a0, a0, 1024
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add262144: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lui t0, 64
	addi t0, t0, 0
	add t0, a0, t0
	mv a0, t0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
wpp: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi a0, t0, 1
	la t0, w
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add2048: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	lui a0, 1
	addi a0, a0, -2048
	add a0, t0, a0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add524288: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	lui t0, 128
	addi t0, t0, 0
	add t0, a0, t0
	mv a0, t0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add4096: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	lui a0, 1
	addi a0, a0, 0
	add a0, t0, a0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add8192: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	lui a0, 2
	addi a0, a0, 0
	add a0, t0, a0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
wppp: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi a0, t0, 1
	la t0, w
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add16384: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	lui a0, 4
	addi a0, a0, 0
	add a0, t0, a0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add32768: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	lui a0, 8
	addi a0, a0, 0
	add a0, t0, a0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add65536: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	mv t0, a0
	lui a0, 16
	addi a0, a0, 0
	add a0, t0, a0
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
wpppp: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi a0, t0, 1
	la t0, w
	sw a0, 0(t0)
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
bblock: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
wP: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t2, zero, 3
	j .LibroBB26_1
.LibroBB26_1: 
	srai a0, t2, 1
	addi t1, zero, 2
	j .LibroBB26_2
.LibroBB26_2: 
	addi t0, zero, 1
	bge t1, a0, .LibroBB26_6
	j .LibroBB26_3
.LibroBB26_3: 
	rem s1, t2, t1
	addi t0, zero, 0
	xor t0, s1, t0
	bnez t0, .LibroBB26_5
	j .LibroBB26_4
.LibroBB26_4: 
	addi t2, t2, 1
	addi t0, zero, 0
	j .LibroBB26_6
.LibroBB26_5: 
	addi t1, t1, 1
	j .LibroBB26_2
.LibroBB26_6: 
	addi s1, zero, 0
	addi t1, zero, 0
	bge s1, t2, .LibroBB26_8
	j .LibroBB26_7
.LibroBB26_7: 
	add t1, t2, t0
	addi s1, zero, 9
	rem s1, t1, s1
	addi t1, zero, 0
	xor t1, s1, t1
	seqz t1, t1
	j .LibroBB26_8
.LibroBB26_8: 
	beqz t1, .LibroBB26_10
	j .LibroBB26_9
.LibroBB26_9: 
	la t0, N
	lw t2, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	add t0, t2, t1
	andi t1, t0, 1
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB26_11
	j .LibroBB26_12
.LibroBB26_10: 
	la t1, N
	lw t1, 0(t1)
	add s1, t1, t0
	la t1, N
	sw s1, 0(t1)
	add t0, t2, t0
	addi t2, t0, 1
	j .LibroBB26_1
.LibroBB26_11: 
	call block
	call block
	call block
	call block
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	j .LibroBB26_13
.LibroBB26_12: 
	la t0, N
	lw t0, 0(t0)
	addi a0, t0, -6
	j .LibroBB26_13
.LibroBB26_13: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
sanity_check: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t2, zero, 3
	j .LibroBB27_1
.LibroBB27_1: 
	srai a0, t2, 1
	addi t0, zero, 2
	j .LibroBB27_2
.LibroBB27_2: 
	addi t1, zero, 1
	bge t0, a0, .LibroBB27_4
	j .LibroBB27_3
.LibroBB27_3: 
	rem s1, t2, t0
	addi t1, zero, 0
	xor t1, s1, t1
	bnez t1, .LibroBB27_5
	j .LibroBB27_6
.LibroBB27_4: 
	addi s1, zero, 0
	addi t0, zero, 0
	bge s1, t2, .LibroBB27_8
	j .LibroBB27_7
.LibroBB27_5: 
	addi t0, t0, 1
	j .LibroBB27_2
.LibroBB27_6: 
	addi t2, t2, 1
	addi t1, zero, 0
	j .LibroBB27_4
.LibroBB27_7: 
	add t0, t2, t1
	addi s1, zero, 9
	rem s1, t0, s1
	addi t0, zero, 0
	xor t0, s1, t0
	seqz t0, t0
	j .LibroBB27_8
.LibroBB27_8: 
	beqz t0, .LibroBB27_9
	j .LibroBB27_10
.LibroBB27_9: 
	la t0, N
	lw t0, 0(t0)
	add s1, t0, t1
	la t0, N
	sw s1, 0(t0)
	add t0, t2, t1
	addi t2, t0, 1
	j .LibroBB27_1
.LibroBB27_10: 
	la t0, N
	lw t2, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	add t0, t2, t1
	andi t1, t0, 1
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB27_11
	j .LibroBB27_12
.LibroBB27_11: 
	call block
	call block
	call block
	call block
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	j .LibroBB27_13
.LibroBB27_12: 
	la t0, N
	lw t0, 0(t0)
	lui a0, 16
	addi a0, a0, 0
	add a0, t0, a0
	call add65536
	call add65536
	call add65536
	call add65536
	call add65536
	call add65536
	call add65536
	lui t0, 1048448
	addi t0, t0, -6
	add t0, a0, t0
	mv a0, t0
	j .LibroBB27_13
.LibroBB27_13: 
	addi a0, a0, 1
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
main: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t2, zero, 3
	j .LibroBB28_1
.LibroBB28_1: 
	srai a0, t2, 1
	addi t1, zero, 2
	j .LibroBB28_2
.LibroBB28_2: 
	addi t0, zero, 1
	bge t1, a0, .LibroBB28_4
	j .LibroBB28_3
.LibroBB28_3: 
	rem s1, t2, t1
	addi t0, zero, 0
	xor t0, s1, t0
	bnez t0, .LibroBB28_5
	j .LibroBB28_6
.LibroBB28_4: 
	addi s1, zero, 0
	addi t1, zero, 0
	bge s1, t2, .LibroBB28_7
	j .LibroBB28_8
.LibroBB28_5: 
	addi t1, t1, 1
	j .LibroBB28_2
.LibroBB28_6: 
	addi t2, t2, 1
	addi t0, zero, 0
	j .LibroBB28_4
.LibroBB28_7: 
	beqz t1, .LibroBB28_10
	j .LibroBB28_9
.LibroBB28_8: 
	add t1, t2, t0
	addi s1, zero, 9
	rem s1, t1, s1
	addi t1, zero, 0
	xor t1, s1, t1
	seqz t1, t1
	j .LibroBB28_7
.LibroBB28_9: 
	la t0, N
	lw t2, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	add t0, t2, t1
	andi t1, t0, 1
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB28_11
	j .LibroBB28_12
.LibroBB28_10: 
	la t1, N
	lw t1, 0(t1)
	add s1, t1, t0
	la t1, N
	sw s1, 0(t1)
	add t0, t2, t0
	addi t2, t0, 1
	j .LibroBB28_1
.LibroBB28_11: 
	call block
	call block
	call block
	call block
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	call bblock
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	call bblock
	call bblock
	j .LibroBB28_13
.LibroBB28_12: 
	la t0, N
	lw a0, 0(t0)
	call add65536
	call add65536
	call add65536
	call add65536
	call add65536
	call add65536
	call add65536
	call add65536
	mv t0, a0
	lui a0, 1048448
	addi a0, a0, -6
	add a0, t0, a0
	j .LibroBB28_13
.LibroBB28_13: 
	addi a0, a0, 0
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.data
	.type	w,@object
w:
	.word	0
	.size	w, 4

	.type	N,@object
N:
	.word	1
	.size	N, 4

