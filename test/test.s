	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.1: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	addi s0, sp, 12
	lui t3, 3
	addi t3, t3, 2717
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 0(sp)
	lui t4, 3
	addi t4, t4, 2713
	lw t0, 0(sp)
	sw t4, 0(t0)
	la t3, b
	lw t1, 0(sp)
	sw t1, 0(t3)
	lw s0, 4(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret

main: 
	addi sp, sp, -324
	sw ra, 320(sp)
	sw s0, 316(sp)
	addi s0, sp, 324
	call _GLOBAL_
	addi t4, zero, 0
	sw t4, -12(s0)
	lw t2, -16(s0)
	sw t2, 0(sp)
	addi t4, zero, 1
	sw t4, -16(s0)
	j .LibroBB1_2
.LibroBB1_1: 
	lw t2, -16(s0)
	sw t2, 44(sp)
	addi t2, zero, 1
	sw t2, 48(sp)
	lw t0, 44(sp)
	lw t1, 48(sp)
	add t2, t0, t1
	sw t2, 48(sp)
	lw t1, 48(sp)
	sw t1, -16(s0)
	j .LibroBB1_2
.LibroBB1_2: 
	lw t2, -16(s0)
	sw t2, 4(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 8(sp)
	lw t0, 8(sp)
	lw t1, 4(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 12(sp)
	lw t0, 12(sp)
	beqz t0, .LibroBB1_3
	j .LibroBB1_4
.LibroBB1_3: 
	lw t2, -16(s0)
	sw t2, 52(sp)
	addi t4, zero, 2
	sw t4, -16(s0)
	j .LibroBB1_5
.LibroBB1_4: 
	la t3, b
	lw t2, 0(t3)
	sw t2, 16(sp)
	lw t2, -16(s0)
	sw t2, 20(sp)
	addi t2, zero, 1
	sw t2, 24(sp)
	lw t0, 20(sp)
	lw t1, 24(sp)
	mul t2, t0, t1
	sw t2, 24(sp)
	addi t2, zero, 4
	sw t2, 28(sp)
	lw t0, 24(sp)
	lw t1, 28(sp)
	add t2, t0, t1
	sw t2, 28(sp)
	lw t0, 16(sp)
	lw t1, 28(sp)
	add t2, t0, t1
	sw t2, 32(sp)
	lw t0, 32(sp)
	lw t2, 0(t0)
	sw t2, 36(sp)
	addi t3, zero, 1
	mv t2, t3
	sw t2, 40(sp)
	lw t0, 32(sp)
	lw t1, 40(sp)
	sw t1, 0(t0)
	j .LibroBB1_1
.LibroBB1_5: 
	lw t2, -16(s0)
	sw t2, 56(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 60(sp)
	lw t0, 60(sp)
	lw t1, 56(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 64(sp)
	lw t0, 64(sp)
	beqz t0, .LibroBB1_6
	j .LibroBB1_8
.LibroBB1_6: 
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 264(sp)
	lw t0, 264(sp)
	addi t2, t0, 0
	sw t2, 268(sp)
	addi t4, zero, 7
	lw t0, 268(sp)
	sw t4, 0(t0)
	la t2, .libro.str.1
	sw t2, 272(sp)
	lw t0, 264(sp)
	addi t2, t0, 4
	sw t2, 276(sp)
	lw t0, 276(sp)
	lw t1, 272(sp)
	sw t1, 0(t0)
	la t3, resultCount
	lw t2, 0(t3)
	sw t2, 280(sp)
	lw t0, 280(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 284(sp)
	lw t0, 264(sp)
	mv a0, t0
	lw t0, 284(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 288(sp)
	lw t0, 288(sp)
	addi t2, t0, 4
	sw t2, 292(sp)
	lw t0, 292(sp)
	lw t2, 0(t0)
	sw t2, 296(sp)
	lw t0, 296(sp)
	mv a0, t0
	call println
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB1_9
.LibroBB1_7: 
	lw t2, -16(s0)
	sw t2, 256(sp)
	addi t2, zero, 1
	sw t2, 260(sp)
	lw t0, 256(sp)
	lw t1, 260(sp)
	add t2, t0, t1
	sw t2, 260(sp)
	lw t1, 260(sp)
	sw t1, -16(s0)
	j .LibroBB1_5
.LibroBB1_8: 
	la t3, b
	lw t2, 0(t3)
	sw t2, 68(sp)
	lw t2, -16(s0)
	sw t2, 72(sp)
	addi t2, zero, 1
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
	lw t0, 68(sp)
	lw t1, 80(sp)
	add t2, t0, t1
	sw t2, 84(sp)
	lw t0, 84(sp)
	lw t2, 0(t0)
	sw t2, 88(sp)
	lw t0, 88(sp)
	beqz t0, .LibroBB1_11
	j .LibroBB1_10
.LibroBB1_9: 
	lw t2, -12(s0)
	sw t2, 300(sp)
	lw t0, 300(sp)
	mv a0, t0
	lw s0, 316(sp)
	lw ra, 320(sp)
	addi sp, sp, 324
	ret

.LibroBB1_10: 
	addi t4, zero, 2
	sw t4, -20(s0)
	lw t2, -16(s0)
	sw t2, 92(sp)
	addi t4, zero, 3
	lw t1, 92(sp)
	slt t2, t4, t1
	sw t2, 96(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 128(sp)
	lw t0, 96(sp)
	beqz t0, .LibroBB1_13
	j .LibroBB1_12
.LibroBB1_11: 
	j .LibroBB1_7
.LibroBB1_12: 
	la t3, b
	lw t2, 0(t3)
	sw t2, 100(sp)
	lw t2, -16(s0)
	sw t2, 104(sp)
	addi t2, zero, 2
	sw t2, 108(sp)
	lw t0, 104(sp)
	lw t1, 108(sp)
	sub t2, t0, t1
	sw t2, 108(sp)
	addi t2, zero, 1
	sw t2, 112(sp)
	lw t0, 108(sp)
	lw t1, 112(sp)
	mul t2, t0, t1
	sw t2, 112(sp)
	addi t2, zero, 4
	sw t2, 116(sp)
	lw t0, 112(sp)
	lw t1, 116(sp)
	add t2, t0, t1
	sw t2, 116(sp)
	lw t0, 100(sp)
	lw t1, 116(sp)
	add t2, t0, t1
	sw t2, 120(sp)
	lw t0, 120(sp)
	lw t2, 0(t0)
	sw t2, 124(sp)
	lw t0, 124(sp)
	mv t2, t0
	sw t2, 128(sp)
	j .LibroBB1_13
.LibroBB1_13: 
	lw t0, 128(sp)
	beqz t0, .LibroBB1_15
	j .LibroBB1_14
.LibroBB1_14: 
	la t3, resultCount
	lw t2, 0(t3)
	sw t2, 132(sp)
	addi t2, zero, 1
	sw t2, 136(sp)
	lw t0, 132(sp)
	lw t1, 136(sp)
	add t2, t0, t1
	sw t2, 136(sp)
	la t3, resultCount
	lw t1, 136(sp)
	sw t1, 0(t3)
	lw t2, -16(s0)
	sw t2, 140(sp)
	addi t2, zero, 2
	sw t2, 144(sp)
	lw t0, 140(sp)
	lw t1, 144(sp)
	sub t2, t0, t1
	sw t2, 144(sp)
	lw t0, 144(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 148(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 152(sp)
	lw t0, 152(sp)
	addi t2, t0, 0
	sw t2, 156(sp)
	addi t4, zero, 1
	lw t0, 156(sp)
	sw t4, 0(t0)
	la t2, .libro.str
	sw t2, 160(sp)
	lw t0, 152(sp)
	addi t2, t0, 4
	sw t2, 164(sp)
	lw t0, 164(sp)
	lw t1, 160(sp)
	sw t1, 0(t0)
	lw t0, 148(sp)
	mv a0, t0
	lw t0, 152(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 168(sp)
	lw t2, -16(s0)
	sw t2, 172(sp)
	lw t0, 172(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 176(sp)
	lw t0, 168(sp)
	mv a0, t0
	lw t0, 176(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 180(sp)
	lw t0, 180(sp)
	addi t2, t0, 4
	sw t2, 184(sp)
	lw t0, 184(sp)
	lw t2, 0(t0)
	sw t2, 188(sp)
	lw t0, 188(sp)
	mv a0, t0
	call println
	j .LibroBB1_15
.LibroBB1_15: 
	j .LibroBB1_18
.LibroBB1_16: 
	la t3, b
	lw t2, 0(t3)
	sw t2, 212(sp)
	lw t2, -16(s0)
	sw t2, 216(sp)
	lw t2, -20(s0)
	sw t2, 220(sp)
	lw t0, 216(sp)
	lw t1, 220(sp)
	mul t2, t0, t1
	sw t2, 224(sp)
	addi t2, zero, 1
	sw t2, 228(sp)
	lw t0, 224(sp)
	lw t1, 228(sp)
	mul t2, t0, t1
	sw t2, 228(sp)
	addi t2, zero, 4
	sw t2, 232(sp)
	lw t0, 228(sp)
	lw t1, 232(sp)
	add t2, t0, t1
	sw t2, 232(sp)
	lw t0, 212(sp)
	lw t1, 232(sp)
	add t2, t0, t1
	sw t2, 236(sp)
	lw t0, 236(sp)
	lw t2, 0(t0)
	sw t2, 240(sp)
	addi t3, zero, 0
	mv t2, t3
	sw t2, 244(sp)
	lw t0, 236(sp)
	lw t1, 244(sp)
	sw t1, 0(t0)
	lw t2, -20(s0)
	sw t2, 248(sp)
	addi t2, zero, 1
	sw t2, 252(sp)
	lw t0, 248(sp)
	lw t1, 252(sp)
	add t2, t0, t1
	sw t2, 252(sp)
	lw t1, 252(sp)
	sw t1, -20(s0)
	j .LibroBB1_18
.LibroBB1_17: 
	j .LibroBB1_11
.LibroBB1_18: 
	lw t2, -16(s0)
	sw t2, 192(sp)
	lw t2, -20(s0)
	sw t2, 196(sp)
	lw t0, 192(sp)
	lw t1, 196(sp)
	mul t2, t0, t1
	sw t2, 200(sp)
	la t3, N
	lw t2, 0(t3)
	sw t2, 204(sp)
	lw t0, 204(sp)
	lw t1, 200(sp)
	slt t5, t0, t1
	seqz t2, t5
	sw t2, 208(sp)
	lw t0, 208(sp)
	beqz t0, .LibroBB1_17
	j .LibroBB1_16
_GLOBAL_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	call _global_var_init.1
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret

.data
	.type	N,@object
N:
	.word	15000
	.size	N, 4

	.type	b,@object
b:
	.word	0
	.size	b, 4

	.type	resultCount,@object
resultCount:
	.word	0
	.size	resultCount, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	" \00"
	.size	.libro.str, 2

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"Total: \00"
	.size	.libro.str.1, 8

