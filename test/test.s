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
	j .LibroBB1_1
.LibroBB1_1: 
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
	j .LibroBB2_1
.LibroBB2_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add2: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB3_1
.LibroBB3_1: 
	addi t0, a0, 1
	j .LibroBB3_2
.LibroBB3_2: 
	addi a0, t0, 1
	j .LibroBB3_3
.LibroBB3_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add4: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB4_1
.LibroBB4_1: 
	addi t0, a0, 1
	j .LibroBB4_2
.LibroBB4_2: 
	addi t0, t0, 1
	j .LibroBB4_3
.LibroBB4_3: 
	addi t0, t0, 1
	j .LibroBB4_4
.LibroBB4_4: 
	addi a0, t0, 1
	j .LibroBB4_5
.LibroBB4_5: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add8: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB5_1
.LibroBB5_1: 
	addi t0, a0, 1
	j .LibroBB5_2
.LibroBB5_2: 
	addi t0, t0, 1
	j .LibroBB5_3
.LibroBB5_3: 
	addi t0, t0, 1
	j .LibroBB5_4
.LibroBB5_4: 
	addi t0, t0, 1
	j .LibroBB5_5
.LibroBB5_5: 
	addi t0, t0, 1
	j .LibroBB5_6
.LibroBB5_6: 
	addi t0, t0, 1
	j .LibroBB5_7
.LibroBB5_7: 
	addi t0, t0, 1
	j .LibroBB5_8
.LibroBB5_8: 
	addi a0, t0, 1
	j .LibroBB5_9
.LibroBB5_9: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add16: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB6_1
.LibroBB6_1: 
	addi t0, a0, 1
	j .LibroBB6_2
.LibroBB6_2: 
	addi t0, t0, 1
	j .LibroBB6_3
.LibroBB6_3: 
	addi t0, t0, 1
	j .LibroBB6_4
.LibroBB6_4: 
	addi t0, t0, 1
	j .LibroBB6_5
.LibroBB6_5: 
	addi t0, t0, 1
	j .LibroBB6_6
.LibroBB6_6: 
	addi t0, t0, 1
	j .LibroBB6_7
.LibroBB6_7: 
	addi t0, t0, 1
	j .LibroBB6_8
.LibroBB6_8: 
	addi t0, t0, 1
	j .LibroBB6_9
.LibroBB6_9: 
	addi t0, t0, 1
	j .LibroBB6_10
.LibroBB6_10: 
	addi t0, t0, 1
	j .LibroBB6_11
.LibroBB6_11: 
	addi t0, t0, 1
	j .LibroBB6_12
.LibroBB6_12: 
	addi t0, t0, 1
	j .LibroBB6_13
.LibroBB6_13: 
	addi t0, t0, 1
	j .LibroBB6_14
.LibroBB6_14: 
	addi t0, t0, 1
	j .LibroBB6_15
.LibroBB6_15: 
	addi t0, t0, 1
	j .LibroBB6_16
.LibroBB6_16: 
	addi a0, t0, 1
	j .LibroBB6_17
.LibroBB6_17: 
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
	j .LibroBB7_1
.LibroBB7_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add64: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB8_1
.LibroBB8_1: 
	call add16
	call add16
	j .LibroBB8_2
.LibroBB8_2: 
	call add16
	call add16
	j .LibroBB8_3
.LibroBB8_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add128: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB9_1
.LibroBB9_1: 
	call add16
	call add16
	j .LibroBB9_2
.LibroBB9_2: 
	call add16
	call add16
	j .LibroBB9_3
.LibroBB9_3: 
	call add16
	call add16
	j .LibroBB9_4
.LibroBB9_4: 
	call add16
	call add16
	j .LibroBB9_5
.LibroBB9_5: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add256: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB10_1
.LibroBB10_1: 
	call add16
	call add16
	j .LibroBB10_2
.LibroBB10_2: 
	call add16
	call add16
	j .LibroBB10_3
.LibroBB10_3: 
	call add16
	call add16
	j .LibroBB10_4
.LibroBB10_4: 
	call add16
	call add16
	j .LibroBB10_5
.LibroBB10_5: 
	call add16
	call add16
	j .LibroBB10_6
