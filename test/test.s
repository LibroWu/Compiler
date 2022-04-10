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
_Array_Node_size: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 4
	lw a0, 0(t0)
	j .LibroBB1_1
.LibroBB1_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Heap_Node_lchild: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	slli t0, a1, 1
	addi a0, t0, 1
	j .LibroBB2_1
.LibroBB2_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Heap_Node_rchild: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	slli t0, a1, 1
	addi a0, t0, 2
	j .LibroBB3_1
.LibroBB3_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Heap_Node_pnt: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a1, -1
	srai a0, t0, 1
	j .LibroBB4_1
.LibroBB4_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Heap_Node_top: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw t0, 0(t0)
	j .LibroBB5_1
.LibroBB5_1: 
	addi t0, t0, 0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw a0, 0(t0)
	j .LibroBB5_2
.LibroBB5_2: 
	j .LibroBB5_3
.LibroBB5_3: 
	j .LibroBB5_4
.LibroBB5_4: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Heap_Node_size: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw t0, 0(t0)
	j .LibroBB6_1
.LibroBB6_1: 
	addi t0, t0, 4
	lw a0, 0(t0)
	j .LibroBB6_2
.LibroBB6_2: 
	j .LibroBB6_3
.LibroBB6_3: 
	j .LibroBB6_4
.LibroBB6_4: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Node_key_: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 4
	lw t0, 0(t0)
	addi a0, zero, 0
	sub a0, a0, t0
	j .LibroBB7_1
.LibroBB7_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_EdgeList_nVertices: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 8
	lw t0, 0(t0)
	addi t0, t0, 0
	lw a0, 0(t0)
	j .LibroBB8_1
.LibroBB8_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_EdgeList_nEdges: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw t0, 0(t0)
	addi t0, t0, 0
	lw a0, 0(t0)
	j .LibroBB9_1
.LibroBB9_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Heap_Node_Heap_Node: 
	addi sp, sp, -16
	sw ra, 12(sp)
	sw s0, 8(sp)
	sw s1, 4(sp)
	sw s2, 0(sp)
	addi s0, sp, 16
	mv s2, a0
	addi a0, zero, 8
	call myNew
	mv s1, a0
	j .LibroBB10_1
.LibroBB10_1: 
	addi t1, s1, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi a0, zero, 68
	call myNew
	addi t0, zero, 16
	sw t0, 0(a0)
	addi t0, s1, 0
	sw a0, 0(t0)
	j .LibroBB10_2
.LibroBB10_2: 
	j .LibroBB10_3
.LibroBB10_3: 
	addi t0, s2, 0
	sw s1, 0(t0)
	j .LibroBB10_4
.LibroBB10_4: 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw s2, 0(sp)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
_Array_Node_front: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw a0, 0(t0)
	j .LibroBB11_1
.LibroBB11_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Array_Node_get: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw t1, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	j .LibroBB12_1
.LibroBB12_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Array_Node_set: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw t1, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a2, 0(t0)
	j .LibroBB13_1
.LibroBB13_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Array_Node_Array_Node: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	mv s1, a0
	addi t1, s1, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi a0, zero, 68
	call myNew
	addi t0, zero, 16
	sw t0, 0(a0)
	addi t0, s1, 0
	sw a0, 0(t0)
	j .LibroBB14_1
.LibroBB14_1: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_Array_Node_back: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t0, a0, 0
	lw t1, 0(t0)
	addi t0, a0, 4
	lw t0, 0(t0)
	addi t0, t0, -1
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	j .LibroBB15_1
.LibroBB15_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Array_Node_resize: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	sw s2, 12(sp)
	sw s3, 8(sp)
	sw s4, 4(sp)
	sw s5, 0(sp)
	addi s0, sp, 28
	mv s2, a0
	mv s1, a1
	j .LibroBB16_1
.LibroBB16_1: 
	addi t0, s2, 0
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t0, 0(t0)
	bge t0, s1, .LibroBB16_3
	j .LibroBB16_2
.LibroBB16_2: 
	j .LibroBB16_4
.LibroBB16_3: 
	addi t0, s2, 4
	sw s1, 0(t0)
	j .LibroBB16_5
.LibroBB16_4: 
	addi t0, s2, 0
	lw s4, 0(t0)
	addi t0, s2, 4
	lw s3, 0(t0)
	addi t0, s4, 0
	lw t0, 0(t0)
	slli s5, t0, 1
	slli t0, s5, 2
	addi a0, t0, 4
	call myNew
	sw s5, 0(a0)
	addi t0, s2, 0
	sw a0, 0(t0)
	addi t1, s2, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB16_6
