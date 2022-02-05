	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -400
	sw ra, 396(sp)
	sw s0, 392(sp)
	addi s0, sp, 400
	addi t4, zero, 0
	sw t4, -12(s0)
	addi t4, zero, 0
	sw t4, -16(s0)
	lw t2, -16(s0)
	sw t2, 0(sp)
	addi t4, zero, 0
	sw t4, -16(s0)
	j .LibroBB0_3
.LibroBB0_1: 
	lw t2, -16(s0)
	sw t2, 68(sp)
	addi t4, zero, 0
	sw t4, -16(s0)
	j .LibroBB0_6
.LibroBB0_2: 
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 12(sp)
	lw t0, 12(sp)
	addi t2, t0, 0
	sw t2, 16(sp)
	addi t4, zero, 0
	lw t0, 16(sp)
	sw t4, 0(t0)
	la t2, .libro.str
	sw t2, 20(sp)
	lw t0, 12(sp)
	addi t2, t0, 4
	sw t2, 24(sp)
	lw t0, 24(sp)
	lw t1, 20(sp)
	sw t1, 0(t0)
	lw t1, 12(sp)
	sw t1, -20(s0)
	lw t2, -20(s0)
	sw t2, 28(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 32(sp)
	lw t0, 32(sp)
	addi t2, t0, 0
	sw t2, 36(sp)
	addi t4, zero, 1
	lw t0, 36(sp)
	sw t4, 0(t0)
	la t2, .libro.str.1
	sw t2, 40(sp)
	lw t0, 32(sp)
	addi t2, t0, 4
	sw t2, 44(sp)
	lw t0, 44(sp)
	lw t1, 40(sp)
	sw t1, 0(t0)
	lw t0, 28(sp)
	mv a0, t0
	lw t0, 32(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 48(sp)
	lw t0, 48(sp)
	addi t2, t0, 4
	sw t2, 52(sp)
	lw t0, 52(sp)
	lw t2, 0(t0)
	sw t2, 56(sp)
	lw t0, 56(sp)
	mv a0, t0
	call print
	j .LibroBB0_4
.LibroBB0_3: 
	lw t2, -16(s0)
	sw t2, 4(sp)
	addi t4, zero, 10
	lw t0, 4(sp)
	slt t2, t0, t4
	sw t2, 8(sp)
	lw t0, 8(sp)
	beqz t0, .LibroBB0_1
	j .LibroBB0_2
.LibroBB0_4: 
	lw t2, -16(s0)
	sw t2, 60(sp)
	addi t2, zero, 1
	sw t2, 64(sp)
	lw t0, 60(sp)
	lw t1, 64(sp)
	add t2, t0, t1
	sw t2, 64(sp)
	lw t1, 64(sp)
	sw t1, -16(s0)
	j .LibroBB0_3
.LibroBB0_5: 
	addi t4, zero, 0
	sw t4, -24(s0)
	j .LibroBB0_8
.LibroBB0_6: 
	lw t2, -16(s0)
	sw t2, 72(sp)
	addi t4, zero, 10
	lw t0, 72(sp)
	slt t2, t0, t4
	sw t2, 76(sp)
	lw t0, 76(sp)
	beqz t0, .LibroBB0_7
	j .LibroBB0_5
.LibroBB0_7: 
	lw t2, -16(s0)
	sw t2, 88(sp)
	addi t4, zero, 0
	sw t4, -16(s0)
	j .LibroBB0_10
.LibroBB0_8: 
	lw t2, -24(s0)
	sw t2, 80(sp)
	addi t2, zero, 1
	sw t2, 84(sp)
	lw t0, 80(sp)
	lw t1, 84(sp)
	add t2, t0, t1
	sw t2, 84(sp)
	lw t1, 84(sp)
	sw t1, -24(s0)
	j .LibroBB0_6
.LibroBB0_9: 
	lw t2, -16(s0)
	sw t2, 120(sp)
	addi t2, zero, 1
	sw t2, 124(sp)
	lw t0, 120(sp)
	lw t1, 124(sp)
	add t2, t0, t1
	sw t2, 124(sp)
	lw t1, 124(sp)
	sw t1, -16(s0)
	j .LibroBB0_10
.LibroBB0_10: 
	lw t2, -16(s0)
	sw t2, 92(sp)
	addi t4, zero, 10
	lw t0, 92(sp)
	slt t2, t0, t4
	sw t2, 96(sp)
	lw t0, 96(sp)
	beqz t0, .LibroBB0_11
	j .LibroBB0_12
.LibroBB0_11: 
	addi t4, zero, 0
	sw t4, -32(s0)
	lw t2, -16(s0)
	sw t2, 128(sp)
	addi t4, zero, 0
	lw t0, 128(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 132(sp)
	lw t0, 132(sp)
	beqz t0, .LibroBB0_14
	j .LibroBB0_13
.LibroBB0_12: 
	lw t2, -16(s0)
	sw t2, 100(sp)
	addi t4, zero, 0
	sw t4, -16(s0)
	j .LibroBB0_18
.LibroBB0_13: 
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 136(sp)
	lw t0, 136(sp)
	addi t2, t0, 0
	sw t2, 140(sp)
	addi t4, zero, 0
	lw t0, 140(sp)
	sw t4, 0(t0)
	la t2, .libro.str.2
	sw t2, 144(sp)
	lw t0, 136(sp)
	addi t2, t0, 4
	sw t2, 148(sp)
	lw t0, 148(sp)
	lw t1, 144(sp)
	sw t1, 0(t0)
	lw t1, 136(sp)
	sw t1, -36(s0)
	lw t2, -36(s0)
	sw t2, 152(sp)
	lw t2, -36(s0)
	sw t2, 156(sp)
	lw t0, 152(sp)
	mv a0, t0
	lw t0, 156(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 160(sp)
	lw t0, 160(sp)
	addi t2, t0, 4
	sw t2, 164(sp)
	lw t0, 164(sp)
	lw t2, 0(t0)
	sw t2, 168(sp)
	lw t0, 168(sp)
	mv a0, t0
	call println
	j .LibroBB0_15
.LibroBB0_14: 
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 172(sp)
	lw t0, 172(sp)
	addi t2, t0, 0
	sw t2, 176(sp)
	addi t4, zero, 2
	lw t0, 176(sp)
	sw t4, 0(t0)
	la t2, .libro.str.3
	sw t2, 180(sp)
	lw t0, 172(sp)
	addi t2, t0, 4
	sw t2, 184(sp)
	lw t0, 184(sp)
	lw t1, 180(sp)
	sw t1, 0(t0)
	lw t1, 172(sp)
	sw t1, -40(s0)
	lw t2, -40(s0)
	sw t2, 188(sp)
	lw t2, -40(s0)
	sw t2, 192(sp)
	lw t0, 188(sp)
	mv a0, t0
	lw t0, 192(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 196(sp)
	call getString
	mv t2, a0
	sw t2, 200(sp)
	lw t0, 196(sp)
	mv a0, t0
	lw t0, 200(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 204(sp)
	lw t0, 204(sp)
	addi t2, t0, 4
	sw t2, 208(sp)
	lw t0, 208(sp)
	lw t2, 0(t0)
	sw t2, 212(sp)
	lw t0, 212(sp)
	mv a0, t0
	call println
	j .LibroBB0_15
.LibroBB0_15: 
	lw t2, -16(s0)
	sw t2, 216(sp)
	addi t4, zero, 0
	lw t0, 216(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 220(sp)
	lw t0, 220(sp)
	beqz t0, .LibroBB0_20
	j .LibroBB0_21
.LibroBB0_16: 
	addi t4, zero, 0
	sw t4, -28(s0)
	j .LibroBB0_17
.LibroBB0_17: 
	lw t2, -28(s0)
	sw t2, 112(sp)
	addi t2, zero, 1
	sw t2, 116(sp)
	lw t0, 112(sp)
	lw t1, 116(sp)
	add t2, t0, t1
	sw t2, 116(sp)
	lw t1, 116(sp)
	sw t1, -28(s0)
	j .LibroBB0_18
.LibroBB0_18: 
	lw t2, -16(s0)
	sw t2, 104(sp)
	addi t4, zero, 10
	lw t0, 104(sp)
	slt t2, t0, t4
	sw t2, 108(sp)
	lw t0, 108(sp)
	beqz t0, .LibroBB0_19
	j .LibroBB0_16
.LibroBB0_19: 
	j .LibroBB0_9
.LibroBB0_20: 
	lw t2, -16(s0)
	sw t2, 224(sp)
	addi t4, zero, 0
	lw t0, 224(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 228(sp)
	lw t0, 228(sp)
	beqz t0, .LibroBB0_24
	j .LibroBB0_23
.LibroBB0_21: 
	addi t4, zero, 0
	sw t4, -44(s0)
	j .LibroBB0_22
.LibroBB0_22: 
	addi t4, zero, 0
	sw t4, -56(s0)
	j .LibroBB0_26
.LibroBB0_23: 
	lw t2, -16(s0)
	sw t2, 232(sp)
	addi t4, zero, 0
	lw t0, 232(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 236(sp)
	lw t0, 236(sp)
	beqz t0, .LibroBB0_28
	j .LibroBB0_29
.LibroBB0_24: 
	j .LibroBB0_22
.LibroBB0_25: 
	j .LibroBB0_32
.LibroBB0_26: 
	lw t2, -16(s0)
	sw t2, 240(sp)
	lw t0, 240(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 244(sp)
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 248(sp)
	lw t0, 248(sp)
	addi t2, t0, 0
	sw t2, 252(sp)
	addi t4, zero, 1
	lw t0, 252(sp)
	sw t4, 0(t0)
	la t2, .libro.str.4
	sw t2, 256(sp)
	lw t0, 248(sp)
	addi t2, t0, 4
	sw t2, 260(sp)
	lw t0, 260(sp)
	lw t1, 256(sp)
	sw t1, 0(t0)
	lw t0, 244(sp)
	mv a0, t0
	lw t0, 248(sp)
	mv a1, t0
	call _string_getStrcmp
	mv t2, a0
	sw t2, 264(sp)
	addi t4, zero, 0
	lw t0, 264(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 268(sp)
	lw t0, 268(sp)
	beqz t0, .LibroBB0_25
	j .LibroBB0_27
.LibroBB0_27: 
	addi t3, zero, 12
	mv a0, t3
	call myNew
	mv t2, a0
	sw t2, 272(sp)
	lw t0, 272(sp)
	addi t2, t0, 0
	sw t2, 276(sp)
	addi t4, zero, 3
	lw t0, 276(sp)
	sw t4, 0(t0)
	la t2, .libro.str.5
	sw t2, 280(sp)
	lw t0, 272(sp)
	addi t2, t0, 4
	sw t2, 284(sp)
	lw t0, 284(sp)
	lw t1, 280(sp)
	sw t1, 0(t0)
	lw t1, 272(sp)
	sw t1, -60(s0)
	lw t2, -60(s0)
	sw t2, 288(sp)
	lw t0, 288(sp)
	mv a0, t0
	call _string_parseInt
	mv t2, a0
	sw t2, 292(sp)
	lw t1, 292(sp)
	sw t1, -64(s0)
	j .LibroBB0_26
.LibroBB0_28: 
	addi t4, zero, 0
	sw t4, -52(s0)
	j .LibroBB0_30
.LibroBB0_29: 
	addi t4, zero, 0
	sw t4, -48(s0)
	j .LibroBB0_30
.LibroBB0_30: 
	j .LibroBB0_24
.LibroBB0_31: 
	j .LibroBB0_35
.LibroBB0_32: 
	lw t2, -16(s0)
	sw t2, 296(sp)
	addi t4, zero, 0
	lw t0, 296(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 300(sp)
	lw t0, 300(sp)
	beqz t0, .LibroBB0_31
	j .LibroBB0_33
.LibroBB0_33: 
	addi t4, zero, 0
	sw t4, -68(s0)
	j .LibroBB0_32
.LibroBB0_34: 
	j .LibroBB0_37
.LibroBB0_35: 
	lw t2, -16(s0)
	sw t2, 304(sp)
	addi t4, zero, 0
	lw t0, 304(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 308(sp)
	lw t0, 308(sp)
	beqz t0, .LibroBB0_36
	j .LibroBB0_34
.LibroBB0_36: 
	addi t4, zero, 0
	sw t4, -76(s0)
	addi t4, zero, 0
	sw t4, -12(s0)
	j .LibroBB0_40
.LibroBB0_37: 
	lw t2, -16(s0)
	sw t2, 312(sp)
	addi t4, zero, 0
	lw t0, 312(sp)
	xor t5, t0, t4
	seqz t2, t5
	sw t2, 316(sp)
	lw t0, 316(sp)
	beqz t0, .LibroBB0_39
	j .LibroBB0_38
.LibroBB0_38: 
	addi t4, zero, 0
	sw t4, -72(s0)
	j .LibroBB0_37
.LibroBB0_39: 
	j .LibroBB0_35
.LibroBB0_40: 
	lw t2, -12(s0)
	sw t2, 320(sp)
	lw t0, 320(sp)
	mv a0, t0
	lw s0, 392(sp)
	lw ra, 396(sp)
	addi sp, sp, 400
	ret

.data
	.type	.libro.str,@object
.libro.str:
	.asciz	"\00"
	.size	.libro.str, 1

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"\0A\00"
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	"\00"
	.size	.libro.str.2, 1

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	"-1\00"
	.size	.libro.str.3, 3

	.type	.libro.str.4,@object
.libro.str.4:
	.asciz	"0\00"
	.size	.libro.str.4, 2

	.type	.libro.str.5,@object
.libro.str.5:
	.asciz	"11h\00"
	.size	.libro.str.5, 4