.LibroBB10_6: 
	call add16
	call add16
	j .LibroBB10_7
.LibroBB10_7: 
	call add16
	call add16
	j .LibroBB10_8
.LibroBB10_8: 
	call add16
	call add16
	j .LibroBB10_9
.LibroBB10_9: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add512: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB11_1
.LibroBB11_1: 
	call add16
	call add16
	j .LibroBB11_2
.LibroBB11_2: 
	call add16
	call add16
	j .LibroBB11_3
.LibroBB11_3: 
	call add16
	call add16
	j .LibroBB11_4
.LibroBB11_4: 
	call add16
	call add16
	j .LibroBB11_5
.LibroBB11_5: 
	call add16
	call add16
	j .LibroBB11_6
.LibroBB11_6: 
	call add16
	call add16
	j .LibroBB11_7
.LibroBB11_7: 
	call add16
	call add16
	j .LibroBB11_8
.LibroBB11_8: 
	call add16
	call add16
	j .LibroBB11_9
.LibroBB11_9: 
	call add16
	call add16
	j .LibroBB11_10
.LibroBB11_10: 
	call add16
	call add16
	j .LibroBB11_11
.LibroBB11_11: 
	call add16
	call add16
	j .LibroBB11_12
.LibroBB11_12: 
	call add16
	call add16
	j .LibroBB11_13
.LibroBB11_13: 
	call add16
	call add16
	j .LibroBB11_14
.LibroBB11_14: 
	call add16
	call add16
	j .LibroBB11_15
.LibroBB11_15: 
	call add16
	call add16
	j .LibroBB11_16
.LibroBB11_16: 
	call add16
	call add16
	j .LibroBB11_17
.LibroBB11_17: 
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
	j .LibroBB12_1
.LibroBB12_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add2048: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB13_1
.LibroBB13_1: 
	call add512
	call add512
	j .LibroBB13_2
.LibroBB13_2: 
	call add512
	call add512
	j .LibroBB13_3
.LibroBB13_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add4096: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB14_1
.LibroBB14_1: 
	call add512
	call add512
	j .LibroBB14_2
.LibroBB14_2: 
	call add512
	call add512
	j .LibroBB14_3
.LibroBB14_3: 
	call add512
	call add512
	j .LibroBB14_4
.LibroBB14_4: 
	call add512
	call add512
	j .LibroBB14_5
.LibroBB14_5: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add8192: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB15_1
.LibroBB15_1: 
	call add512
	call add512
	j .LibroBB15_2
.LibroBB15_2: 
	call add512
	call add512
	j .LibroBB15_3
.LibroBB15_3: 
	call add512
	call add512
	j .LibroBB15_4
.LibroBB15_4: 
	call add512
	call add512
	j .LibroBB15_5
.LibroBB15_5: 
	call add512
	call add512
	j .LibroBB15_6
.LibroBB15_6: 
	call add512
	call add512
	j .LibroBB15_7
.LibroBB15_7: 
	call add512
	call add512
	j .LibroBB15_8
.LibroBB15_8: 
	call add512
	call add512
	j .LibroBB15_9
.LibroBB15_9: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add16384: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB16_1
.LibroBB16_1: 
	call add512
	call add512
	j .LibroBB16_2
.LibroBB16_2: 
	call add512
	call add512
	j .LibroBB16_3
.LibroBB16_3: 
	call add512
	call add512
	j .LibroBB16_4
.LibroBB16_4: 
	call add512
	call add512
	j .LibroBB16_5
.LibroBB16_5: 
	call add512
	call add512
	j .LibroBB16_6
.LibroBB16_6: 
	call add512
	call add512
	j .LibroBB16_7
.LibroBB16_7: 
	call add512
	call add512
	j .LibroBB16_8
.LibroBB16_8: 
	call add512
	call add512
	j .LibroBB16_9
.LibroBB16_9: 
	call add512
	call add512
	j .LibroBB16_10
.LibroBB16_10: 
	call add512
	call add512
	j .LibroBB16_11
.LibroBB16_11: 
	call add512
	call add512
	j .LibroBB16_12
.LibroBB16_12: 
	call add512
	call add512
	j .LibroBB16_13
