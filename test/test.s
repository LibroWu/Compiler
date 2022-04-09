	.text
	.globl main
	.p2align	2
	.type	main,@function
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
	addi a0, t1, 1
	la t0, w
	sw a0, 0(t0)
	j .LibroBB0_1
.LibroBB0_1: 
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
	addi t1, t1, 1
	la t0, w
	sw t1, 0(t0)
	addi t1, t1, 1
	la t0, w
	sw t1, 0(t0)
	addi t1, t1, 1
	la t0, w
	sw t1, 0(t0)
	addi t1, t1, 1
	la t0, w
	sw t1, 0(t0)
	addi a0, t1, 1
	la t0, w
	sw a0, 0(t0)
	addi t1, a0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB1_1
.LibroBB1_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
wpppp: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	j .LibroBB2_1
.LibroBB2_1: 
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
	j .LibroBB3_1
.LibroBB3_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
bblock: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call wpppp
	call wpppp
	call bblock
	call bblock
	j .LibroBB4_1
.LibroBB4_1: 
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
	j .LibroBB5_1
.LibroBB5_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add2: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add1
	call add1
	j .LibroBB6_1
.LibroBB6_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add4: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add2
	call add2
	j .LibroBB7_1
.LibroBB7_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add8: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add4
	call add4
	j .LibroBB8_1
.LibroBB8_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add16: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add8
	call add8
	j .LibroBB9_1
.LibroBB9_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add32: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add16
	call add16
	j .LibroBB10_1
.LibroBB10_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add64: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add32
	call add32
	j .LibroBB11_1
.LibroBB11_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add128: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add64
	call add64
	j .LibroBB12_1
.LibroBB12_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add256: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add128
	call add128
	j .LibroBB13_1
.LibroBB13_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add512: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add256
	call add256
	j .LibroBB14_1
.LibroBB14_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add1024: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add512
	call add512
	j .LibroBB15_1
.LibroBB15_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add2048: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add1024
	call add1024
	j .LibroBB16_1
.LibroBB16_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add4096: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add2048
	call add2048
	j .LibroBB17_1
.LibroBB17_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add8192: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add4096
	call add4096
	j .LibroBB18_1
.LibroBB18_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add16384: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add8192
	call add8192
	j .LibroBB19_1
.LibroBB19_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add32768: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add16384
	call add16384
	j .LibroBB20_1
.LibroBB20_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add65536: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add32768
	call add32768
	j .LibroBB21_1
.LibroBB21_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add131072: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add65536
	call add65536
	j .LibroBB22_1
.LibroBB22_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add262144: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add131072
	call add131072
	j .LibroBB23_1
.LibroBB23_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add524288: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call add262144
	call add262144
	j .LibroBB24_1
.LibroBB24_1: 
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
	addi s1, zero, 3
	j .LibroBB25_1
.LibroBB25_1: 
	j .LibroBB25_2
.LibroBB25_2: 
	srai a1, s1, 1
	addi t2, zero, 2
	j .LibroBB25_3
.LibroBB25_3: 
	addi t0, zero, 1
	bge t2, a1, .LibroBB25_7
	j .LibroBB25_4
.LibroBB25_4: 
	rem t1, s1, t2
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB25_5
	j .LibroBB25_6
.LibroBB25_5: 
	addi t2, t2, 1
	j .LibroBB25_3
.LibroBB25_6: 
	addi s1, s1, 1
	addi t0, zero, 0
	j .LibroBB25_7
.LibroBB25_7: 
	addi a0, zero, 0
	addi t1, zero, 0
	bge a0, s1, .LibroBB25_9
	j .LibroBB25_8
.LibroBB25_8: 
	add t1, s1, t0
	addi a0, zero, 9
	rem a0, t1, a0
	addi t1, zero, 0
	xor t1, a0, t1
	seqz t1, t1
	j .LibroBB25_9
.LibroBB25_9: 
	beqz t1, .LibroBB25_10
	j .LibroBB25_11
.LibroBB25_10: 
	la t1, N
	lw t1, 0(t1)
	add a0, t1, t0
	la t1, N
	sw a0, 0(t1)
	add t0, s1, t0
	j .LibroBB25_12
.LibroBB25_11: 
	la t0, N
	lw s1, 0(t0)
	call wpppp
	add t0, s1, a0
	andi t1, t0, 1
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB25_13
	j .LibroBB25_14
.LibroBB25_12: 
	addi s1, t0, 1
	j .LibroBB25_1
.LibroBB25_13: 
	call block
	call block
	call block
	call block
	call bblock
	j .LibroBB25_15
.LibroBB25_14: 
	la t0, N
	lw a0, 0(t0)
	call add524288
	lui t0, 1048448
	addi t0, t0, 0
	add t0, a0, t0
	addi a0, t0, -6
	j .LibroBB25_15
.LibroBB25_15: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
sanity_check: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call wP
	addi a0, a0, 1
	j .LibroBB26_1
.LibroBB26_1: 
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
	call sanity_check
	addi a0, a0, -1
	j .LibroBB27_1
.LibroBB27_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
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
	.type	w,@object
w:
	.word	0
	.size	w, 4

	.type	N,@object
N:
	.word	1
	.size	N, 4