.LibroBB16_5: 
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw s2, 12(sp)
	lw s3, 8(sp)
	lw s4, 4(sp)
	lw s5, 0(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB16_6: 
	addi t0, s2, 4
	lw t0, 0(t0)
	xor t0, t0, s3
	beqz t0, .LibroBB16_8
	j .LibroBB16_7
.LibroBB16_7: 
	addi t0, s2, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, s4, t0
	lw t1, 0(t0)
	addi t0, s2, 0
	lw t2, 0(t0)
	addi t0, s2, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t2, t0
	sw t1, 0(t0)
	j .LibroBB16_9
.LibroBB16_8: 
	j .LibroBB16_10
.LibroBB16_9: 
	addi t1, s2, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB16_6
.LibroBB16_10: 
	j .LibroBB16_1
_Heap_Node_pop: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t0, a0, 0
	lw t0, 0(t0)
	j .LibroBB17_1
.LibroBB17_1: 
	addi t0, t0, 0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw s1, 0(t0)
	j .LibroBB17_2
.LibroBB17_2: 
	j .LibroBB17_3
.LibroBB17_3: 
	addi t0, a0, 0
	lw a4, 0(t0)
	j .LibroBB17_4
.LibroBB17_4: 
	addi t0, a0, 0
	lw t0, 0(t0)
	j .LibroBB17_5
.LibroBB17_5: 
	addi t0, t0, 4
	lw t0, 0(t0)
	j .LibroBB17_6
.LibroBB17_6: 
	j .LibroBB17_7
.LibroBB17_7: 
	j .LibroBB17_8
.LibroBB17_8: 
	j .LibroBB17_9
.LibroBB17_9: 
	addi a3, t0, -1
	j .LibroBB17_10
.LibroBB17_10: 
	addi t0, a4, 0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw a2, 0(t0)
	addi t0, a4, 0
	lw t1, 0(t0)
	slli t0, a3, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a1, 0(t0)
	addi t0, a4, 0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	sw a1, 0(t0)
	addi t0, a4, 0
	lw t1, 0(t0)
	slli t0, a3, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a2, 0(t0)
	j .LibroBB17_11
.LibroBB17_11: 
	j .LibroBB17_12
.LibroBB17_12: 
	addi t0, a0, 0
	lw t2, 0(t0)
	j .LibroBB17_13
.LibroBB17_13: 
	addi t1, t2, 4
	lw t0, 0(t1)
	addi t0, t0, -1
	sw t0, 0(t1)
	addi t0, t2, 0
	lw t0, 0(t0)
	addi t0, t2, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	j .LibroBB17_14
.LibroBB17_14: 
	j .LibroBB17_15
.LibroBB17_15: 
	j .LibroBB17_16
.LibroBB17_16: 
	j .LibroBB17_17
.LibroBB17_17: 
	addi t1, zero, 0
	addi t0, zero, 2
	mul t1, t1, t0
	addi t1, t1, 1
	j .LibroBB17_18
.LibroBB17_18: 
	j .LibroBB17_19
.LibroBB17_19: 
	j .LibroBB17_20
.LibroBB17_20: 
	addi t2, zero, 0
	addi t0, zero, 2
	mul t2, t2, t0
	addi t0, t2, 2
	j .LibroBB17_21
.LibroBB17_21: 
	j .LibroBB17_22
.LibroBB17_22: 
	j .LibroBB17_23
.LibroBB17_23: 
	addi t2, a0, 0
	lw t2, 0(t2)
	j .LibroBB17_24
.LibroBB17_24: 
	addi t2, t2, 4
	lw a1, 0(t2)
	j .LibroBB17_25
.LibroBB17_25: 
	j .LibroBB17_26
.LibroBB17_26: 
	j .LibroBB17_27
.LibroBB17_27: 
	j .LibroBB17_28
.LibroBB17_28: 
	addi t2, zero, 0
	bge t1, a1, .LibroBB17_42
	j .LibroBB17_29
.LibroBB17_29: 
	addi t2, a0, 0
	lw t2, 0(t2)
	j .LibroBB17_30
.LibroBB17_30: 
	addi t2, t2, 0
	lw a1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, a1, t2
	lw t2, 0(t2)
	j .LibroBB17_31
.LibroBB17_31: 
	j .LibroBB17_32
.LibroBB17_32: 
	j .LibroBB17_33
.LibroBB17_33: 
	addi t2, t2, 4
	lw t2, 0(t2)
	addi a3, zero, 0
	sub a3, a3, t2
	j .LibroBB17_34
.LibroBB17_34: 
	j .LibroBB17_35
.LibroBB17_35: 
	addi t2, a0, 0
	lw t2, 0(t2)
	j .LibroBB17_36
.LibroBB17_36: 
	addi t2, t2, 0
	lw a2, 0(t2)
	addi a1, zero, 0
	addi t2, zero, 4
	mul a1, a1, t2
	addi t2, a1, 4
	add t2, a2, t2
	lw t2, 0(t2)
	j .LibroBB17_37
.LibroBB17_37: 
	j .LibroBB17_38
.LibroBB17_38: 
	j .LibroBB17_39
.LibroBB17_39: 
	addi t2, t2, 4
	lw a1, 0(t2)
	addi t2, zero, 0
	sub t2, t2, a1
	j .LibroBB17_40
.LibroBB17_40: 
	j .LibroBB17_41
.LibroBB17_41: 
	slt t2, t2, a3
	j .LibroBB17_42
.LibroBB17_42: 
	addi a1, zero, 0
	beqz t2, .LibroBB17_44
	j .LibroBB17_43
.LibroBB17_43: 
	mv a1, t1
	j .LibroBB17_44
.LibroBB17_44: 
	j .LibroBB17_45
.LibroBB17_45: 
	addi t1, a0, 0
	lw t1, 0(t1)
	j .LibroBB17_46
.LibroBB17_46: 
	addi t1, t1, 4
	lw t2, 0(t1)
	j .LibroBB17_47
.LibroBB17_47: 
	j .LibroBB17_48
.LibroBB17_48: 
	j .LibroBB17_49
.LibroBB17_49: 
	j .LibroBB17_50
.LibroBB17_50: 
	addi t1, zero, 0
	bge t0, t2, .LibroBB17_64
	j .LibroBB17_51
.LibroBB17_51: 
	addi t1, a0, 0
	lw t1, 0(t1)
	j .LibroBB17_52
.LibroBB17_52: 
	addi t1, t1, 0
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw t1, 0(t1)
	j .LibroBB17_53
.LibroBB17_53: 
	j .LibroBB17_54
.LibroBB17_54: 
	j .LibroBB17_55
.LibroBB17_55: 
	addi t1, t1, 4
	lw t1, 0(t1)
	addi a2, zero, 0
	sub a2, a2, t1
	j .LibroBB17_56
.LibroBB17_56: 
	j .LibroBB17_57
.LibroBB17_57: 
	addi t1, a0, 0
	lw t1, 0(t1)
	j .LibroBB17_58
.LibroBB17_58: 
	addi t1, t1, 0
	lw t2, 0(t1)
	slli t1, a1, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw t1, 0(t1)
	j .LibroBB17_59
.LibroBB17_59: 
	j .LibroBB17_60
.LibroBB17_60: 
	j .LibroBB17_61
.LibroBB17_61: 
	addi t1, t1, 4
	lw t2, 0(t1)
	addi t1, zero, 0
	sub t1, t1, t2
	j .LibroBB17_62
.LibroBB17_62: 
	j .LibroBB17_63
.LibroBB17_63: 
	slt t1, t1, a2
	j .LibroBB17_64
.LibroBB17_64: 
	beqz t1, .LibroBB17_66
	j .LibroBB17_65
.LibroBB17_65: 
	mv a1, t0
	j .LibroBB17_66
.LibroBB17_66: 
	addi t0, zero, 0
	xor t0, a1, t0
	bnez t0, .LibroBB17_67
	j .LibroBB17_71
.LibroBB17_67: 
	addi t0, a0, 0
	lw a4, 0(t0)
	j .LibroBB17_68
.LibroBB17_68: 
	addi t0, a4, 0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	lw a3, 0(t0)
	addi t0, a4, 0
	lw t1, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a2, 0(t0)
	addi t0, a4, 0
	lw t2, 0(t0)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t0, t2, t0
	sw a2, 0(t0)
	addi t0, a4, 0
	lw t1, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a3, 0(t0)
	j .LibroBB17_69
.LibroBB17_69: 
	j .LibroBB17_70
.LibroBB17_70: 
	call _Heap_Node_maxHeapify
	j .LibroBB17_71
.LibroBB17_71: 
	j .LibroBB17_72
.LibroBB17_72: 
	j .LibroBB17_73
.LibroBB17_73: 
	mv a0, s1
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_Array_Node_pop_back: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t1, a0, 4
	lw t0, 0(t1)
	addi t0, t0, -1
	sw t0, 0(t1)
	addi t0, a0, 0
	lw t1, 0(t0)
	addi t0, a0, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw a0, 0(t0)
	j .LibroBB18_1
.LibroBB18_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
_Heap_Node_push: 
	addi sp, sp, -32
	sw ra, 28(sp)
	sw s0, 24(sp)
	sw s1, 20(sp)
	sw s2, 16(sp)
	sw s3, 12(sp)
	sw s4, 8(sp)
	sw s5, 4(sp)
	sw s6, 0(sp)
	addi s0, sp, 32
	mv s2, a0
	mv s1, a1
	addi t0, s2, 0
	lw s5, 0(t0)
	j .LibroBB19_1
.LibroBB19_1: 
	j .LibroBB19_2
.LibroBB19_2: 
	addi t0, s5, 4
	lw t1, 0(t0)
	j .LibroBB19_3
.LibroBB19_3: 
	j .LibroBB19_4
.LibroBB19_4: 
	addi t0, s5, 0
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t0, 0(t0)
	xor t0, t1, t0
	bnez t0, .LibroBB19_5
	j .LibroBB19_6
.LibroBB19_5: 
	addi t0, s5, 0
	lw t1, 0(t0)
	addi t0, s5, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw s1, 0(t0)
	addi t1, s5, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB19_7
.LibroBB19_6: 
	j .LibroBB19_8
.LibroBB19_7: 
	j .LibroBB19_9
.LibroBB19_8: 
	addi t0, s5, 0
	lw s4, 0(t0)
	addi t0, s5, 4
	lw s3, 0(t0)
	addi t0, s4, 0
	lw t0, 0(t0)
	slli s6, t0, 1
	slli t0, s6, 2
	addi a0, t0, 4
	call myNew
	sw s6, 0(a0)
	addi t0, s5, 0
	sw a0, 0(t0)
	addi t1, s5, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB19_10
.LibroBB19_9: 
	j .LibroBB19_11
.LibroBB19_10: 
	addi t0, s5, 4
	lw t0, 0(t0)
	xor t0, t0, s3
	beqz t0, .LibroBB19_13
	j .LibroBB19_12
.LibroBB19_11: 
	addi t0, s2, 0
	lw t0, 0(t0)
	j .LibroBB19_14
.LibroBB19_12: 
	addi t0, s5, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, s4, t0
	lw t2, 0(t0)
	addi t0, s5, 0
	lw t1, 0(t0)
	addi t0, s5, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB19_15
.LibroBB19_13: 
	j .LibroBB19_16
.LibroBB19_14: 
	addi t0, t0, 4
	lw t0, 0(t0)
	j .LibroBB19_17
.LibroBB19_15: 
	addi t1, s5, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB19_10
.LibroBB19_16: 
	j .LibroBB19_5
.LibroBB19_17: 
	j .LibroBB19_18
.LibroBB19_18: 
	j .LibroBB19_19
.LibroBB19_19: 
	j .LibroBB19_20
.LibroBB19_20: 
	addi t1, t0, -1
	j .LibroBB19_21
.LibroBB19_21: 
	addi t0, zero, 0
	bge t0, t1, .LibroBB19_39
	j .LibroBB19_22
.LibroBB19_22: 
	j .LibroBB19_23
.LibroBB19_23: 
	addi t0, t1, -1
	srai t0, t0, 1
	j .LibroBB19_24
.LibroBB19_24: 
	j .LibroBB19_25
.LibroBB19_25: 
	addi t2, s2, 0
	lw t2, 0(t2)
	j .LibroBB19_26
.LibroBB19_26: 
	addi t2, t2, 0
	lw s1, 0(t2)
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, s1, t2
	lw t2, 0(t2)
	j .LibroBB19_27
.LibroBB19_27: 
	j .LibroBB19_28
.LibroBB19_28: 
	j .LibroBB19_29
.LibroBB19_29: 
	addi t2, t2, 4
	lw t2, 0(t2)
	addi a0, zero, 0
	sub a0, a0, t2
	j .LibroBB19_30
.LibroBB19_30: 
	j .LibroBB19_31
.LibroBB19_31: 
	addi t2, s2, 0
	lw t2, 0(t2)
	j .LibroBB19_32
.LibroBB19_32: 
	addi t2, t2, 0
	lw s1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, s1, t2
	lw t2, 0(t2)
	j .LibroBB19_33
.LibroBB19_33: 
	j .LibroBB19_34
.LibroBB19_34: 
	j .LibroBB19_35
.LibroBB19_35: 
	addi t2, t2, 4
	lw s1, 0(t2)
	addi t2, zero, 0
	sub t2, t2, s1
	j .LibroBB19_36
.LibroBB19_36: 
	j .LibroBB19_37
.LibroBB19_37: 
	slt t2, a0, t2
	bnez t2, .LibroBB19_38
	j .LibroBB19_39
.LibroBB19_38: 
	addi t2, s2, 0
	lw a2, 0(t2)
	j .LibroBB19_40
.LibroBB19_39: 
	lw s0, 24(sp)
	lw s1, 20(sp)
	lw s2, 16(sp)
	lw s3, 12(sp)
	lw s4, 8(sp)
	lw s5, 4(sp)
	lw s6, 0(sp)
	lw ra, 28(sp)
	addi sp, sp, 32
	ret
.LibroBB19_40: 
	addi t2, a2, 0
	lw s1, 0(t2)
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, s1, t2
	lw a1, 0(t2)
	addi t2, a2, 0
	lw s1, 0(t2)
	slli t2, t1, 2
	addi t2, t2, 4
	add t2, s1, t2
	lw a0, 0(t2)
	addi t2, a2, 0
	lw s1, 0(t2)
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, s1, t2
	sw a0, 0(t2)
	addi t2, a2, 0
	lw t2, 0(t2)
	slli t1, t1, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw a1, 0(t1)
	j .LibroBB19_41
.LibroBB19_41: 
	j .LibroBB19_42
.LibroBB19_42: 
	mv t1, t0
	j .LibroBB19_21
_Array_Node_push_back: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	sw s2, 12(sp)
	sw s3, 8(sp)
	sw s4, 4(sp)
	sw s5, 0(sp)
	addi s0, sp, 28
	mv s2, a0
	mv s1, a1
	j .LibroBB20_1
.LibroBB20_1: 
	addi t0, s2, 4
	lw t1, 0(t0)
	j .LibroBB20_2
.LibroBB20_2: 
	j .LibroBB20_3
.LibroBB20_3: 
	addi t0, s2, 0
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t0, 0(t0)
	xor t0, t1, t0
	bnez t0, .LibroBB20_11
	j .LibroBB20_4
.LibroBB20_4: 
	j .LibroBB20_5
.LibroBB20_5: 
	addi t0, s2, 0
	lw s4, 0(t0)
	addi t0, s2, 4
	lw s3, 0(t0)
	addi t0, s4, 0
	lw t0, 0(t0)
	slli s5, t0, 1
	slli t0, s5, 2
	addi a0, t0, 4
	call myNew
	sw s5, 0(a0)
	addi t0, s2, 0
	sw a0, 0(t0)
	addi t1, s2, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB20_6
.LibroBB20_6: 
	addi t0, s2, 4
	lw t0, 0(t0)
	xor t0, t0, s3
	beqz t0, .LibroBB20_8
	j .LibroBB20_7
.LibroBB20_7: 
	addi t0, s2, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, s4, t0
	lw t2, 0(t0)
	addi t0, s2, 0
	lw t1, 0(t0)
	addi t0, s2, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB20_9
.LibroBB20_8: 
	j .LibroBB20_10
.LibroBB20_9: 
	addi t1, s2, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB20_6
.LibroBB20_10: 
	j .LibroBB20_11
.LibroBB20_11: 
	addi t0, s2, 0
	lw t1, 0(t0)
	addi t0, s2, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw s1, 0(t0)
	addi t1, s2, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB20_12
.LibroBB20_12: 
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw s2, 12(sp)
	lw s3, 8(sp)
	lw s4, 4(sp)
	lw s5, 0(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
init: 
	addi sp, sp, -28
	sw ra, 24(sp)
	sw s0, 20(sp)
	sw s1, 16(sp)
	sw s2, 12(sp)
	sw s3, 8(sp)
	sw s4, 4(sp)
	sw s5, 0(sp)
	addi s0, sp, 28
	call getInt
	la t0, n
	sw a0, 0(t0)
	call getInt
	la t0, m
	sw a0, 0(t0)
	addi a0, zero, 16
	call myNew
	la t0, g
	sw a0, 0(t0)
	la t0, g
	lw s2, 0(t0)
	la t0, n
	lw s1, 0(t0)
	la t0, m
	lw s3, 0(t0)
	j .LibroBB21_1
.LibroBB21_1: 
	slli t0, s3, 2
	addi a0, t0, 4
	call myNew
	sw s3, 0(a0)
	addi t0, s2, 0
	sw a0, 0(t0)
	slli t0, s3, 2
	addi a0, t0, 4
	call myNew
	sw s3, 0(a0)
	addi t0, s2, 4
	sw a0, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	addi t0, s2, 8
	sw a0, 0(t0)
	addi t0, zero, 0
	j .LibroBB21_2
.LibroBB21_2: 
	bge t0, s3, .LibroBB21_3
	j .LibroBB21_4
.LibroBB21_3: 
	addi t0, zero, 0
	j .LibroBB21_5
.LibroBB21_4: 
	addi t1, s2, 4
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t2, t2, t1
	addi t1, zero, -1
	sw t1, 0(t2)
	j .LibroBB21_6
.LibroBB21_5: 
	bge t0, s1, .LibroBB21_7
	j .LibroBB21_8
.LibroBB21_6: 
	addi t0, t0, 1
	j .LibroBB21_2
.LibroBB21_7: 
	addi t1, s2, 12
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB21_9
.LibroBB21_8: 
	addi t1, s2, 8
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t2, t2, t1
	addi t1, zero, -1
	sw t1, 0(t2)
	j .LibroBB21_10
.LibroBB21_9: 
	j .LibroBB21_11
.LibroBB21_10: 
	addi t0, t0, 1
	j .LibroBB21_5
.LibroBB21_11: 
	addi s4, zero, 0
	j .LibroBB21_12
.LibroBB21_12: 
	la t0, m
	lw t0, 0(t0)
	bge s4, t0, .LibroBB21_13
	j .LibroBB21_14
.LibroBB21_13: 
	lw s0, 20(sp)
	lw s1, 16(sp)
	lw s2, 12(sp)
	lw s3, 8(sp)
	lw s4, 4(sp)
	lw s5, 0(sp)
	lw ra, 24(sp)
	addi sp, sp, 28
	ret
.LibroBB21_14: 
	call getInt
	mv s3, a0
	call getInt
	mv s2, a0
	call getInt
	mv s1, a0
	la t0, g
	lw s5, 0(t0)
	j .LibroBB21_15
.LibroBB21_15: 
	addi a0, zero, 12
	call myNew
	addi t0, a0, 0
	sw s3, 0(t0)
	addi t0, a0, 4
	sw s2, 0(t0)
	addi t0, a0, 8
	sw s1, 0(t0)
	addi t0, s5, 0
	lw t1, 0(t0)
	addi t0, s5, 12
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	addi t0, s5, 8
	lw t1, 0(t0)
	slli t0, s3, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	addi t0, s5, 4
	lw t1, 0(t0)
	addi t0, s5, 12
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	addi t0, s5, 12
	lw t2, 0(t0)
	addi t0, s5, 8
	lw t1, 0(t0)
	slli t0, s3, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	addi t1, s5, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB21_16
.LibroBB21_16: 
	j .LibroBB21_17
.LibroBB21_17: 
	j .LibroBB21_18
.LibroBB21_18: 
	addi s4, s4, 1
	j .LibroBB21_12
_Array_Node_swap: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	addi t0, a0, 0
	lw t1, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s1, 0(t0)
	addi t0, a0, 0
	lw t1, 0(t0)
	slli t0, a2, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	addi t0, a0, 0
	lw t1, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	addi t0, a0, 0
	lw t1, 0(t0)
	slli t0, a2, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw s1, 0(t0)
	j .LibroBB22_1
.LibroBB22_1: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
_Heap_Node_maxHeapify: 
	addi sp, sp, -12
	sw ra, 8(sp)
	sw s0, 4(sp)
	sw s1, 0(sp)
	addi s0, sp, 12
	j .LibroBB23_1
.LibroBB23_1: 
	slli t0, a1, 1
	addi s1, t0, 1
	j .LibroBB23_2
.LibroBB23_2: 
	j .LibroBB23_3
.LibroBB23_3: 
	j .LibroBB23_4
.LibroBB23_4: 
	slli t0, a1, 1
	addi t2, t0, 2
	j .LibroBB23_5
.LibroBB23_5: 
	j .LibroBB23_6
.LibroBB23_6: 
	j .LibroBB23_7
.LibroBB23_7: 
	addi t0, a0, 0
	lw t0, 0(t0)
	j .LibroBB23_8
.LibroBB23_8: 
	addi t0, t0, 4
	lw t0, 0(t0)
	j .LibroBB23_9
.LibroBB23_9: 
	j .LibroBB23_10
.LibroBB23_10: 
	j .LibroBB23_11
.LibroBB23_11: 
	j .LibroBB23_12
.LibroBB23_12: 
	addi t1, zero, 0
	bge s1, t0, .LibroBB23_13
	j .LibroBB23_14
.LibroBB23_13: 
	mv t0, a1
	beqz t1, .LibroBB23_16
	j .LibroBB23_15
.LibroBB23_14: 
	addi t0, a0, 0
	lw t0, 0(t0)
	j .LibroBB23_17
.LibroBB23_15: 
	mv t0, s1
	j .LibroBB23_16
.LibroBB23_16: 
	j .LibroBB23_18
.LibroBB23_17: 
	addi t0, t0, 0
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	j .LibroBB23_19
.LibroBB23_18: 
	addi t1, a0, 0
	lw t1, 0(t1)
	j .LibroBB23_20
.LibroBB23_19: 
	j .LibroBB23_21
.LibroBB23_20: 
	addi t1, t1, 4
	lw s1, 0(t1)
	j .LibroBB23_22
.LibroBB23_21: 
	j .LibroBB23_23
.LibroBB23_22: 
	j .LibroBB23_24
.LibroBB23_23: 
	addi t0, t0, 4
	lw t0, 0(t0)
	addi a2, zero, 0
	sub a2, a2, t0
	j .LibroBB23_25
.LibroBB23_24: 
	j .LibroBB23_26
.LibroBB23_25: 
	j .LibroBB23_27
.LibroBB23_26: 
	j .LibroBB23_28
.LibroBB23_27: 
	addi t0, a0, 0
	lw t0, 0(t0)
	j .LibroBB23_29
.LibroBB23_28: 
	addi t1, zero, 0
	bge t2, s1, .LibroBB23_31
	j .LibroBB23_30
.LibroBB23_29: 
	addi t0, t0, 0
	lw t1, 0(t0)
	slli t0, a1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	j .LibroBB23_32
.LibroBB23_30: 
	addi t1, a0, 0
	lw t1, 0(t1)
	j .LibroBB23_33
.LibroBB23_31: 
	beqz t1, .LibroBB23_37
	j .LibroBB23_34
.LibroBB23_32: 
	j .LibroBB23_35
.LibroBB23_33: 
	addi t1, t1, 0
	lw s1, 0(t1)
	slli t1, t2, 2
	addi t1, t1, 4
	add t1, s1, t1
	lw t1, 0(t1)
	j .LibroBB23_36
.LibroBB23_34: 
	mv t0, t2
	j .LibroBB23_37
.LibroBB23_35: 
	j .LibroBB23_38
.LibroBB23_36: 
	j .LibroBB23_39
.LibroBB23_37: 
	xor t1, t0, a1
	bnez t1, .LibroBB23_40
	j .LibroBB23_50
.LibroBB23_38: 
	addi t0, t0, 4
	lw t1, 0(t0)
	addi t0, zero, 0
	sub t0, t0, t1
	j .LibroBB23_41
.LibroBB23_39: 
	j .LibroBB23_42
.LibroBB23_40: 
	addi t1, a0, 0
	lw a3, 0(t1)
	j .LibroBB23_43
.LibroBB23_41: 
	j .LibroBB23_44
.LibroBB23_42: 
	addi t1, t1, 4
	lw t1, 0(t1)
	addi a2, zero, 0
	sub a2, a2, t1
	j .LibroBB23_45
.LibroBB23_43: 
	addi t1, a3, 0
	lw t2, 0(t1)
	slli t1, a1, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw a2, 0(t1)
	addi t1, a3, 0
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, t2, t1
	lw s1, 0(t1)
	addi t1, a3, 0
	lw t2, 0(t1)
	slli t1, a1, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw s1, 0(t1)
	addi t1, a3, 0
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, t2, t1
	sw a2, 0(t1)
	j .LibroBB23_46
.LibroBB23_44: 
	slt t1, t0, a2
	j .LibroBB23_13
.LibroBB23_45: 
	j .LibroBB23_47
.LibroBB23_46: 
	j .LibroBB23_48
.LibroBB23_47: 
	addi t1, a0, 0
	lw t1, 0(t1)
	j .LibroBB23_49
.LibroBB23_48: 
	mv a1, t0
	call _Heap_Node_maxHeapify
	j .LibroBB23_50
.LibroBB23_49: 
	addi t1, t1, 0
	lw s1, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t1, s1, t1
	lw t1, 0(t1)
	j .LibroBB23_51
.LibroBB23_50: 
	lw s0, 4(sp)
	lw s1, 0(sp)
	lw ra, 8(sp)
	addi sp, sp, 12
	ret
.LibroBB23_51: 
	j .LibroBB23_52
.LibroBB23_52: 
	j .LibroBB23_53
.LibroBB23_53: 
	addi t1, t1, 4
	lw s1, 0(t1)
	addi t1, zero, 0
	sub t1, t1, s1
	j .LibroBB23_54
.LibroBB23_54: 
	j .LibroBB23_55
.LibroBB23_55: 
	slt t1, t1, a2
	j .LibroBB23_31
main: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)
	addi s0, sp, 20
	j .LibroBB24_1
.LibroBB24_1: 
	j .LibroBB24_2
.LibroBB24_2: 
	call init
	addi s1, zero, 0
	j .LibroBB24_3
.LibroBB24_3: 
	la t0, n
	lw t0, 0(t0)
	bge s1, t0, .LibroBB24_5
	j .LibroBB24_4
.LibroBB24_4: 
	mv a0, s1
	call dijkstra
	mv s3, a0
	addi s2, zero, 0
	j .LibroBB24_6
.LibroBB24_5: 
	li a0, 0
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw s3, 0(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
.LibroBB24_6: 
	la t0, n
	lw t0, 0(t0)
	bge s2, t0, .LibroBB24_7
	j .LibroBB24_8
.LibroBB24_7: 
	la a0, .libro.str.2
	call println
	j .LibroBB24_9
.LibroBB24_8: 
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw t1, 0(t0)
	la t0, INF
	lw t0, 0(t0)
	xor t0, t1, t0
	bnez t0, .LibroBB24_11
	j .LibroBB24_10
.LibroBB24_9: 
	addi s1, s1, 1
	j .LibroBB24_3
.LibroBB24_10: 
	la a0, .libro.str
	call print
	j .LibroBB24_12
.LibroBB24_11: 
	slli t0, s2, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw a0, 0(t0)
	call toString
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	j .LibroBB24_12
.LibroBB24_12: 
	la a0, .libro.str.1
	call print
	j .LibroBB24_13
.LibroBB24_13: 
	addi s2, s2, 1
	j .LibroBB24_6
_Array_Node_doubleStorage: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	sw s2, 8(sp)
	sw s3, 4(sp)
	sw s4, 0(sp)
	addi s0, sp, 24
	mv s1, a0
	addi t0, s1, 0
	lw s3, 0(t0)
	addi t0, s1, 4
	lw s2, 0(t0)
	addi t0, s3, 0
	lw t0, 0(t0)
	slli s4, t0, 1
	slli t0, s4, 2
	addi a0, t0, 4
	call myNew
	sw s4, 0(a0)
	addi t0, s1, 0
	sw a0, 0(t0)
	addi t1, s1, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB25_1
.LibroBB25_1: 
	addi t0, s1, 4
	lw t0, 0(t0)
	xor t0, t0, s2
	beqz t0, .LibroBB25_3
	j .LibroBB25_2
.LibroBB25_2: 
	addi t0, s1, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw t2, 0(t0)
	addi t0, s1, 0
	lw t1, 0(t0)
	addi t0, s1, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	j .LibroBB25_4
.LibroBB25_3: 
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw s2, 8(sp)
	lw s3, 4(sp)
	lw s4, 0(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
.LibroBB25_4: 
	addi t1, s1, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB25_1
_EdgeList_addEdge: 
	addi sp, sp, -24
	sw ra, 20(sp)
	sw s0, 16(sp)
	sw s1, 12(sp)
	sw s2, 8(sp)
	sw s3, 4(sp)
	sw s4, 0(sp)
	addi s0, sp, 24
	mv s4, a0
	mv s3, a1
	mv s2, a2
	mv s1, a3
	addi a0, zero, 12
	call myNew
	addi t0, a0, 0
	sw s3, 0(t0)
	addi t0, a0, 4
	sw s2, 0(t0)
	addi t0, a0, 8
	sw s1, 0(t0)
	addi t0, s4, 0
	lw t1, 0(t0)
	addi t0, s4, 12
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw a0, 0(t0)
	addi t0, s4, 8
	lw t1, 0(t0)
	slli t0, s3, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t2, 0(t0)
	addi t0, s4, 4
	lw t1, 0(t0)
	addi t0, s4, 12
	lw t0, 0(t0)
	slli t0, t0, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	addi t0, s4, 12
	lw t2, 0(t0)
	addi t0, s4, 8
	lw t1, 0(t0)
	slli t0, s3, 2
	addi t0, t0, 4
	add t0, t1, t0
	sw t2, 0(t0)
	addi t1, s4, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .LibroBB26_1
.LibroBB26_1: 
	lw s0, 16(sp)
	lw s1, 12(sp)
	lw s2, 8(sp)
	lw s3, 4(sp)
	lw s4, 0(sp)
	lw ra, 20(sp)
	addi sp, sp, 24
	ret
_EdgeList_init: 
	addi sp, sp, -20
	sw ra, 16(sp)
	sw s0, 12(sp)
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)
	addi s0, sp, 20
	mv s3, a0
	mv s2, a1
	mv s1, a2
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	addi t0, s3, 0
	sw a0, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	sw s1, 0(a0)
	addi t0, s3, 4
	sw a0, 0(t0)
	slli t0, s2, 2
	addi a0, t0, 4
	call myNew
	sw s2, 0(a0)
	addi t0, s3, 8
	sw a0, 0(t0)
	addi t0, zero, 0
	j .LibroBB27_1
.LibroBB27_1: 
	bge t0, s1, .LibroBB27_2
	j .LibroBB27_3
.LibroBB27_2: 
	addi t0, zero, 0
	j .LibroBB27_4
.LibroBB27_3: 
	addi t1, s3, 4
	lw t2, 0(t1)
	slli t1, t0, 2
	addi t1, t1, 4
	add t2, t2, t1
	addi t1, zero, -1
	sw t1, 0(t2)
	j .LibroBB27_5
.LibroBB27_4: 
	bge t0, s2, .LibroBB27_6
	j .LibroBB27_7
.LibroBB27_5: 
	addi t0, t0, 1
	j .LibroBB27_1
.LibroBB27_6: 
	addi t1, s3, 12
	addi t0, zero, 0
	sw t0, 0(t1)
	j .LibroBB27_8
.LibroBB27_7: 
	addi t1, s3, 8
	lw t1, 0(t1)
	slli t2, t0, 2
	addi t2, t2, 4
	add t2, t1, t2
	addi t1, zero, -1
	sw t1, 0(t2)
	j .LibroBB27_9
.LibroBB27_8: 
	lw s0, 12(sp)
	lw s1, 8(sp)
	lw s2, 4(sp)
	lw s3, 0(sp)
	lw ra, 16(sp)
	addi sp, sp, 20
	ret
.LibroBB27_9: 
	addi t0, t0, 1
	j .LibroBB27_4
dijkstra: 
	addi sp, sp, -36
	sw ra, 32(sp)
	sw s0, 28(sp)
	sw s1, 24(sp)
	sw s2, 20(sp)
	sw s3, 16(sp)
	sw s4, 12(sp)
	sw s5, 8(sp)
	sw s6, 4(sp)
	sw s7, 0(sp)
	addi s0, sp, 36
	mv s5, a0
	la t0, n
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	mv s4, a0
	sw s1, 0(s4)
	la t0, n
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call myNew
	mv s3, a0
	sw s1, 0(s3)
	addi t0, zero, 0
	j .LibroBB28_1
.LibroBB28_1: 
	la t1, n
	lw t1, 0(t1)
	bge t0, t1, .LibroBB28_3
	j .LibroBB28_2
.LibroBB28_2: 
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
	j .LibroBB28_4
.LibroBB28_3: 
	slli t0, s5, 2
	addi t0, t0, 4
	add t1, s3, t0
	addi t0, zero, 0
	sw t0, 0(t1)
	addi a0, zero, 4
	call myNew
	mv s2, a0
	j .LibroBB28_5
.LibroBB28_4: 
	addi t0, t0, 1
	j .LibroBB28_1
.LibroBB28_5: 
	addi a0, zero, 8
	call myNew
	mv s1, a0
	j .LibroBB28_6
.LibroBB28_6: 
	addi t1, s1, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi a0, zero, 68
	call myNew
	addi t0, zero, 16
	sw t0, 0(a0)
	addi t0, s1, 0
	sw a0, 0(t0)
	j .LibroBB28_7
.LibroBB28_7: 
	j .LibroBB28_8
.LibroBB28_8: 
	addi t0, s2, 0
	sw s1, 0(t0)
	j .LibroBB28_9
.LibroBB28_9: 
	j .LibroBB28_10
.LibroBB28_10: 
	addi a0, zero, 8
	call myNew
	mv a1, a0
	addi t1, a1, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	addi t0, a1, 0
	sw s5, 0(t0)
	mv a0, s2
	call _Heap_Node_push
	j .LibroBB28_11
.LibroBB28_11: 
	j .LibroBB28_12
.LibroBB28_12: 
	addi t0, s2, 0
	lw t0, 0(t0)
	j .LibroBB28_13
.LibroBB28_13: 
	addi t0, t0, 4
	lw t1, 0(t0)
	j .LibroBB28_14
.LibroBB28_14: 
	j .LibroBB28_15
.LibroBB28_15: 
	j .LibroBB28_16
.LibroBB28_16: 
	j .LibroBB28_17
.LibroBB28_17: 
	addi t0, zero, 0
	xor t0, t1, t0
	beqz t0, .LibroBB28_18
	j .LibroBB28_19
.LibroBB28_18: 
	mv a0, s3
	lw s0, 28(sp)
	lw s1, 24(sp)
	lw s2, 20(sp)
	lw s3, 16(sp)
	lw s4, 12(sp)
	lw s5, 8(sp)
	lw s6, 4(sp)
	lw s7, 0(sp)
	lw ra, 32(sp)
	addi sp, sp, 36
	ret
.LibroBB28_19: 
	mv a0, s2
	call _Heap_Node_pop
	addi t0, a0, 0
	lw s5, 0(t0)
	slli t0, s5, 2
	addi t0, t0, 4
	add t0, s4, t0
	lw t1, 0(t0)
	addi t0, zero, 1
	xor t0, t1, t0
	bnez t0, .LibroBB28_20
	j .LibroBB28_11
.LibroBB28_20: 
	slli t0, s5, 2
	addi t0, t0, 4
	add t1, s4, t0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t0, g
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	slli t0, s5, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s1, 0(t0)
	j .LibroBB28_21
.LibroBB28_21: 
	addi t0, zero, -1
	xor t0, s1, t0
	beqz t0, .LibroBB28_11
	j .LibroBB28_22
.LibroBB28_22: 
	la t0, g
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw s7, 0(t0)
	la t0, g
	lw t0, 0(t0)
	addi t0, t0, 0
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	slli t0, s5, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw t0, 0(t0)
	add t1, t0, t1
	slli t0, s7, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw t0, 0(t0)
	slt t0, t1, t0
	bnez t0, .LibroBB28_23
	j .LibroBB28_24
.LibroBB28_23: 
	slli t0, s7, 2
	addi t0, t0, 4
	add t0, s3, t0
	sw t1, 0(t0)
	addi a0, zero, 8
	call myNew
	mv a1, a0
	addi t0, a1, 0
	sw s7, 0(t0)
	slli t0, s7, 2
	addi t0, t0, 4
	add t0, s3, t0
	lw t1, 0(t0)
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s2
	call _Heap_Node_push
	j .LibroBB28_24
.LibroBB28_24: 
	la t0, g
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t1, 0(t0)
	slli t0, s1, 2
	addi t0, t0, 4
	add t0, t1, t0
	lw s1, 0(t0)
	j .LibroBB28_21
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

