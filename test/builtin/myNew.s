	.text
	.file	"myNew.c"
	.globl	myNew                   # -- Begin function myNew
	.p2align	2
	.type	myNew,@function
myNew:                                  # @myNew
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	sw	a1, 4(sp)
	sw	a0, 0(sp)
	call	malloc
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	myNew, .Lfunc_end0-myNew
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
