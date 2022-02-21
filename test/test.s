	.text
	.globl main
	.p2align	2
	.type	main,@function
test: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi t0, zero, 0
	addi t1, zero, 0
	j .LibroBB0_4
.LibroBB0_1: 
	addi t1, t1, 1
	j .LibroBB0_4
.LibroBB0_2: 
	addi s1, zero, 1
	addi t2, zero, 2
	xor s1, s1, t2
	addi t2, zero, 3
	xor s1, s1, t2
	addi t2, zero, 0
	bnez s1, .LibroBB0_8
	j .LibroBB0_5
.LibroBB0_3: 
	j .LibroBB0_6
.LibroBB0_4: 
	addi t2, zero, 200
	bge t1, t2, .LibroBB0_3
	j .LibroBB0_2
.LibroBB0_5: 
	addi a0, zero, 1
	addi t2, zero, 1
	and a0, a0, t2
	addi s1, zero, 5
	addi t2, zero, 3
	div s1, s1, t2
	xor s1, a0, s1
	addi t2, zero, 0
	bnez s1, .LibroBB0_8
	j .LibroBB0_7
.LibroBB0_6: 
	ret
.LibroBB0_7: 
	addi s1, zero, 1
	addi t2, zero, 2
	add s1, s1, t2
	addi t2, s1, 3
	addi t2, t2, 4
	addi t2, t2, 5
	addi t2, t2, 6
	addi t2, t2, 7
	addi t2, t2, 8
	addi t2, t2, 9
	addi t2, t2, 10
	addi t2, t2, 11
	addi t2, t2, 12
	addi t2, t2, 13
	addi t2, t2, 14
	addi t2, t2, 15
	addi t2, t2, 16
	addi t2, t2, 17
	addi t2, t2, 18
	addi t2, t2, 19
	addi t2, t2, 20
	addi t2, t2, 21
	addi t2, t2, 22
	addi t2, t2, 23
	addi t2, t2, 24
	addi t2, t2, 25
	addi t2, t2, 26
	addi t2, t2, 27
	addi t2, t2, 28
	addi t2, t2, 29
	addi t2, t2, 30
	addi t2, t2, 31
	addi t2, t2, 32
	addi t2, t2, 33
	addi t2, t2, 34
	addi t2, t2, 35
	addi t2, t2, 36
	addi t2, t2, 37
	addi t2, t2, 38
	addi t2, t2, 39
	addi t2, t2, 40
	addi t2, t2, 41
	addi t2, t2, 42
	addi t2, t2, 43
	addi t2, t2, 44
	addi t2, t2, 45
	addi t2, t2, 46
	addi t2, t2, 47
	addi t2, t2, 48
	addi t2, t2, 49
	addi t2, t2, 50
	addi t2, t2, 51
	addi t2, t2, 52
	addi t2, t2, 53
	addi t2, t2, 54
	addi t2, t2, 55
	addi t2, t2, 56
	addi t2, t2, 57
	addi t2, t2, 58
	addi t2, t2, 59
	addi t2, t2, 60
	addi t2, t2, 61
	addi t2, t2, 62
	addi t2, t2, 63
	addi t2, t2, 64
	addi t2, t2, 65
	addi t2, t2, 66
	addi t2, t2, 67
	addi t2, t2, 68
	addi t2, t2, 69
	addi t2, t2, 70
	addi t2, t2, 71
	addi t2, t2, 72
	addi t2, t2, 73
	addi t2, t2, 74
	addi t2, t2, 75
	addi t2, t2, 76
	addi t2, t2, 77
	addi t2, t2, 78
	addi t2, t2, 79
	addi t2, t2, 80
	addi t2, t2, 81
	addi t2, t2, 82
	addi t2, t2, 83
	addi t2, t2, 84
	addi t2, t2, 85
	addi t2, t2, 86
	addi t2, t2, 87
	addi t2, t2, 88
	addi t2, t2, 89
	addi t2, t2, 90
	addi t2, t2, 91
	addi t2, t2, 92
	addi t2, t2, 93
	addi t2, t2, 94
	addi t2, t2, 95
	addi t2, t2, 96
	addi t2, t2, 97
	addi t2, t2, 98
	addi t2, t2, 99
	addi a0, t2, 100
	addi s1, zero, 100
	addi t2, zero, 1
	add s1, s1, t2
	addi t2, zero, 100
	mul t2, s1, t2
	srai t2, t2, 1
	xor t2, a0, t2
	seqz t2, t2
	j .LibroBB0_8
.LibroBB0_8: 
	beqz t2, .LibroBB0_10
	j .LibroBB0_11
.LibroBB0_9: 
	j .LibroBB0_1
.LibroBB0_10: 
	addi s1, zero, 1
	addi t0, zero, 1
	add s1, s1, t0
	addi t2, zero, 1
	addi t0, zero, 1
	sub t2, t2, t0
	div t0, s1, t2
	j .LibroBB0_9
.LibroBB0_11: 
	addi t1, t1, 1
	addi t0, t0, 1
	j .LibroBB0_9
main: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	call test
	j .LibroBB1_1
.LibroBB1_1: 
	ret
.data