.LibroBB16_13: 
	call add512
	call add512
	j .LibroBB16_14
.LibroBB16_14: 
	call add512
	call add512
	j .LibroBB16_15
.LibroBB16_15: 
	call add512
	call add512
	j .LibroBB16_16
.LibroBB16_16: 
	call add512
	call add512
	j .LibroBB16_17
.LibroBB16_17: 
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
	j .LibroBB17_1
.LibroBB17_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add65536: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB18_1
.LibroBB18_1: 
	call add16384
	call add16384
	j .LibroBB18_2
.LibroBB18_2: 
	call add16384
	call add16384
	j .LibroBB18_3
.LibroBB18_3: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add131072: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB19_1
.LibroBB19_1: 
	call add16384
	call add16384
	j .LibroBB19_2
.LibroBB19_2: 
	call add16384
	call add16384
	j .LibroBB19_3
.LibroBB19_3: 
	call add16384
	call add16384
	j .LibroBB19_4
.LibroBB19_4: 
	call add16384
	call add16384
	j .LibroBB19_5
.LibroBB19_5: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add262144: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB20_1
.LibroBB20_1: 
	call add16384
	call add16384
	j .LibroBB20_2
.LibroBB20_2: 
	call add16384
	call add16384
	j .LibroBB20_3
.LibroBB20_3: 
	call add16384
	call add16384
	j .LibroBB20_4
.LibroBB20_4: 
	call add16384
	call add16384
	j .LibroBB20_5
.LibroBB20_5: 
	call add16384
	call add16384
	j .LibroBB20_6
.LibroBB20_6: 
	call add16384
	call add16384
	j .LibroBB20_7
.LibroBB20_7: 
	call add16384
	call add16384
	j .LibroBB20_8
.LibroBB20_8: 
	call add16384
	call add16384
	j .LibroBB20_9
.LibroBB20_9: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
add524288: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB21_1
.LibroBB21_1: 
	call add16384
	call add16384
	j .LibroBB21_2
.LibroBB21_2: 
	call add16384
	call add16384
	j .LibroBB21_3
.LibroBB21_3: 
	call add16384
	call add16384
	j .LibroBB21_4
.LibroBB21_4: 
	call add16384
	call add16384
	j .LibroBB21_5
.LibroBB21_5: 
	call add16384
	call add16384
	j .LibroBB21_6
.LibroBB21_6: 
	call add16384
	call add16384
	j .LibroBB21_7
.LibroBB21_7: 
	call add16384
	call add16384
	j .LibroBB21_8
.LibroBB21_8: 
	call add16384
	call add16384
	j .LibroBB21_9
.LibroBB21_9: 
	call add16384
	call add16384
	j .LibroBB21_10
.LibroBB21_10: 
	call add16384
	call add16384
	j .LibroBB21_11
.LibroBB21_11: 
	call add16384
	call add16384
	j .LibroBB21_12
.LibroBB21_12: 
	call add16384
	call add16384
	j .LibroBB21_13
.LibroBB21_13: 
	call add16384
	call add16384
	j .LibroBB21_14
.LibroBB21_14: 
	call add16384
	call add16384
	j .LibroBB21_15
.LibroBB21_15: 
	call add16384
	call add16384
	j .LibroBB21_16
.LibroBB21_16: 
	call add16384
	call add16384
	j .LibroBB21_17
.LibroBB21_17: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
sanity_check: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	j .LibroBB22_1
.LibroBB22_1: 
	addi t2, zero, 3
	j .LibroBB22_2
.LibroBB22_2: 
	j .LibroBB22_3
.LibroBB22_3: 
	srai a0, t2, 1
	addi s1, zero, 2
	j .LibroBB22_4
.LibroBB22_4: 
	addi t0, zero, 1
	bge s1, a0, .LibroBB22_8
	j .LibroBB22_5
.LibroBB22_5: 
	rem t1, t2, s1
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB22_7
	j .LibroBB22_6
.LibroBB22_6: 
	addi t2, t2, 1
	addi t0, zero, 0
	j .LibroBB22_8
.LibroBB22_7: 
	addi s1, s1, 1
	j .LibroBB22_4
