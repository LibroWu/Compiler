	.text
	.file	"myBuiltin.c"
	.globl	print                   # -- Begin function print
	.p2align	2
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	mv	a1, a0
	sw	a0, 8(sp)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	print, .Lfunc_end0-print
	.cfi_endproc
                                        # -- End function
	.globl	println                 # -- Begin function println
	.p2align	2
	.type	println,@function
println:                                # @println
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	mv	a1, a0
	sw	a0, 8(sp)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	println, .Lfunc_end1-println
	.cfi_endproc
                                        # -- End function
	.globl	printInt                # -- Begin function printInt
	.p2align	2
	.type	printInt,@function
printInt:                               # @printInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	mv	a1, a0
	sw	a0, 8(sp)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	printf
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	printInt, .Lfunc_end2-printInt
	.cfi_endproc
                                        # -- End function
	.globl	printlnInt              # -- Begin function printlnInt
	.p2align	2
	.type	printlnInt,@function
printlnInt:                             # @printlnInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	mv	a1, a0
	sw	a0, 8(sp)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	printlnInt, .Lfunc_end3-printlnInt
	.cfi_endproc
                                        # -- End function
	.globl	getString               # -- Begin function getString
	.p2align	2
	.type	getString,@function
getString:                              # @getString
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -288
	.cfi_def_cfa_offset 288
	sw	ra, 284(sp)
	sw	s0, 280(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	s0, sp, 16
	mv	a1, s0
	call	__isoc99_scanf
	mv	a0, s0
	call	strlen
	sw	a0, 12(sp)
	addi	a0, a0, 1
	srai	a1, a0, 31
	call	malloc
	sw	a0, 8(sp)
	mv	a1, s0
	call	strcpy
	lw	a0, 8(sp)
	lw	s0, 280(sp)
	lw	ra, 284(sp)
	addi	sp, sp, 288
	ret
.Lfunc_end4:
	.size	getString, .Lfunc_end4-getString
	.cfi_endproc
                                        # -- End function
	.globl	getInt                  # -- Begin function getInt
	.p2align	2
	.type	getInt,@function
getInt:                                 # @getInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	addi	a1, sp, 8
	call	__isoc99_scanf
	lw	a0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	getInt, .Lfunc_end5-getInt
	.cfi_endproc
                                        # -- End function
	.globl	toString                # -- Begin function toString
	.p2align	2
	.type	toString,@function
toString:                               # @toString
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	sw	s1, 36(sp)
	sw	s2, 32(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	.cfi_offset s2, -16
	sw	a0, 28(sp)
	sw	zero, 24(sp)
	addi	s2, zero, 1
	sw	s2, 20(sp)
	beqz	a0, .LBB6_5
# %bb.1:
	lw	a0, 28(sp)
	blt	a0, s2, .LBB6_3
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 24(sp)
	addi	a1, zero, 10
	call	__mulsi3
	lw	s0, 28(sp)
	mv	s1, a0
	addi	a1, zero, 10
	mv	a0, s0
	call	__modsi3
	add	a0, s1, a0
	sw	a0, 24(sp)
	addi	a1, zero, 10
	mv	a0, s0
	call	__divsi3
	lw	a1, 20(sp)
	sw	a0, 28(sp)
	addi	a0, a1, 1
	sw	a0, 20(sp)
	lw	a0, 28(sp)
	bge	a0, s2, .LBB6_2
.LBB6_3:
	lw	a0, 20(sp)
	srai	a1, a0, 31
	call	malloc
	sw	a0, 16(sp)
	sw	zero, 12(sp)
	addi	s0, zero, 1
	lw	a0, 24(sp)
	blt	a0, s0, .LBB6_6
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, 24(sp)
	addi	a1, zero, 10
	call	__modsi3
	lw	a1, 16(sp)
	lw	a2, 12(sp)
	addi	a0, a0, 48
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a1, 12(sp)
	lw	a0, 24(sp)
	addi	a1, a1, 1
	sw	a1, 12(sp)
	addi	a1, zero, 10
	call	__divsi3
	sw	a0, 24(sp)
	lw	a0, 24(sp)
	bge	a0, s0, .LBB6_4
	j	.LBB6_6
.LBB6_5:
	addi	a0, zero, 2
	sw	a0, 20(sp)
	addi	a0, zero, 2
	mv	a1, zero
	call	malloc
	sw	a0, 16(sp)
	addi	a1, zero, 48
	sb	a1, 0(a0)
	lw	a0, 16(sp)
	sb	zero, 1(a0)
.LBB6_6:
	lw	a0, 16(sp)
	lw	s2, 32(sp)
	lw	s1, 36(sp)
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end6:
	.size	toString, .Lfunc_end6-toString
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d\n"
	.size	.L.str.3, 4

	.section	".note.GNU-stack","",@progbits
