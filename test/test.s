	.text
	.file	"test.ll"
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	sw	zero, 8(sp)
	addi	a0, zero, 12
	mv	a1, zero
	call	myNew
	addi	a1, zero, 5
	sw	a1, 0(a0)
	lui	a1, %hi(.libro.str)
	addi	a1, a1, %lo(.libro.str)
	sw	a1, 4(a0)
	sw	a0, 0(sp)
	lw	a0, 4(a0)
	call	println
	sw	zero, 8(sp)
	mv	a0, zero
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.libro.str,@object      # @.libro.str
	.section	.rodata,"a",@progbits
	.globl	.libro.str
.libro.str:
	.asciz	"hello"
	.size	.libro.str, 6

	.section	".note.GNU-stack","",@progbits