.LibroBB22_8: 
	addi a0, zero, 0
	addi t1, zero, 0
	bge a0, t2, .LibroBB22_9
	j .LibroBB22_10
.LibroBB22_9: 
	beqz t1, .LibroBB22_12
	j .LibroBB22_11
.LibroBB22_10: 
	add t1, t2, t0
	addi a0, zero, 9
	rem a0, t1, a0
	addi t1, zero, 0
	xor t1, a0, t1
	seqz t1, t1
	j .LibroBB22_9
.LibroBB22_11: 
	la t0, N
	lw s1, 0(t0)
	j .LibroBB22_13
.LibroBB22_12: 
	la t1, N
	lw t1, 0(t1)
	add a0, t1, t0
	la t1, N
	sw a0, 0(t1)
	add t0, t2, t0
	j .LibroBB22_14
.LibroBB22_13: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB22_15
.LibroBB22_14: 
	addi t2, t0, 1
	j .LibroBB22_2
.LibroBB22_15: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB22_16
.LibroBB22_16: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB22_17
.LibroBB22_17: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB22_18
.LibroBB22_18: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB22_19
.LibroBB22_19: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB22_20
.LibroBB22_20: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB22_21
.LibroBB22_21: 
	add t0, s1, a0
	andi t1, t0, 1
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB22_22
	j .LibroBB22_23
.LibroBB22_22: 
	call block
	j .LibroBB22_24
.LibroBB22_23: 
	la t0, N
	lw a0, 0(t0)
	call add524288
	lui t0, 1048448
	addi t0, t0, 0
	add t0, a0, t0
	addi a0, t0, -6
	j .LibroBB22_31
.LibroBB22_24: 
	call block
	j .LibroBB22_25
.LibroBB22_25: 
	call block
	j .LibroBB22_26
.LibroBB22_26: 
	call block
	j .LibroBB22_27
.LibroBB22_27: 
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	j .LibroBB22_28
.LibroBB22_28: 
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	j .LibroBB22_29
.LibroBB22_29: 
	call bblock
	call bblock
	j .LibroBB22_30
.LibroBB22_30: 
	j .LibroBB22_31
.LibroBB22_31: 
	j .LibroBB22_32
.LibroBB22_32: 
	addi a0, a0, 1
	j .LibroBB22_33
.LibroBB22_33: 
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
	j .LibroBB23_1
.LibroBB23_1: 
	addi t2, zero, 3
	j .LibroBB23_2
.LibroBB23_2: 
	j .LibroBB23_3
.LibroBB23_3: 
	srai a0, t2, 1
	addi t1, zero, 2
	j .LibroBB23_4
.LibroBB23_4: 
	addi t0, zero, 1
	bge t1, a0, .LibroBB23_5
	j .LibroBB23_6
.LibroBB23_5: 
	addi a0, zero, 0
	addi s1, zero, 0
	bge a0, t2, .LibroBB23_8
	j .LibroBB23_7
.LibroBB23_6: 
	rem s1, t2, t1
	addi t0, zero, 0
	xor t0, s1, t0
	bnez t0, .LibroBB23_10
	j .LibroBB23_9
.LibroBB23_7: 
	add s1, t2, t0
	addi a0, zero, 9
	rem a0, s1, a0
	addi s1, zero, 0
	xor s1, a0, s1
	seqz s1, s1
	j .LibroBB23_8
.LibroBB23_8: 
	beqz s1, .LibroBB23_12
	j .LibroBB23_11
.LibroBB23_9: 
	addi t2, t2, 1
	addi t0, zero, 0
	j .LibroBB23_5
.LibroBB23_10: 
	addi t1, t1, 1
	j .LibroBB23_4
.LibroBB23_11: 
	la t0, N
	lw s1, 0(t0)
	j .LibroBB23_13
.LibroBB23_12: 
	la s1, N
	lw s1, 0(s1)
	add a0, s1, t0
	la s1, N
	sw a0, 0(s1)
	add t0, t2, t0
	j .LibroBB23_14
.LibroBB23_13: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB23_15
.LibroBB23_14: 
	addi t2, t0, 1
	j .LibroBB23_2
