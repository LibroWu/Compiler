	.text
	.globl main
	.p2align	2
	.type	main,@function
_EdgeList_init: 
	addi sp, sp, -32
	sw ra, 28(sp)
	sw s0, 24(sp)
	sw s1, 20(sp)
	sw s2, 16(sp)
	addi s0, sp, 32
	sw a0, -20(s0)
	mv s2, a1
	mv s1, a2
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	lw t0, -20(s0)
	addi t0, t0, 0
	sw a0, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	lw t0, -20(s0)
	addi t0, t0, 4
	sw a0, 0(t0)
	slli t0, s2, 2
	addi a0, t0, 4
	call myNew
	sw s2, 0(a0)
	lw t0, -20(s0)
	addi t0, t0, 8
	sw a0, 0(t0)
	addi t0, zero, 0
	j .LibroBB0_1
.LibroBB0_1: 
	bge t0, s1, .LibroBB0_4
	j .LibroBB0_2
.LibroBB0_2: 
	addi t2, zero, 0
	addi t1, zero, 1
	sub t2, t2, t1
	lw t1, -20(s0)
	addi t1, t1, 4
	lw a0, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, a0, t1
	sw t2, 0(t1)
	j .LibroBB0_3
.LibroBB0_3: 
	addi t0, t0, 1
	j .LibroBB0_1
.LibroBB0_4: 
	addi t0, zero, 0
	j .LibroBB0_6
.LibroBB0_5: 
	lw t0, -20(s0)
	addi t1, t0, 12
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB0_9
.LibroBB0_6: 
	bge t0, s2, .LibroBB0_5
	j .LibroBB0_7
.LibroBB0_7: 
	addi s1, zero, 0
	addi t1, zero, 1
	sub s1, s1, t1
	lw t1, -20(s0)
	addi t1, t1, 8
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw s1, 0(t1)
	j .LibroBB0_8
.LibroBB0_8: 
	addi t0, t0, 1
	j .LibroBB0_6
.LibroBB0_9: 
	lw s0, 24(sp)
	lw s1, 20(sp)
	lw s2, 16(sp)
	lw ra, 28(sp)
	addi sp, sp, 32
	ret
