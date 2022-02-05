	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.0: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	addi s0, sp, 12
	addi t3, zero, 84
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 0(sp)
	addi t4, zero, 20
	lw t0, 0(sp)
	sw t4, 0(t0)
	la t3, a
	lw t1, 0(sp)
	sw t1, 0(t3)
	lw s0, 4(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret

jud: 
	addi sp, sp, -204
	sw ra, 200(sp)
	sw s0, 196(sp)
	addi s0, sp, 204
	mv t2, a0
	sw t2, 0(sp)
	addi t4, zero, 0
	sw t4, -12(s0)
	lw t1, 0(sp)
	sw t1, -16(s0)
	lw t2, -20(s0)
	sw t2, 4(sp)
	addi t4, zero, 0
	sw t4, -20(s0)
	j .LibroBB1_3
.LibroBB1_1: 
	lw t2, -20(s0)
	sw t2, 164(sp)
	addi t2, zero, 1
	sw t2, 168(sp)
	lw t0, 164(sp)
	lw t1, 168(sp)
	add t2, t0, t1
	sw t2, 168(sp)
	lw t1, 168(sp)
	sw t1, -20(s0)
	j .LibroBB1_3
.LibroBB1_2: 
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB1_5
.LibroBB1_3: 
	lw t2, -20(s0)
	sw t2, 8(sp)
	la t3, n
	lw t2, 0(t3)
	sw t2, 12(sp)
	lw t2, -16(s0)
	sw t2, 16(sp)
	lw t0, 12(sp)
	lw t1, 16(sp)
	div t2, t0, t1
	sw t2, 20(sp)
	lw t0, 8(sp)
	lw t1, 20(sp)
	slt t2, t0, t1
	sw t2, 24(sp)
	lw t0, 24(sp)
	beqz t0, .LibroBB1_2
	j .LibroBB1_4
.LibroBB1_4: 
	addi t3, zero, 0
	mv t2, t3
	sw t2, 28(sp)
	lw t1, 28(sp)
	sw t1, -28(s0)
	lw t2, -24(s0)
	sw t2, 32(sp)
	addi t4, zero, 0
	sw t4, -24(s0)
	j .LibroBB1_6
.LibroBB1_5: 
	lw t2, -12(s0)
	sw t2, 172(sp)
	lw t0, 172(sp)
	mv a0, t0
	lw s0, 196(sp)
	lw ra, 200(sp)
	addi sp, sp, 204
	ret

.LibroBB1_6: 
	lw t2, -24(s0)
	sw t2, 36(sp)
	lw t2, -16(s0)
	sw t2, 40(sp)
	addi t2, zero, 1
	sw t2, 44(sp)
	lw t0, 40(sp)
	lw t1, 44(sp)
	sub t2, t0, t1
	sw t2, 44(sp)
	lw t0, 36(sp)
	lw t1, 44(sp)
	slt t2, t0, t1
	sw t2, 48(sp)
	lw t0, 48(sp)
	beqz t0, .LibroBB1_7
	j .LibroBB1_9
.LibroBB1_7: 
	lw t2, -28(s0)
	sw t2, 156(sp)
	addi t2, zero, 1
	sw t2, 160(sp)
	lw t0, 156(sp)
	lw t1, 160(sp)
	xor t2, t0, t1
	sw t2, 160(sp)
	lw t0, 160(sp)
	beqz t0, .LibroBB1_10
	j .LibroBB1_11
.LibroBB1_8: 
	lw t2, -24(s0)
	sw t2, 148(sp)
	addi t2, zero, 1
	sw t2, 152(sp)
	lw t0, 148(sp)
	lw t1, 152(sp)
	add t2, t0, t1
	sw t2, 152(sp)
	lw t1, 152(sp)
	sw t1, -24(s0)
	j .LibroBB1_6
.LibroBB1_9: 
	la t3, a
	lw t2, 0(t3)
	sw t2, 52(sp)
	lw t2, -20(s0)
	sw t2, 56(sp)
	lw t2, -16(s0)
	sw t2, 60(sp)
	lw t0, 56(sp)
	lw t1, 60(sp)
	mul t2, t0, t1
	sw t2, 64(sp)
	lw t2, -24(s0)
	sw t2, 68(sp)
	lw t0, 64(sp)
	lw t1, 68(sp)
	add t2, t0, t1
	sw t2, 72(sp)
	addi t2, zero, 4
	sw t2, 76(sp)
	lw t0, 72(sp)
	lw t1, 76(sp)
	mul t2, t0, t1
	sw t2, 76(sp)
	addi t2, zero, 4
	sw t2, 80(sp)
	lw t0, 76(sp)
	lw t1, 80(sp)
	add t2, t0, t1
	sw t2, 80(sp)
	lw t0, 52(sp)
	lw t1, 80(sp)
	add t2, t0, t1
	sw t2, 84(sp)
	lw t0, 84(sp)
	lw t2, 0(t0)
	sw t2, 88(sp)
	la t3, a
	lw t2, 0(t3)
	sw t2, 92(sp)
	lw t2, -20(s0)
	sw t2, 96(sp)
	lw t2, -16(s0)
	sw t2, 100(sp)
	lw t0, 96(sp)
	lw t1, 100(sp)
	mul t2, t0, t1
	sw t2, 104(sp)
	lw t2, -24(s0)
	sw t2, 108(sp)
	lw t0, 104(sp)
	lw t1, 108(sp)
	add t2, t0, t1
	sw t2, 112(sp)
	addi t2, zero, 1
	sw t2, 116(sp)
	lw t0, 112(sp)
	lw t1, 116(sp)
	add t2, t0, t1
	sw t2, 116(sp)
	addi t2, zero, 4
	sw t2, 120(sp)
	lw t0, 116(sp)
	lw t1, 120(sp)
	mul t2, t0, t1
	sw t2, 120(sp)
	addi t2, zero, 4
	sw t2, 124(sp)
	lw t0, 120(sp)
	lw t1, 124(sp)
	add t2, t0, t1
	sw t2, 124(sp)
	lw t0, 92(sp)
	lw t1, 124(sp)
	add t2, t0, t1
	sw t2, 128(sp)
	lw t0, 128(sp)
	lw t2, 0(t0)
	sw t2, 132(sp)
	lw t0, 132(sp)
	lw t1, 88(sp)
	slt t2, t0, t1
	sw t2, 136(sp)
	lw t0, 136(sp)
	beqz t0, .LibroBB1_13
	j .LibroBB1_12
.LibroBB1_10: 
	j .LibroBB1_1
.LibroBB1_11: 
	addi t4, zero, 1
	sw t4, -12(s0)
	j .LibroBB1_5
.LibroBB1_12: 
	lw t2, -28(s0)
	sw t2, 140(sp)
	addi t3, zero, 1
	mv t2, t3
	sw t2, 144(sp)
	lw t1, 144(sp)
	sw t1, -28(s0)
	j .LibroBB1_13
.LibroBB1_13: 
	j .LibroBB1_8
main: 
	addi sp, sp, -132
	sw ra, 128(sp)
	sw s0, 124(sp)
	addi s0, sp, 132
	call _GLOBAL_
	addi t4, zero, 0
	sw t4, -12(s0)
	call getInt
	mv t2, a0
	sw t2, 0(sp)
	la t3, n
	lw t2, 0(t3)
	sw t2, 4(sp)
	la t3, n
	lw t1, 0(sp)
	sw t1, 0(t3)
	la t3, i
	lw t2, 0(t3)
	sw t2, 8(sp)
	addi t4, zero, 0
	la t3, i
	sw t4, 0(t3)
	j .LibroBB2_4
.LibroBB2_1: 
	la t3, n
	lw t2, 0(t3)
	sw t2, 60(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 64(sp)
	la t3, i
	lw t1, 60(sp)
	sw t1, 0(t3)
	j .LibroBB2_6
.LibroBB2_2: 
	la t3, i
	lw t2, 0(t3)
	sw t2, 52(sp)
	addi t2, zero, 1
	sw t2, 56(sp)
	lw t0, 52(sp)
	lw t1, 56(sp)
	add t2, t0, t1
	sw t2, 56(sp)
	la t3, i
	lw t1, 56(sp)
	sw t1, 0(t3)
	j .LibroBB2_4
.LibroBB2_3: 
	call getInt
	mv t2, a0
	sw t2, 24(sp)
	la t3, a
	lw t2, 0(t3)
	sw t2, 28(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 32(sp)
	addi t2, zero, 4
	sw t2, 36(sp)
	lw t0, 32(sp)
	lw t1, 36(sp)
	mul t2, t0, t1
	sw t2, 36(sp)
	addi t2, zero, 4
	sw t2, 40(sp)
	lw t0, 36(sp)
	lw t1, 40(sp)
	add t2, t0, t1
	sw t2, 40(sp)
	lw t0, 28(sp)
	lw t1, 40(sp)
	add t2, t0, t1
	sw t2, 44(sp)
	lw t0, 44(sp)
	lw t2, 0(t0)
	sw t2, 48(sp)
	lw t0, 44(sp)
	lw t1, 24(sp)
	sw t1, 0(t0)
	j .LibroBB2_2
.LibroBB2_4: 
	la t3, i
	lw t2, 0(t3)
	sw t2, 12(sp)
	la t3, n
	lw t2, 0(t3)
	sw t2, 16(sp)
	lw t0, 12(sp)
	lw t1, 16(sp)
	slt t2, t0, t1
	sw t2, 20(sp)
	lw t0, 20(sp)
	beqz t0, .LibroBB2_1
	j .LibroBB2_3
.LibroBB2_5: 
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB2_9
.LibroBB2_6: 
	la t3, i
	lw t2, 0(t3)
	sw t2, 68(sp)
	addi t4, zero, 0
	lw t1, 68(sp)
	slt t2, t4, t1
	sw t2, 72(sp)
	lw t0, 72(sp)
	beqz t0, .LibroBB2_5
	j .LibroBB2_7
.LibroBB2_7: 
	la t3, i
	lw t2, 0(t3)
	sw t2, 76(sp)
	lw t0, 76(sp)
	mv a0, t0
	call jud
	mv t2, a0
	sw t2, 80(sp)
	addi t4, zero, 0
	lw t1, 80(sp)
	slt t2, t4, t1
	sw t2, 84(sp)
	lw t0, 84(sp)
	beqz t0, .LibroBB2_10
	j .LibroBB2_11
.LibroBB2_8: 
	la t3, i
	lw t2, 0(t3)
	sw t2, 104(sp)
	addi t2, zero, 2
	sw t2, 108(sp)
	lw t0, 104(sp)
	lw t1, 108(sp)
	div t2, t0, t1
	sw t2, 108(sp)
	la t3, i
	lw t2, 0(t3)
	sw t2, 112(sp)
	la t3, i
	lw t1, 108(sp)
	sw t1, 0(t3)
	j .LibroBB2_6
.LibroBB2_9: 
	lw t2, -12(s0)
	sw t2, 116(sp)
	lw t0, 116(sp)
	mv a0, t0
	lw s0, 124(sp)
	lw ra, 128(sp)
	addi sp, sp, 132
	ret

.LibroBB2_10: 
	j .LibroBB2_8
.LibroBB2_11: 
	la t3, i
	lw t2, 0(t3)
	sw t2, 88(sp)
	lw t0, 88(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 92(sp)
	lw t0, 92(sp)
	addi t2, t0, 4
	sw t2, 96(sp)
	lw t0, 96(sp)
	lw t2, 0(t0)
	sw t2, 100(sp)
	lw t0, 100(sp)
	mv a0, t0
	call print
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB2_9
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