.LibroBB23_15: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB23_16
.LibroBB23_16: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB23_17
.LibroBB23_17: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB23_18
.LibroBB23_18: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB23_19
.LibroBB23_19: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB23_20
.LibroBB23_20: 
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	call wpp
	j .LibroBB23_21
.LibroBB23_21: 
	add t0, s1, a0
	andi t1, t0, 1
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB23_22
	j .LibroBB23_23
.LibroBB23_22: 
	call block
	j .LibroBB23_24
.LibroBB23_23: 
	la t0, N
	lw a0, 0(t0)
	call add524288
	lui t0, 1048448
	addi t0, t0, 0
	add t0, a0, t0
	addi a0, t0, -6
	j .LibroBB23_31
.LibroBB23_24: 
	call block
	j .LibroBB23_25
.LibroBB23_25: 
	call block
	j .LibroBB23_26
.LibroBB23_26: 
	call block
	j .LibroBB23_27
.LibroBB23_27: 
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	j .LibroBB23_28
.LibroBB23_28: 
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	call wppp
	j .LibroBB23_29
.LibroBB23_29: 
	call bblock
	call bblock
	j .LibroBB23_30
.LibroBB23_30: 
	j .LibroBB23_31
.LibroBB23_31: 
	j .LibroBB23_32
.LibroBB23_32: 
	addi t0, a0, 1
	j .LibroBB23_33
.LibroBB23_33: 
	addi a0, t0, -1
	j .LibroBB23_34
.LibroBB23_34: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
bblock: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB24_1
.LibroBB24_1: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_2
.LibroBB24_2: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_3
.LibroBB24_3: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_4
.LibroBB24_4: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_5
.LibroBB24_5: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_6
.LibroBB24_6: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_7
.LibroBB24_7: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_8
.LibroBB24_8: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_9
.LibroBB24_9: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_10
.LibroBB24_10: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_11
.LibroBB24_11: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_12
.LibroBB24_12: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_13
.LibroBB24_13: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_14
.LibroBB24_14: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_15
.LibroBB24_15: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_16
.LibroBB24_16: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_17
.LibroBB24_17: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_18
.LibroBB24_18: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_19
.LibroBB24_19: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_20
.LibroBB24_20: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_21
.LibroBB24_21: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_22
.LibroBB24_22: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_23
.LibroBB24_23: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_24
.LibroBB24_24: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_25
.LibroBB24_25: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_26
.LibroBB24_26: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_27
.LibroBB24_27: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_28
.LibroBB24_28: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_29
.LibroBB24_29: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_30
.LibroBB24_30: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_31
.LibroBB24_31: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_32
.LibroBB24_32: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_33
.LibroBB24_33: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_34
.LibroBB24_34: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_35
.LibroBB24_35: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_36
.LibroBB24_36: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_37
.LibroBB24_37: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_38
.LibroBB24_38: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_39
.LibroBB24_39: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_40
.LibroBB24_40: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_41
.LibroBB24_41: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_42
.LibroBB24_42: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_43
.LibroBB24_43: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_44
.LibroBB24_44: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_45
.LibroBB24_45: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_46
.LibroBB24_46: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_47
.LibroBB24_47: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_48
.LibroBB24_48: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_49
.LibroBB24_49: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_50
.LibroBB24_50: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_51
.LibroBB24_51: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_52
.LibroBB24_52: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_53
.LibroBB24_53: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_54
.LibroBB24_54: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_55
.LibroBB24_55: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_56
.LibroBB24_56: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_57
.LibroBB24_57: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_58
.LibroBB24_58: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_59
.LibroBB24_59: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_60
.LibroBB24_60: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_61
.LibroBB24_61: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_62
.LibroBB24_62: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_63
.LibroBB24_63: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_64
.LibroBB24_64: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_65
.LibroBB24_65: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_66
.LibroBB24_66: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_67
.LibroBB24_67: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_68
.LibroBB24_68: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_69
.LibroBB24_69: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_70
.LibroBB24_70: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_71
.LibroBB24_71: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_72
.LibroBB24_72: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_73
.LibroBB24_73: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_74
.LibroBB24_74: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_75
.LibroBB24_75: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_76
.LibroBB24_76: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_77
.LibroBB24_77: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_78
.LibroBB24_78: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_79
.LibroBB24_79: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_80
.LibroBB24_80: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_81
.LibroBB24_81: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_82
.LibroBB24_82: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_83
.LibroBB24_83: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_84
.LibroBB24_84: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_85
.LibroBB24_85: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_86
.LibroBB24_86: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_87
.LibroBB24_87: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_88
.LibroBB24_88: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_89
.LibroBB24_89: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_90
.LibroBB24_90: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_91
.LibroBB24_91: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_92
.LibroBB24_92: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_93
.LibroBB24_93: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_94
.LibroBB24_94: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_95
.LibroBB24_95: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_96
.LibroBB24_96: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_97
.LibroBB24_97: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_98
.LibroBB24_98: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_99
.LibroBB24_99: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_100
.LibroBB24_100: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_101
.LibroBB24_101: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_102
.LibroBB24_102: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_103
.LibroBB24_103: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_104
.LibroBB24_104: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_105
.LibroBB24_105: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_106
.LibroBB24_106: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_107
.LibroBB24_107: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_108
.LibroBB24_108: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_109
.LibroBB24_109: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_110
.LibroBB24_110: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_111
.LibroBB24_111: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_112
.LibroBB24_112: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB24_113
.LibroBB24_113: 
	call bblock
	call bblock
	j .LibroBB24_114