_EdgeList_addEdge: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	addi s0, sp, 28
	sw a0, -12(s0)
	sw a1, -16(s0)
	sw a2, -20(s0)
	sw a3, -24(s0)
	addi a0, zero, 12
	call myNew
	sw a0, -28(s0)
	lw t1, -16(s0)
	lw t0, -28(s0)
	addi t0, t0, 0
	sw t1, 0(t0)
	lw t1, -20(s0)
	lw t0, -28(s0)
	addi t0, t0, 4
	sw t1, 0(t0)
	lw t1, -24(s0)
	lw t0, -28(s0)
	addi t0, t0, 8
	sw t1, 0(t0)
	lw t2, -28(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 12
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 8
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 4
	lw t1, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 12
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 12
	lw t2, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 8
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	lw t0, -12(s0)
	addi t1, t0, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB1_1
.LibroBB1_1: 
	lw s0, 20(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
_EdgeList_nVertices: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 8
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t0, 0(t0)
	sw t0, -16(s0)
	j .LibroBB2_1
.LibroBB2_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_EdgeList_nEdges: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t0, 0(t0)
	sw t0, -16(s0)
	j .LibroBB3_1
.LibroBB3_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Array_Node_push_back: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	sw a1, -16(s0)
	lw a0, -12(s0)
	call _Array_Node_size
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t0, 0(t0)
	xor t0, a0, t0
	seqz t0, t0
	beqz t0, .LibroBB4_1
	j .LibroBB4_2
.LibroBB4_1: 
	lw t2, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	lw t0, -12(s0)
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB4_3
.LibroBB4_2: 
	lw a0, -12(s0)
	call _Array_Node_doubleStorage
	j .LibroBB4_1
.LibroBB4_3: 
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Array_Node_pop_back: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, -1
	sw t0, 0(t1)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	sw t0, -16(s0)
	j .LibroBB5_1
.LibroBB5_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Array_Node_back: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi t0, t0, -1
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	sw t0, -16(s0)
	j .LibroBB6_1
.LibroBB6_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Array_Node_front: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw t0, 0(t0)
	sw t0, -16(s0)
	j .LibroBB7_1
.LibroBB7_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Array_Node_size: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sw t0, -16(s0)
	j .LibroBB8_1
.LibroBB8_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Array_Node_resize: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	addi s0, sp, 20
	sw a0, -16(s0)
	mv s1, a1
	j .LibroBB9_3
.LibroBB9_1: 
	lw t0, -16(s0)
	addi t0, t0, 4
	sw s1, 0(t0)
	j .LibroBB9_4
.LibroBB9_2: 
	lw a0, -16(s0)
	call _Array_Node_doubleStorage
	j .LibroBB9_3
.LibroBB9_3: 
	lw t0, -16(s0)
	addi t0, t0, 0
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t0, 0(t0)
	bge t0, s1, .LibroBB9_1
	j .LibroBB9_2
.LibroBB9_4: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
_Array_Node_get: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	addi s0, sp, 20
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	sw a1, -20(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	sw t0, -16(s0)
	j .LibroBB10_1
.LibroBB10_1: 
	lw a0, -16(s0)
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
_Array_Node_set: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	addi s0, sp, 20
	sw a0, -12(s0)
	sw a1, -16(s0)
	sw a2, -20(s0)
	lw t2, -20(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB11_1
.LibroBB11_1: 
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
_Array_Node_swap: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	addi s0, sp, 24
	sw a0, -12(s0)
	sw a1, -16(s0)
	sw a2, -20(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	sw t0, -24(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -16(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	lw t2, -24(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -20(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB12_1
.LibroBB12_1: 
	lw s0, 16(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
_Array_Node_doubleStorage: 
	addi sp, sp, -32
	sw ra, 28(sp)
	sw s0, 24(sp)
	sw s1, 20(sp)
	sw s2, 16(sp)
	sw s3, 12(sp)
	addi s0, sp, 32
	sw a0, -24(s0)
	lw t0, -24(s0)
	addi t0, t0, 0
	lw s2, 0(t0)
	lw t0, -24(s0)
	addi t0, t0, 4
	lw s1, 0(t0)
	addi t0, s2, 0
	lw t0, 0(t0)
	slli s3, t0, 1
	slli t0, s3, 2
	addi a0, t0, 4
	call myNew
	sw s3, 0(a0)
	lw t0, -24(s0)
	addi t0, t0, 0
	sw a0, 0(t0)
	lw t0, -24(s0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB13_2
.LibroBB13_1: 
	j .LibroBB13_5
.LibroBB13_2: 
	lw t0, -24(s0)
	addi t0, t0, 4
	lw t0, 0(t0)
	xor t0, t0, s1
	snez t0, t0
	beqz t0, .LibroBB13_1
	j .LibroBB13_4
.LibroBB13_3: 
	lw t0, -24(s0)
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB13_2
.LibroBB13_4: 
	lw t0, -24(s0)
	addi t0, t0, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, s2, t0
	lw t2, 0(t0)
	lw t0, -24(s0)
	addi t0, t0, 0
	lw t1, 0(t0)
	lw t0, -24(s0)
	addi t0, t0, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB13_3
.LibroBB13_5: 
	lw s0, 24(sp)
	lw s1, 20(sp)
	lw s2, 16(sp)
	lw s3, 12(sp)
	lw ra, 28(sp)
	addi sp, sp, 32
	ret
_Array_Node_Array_Node: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	addi s0, sp, 12
	sw a0, -12(s0)
	lw t0, -12(s0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi a0, zero, 68
	call myNew
	addi t0, zero, 16
	sw t0, 0(a0)
	lw t0, -12(s0)
	addi t0, t0, 0
	sw a0, 0(t0)
	j .LibroBB14_1
.LibroBB14_1: 
	lw s0, 4(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_Heap_Node_push: 
	addi sp, sp, -36
	sw ra, 32(sp)
	sw s0, 28(sp)
	sw s1, 24(sp)
	sw s2, 20(sp)
	sw s3, 16(sp)
	addi s0, sp, 36
	sw a0, -24(s0)
	sw a1, -28(s0)
	lw t0, -24(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	lw a1, -28(s0)
	call _Array_Node_push_back
	lw a0, -24(s0)
	call _Heap_Node_size
	addi s2, a0, -1
	j .LibroBB15_2
.LibroBB15_1: 
	lw a0, -24(s0)
	mv a1, s2
	call _Heap_Node_pnt
	mv s3, a0
	lw t0, -24(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	mv a1, s3
	call _Array_Node_get
	call _Node_key_
	mv s1, a0
	lw t0, -24(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	mv a1, s2
	call _Array_Node_get
	call _Node_key_
	slt t0, s1, a0
	seqz t0, t0
	beqz t0, .LibroBB15_4
	j .LibroBB15_5
.LibroBB15_2: 
	addi t0, zero, 0
	bge t0, s2, .LibroBB15_3
	j .LibroBB15_1
.LibroBB15_3: 
	j .LibroBB15_6
.LibroBB15_4: 
	lw t0, -24(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	mv a2, s2
	mv a1, s3
	call _Array_Node_swap
	mv s2, s3
	j .LibroBB15_2
.LibroBB15_5: 
	j .LibroBB15_3
.LibroBB15_6: 
	lw s0, 28(sp)
	lw s1, 24(sp)
	lw s2, 20(sp)
	lw s3, 16(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
_Heap_Node_pop: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	addi s0, sp, 24
	sw a0, -16(s0)
	addi t0, zero, 0
	sw t0, -20(s0)
	lw t0, -16(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	call _Array_Node_front
	sw a0, -24(s0)
	lw t0, -16(s0)
	addi t0, t0, 0
	lw s1, 0(t0)
	lw a0, -16(s0)
	call _Heap_Node_size
	addi a2, a0, -1
	mv a0, s1
	addi a1, zero, 0
	call _Array_Node_swap
	lw t0, -16(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	call _Array_Node_pop_back
	lw a0, -16(s0)
	addi a1, zero, 0
	call _Heap_Node_maxHeapify
	lw t0, -24(s0)
	sw t0, -20(s0)
	j .LibroBB16_1
.LibroBB16_1: 
	lw a0, -20(s0)
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
_Heap_Node_top: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	call _Array_Node_front
	sw a0, -16(s0)
	j .LibroBB17_1
.LibroBB17_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Heap_Node_size: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	call _Array_Node_size
	sw a0, -16(s0)
	j .LibroBB18_1
.LibroBB18_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Heap_Node_lchild: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	addi s0, sp, 20
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	sw a1, -20(s0)
	lw t0, -20(s0)
	slli t0, t0, 1
	addi t0, t0, 1
	sw t0, -16(s0)
	j .LibroBB19_1
.LibroBB19_1: 
	lw a0, -16(s0)
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
_Heap_Node_rchild: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	addi s0, sp, 20
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	sw a1, -20(s0)
	lw t0, -20(s0)
	slli t0, t0, 1
	addi t0, t0, 2
	sw t0, -16(s0)
	j .LibroBB20_1
.LibroBB20_1: 
	lw a0, -16(s0)
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
_Heap_Node_pnt: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	addi s0, sp, 20
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	sw a1, -20(s0)
	lw t0, -20(s0)
	addi t0, t0, -1
	andi t0, t0, 1
	sw t0, -16(s0)
	j .LibroBB21_1
.LibroBB21_1: 
	lw a0, -16(s0)
	lw s0, 12(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
_Heap_Node_maxHeapify: 
	addi sp, sp, -32
	sw ra, 28(sp)
	sw s0, 24(sp)
	sw s1, 20(sp)
	addi s0, sp, 32
	sw a0, -16(s0)
	sw a1, -20(s0)
	lw a0, -16(s0)
	lw a1, -20(s0)
	call _Heap_Node_lchild
	sw a0, -24(s0)
	lw a0, -16(s0)
	lw a1, -20(s0)
	call _Heap_Node_rchild
	sw a0, -28(s0)
	lw t0, -20(s0)
	sw t0, -32(s0)
	lw s1, -24(s0)
	lw a0, -16(s0)
	call _Heap_Node_size
	addi t0, zero, 0
	bge s1, a0, .LibroBB22_2
	j .LibroBB22_1
.LibroBB22_1: 
	lw t0, -16(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	lw a1, -24(s0)
	call _Array_Node_get
	call _Node_key_
	mv s1, a0
	lw t0, -16(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	lw a1, -32(s0)
	call _Array_Node_get
	call _Node_key_
	slt t0, a0, s1
	j .LibroBB22_2
.LibroBB22_2: 
	beqz t0, .LibroBB22_3
	j .LibroBB22_4
.LibroBB22_3: 
	lw s1, -28(s0)
	lw a0, -16(s0)
	call _Heap_Node_size
	addi t0, zero, 0
	bge s1, a0, .LibroBB22_6
	j .LibroBB22_5
.LibroBB22_4: 
	lw t0, -24(s0)
	sw t0, -32(s0)
	j .LibroBB22_3
.LibroBB22_5: 
	lw t0, -16(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	lw a1, -28(s0)
	call _Array_Node_get
	call _Node_key_
	mv s1, a0
	lw t0, -16(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	lw a1, -32(s0)
	call _Array_Node_get
	call _Node_key_
	slt t0, a0, s1
	j .LibroBB22_6
.LibroBB22_6: 
	beqz t0, .LibroBB22_7
	j .LibroBB22_8
.LibroBB22_7: 
	lw t1, -32(s0)
	lw t0, -20(s0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB22_10
	j .LibroBB22_9
.LibroBB22_8: 
	lw t0, -28(s0)
	sw t0, -32(s0)
	j .LibroBB22_7
.LibroBB22_9: 
	j .LibroBB22_11
.LibroBB22_10: 
	lw t0, -16(s0)
	addi t0, t0, 0
	lw a0, 0(t0)
	lw a1, -20(s0)
	lw a2, -32(s0)
	call _Array_Node_swap
	lw a0, -16(s0)
	lw a1, -32(s0)
	call _Heap_Node_maxHeapify
	j .LibroBB22_11
.LibroBB22_11: 
	lw s0, 24(sp)
	lw s1, 20(sp)
	lw ra, 28(sp)
	addi sp, sp, 32
	ret
_Heap_Node_Heap_Node: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	addi s0, sp, 16
	sw a0, -16(s0)
	addi a0, zero, 8
	call myNew
	mv s1, a0
	mv a0, s1
	call _Array_Node_Array_Node
	lw t0, -16(s0)
	addi t0, t0, 0
	sw s1, 0(t0)
	j .LibroBB23_1
.LibroBB23_1: 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
init: 
	addi sp, sp, -44
	sw ra, 40(sp)
	sw s0, 36(sp)
	sw s1, 32(sp)
	sw s2, 28(sp)
	sw s3, 24(sp)
	sw s4, 20(sp)
	sw s5, 16(sp)
	addi s0, sp, 44
	call getInt
	la s1, n
	sw a0, 0(s1)
	call getInt
	la s4, m
	sw a0, 0(s4)
	addi a0, zero, 16
	call myNew
	la s5, g
	sw a0, 0(s5)
	lw a0, 0(s5)
	lw a1, 0(s1)
	lw a2, 0(s4)
	call _EdgeList_init
	addi s1, zero, 0
	j .LibroBB24_4
.LibroBB24_1: 
	call getInt
	mv s2, a0
	call getInt
	mv s3, a0
	call getInt
	mv a3, a0
	lw a0, 0(s5)
	mv a2, s3
	mv a1, s2
	call _EdgeList_addEdge
	j .LibroBB24_2
.LibroBB24_2: 
	addi s1, s1, 1
	j .LibroBB24_4
.LibroBB24_3: 
	j .LibroBB24_5
.LibroBB24_4: 
	lw t0, 0(s4)
	bge s1, t0, .LibroBB24_3
	j .LibroBB24_1
.LibroBB24_5: 
	lw s0, 36(sp)
	lw s1, 32(sp)
	lw s2, 28(sp)
	lw s3, 24(sp)
	lw s4, 20(sp)
	lw s5, 16(sp)
	lw ra, 40(sp)
	addi sp, sp, 44
	ret
_Node_key_: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	addi s0, sp, 16
	sw a0, -12(s0)
	addi t0, zero, 0
	sw t0, -16(s0)
	lw t0, -12(s0)
	addi t0, t0, 4
	lw t1, 0(t0)
	addi t0, zero, 0
	sub t0, t0, t1
	sw t0, -16(s0)
	j .LibroBB25_1
.LibroBB25_1: 
	lw a0, -16(s0)
	lw s0, 8(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
dijkstra: 
	addi sp, sp, -88
	sw ra, 84(sp)
	sw s0, 80(sp)
	sw s1, 76(sp)
	sw s2, 72(sp)
	sw s3, 68(sp)
	sw s4, 64(sp)
	sw s5, 60(sp)
	sw s6, 56(sp)
	sw s7, 52(sp)
	addi s0, sp, 88
	addi t0, zero, 0
	sw t0, -40(s0)
	sw a0, -44(s0)
	la s1, n
	lw s2, 0(s1)
	slli t0, s2, 2
	addi a0, t0, 4
	call myNew
	sw s2, 0(a0)
	mv s4, a0
	lw s2, 0(s1)
	slli t0, s2, 2
	addi a0, t0, 4
	call myNew
	sw s2, 0(a0)
	mv s3, a0
	addi t0, zero, 0
	j .LibroBB26_2
.LibroBB26_1: 
	la t1, INF
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, s3, t1
	sw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t2, s4, t1
	addi t1, zero, 0
	sw t1, 0(t2)
	j .LibroBB26_4
.LibroBB26_2: 
	lw t1, 0(s1)
	bge t0, t1, .LibroBB26_3
	j .LibroBB26_1
.LibroBB26_3: 
	lw t0, -44(s0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t1, s3, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	addi a0, zero, 4
	call myNew
	mv s2, a0
	mv a0, s2
	call _Heap_Node_Heap_Node
	addi a0, zero, 8
	call myNew
	sw a0, -48(s0)
	lw t0, -48(s0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	lw t1, -44(s0)
	lw t0, -48(s0)
	addi t0, t0, 0
	sw t1, 0(t0)
	lw a1, -48(s0)
	mv a0, s2
	call _Heap_Node_push
	j .LibroBB26_6
.LibroBB26_4: 
	addi t0, t0, 1
	j .LibroBB26_2
.LibroBB26_5: 
	sw s3, -40(s0)
	j .LibroBB26_8
.LibroBB26_6: 
	mv a0, s2
	call _Heap_Node_size
	addi t0, zero, 0
	xor t0, a0, t0
	snez t0, t0
	beqz t0, .LibroBB26_5
	j .LibroBB26_7
.LibroBB26_7: 
	mv a0, s2
	call _Heap_Node_pop
	mv a1, a0
	addi t0, a1, 0
	lw s1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s4, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB26_9
	j .LibroBB26_10
.LibroBB26_8: 
	lw a0, -40(s0)
	lw s0, 80(sp)
	lw s1, 76(sp)
	lw s2, 72(sp)
	lw s3, 68(sp)
	lw s4, 64(sp)
	lw s5, 60(sp)
	lw s6, 56(sp)
	lw s7, 52(sp)
	lw ra, 84(sp)
	addi sp, sp, 88
	ret
.LibroBB26_9: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t1, s4, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	la s7, g
	lw t0, 0(s7)
	addi t0, t0, 8
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s6, 0(t0)
	j .LibroBB26_12
.LibroBB26_10: 
	j .LibroBB26_6
.LibroBB26_11: 
	j .LibroBB26_6
.LibroBB26_12: 
	addi t1, zero, 0
	addi t0, zero, 1
	sub t1, t1, t0
	xor t0, s6, t1
	snez t0, t0
	beqz t0, .LibroBB26_11
	j .LibroBB26_14
.LibroBB26_13: 
	lw t0, 0(s7)
	addi t0, t0, 4
	lw t1, 0(t0)
	slli t0, s6, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s6, 0(t0)
	j .LibroBB26_12
.LibroBB26_14: 
	lw t0, 0(s7)
	addi t0, t0, 0
	lw t1, 0(t0)
	slli t0, s6, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw s5, 0(t0)
	lw t0, 0(s7)
	addi t0, t0, 0
	lw t1, 0(t0)
	slli t0, s6, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	slli t1, s1, 2
	addi t1, t1, 4
	add t1, s3, t1
	lw t1, 0(t1)
	add t0, t1, t0
	slli t1, s5, 2
	addi t1, t1, 4
	add t1, s3, t1
	lw t1, 0(t1)
	slt t1, t0, t1
	seqz t1, t1
	beqz t1, .LibroBB26_15
	j .LibroBB26_16
.LibroBB26_15: 
	slli t1, s5, 2
	addi t1, t1, 4
	add t1, s3, t1
	sw t0, 0(t1)
	addi a0, zero, 8
	call myNew
	mv a1, a0
	addi t0, a1, 0
	sw s5, 0(t0)
	slli t0, s5, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw t1, 0(t0)
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s2
	call _Heap_Node_push
	j .LibroBB26_13
.LibroBB26_16: 
	j .LibroBB26_13
main: 
	addi sp, sp, -40
	sw ra, 36(sp)
	sw s0, 32(sp)
	sw s1, 28(sp)
	sw s2, 24(sp)
	sw s3, 20(sp)
	sw s4, 16(sp)
	addi s0, sp, 40
	call _GLOBAL_
	addi t0, zero, 0
	sw t0, -28(s0)
	call init
	addi s2, zero, 0
	j .LibroBB27_1
.LibroBB27_1: 
	la s4, n
	lw t0, 0(s4)
	bge s2, t0, .LibroBB27_4
	j .LibroBB27_2
.LibroBB27_2: 
	mv a0, s2
	call dijkstra
	mv s3, a0
	addi s1, zero, 0
	j .LibroBB27_5
.LibroBB27_3: 
	addi s2, s2, 1
	j .LibroBB27_1
.LibroBB27_4: 
	addi t0, zero, 0
	sw t0, -28(s0)
	j .LibroBB27_9
.LibroBB27_5: 
	lw t0, 0(s4)
	bge s1, t0, .LibroBB27_8
	j .LibroBB27_6
.LibroBB27_6: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw t1, 0(t0)
	la t0, INF
	lw t0, 0(t0)
	xor t0, t1, t0
	seqz t0, t0
	beqz t0, .LibroBB27_11
	j .LibroBB27_12
.LibroBB27_7: 
	addi s1, s1, 1
	j .LibroBB27_5
.LibroBB27_8: 
	la a0, .libro.str.2
	call println
	j .LibroBB27_3
.LibroBB27_9: 
	lw a0, -28(s0)
	lw s0, 32(sp)
	lw s1, 28(sp)
	lw s2, 24(sp)
	lw s3, 20(sp)
	lw s4, 16(sp)
	lw ra, 36(sp)
	addi sp, sp, 40
	ret
.LibroBB27_10: 
	la a0, .libro.str.1
	call print
	j .LibroBB27_7
.LibroBB27_11: 
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB27_10
.LibroBB27_12: 
	la a0, .libro.str
	call print
	j .LibroBB27_10
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
	.type	n,@object
n:
	.word	0
	.size	n, 4

	.type	m,@object
m:
	.word	0
	.size	m, 4

	.type	g,@object
g:
	.word	0
	.size	g, 4

	.type	INF,@object
INF:
	.word	10000000
	.size	INF, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	"-1"
	.size	.libro.str, 3

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	" "
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	""
	.size	.libro.str.2, 1

