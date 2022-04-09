	.text
	.globl main
	.p2align	2
	.type	main,@function
_global_var_init.0: 
	addi sp, sp, -64
	sw s0, 56(sp)
	sw ra, 60(sp)
	addi s0, sp, 64
	addi t2, zero, 124
	sw t2, 4(sp)
	lw t0, 4(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 8(sp)
	addi t2, zero, 30
	sw t2, 12(sp)
	lw t0, 8(sp)
	lw t1, 12(sp)
	sw t1, 0(t0)
	addi t2, zero, 4
	sw t2, 16(sp)
	lw t0, 16(sp)
	mv t2, t0
	sw t2, 0(sp)
	j .LibroBB0_1
.LibroBB0_1: 
	lw t0, 0(sp)
	mv t2, t0
	sw t2, 20(sp)
	lw t0, 20(sp)
	addi t2, t0, 4
	sw t2, 24(sp)
	lw t0, 24(sp)
	mv t2, t0
	sw t2, 0(sp)
	addi t2, zero, 124
	sw t2, 32(sp)
	lw t0, 20(sp)
	lw t1, 32(sp)
	bge t0, t1, .LibroBB0_2
	j .LibroBB0_3
.LibroBB0_2: 
	la t2, a
	sw t2, 52(sp)
	lw t0, 52(sp)
	lw t1, 8(sp)
	sw t1, 0(t0)
	lw s0, 56(sp)
	lw ra, 60(sp)
	addi sp, sp, 64
	ret
.LibroBB0_3: 
	lw t0, 8(sp)
	lw t1, 20(sp)
	add t2, t0, t1
	sw t2, 36(sp)
	addi t2, zero, 124
	sw t2, 40(sp)
	lw t0, 40(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 44(sp)
	addi t2, zero, 30
	sw t2, 48(sp)
	lw t0, 44(sp)
	lw t1, 48(sp)
	sw t1, 0(t0)
	lw t0, 36(sp)
	lw t1, 44(sp)
	sw t1, 0(t0)
	j .LibroBB0_1
_global_var_init.1: 
	addi sp, sp, -24
	sw s0, 16(sp)
	sw ra, 20(sp)
	addi s0, sp, 24
	addi t2, zero, 124
	sw t2, 0(sp)
	lw t0, 0(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 4(sp)
	addi t2, zero, 30
	sw t2, 8(sp)
	lw t0, 4(sp)
	lw t1, 8(sp)
	sw t1, 0(t0)
	la t2, str
	sw t2, 12(sp)
	lw t0, 12(sp)
	lw t1, 4(sp)
	sw t1, 0(t0)
	lw s0, 16(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
main: 
	addi sp, sp, -624
	sw s0, 616(sp)
	sw ra, 620(sp)
	addi s0, sp, 624
	call _GLOBAL_
	addi t2, zero, 0
	sw t2, 16(sp)
	addi t2, zero, 0
	sw t2, 24(sp)
	lw t0, 24(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB2_1
.LibroBB2_1: 
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 28(sp)
	addi t2, zero, 29
	sw t2, 36(sp)
	lw t0, 36(sp)
	lw t1, 28(sp)
	slt t2, t0, t1
	sw t2, 40(sp)
	lw t0, 40(sp)
	bnez t0, .LibroBB2_2
	j .LibroBB2_3
.LibroBB2_2: 
	addi t2, zero, 0
	sw t2, 608(sp)
	lw t0, 608(sp)
	mv t2, t0
	sw t2, 0(sp)
	j .LibroBB2_4
.LibroBB2_3: 
	addi t2, zero, 0
	sw t2, 44(sp)
	lw t0, 44(sp)
	mv t2, t0
	sw t2, 12(sp)
	la t2, a
	sw t2, 48(sp)
	lw t0, 48(sp)
	lw t2, 0(t0)
	sw t2, 52(sp)
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 56(sp)
	lw t0, 56(sp)
	slli t2, t0, 2
	sw t2, 60(sp)
	lw t0, 60(sp)
	addi t2, t0, 4
	sw t2, 64(sp)
	lw t0, 52(sp)
	lw t1, 64(sp)
	add t2, t0, t1
	sw t2, 68(sp)
	lw t0, 68(sp)
	lw t2, 0(t0)
	sw t2, 72(sp)
	addi t2, zero, 0
	sw t2, 76(sp)
	addi t2, zero, 4
	sw t2, 80(sp)
	lw t0, 76(sp)
	lw t1, 80(sp)
	mul t2, t0, t1
	sw t2, 76(sp)
	lw t0, 76(sp)
	addi t2, t0, 4
	sw t2, 84(sp)
	lw t0, 72(sp)
	lw t1, 84(sp)
	add t2, t0, t1
	sw t2, 88(sp)
	lw t0, 88(sp)
	lw t2, 0(t0)
	sw t2, 92(sp)
	lw t0, 92(sp)
	mv a0, t0
	call toString
	mv t2, a0
	sw t2, 96(sp)
	la t2, str
	sw t2, 100(sp)
	lw t0, 100(sp)
	lw t2, 0(t0)
	sw t2, 104(sp)
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 108(sp)
	lw t0, 108(sp)
	slli t2, t0, 2
	sw t2, 112(sp)
	lw t0, 112(sp)
	addi t2, t0, 4
	sw t2, 116(sp)
	lw t0, 104(sp)
	lw t1, 116(sp)
	add t2, t0, t1
	sw t2, 120(sp)
	lw t0, 120(sp)
	lw t1, 96(sp)
	sw t1, 0(t0)
	addi t2, zero, 0
	sw t2, 132(sp)
	lw t0, 132(sp)
	mv t2, t0
	sw t2, 8(sp)
	j .LibroBB2_5
.LibroBB2_4: 
	lw t0, 0(sp)
	mv t2, t0
	sw t2, 612(sp)
	lw t0, 612(sp)
	mv a0, t0
	lw s0, 616(sp)
	lw ra, 620(sp)
	addi sp, sp, 624
	ret
.LibroBB2_5: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 136(sp)
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 140(sp)
	lw t0, 136(sp)
	lw t1, 140(sp)
	bge t0, t1, .LibroBB2_7
	j .LibroBB2_6
.LibroBB2_6: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 148(sp)
	lw t0, 148(sp)
	andi t2, t0, 1
	sw t2, 152(sp)
	addi t2, zero, 0
	sw t2, 160(sp)
	lw t0, 152(sp)
	lw t1, 160(sp)
	xor t2, t0, t1
	sw t2, 164(sp)
	lw t0, 164(sp)
	bnez t0, .LibroBB2_9
	j .LibroBB2_8
.LibroBB2_7: 
	addi t2, zero, 12
	sw t2, 316(sp)
	lw t0, 316(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 320(sp)
	lw t0, 320(sp)
	addi t2, t0, 0
	sw t2, 324(sp)
	addi t2, zero, 4
	sw t2, 328(sp)
	lw t0, 324(sp)
	lw t1, 328(sp)
	sw t1, 0(t0)
	la t2, .libro.str
	sw t2, 332(sp)
	lw t0, 320(sp)
	addi t2, t0, 4
	sw t2, 336(sp)
	lw t0, 336(sp)
	lw t1, 332(sp)
	sw t1, 0(t0)
	addi t2, zero, 12
	sw t2, 340(sp)
	lw t0, 340(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 344(sp)
	lw t0, 344(sp)
	addi t2, t0, 0
	sw t2, 348(sp)
	addi t2, zero, 4
	sw t2, 352(sp)
	lw t0, 348(sp)
	lw t1, 352(sp)
	sw t1, 0(t0)
	la t2, .libro.str.1
	sw t2, 356(sp)
	lw t0, 344(sp)
	addi t2, t0, 4
	sw t2, 360(sp)
	lw t0, 360(sp)
	lw t1, 356(sp)
	sw t1, 0(t0)
	lw t0, 320(sp)
	mv a0, t0
	lw t0, 344(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 364(sp)
	addi t2, zero, 12
	sw t2, 368(sp)
	lw t0, 368(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 372(sp)
	lw t0, 372(sp)
	addi t2, t0, 0
	sw t2, 376(sp)
	addi t2, zero, 4
	sw t2, 380(sp)
	lw t0, 376(sp)
	lw t1, 380(sp)
	sw t1, 0(t0)
	la t2, .libro.str.2
	sw t2, 384(sp)
	lw t0, 372(sp)
	addi t2, t0, 4
	sw t2, 388(sp)
	lw t0, 388(sp)
	lw t1, 384(sp)
	sw t1, 0(t0)
	lw t0, 364(sp)
	mv a0, t0
	lw t0, 372(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 392(sp)
	addi t2, zero, 12
	sw t2, 396(sp)
	lw t0, 396(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 400(sp)
	lw t0, 400(sp)
	addi t2, t0, 0
	sw t2, 404(sp)
	addi t2, zero, 4
	sw t2, 408(sp)
	lw t0, 404(sp)
	lw t1, 408(sp)
	sw t1, 0(t0)
	la t2, .libro.str.3
	sw t2, 412(sp)
	lw t0, 400(sp)
	addi t2, t0, 4
	sw t2, 416(sp)
	lw t0, 416(sp)
	lw t1, 412(sp)
	sw t1, 0(t0)
	lw t0, 392(sp)
	mv a0, t0
	lw t0, 400(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 420(sp)
	addi t2, zero, 12
	sw t2, 424(sp)
	lw t0, 424(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 428(sp)
	lw t0, 428(sp)
	addi t2, t0, 0
	sw t2, 432(sp)
	addi t2, zero, 4
	sw t2, 436(sp)
	lw t0, 432(sp)
	lw t1, 436(sp)
	sw t1, 0(t0)
	la t2, .libro.str.4
	sw t2, 440(sp)
	lw t0, 428(sp)
	addi t2, t0, 4
	sw t2, 444(sp)
	lw t0, 444(sp)
	lw t1, 440(sp)
	sw t1, 0(t0)
	lw t0, 420(sp)
	mv a0, t0
	lw t0, 428(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 448(sp)
	addi t2, zero, 12
	sw t2, 452(sp)
	lw t0, 452(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 456(sp)
	lw t0, 456(sp)
	addi t2, t0, 0
	sw t2, 460(sp)
	addi t2, zero, 4
	sw t2, 464(sp)
	lw t0, 460(sp)
	lw t1, 464(sp)
	sw t1, 0(t0)
	la t2, .libro.str.5
	sw t2, 468(sp)
	lw t0, 456(sp)
	addi t2, t0, 4
	sw t2, 472(sp)
	lw t0, 472(sp)
	lw t1, 468(sp)
	sw t1, 0(t0)
	lw t0, 448(sp)
	mv a0, t0
	lw t0, 456(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 476(sp)
	addi t2, zero, 12
	sw t2, 480(sp)
	lw t0, 480(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 484(sp)
	lw t0, 484(sp)
	addi t2, t0, 0
	sw t2, 488(sp)
	addi t2, zero, 4
	sw t2, 492(sp)
	lw t0, 488(sp)
	lw t1, 492(sp)
	sw t1, 0(t0)
	la t2, .libro.str.6
	sw t2, 496(sp)
	lw t0, 484(sp)
	addi t2, t0, 4
	sw t2, 500(sp)
	lw t0, 500(sp)
	lw t1, 496(sp)
	sw t1, 0(t0)
	lw t0, 476(sp)
	mv a0, t0
	lw t0, 484(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 504(sp)
	addi t2, zero, 12
	sw t2, 508(sp)
	lw t0, 508(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 512(sp)
	lw t0, 512(sp)
	addi t2, t0, 0
	sw t2, 516(sp)
	addi t2, zero, 4
	sw t2, 520(sp)
	lw t0, 516(sp)
	lw t1, 520(sp)
	sw t1, 0(t0)
	la t2, .libro.str.7
	sw t2, 524(sp)
	lw t0, 512(sp)
	addi t2, t0, 4
	sw t2, 528(sp)
	lw t0, 528(sp)
	lw t1, 524(sp)
	sw t1, 0(t0)
	lw t0, 504(sp)
	mv a0, t0
	lw t0, 512(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 532(sp)
	addi t2, zero, 12
	sw t2, 536(sp)
	lw t0, 536(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 540(sp)
	lw t0, 540(sp)
	addi t2, t0, 0
	sw t2, 544(sp)
	addi t2, zero, 4
	sw t2, 548(sp)
	lw t0, 544(sp)
	lw t1, 548(sp)
	sw t1, 0(t0)
	la t2, .libro.str.8
	sw t2, 552(sp)
	lw t0, 540(sp)
	addi t2, t0, 4
	sw t2, 556(sp)
	lw t0, 556(sp)
	lw t1, 552(sp)
	sw t1, 0(t0)
	lw t0, 532(sp)
	mv a0, t0
	lw t0, 540(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 560(sp)
	addi t2, zero, 12
	sw t2, 564(sp)
	lw t0, 564(sp)
	mv a0, t0
	call myNew
	mv t2, a0
	sw t2, 568(sp)
	lw t0, 568(sp)
	addi t2, t0, 0
	sw t2, 572(sp)
	addi t2, zero, 5
	sw t2, 576(sp)
	lw t0, 572(sp)
	lw t1, 576(sp)
	sw t1, 0(t0)
	la t2, .libro.str.9
	sw t2, 580(sp)
	lw t0, 568(sp)
	addi t2, t0, 4
	sw t2, 584(sp)
	lw t0, 584(sp)
	lw t1, 580(sp)
	sw t1, 0(t0)
	lw t0, 560(sp)
	mv a0, t0
	lw t0, 568(sp)
	mv a1, t0
	call _string_stringAppend
	mv t2, a0
	sw t2, 588(sp)
	lw t0, 588(sp)
	addi t2, t0, 4
	sw t2, 592(sp)
	lw t0, 592(sp)
	lw t2, 0(t0)
	sw t2, 596(sp)
	lw t0, 596(sp)
	mv a0, t0
	call println
	j .LibroBB2_10
.LibroBB2_8: 
	lw t0, 12(sp)
	mv t2, t0
	sw t2, 256(sp)
	la t2, a
	sw t2, 260(sp)
	lw t0, 260(sp)
	lw t2, 0(t0)
	sw t2, 264(sp)
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 268(sp)
	lw t0, 268(sp)
	slli t2, t0, 2
	sw t2, 272(sp)
	lw t0, 272(sp)
	addi t2, t0, 4
	sw t2, 276(sp)
	lw t0, 264(sp)
	lw t1, 276(sp)
	add t2, t0, t1
	sw t2, 280(sp)
	lw t0, 280(sp)
	lw t2, 0(t0)
	sw t2, 284(sp)
	addi t2, zero, 0
	sw t2, 288(sp)
	addi t2, zero, 4
	sw t2, 292(sp)
	lw t0, 288(sp)
	lw t1, 292(sp)
	mul t2, t0, t1
	sw t2, 288(sp)
	lw t0, 288(sp)
	addi t2, t0, 4
	sw t2, 296(sp)
	lw t0, 284(sp)
	lw t1, 296(sp)
	add t2, t0, t1
	sw t2, 300(sp)
	lw t0, 300(sp)
	lw t2, 0(t0)
	sw t2, 304(sp)
	lw t0, 256(sp)
	lw t1, 304(sp)
	add t2, t0, t1
	sw t2, 308(sp)
	lw t0, 308(sp)
	mv t2, t0
	sw t2, 12(sp)
	j .LibroBB2_9
.LibroBB2_9: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 168(sp)
	lw t0, 168(sp)
	andi t2, t0, 1
	sw t2, 172(sp)
	addi t2, zero, 1
	sw t2, 180(sp)
	lw t0, 172(sp)
	lw t1, 180(sp)
	xor t2, t0, t1
	sw t2, 184(sp)
	lw t0, 184(sp)
	bnez t0, .LibroBB2_12
	j .LibroBB2_11
.LibroBB2_10: 
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 600(sp)
	lw t0, 600(sp)
	addi t2, t0, 1
	sw t2, 604(sp)
	lw t0, 604(sp)
	mv t2, t0
	sw t2, 4(sp)
	j .LibroBB2_1
.LibroBB2_11: 
	lw t0, 12(sp)
	mv t2, t0
	sw t2, 188(sp)
	la t2, a
	sw t2, 192(sp)
	lw t0, 192(sp)
	lw t2, 0(t0)
	sw t2, 196(sp)
	lw t0, 4(sp)
	mv t2, t0
	sw t2, 200(sp)
	lw t0, 200(sp)
	slli t2, t0, 2
	sw t2, 204(sp)
	lw t0, 204(sp)
	addi t2, t0, 4
	sw t2, 208(sp)
	lw t0, 196(sp)
	lw t1, 208(sp)
	add t2, t0, t1
	sw t2, 212(sp)
	lw t0, 212(sp)
	lw t2, 0(t0)
	sw t2, 216(sp)
	addi t2, zero, 29
	sw t2, 220(sp)
	addi t2, zero, 4
	sw t2, 224(sp)
	lw t0, 220(sp)
	lw t1, 224(sp)
	mul t2, t0, t1
	sw t2, 220(sp)
	lw t0, 220(sp)
	addi t2, t0, 4
	sw t2, 228(sp)
	lw t0, 216(sp)
	lw t1, 228(sp)
	add t2, t0, t1
	sw t2, 232(sp)
	lw t0, 232(sp)
	lw t2, 0(t0)
	sw t2, 236(sp)
	lw t0, 188(sp)
	lw t1, 236(sp)
	add t2, t0, t1
	sw t2, 240(sp)
	lw t0, 240(sp)
	mv t2, t0
	sw t2, 12(sp)
	j .LibroBB2_12
.LibroBB2_12: 
	j .LibroBB2_13
.LibroBB2_13: 
	lw t0, 8(sp)
	mv t2, t0
	sw t2, 248(sp)
	lw t0, 248(sp)
	addi t2, t0, 1
	sw t2, 252(sp)
	lw t0, 252(sp)
	mv t2, t0
	sw t2, 8(sp)
	j .LibroBB2_5
_GLOBAL_: 
	addi sp, sp, -8
	sw s0, 0(sp)
	sw ra, 4(sp)
	addi s0, sp, 8
	call _global_var_init.0
	call _global_var_init.1
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
.data
	.type	a,@object
a:
	.word	0
	.size	a, 4

	.type	str,@object
str:
	.word	0
	.size	str, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	"str1"
	.size	.libro.str, 5

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	"str2"
	.size	.libro.str.1, 5

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	"str3"
	.size	.libro.str.2, 5

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	"str4"
	.size	.libro.str.3, 5

	.type	.libro.str.4,@object
.libro.str.4:
	.asciz	"str5"
	.size	.libro.str.4, 5

	.type	.libro.str.5,@object
.libro.str.5:
	.asciz	"str6"
	.size	.libro.str.5, 5

	.type	.libro.str.6,@object
.libro.str.6:
	.asciz	"str7"
	.size	.libro.str.6, 5

	.type	.libro.str.7,@object
.libro.str.7:
	.asciz	"str8"
	.size	.libro.str.7, 5

	.type	.libro.str.8,@object
.libro.str.8:
	.asciz	"str9"
	.size	.libro.str.8, 5

	.type	.libro.str.9,@object
.libro.str.9:
	.asciz	"str10"
	.size	.libro.str.9, 6