.LibroBB24_114: 
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
	j .LibroBB25_1
.LibroBB25_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
wpppp: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB26_1
.LibroBB26_1: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_2
.LibroBB26_2: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_3
.LibroBB26_3: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_4
.LibroBB26_4: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_5
.LibroBB26_5: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_6
.LibroBB26_6: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_7
.LibroBB26_7: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_8
.LibroBB26_8: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_9
.LibroBB26_9: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_10
.LibroBB26_10: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_11
.LibroBB26_11: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_12
.LibroBB26_12: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_13
.LibroBB26_13: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_14
.LibroBB26_14: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_15
.LibroBB26_15: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_16
.LibroBB26_16: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_17
.LibroBB26_17: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_18
.LibroBB26_18: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_19
.LibroBB26_19: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_20
.LibroBB26_20: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_21
.LibroBB26_21: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_22
.LibroBB26_22: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_23
.LibroBB26_23: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_24
.LibroBB26_24: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_25
.LibroBB26_25: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_26
.LibroBB26_26: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_27
.LibroBB26_27: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_28
.LibroBB26_28: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_29
.LibroBB26_29: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_30
.LibroBB26_30: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_31
.LibroBB26_31: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_32
.LibroBB26_32: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_33
.LibroBB26_33: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_34
.LibroBB26_34: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_35
.LibroBB26_35: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_36
.LibroBB26_36: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_37
.LibroBB26_37: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_38
.LibroBB26_38: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_39
.LibroBB26_39: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_40
.LibroBB26_40: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_41
.LibroBB26_41: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_42
.LibroBB26_42: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_43
.LibroBB26_43: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_44
.LibroBB26_44: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_45
.LibroBB26_45: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_46
.LibroBB26_46: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_47
.LibroBB26_47: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_48
.LibroBB26_48: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_49
.LibroBB26_49: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_50
.LibroBB26_50: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_51
.LibroBB26_51: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_52
.LibroBB26_52: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_53
.LibroBB26_53: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_54
.LibroBB26_54: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_55
.LibroBB26_55: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB26_56
.LibroBB26_56: 
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
	j .LibroBB26_57
.LibroBB26_57: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
wppp: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	j .LibroBB27_1
.LibroBB27_1: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB27_2
.LibroBB27_2: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB27_3
.LibroBB27_3: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB27_4
.LibroBB27_4: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB27_5
.LibroBB27_5: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB27_6
.LibroBB27_6: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB27_7
.LibroBB27_7: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB27_8
.LibroBB27_8: 
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
	j .LibroBB27_9
.LibroBB27_9: 
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
	j .LibroBB28_1
.LibroBB28_1: 
	j .LibroBB28_2
.LibroBB28_2: 
	srai a0, s1, 1
	addi t2, zero, 2
	j .LibroBB28_3
.LibroBB28_3: 
	addi t0, zero, 1
	bge t2, a0, .LibroBB28_7
	j .LibroBB28_4
.LibroBB28_4: 
	rem t1, s1, t2
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB28_5
	j .LibroBB28_6
.LibroBB28_5: 
	addi t2, t2, 1
	j .LibroBB28_3
.LibroBB28_6: 
	addi s1, s1, 1
	addi t0, zero, 0
	j .LibroBB28_7
.LibroBB28_7: 
	addi a0, zero, 0
	addi t1, zero, 0
	bge a0, s1, .LibroBB28_9
	j .LibroBB28_8
.LibroBB28_8: 
	add t1, s1, t0
	addi a0, zero, 9
	rem a0, t1, a0
	addi t1, zero, 0
	xor t1, a0, t1
	seqz t1, t1
	j .LibroBB28_9
.LibroBB28_9: 
	beqz t1, .LibroBB28_11
	j .LibroBB28_10
.LibroBB28_10: 
	la t0, N
	lw t2, 0(t0)
	j .LibroBB28_12
.LibroBB28_11: 
	la t1, N
	lw t1, 0(t1)
	add a0, t1, t0
	la t1, N
	sw a0, 0(t1)
	add t0, s1, t0
	j .LibroBB28_13
.LibroBB28_12: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_14
.LibroBB28_13: 
	addi s1, t0, 1
	j .LibroBB28_1
.LibroBB28_14: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_15
.LibroBB28_15: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_16
.LibroBB28_16: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_17
.LibroBB28_17: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_18
.LibroBB28_18: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_19
.LibroBB28_19: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_20
.LibroBB28_20: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_21
.LibroBB28_21: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_22
.LibroBB28_22: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_23
.LibroBB28_23: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_24
.LibroBB28_24: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_25
.LibroBB28_25: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_26
.LibroBB28_26: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_27
.LibroBB28_27: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_28
.LibroBB28_28: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_29
.LibroBB28_29: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_30
.LibroBB28_30: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_31
.LibroBB28_31: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_32
.LibroBB28_32: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_33
.LibroBB28_33: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_34
.LibroBB28_34: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_35
.LibroBB28_35: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_36
.LibroBB28_36: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_37
.LibroBB28_37: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_38
.LibroBB28_38: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_39
.LibroBB28_39: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_40
.LibroBB28_40: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_41
.LibroBB28_41: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_42
.LibroBB28_42: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_43
.LibroBB28_43: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_44
.LibroBB28_44: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_45
.LibroBB28_45: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_46
.LibroBB28_46: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_47
.LibroBB28_47: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_48
.LibroBB28_48: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_49
.LibroBB28_49: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_50
.LibroBB28_50: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_51
.LibroBB28_51: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_52
.LibroBB28_52: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_53
.LibroBB28_53: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_54
.LibroBB28_54: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_55
.LibroBB28_55: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_56
.LibroBB28_56: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_57
.LibroBB28_57: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_58
.LibroBB28_58: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_59
.LibroBB28_59: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_60
.LibroBB28_60: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_61
.LibroBB28_61: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_62
.LibroBB28_62: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_63
.LibroBB28_63: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_64
.LibroBB28_64: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_65
.LibroBB28_65: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_66
.LibroBB28_66: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_67
.LibroBB28_67: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_68
.LibroBB28_68: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_69
.LibroBB28_69: 
	add t0, t2, t1
	andi t1, t0, 1
	addi t0, zero, 0
	xor t0, t1, t0
	bnez t0, .LibroBB28_71
	j .LibroBB28_70
.LibroBB28_70: 
	la t0, N
	lw a0, 0(t0)
	call add524288
	lui t0, 1048448
	addi t0, t0, 0
	add t0, a0, t0
	addi a0, t0, -6
	j .LibroBB28_189
.LibroBB28_71: 
	call block
	j .LibroBB28_72
.LibroBB28_72: 
	call block
	j .LibroBB28_73
.LibroBB28_73: 
	call block
	j .LibroBB28_74
.LibroBB28_74: 
	call block
	j .LibroBB28_75
.LibroBB28_75: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_76
.LibroBB28_76: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_77
.LibroBB28_77: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_78
.LibroBB28_78: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_79
.LibroBB28_79: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_80
.LibroBB28_80: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_81
.LibroBB28_81: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_82
.LibroBB28_82: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_83
.LibroBB28_83: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_84
.LibroBB28_84: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_85
.LibroBB28_85: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_86
.LibroBB28_86: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_87
.LibroBB28_87: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_88
.LibroBB28_88: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_89
.LibroBB28_89: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_90
.LibroBB28_90: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_91
.LibroBB28_91: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_92
.LibroBB28_92: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_93
.LibroBB28_93: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_94
.LibroBB28_94: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_95
.LibroBB28_95: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_96
.LibroBB28_96: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_97
.LibroBB28_97: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_98
.LibroBB28_98: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_99
.LibroBB28_99: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_100
.LibroBB28_100: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_101
.LibroBB28_101: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_102
.LibroBB28_102: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_103
.LibroBB28_103: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_104
.LibroBB28_104: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_105
.LibroBB28_105: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_106
.LibroBB28_106: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_107
.LibroBB28_107: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_108
.LibroBB28_108: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_109
.LibroBB28_109: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_110
.LibroBB28_110: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_111
.LibroBB28_111: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_112
.LibroBB28_112: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_113
.LibroBB28_113: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_114
.LibroBB28_114: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_115
.LibroBB28_115: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_116
.LibroBB28_116: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_117
.LibroBB28_117: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_118
.LibroBB28_118: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_119
.LibroBB28_119: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_120
.LibroBB28_120: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_121
.LibroBB28_121: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_122
.LibroBB28_122: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_123
.LibroBB28_123: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_124
.LibroBB28_124: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_125
.LibroBB28_125: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_126
.LibroBB28_126: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_127
.LibroBB28_127: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_128
.LibroBB28_128: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_129
.LibroBB28_129: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_130
.LibroBB28_130: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_131
.LibroBB28_131: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_132
.LibroBB28_132: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_133
.LibroBB28_133: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_134
.LibroBB28_134: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_135
.LibroBB28_135: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_136
.LibroBB28_136: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_137
.LibroBB28_137: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_138
.LibroBB28_138: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_139
.LibroBB28_139: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_140
.LibroBB28_140: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_141
.LibroBB28_141: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_142
.LibroBB28_142: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_143
.LibroBB28_143: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_144
.LibroBB28_144: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_145
.LibroBB28_145: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_146
.LibroBB28_146: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_147
.LibroBB28_147: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_148
.LibroBB28_148: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_149
.LibroBB28_149: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_150
.LibroBB28_150: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_151
.LibroBB28_151: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_152
.LibroBB28_152: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_153
.LibroBB28_153: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_154
.LibroBB28_154: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_155
.LibroBB28_155: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_156
.LibroBB28_156: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_157
.LibroBB28_157: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_158
.LibroBB28_158: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_159
.LibroBB28_159: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_160
.LibroBB28_160: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_161
.LibroBB28_161: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_162
.LibroBB28_162: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_163
.LibroBB28_163: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_164
.LibroBB28_164: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_165
.LibroBB28_165: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_166
.LibroBB28_166: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_167
.LibroBB28_167: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_168
.LibroBB28_168: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_169
.LibroBB28_169: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_170
.LibroBB28_170: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_171
.LibroBB28_171: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_172
.LibroBB28_172: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_173
.LibroBB28_173: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_174
.LibroBB28_174: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_175
.LibroBB28_175: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_176
.LibroBB28_176: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_177
.LibroBB28_177: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_178
.LibroBB28_178: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_179
.LibroBB28_179: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_180
.LibroBB28_180: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_181
.LibroBB28_181: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_182
.LibroBB28_182: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_183
.LibroBB28_183: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_184
.LibroBB28_184: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_185
.LibroBB28_185: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_186
.LibroBB28_186: 
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	la t0, w
	lw t0, 0(t0)
	addi t1, t0, 1
	la t0, w
	sw t1, 0(t0)
	j .LibroBB28_187
.LibroBB28_187: 
	call bblock
	call bblock
	j .LibroBB28_188
.LibroBB28_188: 
	j .LibroBB28_189
.LibroBB28_189: 
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

