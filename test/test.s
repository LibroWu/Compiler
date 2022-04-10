	.text
	.globl main
	.p2align	2
	.type	main,@function
getcount: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi s0, sp, 8
	addi t1, a0, 4
	lw t0, 0(t1)
	addi a0, t0, 1
	sw a0, 0(t1)
	j .LibroBB0_1
.LibroBB0_1: 
	lw s0, 0(sp)
	lw ra, 4(sp)
	addi sp, sp, 8
	ret
main: 
	addi sp, sp, -1036
	sw ra, 1032(sp)
	sw s0, 1028(sp)
	sw s1, 1024(sp)
	sw s2, 1020(sp)
	sw s3, 1016(sp)
	sw s4, 1012(sp)
	sw s5, 1008(sp)
	sw s6, 1004(sp)
	sw s7, 1000(sp)
	sw s8, 996(sp)
	sw s9, 992(sp)
	sw s10, 988(sp)
	sw s11, 984(sp)
	addi s0, sp, 1036
	addi a0, zero, 8
	call myNew
	addi t0, zero, 1
	sw t0, 0(a0)
	la t0, count
	sw a0, 0(t0)
	la t0, count
	lw t0, 0(t0)
	addi t1, t0, 4
	addi t0, zero, 0
	sw t0, 0(t1)
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_1
.LibroBB1_1: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -128(s0)
	lw t0, -128(s0)
	sw t0, 0(t1)
	j .LibroBB1_2
.LibroBB1_2: 
	j .LibroBB1_3
.LibroBB1_3: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_4
.LibroBB1_4: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -140(s0)
	lw t0, -140(s0)
	sw t0, 0(t1)
	j .LibroBB1_5
.LibroBB1_5: 
	j .LibroBB1_6
.LibroBB1_6: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_7
.LibroBB1_7: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -152(s0)
	lw t0, -152(s0)
	sw t0, 0(t1)
	j .LibroBB1_8
.LibroBB1_8: 
	j .LibroBB1_9
.LibroBB1_9: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_10
.LibroBB1_10: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -164(s0)
	lw t0, -164(s0)
	sw t0, 0(t1)
	j .LibroBB1_11
.LibroBB1_11: 
	j .LibroBB1_12
.LibroBB1_12: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_13
.LibroBB1_13: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -176(s0)
	lw t0, -176(s0)
	sw t0, 0(t1)
	j .LibroBB1_14
.LibroBB1_14: 
	j .LibroBB1_15
.LibroBB1_15: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_16
.LibroBB1_16: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -188(s0)
	lw t0, -188(s0)
	sw t0, 0(t1)
	j .LibroBB1_17
.LibroBB1_17: 
	j .LibroBB1_18
.LibroBB1_18: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_19
.LibroBB1_19: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -200(s0)
	lw t0, -200(s0)
	sw t0, 0(t1)
	j .LibroBB1_20
.LibroBB1_20: 
	j .LibroBB1_21
.LibroBB1_21: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_22
.LibroBB1_22: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -212(s0)
	lw t0, -212(s0)
	sw t0, 0(t1)
	j .LibroBB1_23
.LibroBB1_23: 
	j .LibroBB1_24
.LibroBB1_24: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_25
.LibroBB1_25: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -224(s0)
	lw t0, -224(s0)
	sw t0, 0(t1)
	j .LibroBB1_26
.LibroBB1_26: 
	j .LibroBB1_27
.LibroBB1_27: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_28
.LibroBB1_28: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -236(s0)
	lw t0, -236(s0)
	sw t0, 0(t1)
	j .LibroBB1_29
.LibroBB1_29: 
	j .LibroBB1_30
.LibroBB1_30: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_31
.LibroBB1_31: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -248(s0)
	lw t0, -248(s0)
	sw t0, 0(t1)
	j .LibroBB1_32
.LibroBB1_32: 
	j .LibroBB1_33
.LibroBB1_33: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_34
.LibroBB1_34: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -260(s0)
	lw t0, -260(s0)
	sw t0, 0(t1)
	j .LibroBB1_35
.LibroBB1_35: 
	j .LibroBB1_36
.LibroBB1_36: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_37
.LibroBB1_37: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -272(s0)
	lw t0, -272(s0)
	sw t0, 0(t1)
	j .LibroBB1_38
.LibroBB1_38: 
	j .LibroBB1_39
.LibroBB1_39: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_40
.LibroBB1_40: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -284(s0)
	lw t0, -284(s0)
	sw t0, 0(t1)
	j .LibroBB1_41
.LibroBB1_41: 
	j .LibroBB1_42
.LibroBB1_42: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_43
.LibroBB1_43: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -296(s0)
	lw t0, -296(s0)
	sw t0, 0(t1)
	j .LibroBB1_44
.LibroBB1_44: 
	j .LibroBB1_45
.LibroBB1_45: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_46
.LibroBB1_46: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -308(s0)
	lw t0, -308(s0)
	sw t0, 0(t1)
	j .LibroBB1_47
.LibroBB1_47: 
	j .LibroBB1_48
.LibroBB1_48: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_49
.LibroBB1_49: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -320(s0)
	lw t0, -320(s0)
	sw t0, 0(t1)
	j .LibroBB1_50
.LibroBB1_50: 
	j .LibroBB1_51
.LibroBB1_51: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_52
.LibroBB1_52: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -332(s0)
	lw t0, -332(s0)
	sw t0, 0(t1)
	j .LibroBB1_53
.LibroBB1_53: 
	j .LibroBB1_54
.LibroBB1_54: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_55
.LibroBB1_55: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -344(s0)
	lw t0, -344(s0)
	sw t0, 0(t1)
	j .LibroBB1_56
.LibroBB1_56: 
	j .LibroBB1_57
.LibroBB1_57: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_58
.LibroBB1_58: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -356(s0)
	lw t0, -356(s0)
	sw t0, 0(t1)
	j .LibroBB1_59
.LibroBB1_59: 
	j .LibroBB1_60
.LibroBB1_60: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_61
.LibroBB1_61: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -368(s0)
	lw t0, -368(s0)
	sw t0, 0(t1)
	j .LibroBB1_62
.LibroBB1_62: 
	j .LibroBB1_63
.LibroBB1_63: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_64
.LibroBB1_64: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -380(s0)
	lw t0, -380(s0)
	sw t0, 0(t1)
	j .LibroBB1_65
.LibroBB1_65: 
	j .LibroBB1_66
.LibroBB1_66: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_67
.LibroBB1_67: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -392(s0)
	lw t0, -392(s0)
	sw t0, 0(t1)
	j .LibroBB1_68
.LibroBB1_68: 
	j .LibroBB1_69
.LibroBB1_69: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_70
.LibroBB1_70: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -404(s0)
	lw t0, -404(s0)
	sw t0, 0(t1)
	j .LibroBB1_71
.LibroBB1_71: 
	j .LibroBB1_72
.LibroBB1_72: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_73
.LibroBB1_73: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -416(s0)
	lw t0, -416(s0)
	sw t0, 0(t1)
	j .LibroBB1_74
.LibroBB1_74: 
	j .LibroBB1_75
.LibroBB1_75: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_76
.LibroBB1_76: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -428(s0)
	lw t0, -428(s0)
	sw t0, 0(t1)
	j .LibroBB1_77
.LibroBB1_77: 
	j .LibroBB1_78
.LibroBB1_78: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_79
.LibroBB1_79: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -440(s0)
	lw t0, -440(s0)
	sw t0, 0(t1)
	j .LibroBB1_80
.LibroBB1_80: 
	j .LibroBB1_81
.LibroBB1_81: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_82
.LibroBB1_82: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -452(s0)
	lw t0, -452(s0)
	sw t0, 0(t1)
	j .LibroBB1_83
.LibroBB1_83: 
	j .LibroBB1_84
.LibroBB1_84: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_85
.LibroBB1_85: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -464(s0)
	lw t0, -464(s0)
	sw t0, 0(t1)
	j .LibroBB1_86
.LibroBB1_86: 
	j .LibroBB1_87
.LibroBB1_87: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_88
.LibroBB1_88: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -476(s0)
	lw t0, -476(s0)
	sw t0, 0(t1)
	j .LibroBB1_89
.LibroBB1_89: 
	j .LibroBB1_90
.LibroBB1_90: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_91
.LibroBB1_91: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -488(s0)
	lw t0, -488(s0)
	sw t0, 0(t1)
	j .LibroBB1_92
.LibroBB1_92: 
	j .LibroBB1_93
.LibroBB1_93: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_94
.LibroBB1_94: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -500(s0)
	lw t0, -500(s0)
	sw t0, 0(t1)
	j .LibroBB1_95
.LibroBB1_95: 
	j .LibroBB1_96
.LibroBB1_96: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_97
.LibroBB1_97: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -512(s0)
	lw t0, -512(s0)
	sw t0, 0(t1)
	j .LibroBB1_98
.LibroBB1_98: 
	j .LibroBB1_99
.LibroBB1_99: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_100
.LibroBB1_100: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -524(s0)
	lw t0, -524(s0)
	sw t0, 0(t1)
	j .LibroBB1_101
.LibroBB1_101: 
	j .LibroBB1_102
.LibroBB1_102: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_103
.LibroBB1_103: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -536(s0)
	lw t0, -536(s0)
	sw t0, 0(t1)
	j .LibroBB1_104
.LibroBB1_104: 
	j .LibroBB1_105
.LibroBB1_105: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_106
.LibroBB1_106: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -548(s0)
	lw t0, -548(s0)
	sw t0, 0(t1)
	j .LibroBB1_107
.LibroBB1_107: 
	j .LibroBB1_108
.LibroBB1_108: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_109
.LibroBB1_109: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -560(s0)
	lw t0, -560(s0)
	sw t0, 0(t1)
	j .LibroBB1_110
.LibroBB1_110: 
	j .LibroBB1_111
.LibroBB1_111: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_112
.LibroBB1_112: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -572(s0)
	lw t0, -572(s0)
	sw t0, 0(t1)
	j .LibroBB1_113
.LibroBB1_113: 
	j .LibroBB1_114
.LibroBB1_114: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_115
.LibroBB1_115: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -584(s0)
	lw t0, -584(s0)
	sw t0, 0(t1)
	j .LibroBB1_116
.LibroBB1_116: 
	j .LibroBB1_117
.LibroBB1_117: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_118
.LibroBB1_118: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -596(s0)
	lw t0, -596(s0)
	sw t0, 0(t1)
	j .LibroBB1_119
.LibroBB1_119: 
	j .LibroBB1_120
.LibroBB1_120: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_121
.LibroBB1_121: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -608(s0)
	lw t0, -608(s0)
	sw t0, 0(t1)
	j .LibroBB1_122
.LibroBB1_122: 
	j .LibroBB1_123
.LibroBB1_123: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_124
.LibroBB1_124: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -620(s0)
	lw t0, -620(s0)
	sw t0, 0(t1)
	j .LibroBB1_125
.LibroBB1_125: 
	j .LibroBB1_126
.LibroBB1_126: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_127
.LibroBB1_127: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -628(s0)
	lw t0, -628(s0)
	sw t0, 0(t1)
	j .LibroBB1_128
.LibroBB1_128: 
	j .LibroBB1_129
.LibroBB1_129: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_130
.LibroBB1_130: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -636(s0)
	lw t0, -636(s0)
	sw t0, 0(t1)
	j .LibroBB1_131
.LibroBB1_131: 
	j .LibroBB1_132
.LibroBB1_132: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_133
.LibroBB1_133: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -644(s0)
	lw t0, -644(s0)
	sw t0, 0(t1)
	j .LibroBB1_134
.LibroBB1_134: 
	j .LibroBB1_135
.LibroBB1_135: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_136
.LibroBB1_136: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -652(s0)
	lw t0, -652(s0)
	sw t0, 0(t1)
	j .LibroBB1_137
.LibroBB1_137: 
	j .LibroBB1_138
.LibroBB1_138: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_139
.LibroBB1_139: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -660(s0)
	lw t0, -660(s0)
	sw t0, 0(t1)
	j .LibroBB1_140
.LibroBB1_140: 
	j .LibroBB1_141
.LibroBB1_141: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_142
.LibroBB1_142: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -668(s0)
	lw t0, -668(s0)
	sw t0, 0(t1)
	j .LibroBB1_143
.LibroBB1_143: 
	j .LibroBB1_144
.LibroBB1_144: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_145
.LibroBB1_145: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -676(s0)
	lw t0, -676(s0)
	sw t0, 0(t1)
	j .LibroBB1_146
.LibroBB1_146: 
	j .LibroBB1_147
.LibroBB1_147: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_148
.LibroBB1_148: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -684(s0)
	lw t0, -684(s0)
	sw t0, 0(t1)
	j .LibroBB1_149
.LibroBB1_149: 
	j .LibroBB1_150
.LibroBB1_150: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_151
.LibroBB1_151: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -692(s0)
	lw t0, -692(s0)
	sw t0, 0(t1)
	j .LibroBB1_152
.LibroBB1_152: 
	j .LibroBB1_153
.LibroBB1_153: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_154
.LibroBB1_154: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -700(s0)
	lw t0, -700(s0)
	sw t0, 0(t1)
	j .LibroBB1_155
.LibroBB1_155: 
	j .LibroBB1_156
.LibroBB1_156: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_157
.LibroBB1_157: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -708(s0)
	lw t0, -708(s0)
	sw t0, 0(t1)
	j .LibroBB1_158
.LibroBB1_158: 
	j .LibroBB1_159
.LibroBB1_159: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_160
.LibroBB1_160: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -716(s0)
	lw t0, -716(s0)
	sw t0, 0(t1)
	j .LibroBB1_161
.LibroBB1_161: 
	j .LibroBB1_162
.LibroBB1_162: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_163
.LibroBB1_163: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -724(s0)
	lw t0, -724(s0)
	sw t0, 0(t1)
	j .LibroBB1_164
.LibroBB1_164: 
	j .LibroBB1_165
.LibroBB1_165: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_166
.LibroBB1_166: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -732(s0)
	lw t0, -732(s0)
	sw t0, 0(t1)
	j .LibroBB1_167
.LibroBB1_167: 
	j .LibroBB1_168
.LibroBB1_168: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_169
.LibroBB1_169: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -740(s0)
	lw t0, -740(s0)
	sw t0, 0(t1)
	j .LibroBB1_170
.LibroBB1_170: 
	j .LibroBB1_171
.LibroBB1_171: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_172
.LibroBB1_172: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -748(s0)
	lw t0, -748(s0)
	sw t0, 0(t1)
	j .LibroBB1_173
.LibroBB1_173: 
	j .LibroBB1_174
.LibroBB1_174: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_175
.LibroBB1_175: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -756(s0)
	lw t0, -756(s0)
	sw t0, 0(t1)
	j .LibroBB1_176
.LibroBB1_176: 
	j .LibroBB1_177
.LibroBB1_177: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_178
.LibroBB1_178: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -764(s0)
	lw t0, -764(s0)
	sw t0, 0(t1)
	j .LibroBB1_179
.LibroBB1_179: 
	j .LibroBB1_180
.LibroBB1_180: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_181
.LibroBB1_181: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -772(s0)
	lw t0, -772(s0)
	sw t0, 0(t1)
	j .LibroBB1_182
.LibroBB1_182: 
	j .LibroBB1_183
.LibroBB1_183: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_184
.LibroBB1_184: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -780(s0)
	lw t0, -780(s0)
	sw t0, 0(t1)
	j .LibroBB1_185
.LibroBB1_185: 
	j .LibroBB1_186
.LibroBB1_186: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_187
.LibroBB1_187: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -788(s0)
	lw t0, -788(s0)
	sw t0, 0(t1)
	j .LibroBB1_188
.LibroBB1_188: 
	j .LibroBB1_189
.LibroBB1_189: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_190
.LibroBB1_190: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -796(s0)
	lw t0, -796(s0)
	sw t0, 0(t1)
	j .LibroBB1_191
.LibroBB1_191: 
	j .LibroBB1_192
.LibroBB1_192: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_193
.LibroBB1_193: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -804(s0)
	lw t0, -804(s0)
	sw t0, 0(t1)
	j .LibroBB1_194
.LibroBB1_194: 
	j .LibroBB1_195
.LibroBB1_195: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_196
.LibroBB1_196: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -812(s0)
	lw t0, -812(s0)
	sw t0, 0(t1)
	j .LibroBB1_197
.LibroBB1_197: 
	j .LibroBB1_198
.LibroBB1_198: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_199
.LibroBB1_199: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -820(s0)
	lw t0, -820(s0)
	sw t0, 0(t1)
	j .LibroBB1_200
.LibroBB1_200: 
	j .LibroBB1_201
.LibroBB1_201: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_202
.LibroBB1_202: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -828(s0)
	lw t0, -828(s0)
	sw t0, 0(t1)
	j .LibroBB1_203
.LibroBB1_203: 
	j .LibroBB1_204
.LibroBB1_204: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_205
.LibroBB1_205: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -836(s0)
	lw t0, -836(s0)
	sw t0, 0(t1)
	j .LibroBB1_206
.LibroBB1_206: 
	j .LibroBB1_207
.LibroBB1_207: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_208
.LibroBB1_208: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -844(s0)
	lw t0, -844(s0)
	sw t0, 0(t1)
	j .LibroBB1_209
.LibroBB1_209: 
	j .LibroBB1_210
.LibroBB1_210: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_211
.LibroBB1_211: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -852(s0)
	lw t0, -852(s0)
	sw t0, 0(t1)
	j .LibroBB1_212
.LibroBB1_212: 
	j .LibroBB1_213
.LibroBB1_213: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_214
.LibroBB1_214: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -860(s0)
	lw t0, -860(s0)
	sw t0, 0(t1)
	j .LibroBB1_215
.LibroBB1_215: 
	j .LibroBB1_216
.LibroBB1_216: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_217
.LibroBB1_217: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -868(s0)
	lw t0, -868(s0)
	sw t0, 0(t1)
	j .LibroBB1_218
.LibroBB1_218: 
	j .LibroBB1_219
.LibroBB1_219: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_220
.LibroBB1_220: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -876(s0)
	lw t0, -876(s0)
	sw t0, 0(t1)
	j .LibroBB1_221
.LibroBB1_221: 
	j .LibroBB1_222
.LibroBB1_222: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_223
.LibroBB1_223: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -884(s0)
	lw t0, -884(s0)
	sw t0, 0(t1)
	j .LibroBB1_224
.LibroBB1_224: 
	j .LibroBB1_225
.LibroBB1_225: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_226
.LibroBB1_226: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -892(s0)
	lw t0, -892(s0)
	sw t0, 0(t1)
	j .LibroBB1_227
.LibroBB1_227: 
	j .LibroBB1_228
.LibroBB1_228: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_229
.LibroBB1_229: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -900(s0)
	lw t0, -900(s0)
	sw t0, 0(t1)
	j .LibroBB1_230
.LibroBB1_230: 
	j .LibroBB1_231
.LibroBB1_231: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_232
.LibroBB1_232: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -908(s0)
	lw t0, -908(s0)
	sw t0, 0(t1)
	j .LibroBB1_233
.LibroBB1_233: 
	j .LibroBB1_234
.LibroBB1_234: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_235
.LibroBB1_235: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -916(s0)
	lw t0, -916(s0)
	sw t0, 0(t1)
	j .LibroBB1_236
.LibroBB1_236: 
	j .LibroBB1_237
.LibroBB1_237: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_238
.LibroBB1_238: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -924(s0)
	lw t0, -924(s0)
	sw t0, 0(t1)
	j .LibroBB1_239
.LibroBB1_239: 
	j .LibroBB1_240
.LibroBB1_240: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_241
.LibroBB1_241: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -932(s0)
	lw t0, -932(s0)
	sw t0, 0(t1)
	j .LibroBB1_242
.LibroBB1_242: 
	j .LibroBB1_243
.LibroBB1_243: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_244
.LibroBB1_244: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -940(s0)
	lw t0, -940(s0)
	sw t0, 0(t1)
	j .LibroBB1_245
.LibroBB1_245: 
	j .LibroBB1_246
.LibroBB1_246: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_247
.LibroBB1_247: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -948(s0)
	lw t0, -948(s0)
	sw t0, 0(t1)
	j .LibroBB1_248
.LibroBB1_248: 
	j .LibroBB1_249
.LibroBB1_249: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_250
.LibroBB1_250: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -956(s0)
	lw t0, -956(s0)
	sw t0, 0(t1)
	j .LibroBB1_251
.LibroBB1_251: 
	j .LibroBB1_252
.LibroBB1_252: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_253
.LibroBB1_253: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -964(s0)
	lw t0, -964(s0)
	sw t0, 0(t1)
	j .LibroBB1_254
.LibroBB1_254: 
	j .LibroBB1_255
.LibroBB1_255: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_256
.LibroBB1_256: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -972(s0)
	lw t0, -972(s0)
	sw t0, 0(t1)
	j .LibroBB1_257
.LibroBB1_257: 
	j .LibroBB1_258
.LibroBB1_258: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_259
.LibroBB1_259: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -980(s0)
	lw t0, -980(s0)
	sw t0, 0(t1)
	j .LibroBB1_260
.LibroBB1_260: 
	j .LibroBB1_261
.LibroBB1_261: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_262
.LibroBB1_262: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -988(s0)
	lw t0, -988(s0)
	sw t0, 0(t1)
	j .LibroBB1_263
.LibroBB1_263: 
	j .LibroBB1_264
.LibroBB1_264: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_265
.LibroBB1_265: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -996(s0)
	lw t0, -996(s0)
	sw t0, 0(t1)
	j .LibroBB1_266
.LibroBB1_266: 
	j .LibroBB1_267
.LibroBB1_267: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_268
.LibroBB1_268: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1004(s0)
	lw t0, -1004(s0)
	sw t0, 0(t1)
	j .LibroBB1_269
.LibroBB1_269: 
	j .LibroBB1_270
.LibroBB1_270: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_271
.LibroBB1_271: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1012(s0)
	lw t0, -1012(s0)
	sw t0, 0(t1)
	j .LibroBB1_272
.LibroBB1_272: 
	j .LibroBB1_273
.LibroBB1_273: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_274
.LibroBB1_274: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1020(s0)
	lw t0, -1020(s0)
	sw t0, 0(t1)
	j .LibroBB1_275
.LibroBB1_275: 
	j .LibroBB1_276
.LibroBB1_276: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_277
.LibroBB1_277: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1028(s0)
	lw t0, -1028(s0)
	sw t0, 0(t1)
	j .LibroBB1_278
.LibroBB1_278: 
	j .LibroBB1_279
.LibroBB1_279: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_280
.LibroBB1_280: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1036(s0)
	lw t0, -1036(s0)
	sw t0, 0(t1)
	j .LibroBB1_281
.LibroBB1_281: 
	j .LibroBB1_282
.LibroBB1_282: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_283
.LibroBB1_283: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -60(s0)
	lw t0, -60(s0)
	sw t0, 0(t1)
	j .LibroBB1_284
.LibroBB1_284: 
	j .LibroBB1_285
.LibroBB1_285: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_286
.LibroBB1_286: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -68(s0)
	lw t0, -68(s0)
	sw t0, 0(t1)
	j .LibroBB1_287
.LibroBB1_287: 
	j .LibroBB1_288
.LibroBB1_288: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_289
.LibroBB1_289: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -76(s0)
	lw t0, -76(s0)
	sw t0, 0(t1)
	j .LibroBB1_290
.LibroBB1_290: 
	j .LibroBB1_291
.LibroBB1_291: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_292
.LibroBB1_292: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -84(s0)
	lw t0, -84(s0)
	sw t0, 0(t1)
	j .LibroBB1_293
.LibroBB1_293: 
	j .LibroBB1_294
.LibroBB1_294: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_295
.LibroBB1_295: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -92(s0)
	lw t0, -92(s0)
	sw t0, 0(t1)
	j .LibroBB1_296
.LibroBB1_296: 
	j .LibroBB1_297
.LibroBB1_297: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_298
.LibroBB1_298: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -100(s0)
	lw t0, -100(s0)
	sw t0, 0(t1)
	j .LibroBB1_299
.LibroBB1_299: 
	j .LibroBB1_300
.LibroBB1_300: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_301
.LibroBB1_301: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -108(s0)
	lw t0, -108(s0)
	sw t0, 0(t1)
	j .LibroBB1_302
.LibroBB1_302: 
	j .LibroBB1_303
.LibroBB1_303: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_304
.LibroBB1_304: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -116(s0)
	lw t0, -116(s0)
	sw t0, 0(t1)
	j .LibroBB1_305
.LibroBB1_305: 
	j .LibroBB1_306
.LibroBB1_306: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_307
.LibroBB1_307: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -124(s0)
	lw t0, -124(s0)
	sw t0, 0(t1)
	j .LibroBB1_308
.LibroBB1_308: 
	j .LibroBB1_309
.LibroBB1_309: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_310
.LibroBB1_310: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -136(s0)
	lw t0, -136(s0)
	sw t0, 0(t1)
	j .LibroBB1_311
.LibroBB1_311: 
	j .LibroBB1_312
.LibroBB1_312: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_313
.LibroBB1_313: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -148(s0)
	lw t0, -148(s0)
	sw t0, 0(t1)
	j .LibroBB1_314
.LibroBB1_314: 
	j .LibroBB1_315
.LibroBB1_315: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_316
.LibroBB1_316: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -160(s0)
	lw t0, -160(s0)
	sw t0, 0(t1)
	j .LibroBB1_317
.LibroBB1_317: 
	j .LibroBB1_318
.LibroBB1_318: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_319
.LibroBB1_319: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -172(s0)
	lw t0, -172(s0)
	sw t0, 0(t1)
	j .LibroBB1_320
.LibroBB1_320: 
	j .LibroBB1_321
.LibroBB1_321: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_322
.LibroBB1_322: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -184(s0)
	lw t0, -184(s0)
	sw t0, 0(t1)
	j .LibroBB1_323
.LibroBB1_323: 
	j .LibroBB1_324
.LibroBB1_324: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_325
.LibroBB1_325: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -196(s0)
	lw t0, -196(s0)
	sw t0, 0(t1)
	j .LibroBB1_326
.LibroBB1_326: 
	j .LibroBB1_327
.LibroBB1_327: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_328
.LibroBB1_328: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -208(s0)
	lw t0, -208(s0)
	sw t0, 0(t1)
	j .LibroBB1_329
.LibroBB1_329: 
	j .LibroBB1_330
.LibroBB1_330: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_331
.LibroBB1_331: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -220(s0)
	lw t0, -220(s0)
	sw t0, 0(t1)
	j .LibroBB1_332
.LibroBB1_332: 
	j .LibroBB1_333
.LibroBB1_333: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_334
.LibroBB1_334: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -232(s0)
	lw t0, -232(s0)
	sw t0, 0(t1)
	j .LibroBB1_335
.LibroBB1_335: 
	j .LibroBB1_336
.LibroBB1_336: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_337
.LibroBB1_337: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -244(s0)
	lw t0, -244(s0)
	sw t0, 0(t1)
	j .LibroBB1_338
.LibroBB1_338: 
	j .LibroBB1_339
.LibroBB1_339: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_340
.LibroBB1_340: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -256(s0)
	lw t0, -256(s0)
	sw t0, 0(t1)
	j .LibroBB1_341
.LibroBB1_341: 
	j .LibroBB1_342
.LibroBB1_342: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_343
.LibroBB1_343: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -268(s0)
	lw t0, -268(s0)
	sw t0, 0(t1)
	j .LibroBB1_344
.LibroBB1_344: 
	j .LibroBB1_345
.LibroBB1_345: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_346
.LibroBB1_346: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -280(s0)
	lw t0, -280(s0)
	sw t0, 0(t1)
	j .LibroBB1_347
.LibroBB1_347: 
	j .LibroBB1_348
.LibroBB1_348: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_349
.LibroBB1_349: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -292(s0)
	lw t0, -292(s0)
	sw t0, 0(t1)
	j .LibroBB1_350
.LibroBB1_350: 
	j .LibroBB1_351
.LibroBB1_351: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_352
.LibroBB1_352: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -304(s0)
	lw t0, -304(s0)
	sw t0, 0(t1)
	j .LibroBB1_353
.LibroBB1_353: 
	j .LibroBB1_354
.LibroBB1_354: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_355
.LibroBB1_355: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -316(s0)
	lw t0, -316(s0)
	sw t0, 0(t1)
	j .LibroBB1_356
.LibroBB1_356: 
	j .LibroBB1_357
.LibroBB1_357: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_358
.LibroBB1_358: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -328(s0)
	lw t0, -328(s0)
	sw t0, 0(t1)
	j .LibroBB1_359
.LibroBB1_359: 
	j .LibroBB1_360
.LibroBB1_360: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_361
.LibroBB1_361: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -340(s0)
	lw t0, -340(s0)
	sw t0, 0(t1)
	j .LibroBB1_362
.LibroBB1_362: 
	j .LibroBB1_363
.LibroBB1_363: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_364
.LibroBB1_364: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -352(s0)
	lw t0, -352(s0)
	sw t0, 0(t1)
	j .LibroBB1_365
.LibroBB1_365: 
	j .LibroBB1_366
.LibroBB1_366: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_367
.LibroBB1_367: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -364(s0)
	lw t0, -364(s0)
	sw t0, 0(t1)
	j .LibroBB1_368
.LibroBB1_368: 
	j .LibroBB1_369
.LibroBB1_369: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_370
.LibroBB1_370: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -376(s0)
	lw t0, -376(s0)
	sw t0, 0(t1)
	j .LibroBB1_371
.LibroBB1_371: 
	j .LibroBB1_372
.LibroBB1_372: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_373
.LibroBB1_373: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -388(s0)
	lw t0, -388(s0)
	sw t0, 0(t1)
	j .LibroBB1_374
.LibroBB1_374: 
	j .LibroBB1_375
.LibroBB1_375: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_376
.LibroBB1_376: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -400(s0)
	lw t0, -400(s0)
	sw t0, 0(t1)
	j .LibroBB1_377
.LibroBB1_377: 
	j .LibroBB1_378
.LibroBB1_378: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_379
.LibroBB1_379: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -412(s0)
	lw t0, -412(s0)
	sw t0, 0(t1)
	j .LibroBB1_380
.LibroBB1_380: 
	j .LibroBB1_381
.LibroBB1_381: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_382
.LibroBB1_382: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -424(s0)
	lw t0, -424(s0)
	sw t0, 0(t1)
	j .LibroBB1_383
.LibroBB1_383: 
	j .LibroBB1_384
.LibroBB1_384: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_385
.LibroBB1_385: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -436(s0)
	lw t0, -436(s0)
	sw t0, 0(t1)
	j .LibroBB1_386
.LibroBB1_386: 
	j .LibroBB1_387
.LibroBB1_387: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_388
.LibroBB1_388: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -448(s0)
	lw t0, -448(s0)
	sw t0, 0(t1)
	j .LibroBB1_389
.LibroBB1_389: 
	j .LibroBB1_390
.LibroBB1_390: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_391
.LibroBB1_391: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -460(s0)
	lw t0, -460(s0)
	sw t0, 0(t1)
	j .LibroBB1_392
.LibroBB1_392: 
	j .LibroBB1_393
.LibroBB1_393: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_394
.LibroBB1_394: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -472(s0)
	lw t0, -472(s0)
	sw t0, 0(t1)
	j .LibroBB1_395
.LibroBB1_395: 
	j .LibroBB1_396
.LibroBB1_396: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_397
.LibroBB1_397: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -484(s0)
	lw t0, -484(s0)
	sw t0, 0(t1)
	j .LibroBB1_398
.LibroBB1_398: 
	j .LibroBB1_399
.LibroBB1_399: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_400
.LibroBB1_400: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -496(s0)
	lw t0, -496(s0)
	sw t0, 0(t1)
	j .LibroBB1_401
.LibroBB1_401: 
	j .LibroBB1_402
.LibroBB1_402: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_403
.LibroBB1_403: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -508(s0)
	lw t0, -508(s0)
	sw t0, 0(t1)
	j .LibroBB1_404
.LibroBB1_404: 
	j .LibroBB1_405
.LibroBB1_405: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_406
.LibroBB1_406: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -520(s0)
	lw t0, -520(s0)
	sw t0, 0(t1)
	j .LibroBB1_407
.LibroBB1_407: 
	j .LibroBB1_408
.LibroBB1_408: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_409
.LibroBB1_409: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -532(s0)
	lw t0, -532(s0)
	sw t0, 0(t1)
	j .LibroBB1_410
.LibroBB1_410: 
	j .LibroBB1_411
.LibroBB1_411: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_412
.LibroBB1_412: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -544(s0)
	lw t0, -544(s0)
	sw t0, 0(t1)
	j .LibroBB1_413
.LibroBB1_413: 
	j .LibroBB1_414
.LibroBB1_414: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_415
.LibroBB1_415: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -556(s0)
	lw t0, -556(s0)
	sw t0, 0(t1)
	j .LibroBB1_416
.LibroBB1_416: 
	j .LibroBB1_417
.LibroBB1_417: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_418
.LibroBB1_418: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -568(s0)
	lw t0, -568(s0)
	sw t0, 0(t1)
	j .LibroBB1_419
.LibroBB1_419: 
	j .LibroBB1_420
.LibroBB1_420: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_421
.LibroBB1_421: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -580(s0)
	lw t0, -580(s0)
	sw t0, 0(t1)
	j .LibroBB1_422
.LibroBB1_422: 
	j .LibroBB1_423
.LibroBB1_423: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_424
.LibroBB1_424: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -592(s0)
	lw t0, -592(s0)
	sw t0, 0(t1)
	j .LibroBB1_425
.LibroBB1_425: 
	j .LibroBB1_426
.LibroBB1_426: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_427
.LibroBB1_427: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -604(s0)
	lw t0, -604(s0)
	sw t0, 0(t1)
	j .LibroBB1_428
.LibroBB1_428: 
	j .LibroBB1_429
.LibroBB1_429: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_430
.LibroBB1_430: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -616(s0)
	lw t0, -616(s0)
	sw t0, 0(t1)
	j .LibroBB1_431
.LibroBB1_431: 
	j .LibroBB1_432
.LibroBB1_432: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_433
.LibroBB1_433: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -624(s0)
	lw t0, -624(s0)
	sw t0, 0(t1)
	j .LibroBB1_434
.LibroBB1_434: 
	j .LibroBB1_435
.LibroBB1_435: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_436
.LibroBB1_436: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -632(s0)
	lw t0, -632(s0)
	sw t0, 0(t1)
	j .LibroBB1_437
.LibroBB1_437: 
	j .LibroBB1_438
.LibroBB1_438: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_439
.LibroBB1_439: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -640(s0)
	lw t0, -640(s0)
	sw t0, 0(t1)
	j .LibroBB1_440
.LibroBB1_440: 
	j .LibroBB1_441
.LibroBB1_441: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_442
.LibroBB1_442: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -648(s0)
	lw t0, -648(s0)
	sw t0, 0(t1)
	j .LibroBB1_443
.LibroBB1_443: 
	j .LibroBB1_444
.LibroBB1_444: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_445
.LibroBB1_445: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -656(s0)
	lw t0, -656(s0)
	sw t0, 0(t1)
	j .LibroBB1_446
.LibroBB1_446: 
	j .LibroBB1_447
.LibroBB1_447: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_448
.LibroBB1_448: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -664(s0)
	lw t0, -664(s0)
	sw t0, 0(t1)
	j .LibroBB1_449
.LibroBB1_449: 
	j .LibroBB1_450
.LibroBB1_450: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_451
.LibroBB1_451: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -672(s0)
	lw t0, -672(s0)
	sw t0, 0(t1)
	j .LibroBB1_452
.LibroBB1_452: 
	j .LibroBB1_453
.LibroBB1_453: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_454
.LibroBB1_454: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -680(s0)
	lw t0, -680(s0)
	sw t0, 0(t1)
	j .LibroBB1_455
.LibroBB1_455: 
	j .LibroBB1_456
.LibroBB1_456: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_457
.LibroBB1_457: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -688(s0)
	lw t0, -688(s0)
	sw t0, 0(t1)
	j .LibroBB1_458
.LibroBB1_458: 
	j .LibroBB1_459
.LibroBB1_459: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_460
.LibroBB1_460: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -696(s0)
	lw t0, -696(s0)
	sw t0, 0(t1)
	j .LibroBB1_461
.LibroBB1_461: 
	j .LibroBB1_462
.LibroBB1_462: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_463
.LibroBB1_463: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -704(s0)
	lw t0, -704(s0)
	sw t0, 0(t1)
	j .LibroBB1_464
.LibroBB1_464: 
	j .LibroBB1_465
.LibroBB1_465: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_466
.LibroBB1_466: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -712(s0)
	lw t0, -712(s0)
	sw t0, 0(t1)
	j .LibroBB1_467
.LibroBB1_467: 
	j .LibroBB1_468
.LibroBB1_468: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_469
.LibroBB1_469: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -720(s0)
	lw t0, -720(s0)
	sw t0, 0(t1)
	j .LibroBB1_470
.LibroBB1_470: 
	j .LibroBB1_471
.LibroBB1_471: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_472
.LibroBB1_472: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -728(s0)
	lw t0, -728(s0)
	sw t0, 0(t1)
	j .LibroBB1_473
.LibroBB1_473: 
	j .LibroBB1_474
.LibroBB1_474: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_475
.LibroBB1_475: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -736(s0)
	lw t0, -736(s0)
	sw t0, 0(t1)
	j .LibroBB1_476
.LibroBB1_476: 
	j .LibroBB1_477
.LibroBB1_477: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_478
.LibroBB1_478: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -744(s0)
	lw t0, -744(s0)
	sw t0, 0(t1)
	j .LibroBB1_479
.LibroBB1_479: 
	j .LibroBB1_480
.LibroBB1_480: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_481
.LibroBB1_481: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -752(s0)
	lw t0, -752(s0)
	sw t0, 0(t1)
	j .LibroBB1_482
.LibroBB1_482: 
	j .LibroBB1_483
.LibroBB1_483: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_484
.LibroBB1_484: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -760(s0)
	lw t0, -760(s0)
	sw t0, 0(t1)
	j .LibroBB1_485
.LibroBB1_485: 
	j .LibroBB1_486
.LibroBB1_486: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_487
.LibroBB1_487: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -768(s0)
	lw t0, -768(s0)
	sw t0, 0(t1)
	j .LibroBB1_488
.LibroBB1_488: 
	j .LibroBB1_489
.LibroBB1_489: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_490
.LibroBB1_490: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -776(s0)
	lw t0, -776(s0)
	sw t0, 0(t1)
	j .LibroBB1_491
.LibroBB1_491: 
	j .LibroBB1_492
.LibroBB1_492: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_493
.LibroBB1_493: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -784(s0)
	lw t0, -784(s0)
	sw t0, 0(t1)
	j .LibroBB1_494
.LibroBB1_494: 
	j .LibroBB1_495
.LibroBB1_495: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_496
.LibroBB1_496: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -792(s0)
	lw t0, -792(s0)
	sw t0, 0(t1)
	j .LibroBB1_497
.LibroBB1_497: 
	j .LibroBB1_498
.LibroBB1_498: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_499
.LibroBB1_499: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -800(s0)
	lw t0, -800(s0)
	sw t0, 0(t1)
	j .LibroBB1_500
.LibroBB1_500: 
	j .LibroBB1_501
.LibroBB1_501: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_502
.LibroBB1_502: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -808(s0)
	lw t0, -808(s0)
	sw t0, 0(t1)
	j .LibroBB1_503
.LibroBB1_503: 
	j .LibroBB1_504
.LibroBB1_504: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_505
.LibroBB1_505: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -816(s0)
	lw t0, -816(s0)
	sw t0, 0(t1)
	j .LibroBB1_506
.LibroBB1_506: 
	j .LibroBB1_507
.LibroBB1_507: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_508
.LibroBB1_508: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -824(s0)
	lw t0, -824(s0)
	sw t0, 0(t1)
	j .LibroBB1_509
.LibroBB1_509: 
	j .LibroBB1_510
.LibroBB1_510: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_511
.LibroBB1_511: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -832(s0)
	lw t0, -832(s0)
	sw t0, 0(t1)
	j .LibroBB1_512
.LibroBB1_512: 
	j .LibroBB1_513
.LibroBB1_513: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_514
.LibroBB1_514: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -840(s0)
	lw t0, -840(s0)
	sw t0, 0(t1)
	j .LibroBB1_515
.LibroBB1_515: 
	j .LibroBB1_516
.LibroBB1_516: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_517
.LibroBB1_517: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -848(s0)
	lw t0, -848(s0)
	sw t0, 0(t1)
	j .LibroBB1_518
.LibroBB1_518: 
	j .LibroBB1_519
.LibroBB1_519: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_520
.LibroBB1_520: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -856(s0)
	lw t0, -856(s0)
	sw t0, 0(t1)
	j .LibroBB1_521
.LibroBB1_521: 
	j .LibroBB1_522
.LibroBB1_522: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_523
.LibroBB1_523: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -864(s0)
	lw t0, -864(s0)
	sw t0, 0(t1)
	j .LibroBB1_524
.LibroBB1_524: 
	j .LibroBB1_525
.LibroBB1_525: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_526
.LibroBB1_526: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -872(s0)
	lw t0, -872(s0)
	sw t0, 0(t1)
	j .LibroBB1_527
.LibroBB1_527: 
	j .LibroBB1_528
.LibroBB1_528: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_529
.LibroBB1_529: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -880(s0)
	lw t0, -880(s0)
	sw t0, 0(t1)
	j .LibroBB1_530
.LibroBB1_530: 
	j .LibroBB1_531
.LibroBB1_531: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_532
.LibroBB1_532: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -888(s0)
	lw t0, -888(s0)
	sw t0, 0(t1)
	j .LibroBB1_533
.LibroBB1_533: 
	j .LibroBB1_534
.LibroBB1_534: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_535
.LibroBB1_535: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -896(s0)
	lw t0, -896(s0)
	sw t0, 0(t1)
	j .LibroBB1_536
.LibroBB1_536: 
	j .LibroBB1_537
.LibroBB1_537: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_538
.LibroBB1_538: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -904(s0)
	lw t0, -904(s0)
	sw t0, 0(t1)
	j .LibroBB1_539
.LibroBB1_539: 
	j .LibroBB1_540
.LibroBB1_540: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_541
.LibroBB1_541: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -912(s0)
	lw t0, -912(s0)
	sw t0, 0(t1)
	j .LibroBB1_542
.LibroBB1_542: 
	j .LibroBB1_543
.LibroBB1_543: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_544
.LibroBB1_544: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -920(s0)
	lw t0, -920(s0)
	sw t0, 0(t1)
	j .LibroBB1_545
.LibroBB1_545: 
	j .LibroBB1_546
.LibroBB1_546: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_547
.LibroBB1_547: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -928(s0)
	lw t0, -928(s0)
	sw t0, 0(t1)
	j .LibroBB1_548
.LibroBB1_548: 
	j .LibroBB1_549
.LibroBB1_549: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_550
.LibroBB1_550: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -936(s0)
	lw t0, -936(s0)
	sw t0, 0(t1)
	j .LibroBB1_551
.LibroBB1_551: 
	j .LibroBB1_552
.LibroBB1_552: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_553
.LibroBB1_553: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -944(s0)
	lw t0, -944(s0)
	sw t0, 0(t1)
	j .LibroBB1_554
.LibroBB1_554: 
	j .LibroBB1_555
.LibroBB1_555: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_556
.LibroBB1_556: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -952(s0)
	lw t0, -952(s0)
	sw t0, 0(t1)
	j .LibroBB1_557
.LibroBB1_557: 
	j .LibroBB1_558
.LibroBB1_558: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_559
.LibroBB1_559: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -960(s0)
	lw t0, -960(s0)
	sw t0, 0(t1)
	j .LibroBB1_560
.LibroBB1_560: 
	j .LibroBB1_561
.LibroBB1_561: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_562
.LibroBB1_562: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -968(s0)
	lw t0, -968(s0)
	sw t0, 0(t1)
	j .LibroBB1_563
.LibroBB1_563: 
	j .LibroBB1_564
.LibroBB1_564: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_565
.LibroBB1_565: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -976(s0)
	lw t0, -976(s0)
	sw t0, 0(t1)
	j .LibroBB1_566
.LibroBB1_566: 
	j .LibroBB1_567
.LibroBB1_567: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_568
.LibroBB1_568: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -984(s0)
	lw t0, -984(s0)
	sw t0, 0(t1)
	j .LibroBB1_569
.LibroBB1_569: 
	j .LibroBB1_570
.LibroBB1_570: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_571
.LibroBB1_571: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -992(s0)
	lw t0, -992(s0)
	sw t0, 0(t1)
	j .LibroBB1_572
.LibroBB1_572: 
	j .LibroBB1_573
.LibroBB1_573: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_574
.LibroBB1_574: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1000(s0)
	lw t0, -1000(s0)
	sw t0, 0(t1)
	j .LibroBB1_575
.LibroBB1_575: 
	j .LibroBB1_576
.LibroBB1_576: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_577
.LibroBB1_577: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1008(s0)
	lw t0, -1008(s0)
	sw t0, 0(t1)
	j .LibroBB1_578
.LibroBB1_578: 
	j .LibroBB1_579
.LibroBB1_579: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_580
.LibroBB1_580: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1016(s0)
	lw t0, -1016(s0)
	sw t0, 0(t1)
	j .LibroBB1_581
.LibroBB1_581: 
	j .LibroBB1_582
.LibroBB1_582: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_583
.LibroBB1_583: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1024(s0)
	lw t0, -1024(s0)
	sw t0, 0(t1)
	j .LibroBB1_584
.LibroBB1_584: 
	j .LibroBB1_585
.LibroBB1_585: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_586
.LibroBB1_586: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -1032(s0)
	lw t0, -1032(s0)
	sw t0, 0(t1)
	j .LibroBB1_587
.LibroBB1_587: 
	j .LibroBB1_588
.LibroBB1_588: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_589
.LibroBB1_589: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -56(s0)
	lw t0, -56(s0)
	sw t0, 0(t1)
	j .LibroBB1_590
.LibroBB1_590: 
	j .LibroBB1_591
.LibroBB1_591: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_592
.LibroBB1_592: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -64(s0)
	lw t0, -64(s0)
	sw t0, 0(t1)
	j .LibroBB1_593
.LibroBB1_593: 
	j .LibroBB1_594
.LibroBB1_594: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_595
.LibroBB1_595: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -72(s0)
	lw t0, -72(s0)
	sw t0, 0(t1)
	j .LibroBB1_596
.LibroBB1_596: 
	j .LibroBB1_597
.LibroBB1_597: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_598
.LibroBB1_598: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -80(s0)
	lw t0, -80(s0)
	sw t0, 0(t1)
	j .LibroBB1_599
.LibroBB1_599: 
	j .LibroBB1_600
.LibroBB1_600: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_601
.LibroBB1_601: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -88(s0)
	lw t0, -88(s0)
	sw t0, 0(t1)
	j .LibroBB1_602
.LibroBB1_602: 
	j .LibroBB1_603
.LibroBB1_603: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_604
.LibroBB1_604: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -96(s0)
	lw t0, -96(s0)
	sw t0, 0(t1)
	j .LibroBB1_605
.LibroBB1_605: 
	j .LibroBB1_606
.LibroBB1_606: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_607
.LibroBB1_607: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -104(s0)
	lw t0, -104(s0)
	sw t0, 0(t1)
	j .LibroBB1_608
.LibroBB1_608: 
	j .LibroBB1_609
.LibroBB1_609: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_610
.LibroBB1_610: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -112(s0)
	lw t0, -112(s0)
	sw t0, 0(t1)
	j .LibroBB1_611
.LibroBB1_611: 
	j .LibroBB1_612
.LibroBB1_612: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_613
.LibroBB1_613: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -120(s0)
	lw t0, -120(s0)
	sw t0, 0(t1)
	j .LibroBB1_614
.LibroBB1_614: 
	j .LibroBB1_615
.LibroBB1_615: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_616
.LibroBB1_616: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -132(s0)
	lw t0, -132(s0)
	sw t0, 0(t1)
	j .LibroBB1_617
.LibroBB1_617: 
	j .LibroBB1_618
.LibroBB1_618: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_619
.LibroBB1_619: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -144(s0)
	lw t0, -144(s0)
	sw t0, 0(t1)
	j .LibroBB1_620
.LibroBB1_620: 
	j .LibroBB1_621
.LibroBB1_621: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_622
.LibroBB1_622: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -156(s0)
	lw t0, -156(s0)
	sw t0, 0(t1)
	j .LibroBB1_623
.LibroBB1_623: 
	j .LibroBB1_624
.LibroBB1_624: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_625
.LibroBB1_625: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -168(s0)
	lw t0, -168(s0)
	sw t0, 0(t1)
	j .LibroBB1_626
.LibroBB1_626: 
	j .LibroBB1_627
.LibroBB1_627: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_628
.LibroBB1_628: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -180(s0)
	lw t0, -180(s0)
	sw t0, 0(t1)
	j .LibroBB1_629
.LibroBB1_629: 
	j .LibroBB1_630
.LibroBB1_630: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_631
.LibroBB1_631: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -192(s0)
	lw t0, -192(s0)
	sw t0, 0(t1)
	j .LibroBB1_632
.LibroBB1_632: 
	j .LibroBB1_633
.LibroBB1_633: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_634
.LibroBB1_634: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -204(s0)
	lw t0, -204(s0)
	sw t0, 0(t1)
	j .LibroBB1_635
.LibroBB1_635: 
	j .LibroBB1_636
.LibroBB1_636: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_637
.LibroBB1_637: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -216(s0)
	lw t0, -216(s0)
	sw t0, 0(t1)
	j .LibroBB1_638
.LibroBB1_638: 
	j .LibroBB1_639
.LibroBB1_639: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_640
.LibroBB1_640: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -228(s0)
	lw t0, -228(s0)
	sw t0, 0(t1)
	j .LibroBB1_641
.LibroBB1_641: 
	j .LibroBB1_642
.LibroBB1_642: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_643
.LibroBB1_643: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -240(s0)
	lw t0, -240(s0)
	sw t0, 0(t1)
	j .LibroBB1_644
.LibroBB1_644: 
	j .LibroBB1_645
.LibroBB1_645: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_646
.LibroBB1_646: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -252(s0)
	lw t0, -252(s0)
	sw t0, 0(t1)
	j .LibroBB1_647
.LibroBB1_647: 
	j .LibroBB1_648
.LibroBB1_648: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_649
.LibroBB1_649: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -264(s0)
	lw t0, -264(s0)
	sw t0, 0(t1)
	j .LibroBB1_650
.LibroBB1_650: 
	j .LibroBB1_651
.LibroBB1_651: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_652
.LibroBB1_652: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -276(s0)
	lw t0, -276(s0)
	sw t0, 0(t1)
	j .LibroBB1_653
.LibroBB1_653: 
	j .LibroBB1_654
.LibroBB1_654: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_655
.LibroBB1_655: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -288(s0)
	lw t0, -288(s0)
	sw t0, 0(t1)
	j .LibroBB1_656
.LibroBB1_656: 
	j .LibroBB1_657
.LibroBB1_657: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_658
.LibroBB1_658: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -300(s0)
	lw t0, -300(s0)
	sw t0, 0(t1)
	j .LibroBB1_659
.LibroBB1_659: 
	j .LibroBB1_660
.LibroBB1_660: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_661
.LibroBB1_661: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -312(s0)
	lw t0, -312(s0)
	sw t0, 0(t1)
	j .LibroBB1_662
.LibroBB1_662: 
	j .LibroBB1_663
.LibroBB1_663: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_664
.LibroBB1_664: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -324(s0)
	lw t0, -324(s0)
	sw t0, 0(t1)
	j .LibroBB1_665
.LibroBB1_665: 
	j .LibroBB1_666
.LibroBB1_666: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_667
.LibroBB1_667: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -336(s0)
	lw t0, -336(s0)
	sw t0, 0(t1)
	j .LibroBB1_668
.LibroBB1_668: 
	j .LibroBB1_669
.LibroBB1_669: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_670
.LibroBB1_670: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -348(s0)
	lw t0, -348(s0)
	sw t0, 0(t1)
	j .LibroBB1_671
.LibroBB1_671: 
	j .LibroBB1_672
.LibroBB1_672: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_673
.LibroBB1_673: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -360(s0)
	lw t0, -360(s0)
	sw t0, 0(t1)
	j .LibroBB1_674
.LibroBB1_674: 
	j .LibroBB1_675
.LibroBB1_675: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_676
.LibroBB1_676: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -372(s0)
	lw t0, -372(s0)
	sw t0, 0(t1)
	j .LibroBB1_677
.LibroBB1_677: 
	j .LibroBB1_678
.LibroBB1_678: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_679
.LibroBB1_679: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -384(s0)
	lw t0, -384(s0)
	sw t0, 0(t1)
	j .LibroBB1_680
.LibroBB1_680: 
	j .LibroBB1_681
.LibroBB1_681: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_682
.LibroBB1_682: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -396(s0)
	lw t0, -396(s0)
	sw t0, 0(t1)
	j .LibroBB1_683
.LibroBB1_683: 
	j .LibroBB1_684
.LibroBB1_684: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_685
.LibroBB1_685: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -408(s0)
	lw t0, -408(s0)
	sw t0, 0(t1)
	j .LibroBB1_686
.LibroBB1_686: 
	j .LibroBB1_687
.LibroBB1_687: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_688
.LibroBB1_688: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -420(s0)
	lw t0, -420(s0)
	sw t0, 0(t1)
	j .LibroBB1_689
.LibroBB1_689: 
	j .LibroBB1_690
.LibroBB1_690: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_691
.LibroBB1_691: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -432(s0)
	lw t0, -432(s0)
	sw t0, 0(t1)
	j .LibroBB1_692
.LibroBB1_692: 
	j .LibroBB1_693
.LibroBB1_693: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_694
.LibroBB1_694: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -444(s0)
	lw t0, -444(s0)
	sw t0, 0(t1)
	j .LibroBB1_695
.LibroBB1_695: 
	j .LibroBB1_696
.LibroBB1_696: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_697
.LibroBB1_697: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -456(s0)
	lw t0, -456(s0)
	sw t0, 0(t1)
	j .LibroBB1_698
.LibroBB1_698: 
	j .LibroBB1_699
.LibroBB1_699: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_700
.LibroBB1_700: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -468(s0)
	lw t0, -468(s0)
	sw t0, 0(t1)
	j .LibroBB1_701
.LibroBB1_701: 
	j .LibroBB1_702
.LibroBB1_702: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_703
.LibroBB1_703: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -480(s0)
	lw t0, -480(s0)
	sw t0, 0(t1)
	j .LibroBB1_704
.LibroBB1_704: 
	j .LibroBB1_705
.LibroBB1_705: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_706
.LibroBB1_706: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -492(s0)
	lw t0, -492(s0)
	sw t0, 0(t1)
	j .LibroBB1_707
.LibroBB1_707: 
	j .LibroBB1_708
.LibroBB1_708: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_709
.LibroBB1_709: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -504(s0)
	lw t0, -504(s0)
	sw t0, 0(t1)
	j .LibroBB1_710
.LibroBB1_710: 
	j .LibroBB1_711
.LibroBB1_711: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_712
.LibroBB1_712: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -516(s0)
	lw t0, -516(s0)
	sw t0, 0(t1)
	j .LibroBB1_713
.LibroBB1_713: 
	j .LibroBB1_714
.LibroBB1_714: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_715
.LibroBB1_715: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -528(s0)
	lw t0, -528(s0)
	sw t0, 0(t1)
	j .LibroBB1_716
.LibroBB1_716: 
	j .LibroBB1_717
.LibroBB1_717: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_718
.LibroBB1_718: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -540(s0)
	lw t0, -540(s0)
	sw t0, 0(t1)
	j .LibroBB1_719
.LibroBB1_719: 
	j .LibroBB1_720
.LibroBB1_720: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_721
.LibroBB1_721: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -552(s0)
	lw t0, -552(s0)
	sw t0, 0(t1)
	j .LibroBB1_722
.LibroBB1_722: 
	j .LibroBB1_723
.LibroBB1_723: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_724
.LibroBB1_724: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -564(s0)
	lw t0, -564(s0)
	sw t0, 0(t1)
	j .LibroBB1_725
.LibroBB1_725: 
	j .LibroBB1_726
.LibroBB1_726: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_727
.LibroBB1_727: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -576(s0)
	lw t0, -576(s0)
	sw t0, 0(t1)
	j .LibroBB1_728
.LibroBB1_728: 
	j .LibroBB1_729
.LibroBB1_729: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_730
.LibroBB1_730: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -588(s0)
	lw t0, -588(s0)
	sw t0, 0(t1)
	j .LibroBB1_731
.LibroBB1_731: 
	j .LibroBB1_732
.LibroBB1_732: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_733
.LibroBB1_733: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -600(s0)
	lw t0, -600(s0)
	sw t0, 0(t1)
	j .LibroBB1_734
.LibroBB1_734: 
	j .LibroBB1_735
.LibroBB1_735: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_736
.LibroBB1_736: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, -612(s0)
	lw t0, -612(s0)
	sw t0, 0(t1)
	j .LibroBB1_737
.LibroBB1_737: 
	j .LibroBB1_738
.LibroBB1_738: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_739
.LibroBB1_739: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s11, t0, 1
	sw s11, 0(t1)
	j .LibroBB1_740
.LibroBB1_740: 
	j .LibroBB1_741
.LibroBB1_741: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_742
.LibroBB1_742: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s10, t0, 1
	sw s10, 0(t1)
	j .LibroBB1_743
.LibroBB1_743: 
	j .LibroBB1_744
.LibroBB1_744: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_745
.LibroBB1_745: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s9, t0, 1
	sw s9, 0(t1)
	j .LibroBB1_746
.LibroBB1_746: 
	j .LibroBB1_747
.LibroBB1_747: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_748
.LibroBB1_748: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s8, t0, 1
	sw s8, 0(t1)
	j .LibroBB1_749
.LibroBB1_749: 
	j .LibroBB1_750
.LibroBB1_750: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_751
.LibroBB1_751: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s7, t0, 1
	sw s7, 0(t1)
	j .LibroBB1_752
.LibroBB1_752: 
	j .LibroBB1_753
.LibroBB1_753: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_754
.LibroBB1_754: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s6, t0, 1
	sw s6, 0(t1)
	j .LibroBB1_755
.LibroBB1_755: 
	j .LibroBB1_756
.LibroBB1_756: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_757
.LibroBB1_757: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s5, t0, 1
	sw s5, 0(t1)
	j .LibroBB1_758
.LibroBB1_758: 
	j .LibroBB1_759
.LibroBB1_759: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_760
.LibroBB1_760: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s4, t0, 1
	sw s4, 0(t1)
	j .LibroBB1_761
.LibroBB1_761: 
	j .LibroBB1_762
.LibroBB1_762: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_763
.LibroBB1_763: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s3, t0, 1
	sw s3, 0(t1)
	j .LibroBB1_764
.LibroBB1_764: 
	j .LibroBB1_765
.LibroBB1_765: 
	la t0, count
	lw t0, 0(t0)
	j .LibroBB1_766
.LibroBB1_766: 
	addi t1, t0, 4
	lw t0, 0(t1)
	addi s2, t0, 1
	sw s2, 0(t1)
	j .LibroBB1_767
.LibroBB1_767: 
	j .LibroBB1_768
.LibroBB1_768: 
	lw a0, -128(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -140(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.1
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -152(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.2
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -164(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.3
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -176(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.4
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -188(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.5
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -200(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.6
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -212(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.7
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -224(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.8
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -236(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.9
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -248(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.10
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -260(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.11
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -272(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.12
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -284(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.13
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -296(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.14
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -308(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.15
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -320(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.16
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -332(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.17
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -344(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.18
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -356(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.19
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -368(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.20
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -380(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.21
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -392(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.22
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -404(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.23
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -416(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.24
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -428(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.25
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -440(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.26
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -452(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.27
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -464(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.28
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -476(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.29
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -488(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.30
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -500(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.31
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -512(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.32
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -524(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.33
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -536(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.34
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -548(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.35
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -560(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.36
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -572(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.37
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -584(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.38
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -596(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.39
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -608(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.40
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -620(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.41
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -628(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.42
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -636(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.43
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -644(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.44
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -652(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.45
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -660(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.46
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -668(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.47
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -676(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.48
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -684(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.49
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -692(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.50
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -700(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.51
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -708(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.52
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -716(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.53
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -724(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.54
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -732(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.55
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -740(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.56
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -748(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.57
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -756(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.58
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -764(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.59
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -772(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.60
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -780(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.61
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -788(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.62
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -796(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.63
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -804(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.64
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -812(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.65
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -820(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.66
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -828(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.67
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -836(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.68
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -844(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.69
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -852(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.70
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -860(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.71
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -868(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.72
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -876(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.73
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -884(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.74
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -892(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.75
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -900(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.76
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -908(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.77
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -916(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.78
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -924(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.79
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -932(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.80
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -940(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.81
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -948(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.82
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -956(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.83
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -964(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.84
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -972(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.85
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -980(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.86
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -988(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.87
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -996(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.88
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1004(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.89
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1012(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.90
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1020(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.91
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1028(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.92
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1036(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.93
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -60(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.94
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -68(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.95
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -76(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.96
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -84(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.97
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -92(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.98
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -100(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.99
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -108(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.100
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -116(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.101
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -124(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.102
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -136(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.103
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -148(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.104
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -160(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.105
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -172(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.106
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -184(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.107
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -196(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.108
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -208(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.109
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -220(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.110
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -232(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.111
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -244(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.112
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -256(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.113
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -268(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.114
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -280(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.115
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -292(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.116
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -304(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.117
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -316(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.118
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -328(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.119
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -340(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.120
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -352(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.121
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -364(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.122
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -376(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.123
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -388(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.124
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -400(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.125
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -412(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.126
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -424(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.127
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -436(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.128
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -448(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.129
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -460(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.130
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -472(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.131
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -484(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.132
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -496(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.133
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -508(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.134
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -520(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.135
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -532(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.136
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -544(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.137
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -556(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.138
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -568(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.139
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -580(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.140
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -592(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.141
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -604(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.142
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -616(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.143
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -624(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.144
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -632(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.145
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -640(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.146
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -648(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.147
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -656(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.148
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -664(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.149
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -672(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.150
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -680(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.151
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -688(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.152
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -696(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.153
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -704(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.154
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -712(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.155
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -720(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.156
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -728(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.157
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -736(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.158
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -744(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.159
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -752(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.160
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -760(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.161
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -768(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.162
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -776(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.163
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -784(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.164
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -792(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.165
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -800(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.166
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -808(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.167
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -816(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.168
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -824(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.169
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -832(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.170
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -840(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.171
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -848(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.172
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -856(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.173
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -864(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.174
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -872(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.175
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -880(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.176
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -888(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.177
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -896(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.178
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -904(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.179
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -912(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.180
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -920(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.181
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -928(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.182
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -936(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.183
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -944(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.184
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -952(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.185
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -960(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.186
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -968(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.187
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -976(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.188
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -984(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.189
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -992(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.190
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1000(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.191
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1008(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.192
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1016(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.193
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1024(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.194
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1032(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.195
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -56(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.196
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -64(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.197
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -72(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.198
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -80(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.199
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -88(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.200
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -96(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.201
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -104(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.202
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -112(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.203
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -120(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.204
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -132(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.205
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -144(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.206
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -156(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.207
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -168(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.208
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -180(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.209
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -192(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.210
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -204(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.211
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -216(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.212
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -228(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.213
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -240(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.214
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -252(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.215
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -264(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.216
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -276(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.217
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -288(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.218
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -300(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.219
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -312(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.220
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -324(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.221
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -336(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.222
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -348(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.223
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -360(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.224
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -372(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.225
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -384(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.226
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -396(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.227
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -408(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.228
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -420(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.229
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -432(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.230
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -444(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.231
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -456(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.232
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -468(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.233
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -480(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.234
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -492(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.235
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -504(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.236
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -516(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.237
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -528(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.238
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -540(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.239
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -552(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.240
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -564(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.241
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -576(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.242
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -588(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.243
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -600(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.244
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -612(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.245
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s11
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.246
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s10
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.247
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s9
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.248
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s8
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.249
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s7
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.250
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s6
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.251
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s5
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.252
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s4
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.253
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s3
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.254
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s2
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.255
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	la a0, .libro.str.256
	call println
	lw a0, -128(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.257
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -140(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.258
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -152(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.259
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -164(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.260
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -176(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.261
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -188(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.262
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -200(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.263
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -212(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.264
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -224(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.265
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -236(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.266
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -248(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.267
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -260(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.268
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -272(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.269
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -284(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.270
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -296(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.271
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -308(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.272
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -320(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.273
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -332(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.274
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -344(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.275
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -356(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.276
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -368(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.277
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -380(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.278
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -392(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.279
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -404(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.280
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -416(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.281
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -428(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.282
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -440(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.283
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -452(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.284
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -464(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.285
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -476(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.286
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -488(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.287
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -500(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.288
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -512(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.289
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -524(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.290
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -536(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.291
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -548(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.292
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -560(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.293
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -572(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.294
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -584(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.295
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -596(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.296
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -608(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.297
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -620(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.298
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -628(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.299
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -636(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.300
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -644(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.301
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -652(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.302
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -660(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.303
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -668(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.304
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -676(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.305
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -684(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.306
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -692(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.307
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -700(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.308
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -708(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.309
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -716(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.310
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -724(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.311
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -732(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.312
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -740(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.313
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -748(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.314
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -756(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.315
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -764(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.316
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -772(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.317
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -780(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.318
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -788(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.319
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -796(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.320
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -804(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.321
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -812(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.322
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -820(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.323
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -828(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.324
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -836(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.325
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -844(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.326
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -852(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.327
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -860(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.328
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -868(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.329
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -876(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.330
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -884(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.331
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -892(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.332
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -900(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.333
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -908(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.334
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -916(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.335
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -924(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.336
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -932(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.337
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -940(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.338
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -948(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.339
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -956(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.340
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -964(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.341
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -972(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.342
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -980(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.343
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -988(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.344
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -996(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.345
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1004(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.346
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1012(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.347
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1020(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.348
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1028(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.349
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1036(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.350
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -60(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.351
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -68(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.352
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -76(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.353
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -84(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.354
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -92(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.355
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -100(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.356
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -108(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.357
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -116(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.358
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -124(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.359
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -136(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.360
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -148(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.361
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -160(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.362
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -172(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.363
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -184(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.364
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -196(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.365
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -208(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.366
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -220(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.367
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -232(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.368
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -244(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.369
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -256(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.370
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -268(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.371
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -280(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.372
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -292(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.373
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -304(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.374
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -316(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.375
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -328(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.376
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -340(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.377
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -352(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.378
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -364(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.379
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -376(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.380
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -388(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.381
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -400(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.382
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -412(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.383
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -424(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.384
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -436(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.385
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -448(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.386
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -460(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.387
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -472(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.388
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -484(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.389
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -496(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.390
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -508(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.391
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -520(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.392
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -532(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.393
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -544(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.394
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -556(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.395
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -568(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.396
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -580(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.397
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -592(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.398
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -604(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.399
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -616(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.400
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -624(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.401
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -632(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.402
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -640(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.403
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -648(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.404
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -656(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.405
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -664(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.406
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -672(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.407
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -680(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.408
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -688(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.409
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -696(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.410
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -704(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.411
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -712(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.412
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -720(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.413
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -728(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.414
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -736(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.415
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -744(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.416
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -752(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.417
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -760(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.418
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -768(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.419
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -776(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.420
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -784(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.421
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -792(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.422
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -800(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.423
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -808(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.424
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -816(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.425
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -824(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.426
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -832(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.427
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -840(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.428
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -848(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.429
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -856(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.430
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -864(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.431
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -872(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.432
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -880(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.433
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -888(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.434
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -896(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.435
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -904(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.436
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -912(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.437
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -920(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.438
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -928(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.439
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -936(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.440
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -944(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.441
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -952(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.442
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -960(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.443
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -968(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.444
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -976(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.445
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -984(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.446
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -992(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.447
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1000(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.448
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1008(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.449
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1016(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.450
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1024(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.451
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -1032(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.452
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -56(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.453
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -64(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.454
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -72(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.455
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -80(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.456
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -88(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.457
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -96(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.458
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -104(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.459
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -112(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.460
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -120(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.461
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -132(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.462
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -144(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.463
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -156(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.464
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -168(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.465
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -180(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.466
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -192(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.467
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -204(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.468
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -216(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.469
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -228(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.470
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -240(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.471
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -252(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.472
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -264(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.473
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -276(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.474
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -288(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.475
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -300(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.476
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -312(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.477
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -324(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.478
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -336(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.479
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -348(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.480
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -360(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.481
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -372(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.482
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -384(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.483
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -396(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.484
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -408(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.485
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -420(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.486
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -432(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.487
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -444(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.488
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -456(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.489
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -468(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.490
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -480(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.491
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -492(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.492
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -504(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.493
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -516(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.494
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -528(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.495
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -540(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.496
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -552(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.497
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -564(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.498
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -576(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.499
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -588(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.500
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -600(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.501
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	lw a0, -612(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.502
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s11
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.503
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s10
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.504
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s9
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.505
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s8
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.506
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s7
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.507
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s6
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.508
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s5
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.509
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s4
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.510
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s3
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.511
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	mv a0, s2
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi t1, a1, 0
	addi t0, zero, 1
	sw t0, 0(t1)
	la t1, .libro.str.512
	addi t0, a1, 4
	sw t1, 0(t0)
	mv a0, s1
	call _string_stringAppend
	addi t0, a0, 4
	lw a0, 0(t0)
	call print
	la a0, .libro.str.513
	call println
	j .LibroBB1_769
.LibroBB1_769: 
	li a0, 0
	lw s0, 1028(sp)
	lw s1, 1024(sp)
	lw s2, 1020(sp)
	lw s3, 1016(sp)
	lw s4, 1012(sp)
	lw s5, 1008(sp)
	lw s6, 1004(sp)
	lw s7, 1000(sp)
	lw s8, 996(sp)
	lw s9, 992(sp)
	lw s10, 988(sp)
	lw s11, 984(sp)
	lw ra, 1032(sp)
	addi sp, sp, 1036
	ret
.data
	.type	count,@object
count:
	.word	0
	.size	count, 4

	.type	.libro.str,@object
.libro.str:
	.asciz	" "
	.size	.libro.str, 2

	.type	.libro.str.1,@object
.libro.str.1:
	.asciz	" "
	.size	.libro.str.1, 2

	.type	.libro.str.2,@object
.libro.str.2:
	.asciz	" "
	.size	.libro.str.2, 2

	.type	.libro.str.3,@object
.libro.str.3:
	.asciz	" "
	.size	.libro.str.3, 2

	.type	.libro.str.4,@object
.libro.str.4:
	.asciz	" "
	.size	.libro.str.4, 2

	.type	.libro.str.5,@object
.libro.str.5:
	.asciz	" "
	.size	.libro.str.5, 2

	.type	.libro.str.6,@object
.libro.str.6:
	.asciz	" "
	.size	.libro.str.6, 2

	.type	.libro.str.7,@object
.libro.str.7:
	.asciz	" "
	.size	.libro.str.7, 2

	.type	.libro.str.8,@object
.libro.str.8:
	.asciz	" "
	.size	.libro.str.8, 2

	.type	.libro.str.9,@object
.libro.str.9:
	.asciz	" "
	.size	.libro.str.9, 2

	.type	.libro.str.10,@object
.libro.str.10:
	.asciz	" "
	.size	.libro.str.10, 2

	.type	.libro.str.11,@object
.libro.str.11:
	.asciz	" "
	.size	.libro.str.11, 2

	.type	.libro.str.12,@object
.libro.str.12:
	.asciz	" "
	.size	.libro.str.12, 2

	.type	.libro.str.13,@object
.libro.str.13:
	.asciz	" "
	.size	.libro.str.13, 2

	.type	.libro.str.14,@object
.libro.str.14:
	.asciz	" "
	.size	.libro.str.14, 2

	.type	.libro.str.15,@object
.libro.str.15:
	.asciz	" "
	.size	.libro.str.15, 2

	.type	.libro.str.16,@object
.libro.str.16:
	.asciz	" "
	.size	.libro.str.16, 2

	.type	.libro.str.17,@object
.libro.str.17:
	.asciz	" "
	.size	.libro.str.17, 2

	.type	.libro.str.18,@object
.libro.str.18:
	.asciz	" "
	.size	.libro.str.18, 2

	.type	.libro.str.19,@object
.libro.str.19:
	.asciz	" "
	.size	.libro.str.19, 2

	.type	.libro.str.20,@object
.libro.str.20:
	.asciz	" "
	.size	.libro.str.20, 2

	.type	.libro.str.21,@object
.libro.str.21:
	.asciz	" "
	.size	.libro.str.21, 2

	.type	.libro.str.22,@object
.libro.str.22:
	.asciz	" "
	.size	.libro.str.22, 2

	.type	.libro.str.23,@object
.libro.str.23:
	.asciz	" "
	.size	.libro.str.23, 2

	.type	.libro.str.24,@object
.libro.str.24:
	.asciz	" "
	.size	.libro.str.24, 2

	.type	.libro.str.25,@object
.libro.str.25:
	.asciz	" "
	.size	.libro.str.25, 2

	.type	.libro.str.26,@object
.libro.str.26:
	.asciz	" "
	.size	.libro.str.26, 2

	.type	.libro.str.27,@object
.libro.str.27:
	.asciz	" "
	.size	.libro.str.27, 2

	.type	.libro.str.28,@object
.libro.str.28:
	.asciz	" "
	.size	.libro.str.28, 2

	.type	.libro.str.29,@object
.libro.str.29:
	.asciz	" "
	.size	.libro.str.29, 2

	.type	.libro.str.30,@object
.libro.str.30:
	.asciz	" "
	.size	.libro.str.30, 2

	.type	.libro.str.31,@object
.libro.str.31:
	.asciz	" "
	.size	.libro.str.31, 2

	.type	.libro.str.32,@object
.libro.str.32:
	.asciz	" "
	.size	.libro.str.32, 2

	.type	.libro.str.33,@object
.libro.str.33:
	.asciz	" "
	.size	.libro.str.33, 2

	.type	.libro.str.34,@object
.libro.str.34:
	.asciz	" "
	.size	.libro.str.34, 2

	.type	.libro.str.35,@object
.libro.str.35:
	.asciz	" "
	.size	.libro.str.35, 2

	.type	.libro.str.36,@object
.libro.str.36:
	.asciz	" "
	.size	.libro.str.36, 2

	.type	.libro.str.37,@object
.libro.str.37:
	.asciz	" "
	.size	.libro.str.37, 2

	.type	.libro.str.38,@object
.libro.str.38:
	.asciz	" "
	.size	.libro.str.38, 2

	.type	.libro.str.39,@object
.libro.str.39:
	.asciz	" "
	.size	.libro.str.39, 2

	.type	.libro.str.40,@object
.libro.str.40:
	.asciz	" "
	.size	.libro.str.40, 2

	.type	.libro.str.41,@object
.libro.str.41:
	.asciz	" "
	.size	.libro.str.41, 2

	.type	.libro.str.42,@object
.libro.str.42:
	.asciz	" "
	.size	.libro.str.42, 2

	.type	.libro.str.43,@object
.libro.str.43:
	.asciz	" "
	.size	.libro.str.43, 2

	.type	.libro.str.44,@object
.libro.str.44:
	.asciz	" "
	.size	.libro.str.44, 2

	.type	.libro.str.45,@object
.libro.str.45:
	.asciz	" "
	.size	.libro.str.45, 2

	.type	.libro.str.46,@object
.libro.str.46:
	.asciz	" "
	.size	.libro.str.46, 2

	.type	.libro.str.47,@object
.libro.str.47:
	.asciz	" "
	.size	.libro.str.47, 2

	.type	.libro.str.48,@object
.libro.str.48:
	.asciz	" "
	.size	.libro.str.48, 2

	.type	.libro.str.49,@object
.libro.str.49:
	.asciz	" "
	.size	.libro.str.49, 2

	.type	.libro.str.50,@object
.libro.str.50:
	.asciz	" "
	.size	.libro.str.50, 2

	.type	.libro.str.51,@object
.libro.str.51:
	.asciz	" "
	.size	.libro.str.51, 2

	.type	.libro.str.52,@object
.libro.str.52:
	.asciz	" "
	.size	.libro.str.52, 2

	.type	.libro.str.53,@object
.libro.str.53:
	.asciz	" "
	.size	.libro.str.53, 2

	.type	.libro.str.54,@object
.libro.str.54:
	.asciz	" "
	.size	.libro.str.54, 2

	.type	.libro.str.55,@object
.libro.str.55:
	.asciz	" "
	.size	.libro.str.55, 2

	.type	.libro.str.56,@object
.libro.str.56:
	.asciz	" "
	.size	.libro.str.56, 2

	.type	.libro.str.57,@object
.libro.str.57:
	.asciz	" "
	.size	.libro.str.57, 2

	.type	.libro.str.58,@object
.libro.str.58:
	.asciz	" "
	.size	.libro.str.58, 2

	.type	.libro.str.59,@object
.libro.str.59:
	.asciz	" "
	.size	.libro.str.59, 2

	.type	.libro.str.60,@object
.libro.str.60:
	.asciz	" "
	.size	.libro.str.60, 2

	.type	.libro.str.61,@object
.libro.str.61:
	.asciz	" "
	.size	.libro.str.61, 2

	.type	.libro.str.62,@object
.libro.str.62:
	.asciz	" "
	.size	.libro.str.62, 2

	.type	.libro.str.63,@object
.libro.str.63:
	.asciz	" "
	.size	.libro.str.63, 2

	.type	.libro.str.64,@object
.libro.str.64:
	.asciz	" "
	.size	.libro.str.64, 2

	.type	.libro.str.65,@object
.libro.str.65:
	.asciz	" "
	.size	.libro.str.65, 2

	.type	.libro.str.66,@object
.libro.str.66:
	.asciz	" "
	.size	.libro.str.66, 2

	.type	.libro.str.67,@object
.libro.str.67:
	.asciz	" "
	.size	.libro.str.67, 2

	.type	.libro.str.68,@object
.libro.str.68:
	.asciz	" "
	.size	.libro.str.68, 2

	.type	.libro.str.69,@object
.libro.str.69:
	.asciz	" "
	.size	.libro.str.69, 2

	.type	.libro.str.70,@object
.libro.str.70:
	.asciz	" "
	.size	.libro.str.70, 2

	.type	.libro.str.71,@object
.libro.str.71:
	.asciz	" "
	.size	.libro.str.71, 2

	.type	.libro.str.72,@object
.libro.str.72:
	.asciz	" "
	.size	.libro.str.72, 2

	.type	.libro.str.73,@object
.libro.str.73:
	.asciz	" "
	.size	.libro.str.73, 2

	.type	.libro.str.74,@object
.libro.str.74:
	.asciz	" "
	.size	.libro.str.74, 2

	.type	.libro.str.75,@object
.libro.str.75:
	.asciz	" "
	.size	.libro.str.75, 2

	.type	.libro.str.76,@object
.libro.str.76:
	.asciz	" "
	.size	.libro.str.76, 2

	.type	.libro.str.77,@object
.libro.str.77:
	.asciz	" "
	.size	.libro.str.77, 2

	.type	.libro.str.78,@object
.libro.str.78:
	.asciz	" "
	.size	.libro.str.78, 2

	.type	.libro.str.79,@object
.libro.str.79:
	.asciz	" "
	.size	.libro.str.79, 2

	.type	.libro.str.80,@object
.libro.str.80:
	.asciz	" "
	.size	.libro.str.80, 2

	.type	.libro.str.81,@object
.libro.str.81:
	.asciz	" "
	.size	.libro.str.81, 2

	.type	.libro.str.82,@object
.libro.str.82:
	.asciz	" "
	.size	.libro.str.82, 2

	.type	.libro.str.83,@object
.libro.str.83:
	.asciz	" "
	.size	.libro.str.83, 2

	.type	.libro.str.84,@object
.libro.str.84:
	.asciz	" "
	.size	.libro.str.84, 2

	.type	.libro.str.85,@object
.libro.str.85:
	.asciz	" "
	.size	.libro.str.85, 2

	.type	.libro.str.86,@object
.libro.str.86:
	.asciz	" "
	.size	.libro.str.86, 2

	.type	.libro.str.87,@object
.libro.str.87:
	.asciz	" "
	.size	.libro.str.87, 2

	.type	.libro.str.88,@object
.libro.str.88:
	.asciz	" "
	.size	.libro.str.88, 2

	.type	.libro.str.89,@object
.libro.str.89:
	.asciz	" "
	.size	.libro.str.89, 2

	.type	.libro.str.90,@object
.libro.str.90:
	.asciz	" "
	.size	.libro.str.90, 2

	.type	.libro.str.91,@object
.libro.str.91:
	.asciz	" "
	.size	.libro.str.91, 2

	.type	.libro.str.92,@object
.libro.str.92:
	.asciz	" "
	.size	.libro.str.92, 2

	.type	.libro.str.93,@object
.libro.str.93:
	.asciz	" "
	.size	.libro.str.93, 2

	.type	.libro.str.94,@object
.libro.str.94:
	.asciz	" "
	.size	.libro.str.94, 2

	.type	.libro.str.95,@object
.libro.str.95:
	.asciz	" "
	.size	.libro.str.95, 2

	.type	.libro.str.96,@object
.libro.str.96:
	.asciz	" "
	.size	.libro.str.96, 2

	.type	.libro.str.97,@object
.libro.str.97:
	.asciz	" "
	.size	.libro.str.97, 2

	.type	.libro.str.98,@object
.libro.str.98:
	.asciz	" "
	.size	.libro.str.98, 2

	.type	.libro.str.99,@object
.libro.str.99:
	.asciz	" "
	.size	.libro.str.99, 2

	.type	.libro.str.100,@object
.libro.str.100:
	.asciz	" "
	.size	.libro.str.100, 2

	.type	.libro.str.101,@object
.libro.str.101:
	.asciz	" "
	.size	.libro.str.101, 2

	.type	.libro.str.102,@object
.libro.str.102:
	.asciz	" "
	.size	.libro.str.102, 2

	.type	.libro.str.103,@object
.libro.str.103:
	.asciz	" "
	.size	.libro.str.103, 2

	.type	.libro.str.104,@object
.libro.str.104:
	.asciz	" "
	.size	.libro.str.104, 2

	.type	.libro.str.105,@object
.libro.str.105:
	.asciz	" "
	.size	.libro.str.105, 2

	.type	.libro.str.106,@object
.libro.str.106:
	.asciz	" "
	.size	.libro.str.106, 2

	.type	.libro.str.107,@object
.libro.str.107:
	.asciz	" "
	.size	.libro.str.107, 2

	.type	.libro.str.108,@object
.libro.str.108:
	.asciz	" "
	.size	.libro.str.108, 2

	.type	.libro.str.109,@object
.libro.str.109:
	.asciz	" "
	.size	.libro.str.109, 2

	.type	.libro.str.110,@object
.libro.str.110:
	.asciz	" "
	.size	.libro.str.110, 2

	.type	.libro.str.111,@object
.libro.str.111:
	.asciz	" "
	.size	.libro.str.111, 2

	.type	.libro.str.112,@object
.libro.str.112:
	.asciz	" "
	.size	.libro.str.112, 2

	.type	.libro.str.113,@object
.libro.str.113:
	.asciz	" "
	.size	.libro.str.113, 2

	.type	.libro.str.114,@object
.libro.str.114:
	.asciz	" "
	.size	.libro.str.114, 2

	.type	.libro.str.115,@object
.libro.str.115:
	.asciz	" "
	.size	.libro.str.115, 2

	.type	.libro.str.116,@object
.libro.str.116:
	.asciz	" "
	.size	.libro.str.116, 2

	.type	.libro.str.117,@object
.libro.str.117:
	.asciz	" "
	.size	.libro.str.117, 2

	.type	.libro.str.118,@object
.libro.str.118:
	.asciz	" "
	.size	.libro.str.118, 2

	.type	.libro.str.119,@object
.libro.str.119:
	.asciz	" "
	.size	.libro.str.119, 2

	.type	.libro.str.120,@object
.libro.str.120:
	.asciz	" "
	.size	.libro.str.120, 2

	.type	.libro.str.121,@object
.libro.str.121:
	.asciz	" "
	.size	.libro.str.121, 2

	.type	.libro.str.122,@object
.libro.str.122:
	.asciz	" "
	.size	.libro.str.122, 2

	.type	.libro.str.123,@object
.libro.str.123:
	.asciz	" "
	.size	.libro.str.123, 2

	.type	.libro.str.124,@object
.libro.str.124:
	.asciz	" "
	.size	.libro.str.124, 2

	.type	.libro.str.125,@object
.libro.str.125:
	.asciz	" "
	.size	.libro.str.125, 2

	.type	.libro.str.126,@object
.libro.str.126:
	.asciz	" "
	.size	.libro.str.126, 2

	.type	.libro.str.127,@object
.libro.str.127:
	.asciz	" "
	.size	.libro.str.127, 2

	.type	.libro.str.128,@object
.libro.str.128:
	.asciz	" "
	.size	.libro.str.128, 2

	.type	.libro.str.129,@object
.libro.str.129:
	.asciz	" "
	.size	.libro.str.129, 2

	.type	.libro.str.130,@object
.libro.str.130:
	.asciz	" "
	.size	.libro.str.130, 2

	.type	.libro.str.131,@object
.libro.str.131:
	.asciz	" "
	.size	.libro.str.131, 2

	.type	.libro.str.132,@object
.libro.str.132:
	.asciz	" "
	.size	.libro.str.132, 2

	.type	.libro.str.133,@object
.libro.str.133:
	.asciz	" "
	.size	.libro.str.133, 2

	.type	.libro.str.134,@object
.libro.str.134:
	.asciz	" "
	.size	.libro.str.134, 2

	.type	.libro.str.135,@object
.libro.str.135:
	.asciz	" "
	.size	.libro.str.135, 2

	.type	.libro.str.136,@object
.libro.str.136:
	.asciz	" "
	.size	.libro.str.136, 2

	.type	.libro.str.137,@object
.libro.str.137:
	.asciz	" "
	.size	.libro.str.137, 2

	.type	.libro.str.138,@object
.libro.str.138:
	.asciz	" "
	.size	.libro.str.138, 2

	.type	.libro.str.139,@object
.libro.str.139:
	.asciz	" "
	.size	.libro.str.139, 2

	.type	.libro.str.140,@object
.libro.str.140:
	.asciz	" "
	.size	.libro.str.140, 2

	.type	.libro.str.141,@object
.libro.str.141:
	.asciz	" "
	.size	.libro.str.141, 2

	.type	.libro.str.142,@object
.libro.str.142:
	.asciz	" "
	.size	.libro.str.142, 2

	.type	.libro.str.143,@object
.libro.str.143:
	.asciz	" "
	.size	.libro.str.143, 2

	.type	.libro.str.144,@object
.libro.str.144:
	.asciz	" "
	.size	.libro.str.144, 2

	.type	.libro.str.145,@object
.libro.str.145:
	.asciz	" "
	.size	.libro.str.145, 2

	.type	.libro.str.146,@object
.libro.str.146:
	.asciz	" "
	.size	.libro.str.146, 2

	.type	.libro.str.147,@object
.libro.str.147:
	.asciz	" "
	.size	.libro.str.147, 2

	.type	.libro.str.148,@object
.libro.str.148:
	.asciz	" "
	.size	.libro.str.148, 2

	.type	.libro.str.149,@object
.libro.str.149:
	.asciz	" "
	.size	.libro.str.149, 2

	.type	.libro.str.150,@object
.libro.str.150:
	.asciz	" "
	.size	.libro.str.150, 2

	.type	.libro.str.151,@object
.libro.str.151:
	.asciz	" "
	.size	.libro.str.151, 2

	.type	.libro.str.152,@object
.libro.str.152:
	.asciz	" "
	.size	.libro.str.152, 2

	.type	.libro.str.153,@object
.libro.str.153:
	.asciz	" "
	.size	.libro.str.153, 2

	.type	.libro.str.154,@object
.libro.str.154:
	.asciz	" "
	.size	.libro.str.154, 2

	.type	.libro.str.155,@object
.libro.str.155:
	.asciz	" "
	.size	.libro.str.155, 2

	.type	.libro.str.156,@object
.libro.str.156:
	.asciz	" "
	.size	.libro.str.156, 2

	.type	.libro.str.157,@object
.libro.str.157:
	.asciz	" "
	.size	.libro.str.157, 2

	.type	.libro.str.158,@object
.libro.str.158:
	.asciz	" "
	.size	.libro.str.158, 2

	.type	.libro.str.159,@object
.libro.str.159:
	.asciz	" "
	.size	.libro.str.159, 2

	.type	.libro.str.160,@object
.libro.str.160:
	.asciz	" "
	.size	.libro.str.160, 2

	.type	.libro.str.161,@object
.libro.str.161:
	.asciz	" "
	.size	.libro.str.161, 2

	.type	.libro.str.162,@object
.libro.str.162:
	.asciz	" "
	.size	.libro.str.162, 2

	.type	.libro.str.163,@object
.libro.str.163:
	.asciz	" "
	.size	.libro.str.163, 2

	.type	.libro.str.164,@object
.libro.str.164:
	.asciz	" "
	.size	.libro.str.164, 2

	.type	.libro.str.165,@object
.libro.str.165:
	.asciz	" "
	.size	.libro.str.165, 2

	.type	.libro.str.166,@object
.libro.str.166:
	.asciz	" "
	.size	.libro.str.166, 2

	.type	.libro.str.167,@object
.libro.str.167:
	.asciz	" "
	.size	.libro.str.167, 2

	.type	.libro.str.168,@object
.libro.str.168:
	.asciz	" "
	.size	.libro.str.168, 2

	.type	.libro.str.169,@object
.libro.str.169:
	.asciz	" "
	.size	.libro.str.169, 2

	.type	.libro.str.170,@object
.libro.str.170:
	.asciz	" "
	.size	.libro.str.170, 2

	.type	.libro.str.171,@object
.libro.str.171:
	.asciz	" "
	.size	.libro.str.171, 2

	.type	.libro.str.172,@object
.libro.str.172:
	.asciz	" "
	.size	.libro.str.172, 2

	.type	.libro.str.173,@object
.libro.str.173:
	.asciz	" "
	.size	.libro.str.173, 2

	.type	.libro.str.174,@object
.libro.str.174:
	.asciz	" "
	.size	.libro.str.174, 2

	.type	.libro.str.175,@object
.libro.str.175:
	.asciz	" "
	.size	.libro.str.175, 2

	.type	.libro.str.176,@object
.libro.str.176:
	.asciz	" "
	.size	.libro.str.176, 2

	.type	.libro.str.177,@object
.libro.str.177:
	.asciz	" "
	.size	.libro.str.177, 2

	.type	.libro.str.178,@object
.libro.str.178:
	.asciz	" "
	.size	.libro.str.178, 2

	.type	.libro.str.179,@object
.libro.str.179:
	.asciz	" "
	.size	.libro.str.179, 2

	.type	.libro.str.180,@object
.libro.str.180:
	.asciz	" "
	.size	.libro.str.180, 2

	.type	.libro.str.181,@object
.libro.str.181:
	.asciz	" "
	.size	.libro.str.181, 2

	.type	.libro.str.182,@object
.libro.str.182:
	.asciz	" "
	.size	.libro.str.182, 2

	.type	.libro.str.183,@object
.libro.str.183:
	.asciz	" "
	.size	.libro.str.183, 2

	.type	.libro.str.184,@object
.libro.str.184:
	.asciz	" "
	.size	.libro.str.184, 2

	.type	.libro.str.185,@object
.libro.str.185:
	.asciz	" "
	.size	.libro.str.185, 2

	.type	.libro.str.186,@object
.libro.str.186:
	.asciz	" "
	.size	.libro.str.186, 2

	.type	.libro.str.187,@object
.libro.str.187:
	.asciz	" "
	.size	.libro.str.187, 2

	.type	.libro.str.188,@object
.libro.str.188:
	.asciz	" "
	.size	.libro.str.188, 2

	.type	.libro.str.189,@object
.libro.str.189:
	.asciz	" "
	.size	.libro.str.189, 2

	.type	.libro.str.190,@object
.libro.str.190:
	.asciz	" "
	.size	.libro.str.190, 2

	.type	.libro.str.191,@object
.libro.str.191:
	.asciz	" "
	.size	.libro.str.191, 2

	.type	.libro.str.192,@object
.libro.str.192:
	.asciz	" "
	.size	.libro.str.192, 2

	.type	.libro.str.193,@object
.libro.str.193:
	.asciz	" "
	.size	.libro.str.193, 2

	.type	.libro.str.194,@object
.libro.str.194:
	.asciz	" "
	.size	.libro.str.194, 2

	.type	.libro.str.195,@object
.libro.str.195:
	.asciz	" "
	.size	.libro.str.195, 2

	.type	.libro.str.196,@object
.libro.str.196:
	.asciz	" "
	.size	.libro.str.196, 2

	.type	.libro.str.197,@object
.libro.str.197:
	.asciz	" "
	.size	.libro.str.197, 2

	.type	.libro.str.198,@object
.libro.str.198:
	.asciz	" "
	.size	.libro.str.198, 2

	.type	.libro.str.199,@object
.libro.str.199:
	.asciz	" "
	.size	.libro.str.199, 2

	.type	.libro.str.200,@object
.libro.str.200:
	.asciz	" "
	.size	.libro.str.200, 2

	.type	.libro.str.201,@object
.libro.str.201:
	.asciz	" "
	.size	.libro.str.201, 2

	.type	.libro.str.202,@object
.libro.str.202:
	.asciz	" "
	.size	.libro.str.202, 2

	.type	.libro.str.203,@object
.libro.str.203:
	.asciz	" "
	.size	.libro.str.203, 2

	.type	.libro.str.204,@object
.libro.str.204:
	.asciz	" "
	.size	.libro.str.204, 2

	.type	.libro.str.205,@object
.libro.str.205:
	.asciz	" "
	.size	.libro.str.205, 2

	.type	.libro.str.206,@object
.libro.str.206:
	.asciz	" "
	.size	.libro.str.206, 2

	.type	.libro.str.207,@object
.libro.str.207:
	.asciz	" "
	.size	.libro.str.207, 2

	.type	.libro.str.208,@object
.libro.str.208:
	.asciz	" "
	.size	.libro.str.208, 2

	.type	.libro.str.209,@object
.libro.str.209:
	.asciz	" "
	.size	.libro.str.209, 2

	.type	.libro.str.210,@object
.libro.str.210:
	.asciz	" "
	.size	.libro.str.210, 2

	.type	.libro.str.211,@object
.libro.str.211:
	.asciz	" "
	.size	.libro.str.211, 2

	.type	.libro.str.212,@object
.libro.str.212:
	.asciz	" "
	.size	.libro.str.212, 2

	.type	.libro.str.213,@object
.libro.str.213:
	.asciz	" "
	.size	.libro.str.213, 2

	.type	.libro.str.214,@object
.libro.str.214:
	.asciz	" "
	.size	.libro.str.214, 2

	.type	.libro.str.215,@object
.libro.str.215:
	.asciz	" "
	.size	.libro.str.215, 2

	.type	.libro.str.216,@object
.libro.str.216:
	.asciz	" "
	.size	.libro.str.216, 2

	.type	.libro.str.217,@object
.libro.str.217:
	.asciz	" "
	.size	.libro.str.217, 2

	.type	.libro.str.218,@object
.libro.str.218:
	.asciz	" "
	.size	.libro.str.218, 2

	.type	.libro.str.219,@object
.libro.str.219:
	.asciz	" "
	.size	.libro.str.219, 2

	.type	.libro.str.220,@object
.libro.str.220:
	.asciz	" "
	.size	.libro.str.220, 2

	.type	.libro.str.221,@object
.libro.str.221:
	.asciz	" "
	.size	.libro.str.221, 2

	.type	.libro.str.222,@object
.libro.str.222:
	.asciz	" "
	.size	.libro.str.222, 2

	.type	.libro.str.223,@object
.libro.str.223:
	.asciz	" "
	.size	.libro.str.223, 2

	.type	.libro.str.224,@object
.libro.str.224:
	.asciz	" "
	.size	.libro.str.224, 2

	.type	.libro.str.225,@object
.libro.str.225:
	.asciz	" "
	.size	.libro.str.225, 2

	.type	.libro.str.226,@object
.libro.str.226:
	.asciz	" "
	.size	.libro.str.226, 2

	.type	.libro.str.227,@object
.libro.str.227:
	.asciz	" "
	.size	.libro.str.227, 2

	.type	.libro.str.228,@object
.libro.str.228:
	.asciz	" "
	.size	.libro.str.228, 2

	.type	.libro.str.229,@object
.libro.str.229:
	.asciz	" "
	.size	.libro.str.229, 2

	.type	.libro.str.230,@object
.libro.str.230:
	.asciz	" "
	.size	.libro.str.230, 2

	.type	.libro.str.231,@object
.libro.str.231:
	.asciz	" "
	.size	.libro.str.231, 2

	.type	.libro.str.232,@object
.libro.str.232:
	.asciz	" "
	.size	.libro.str.232, 2

	.type	.libro.str.233,@object
.libro.str.233:
	.asciz	" "
	.size	.libro.str.233, 2

	.type	.libro.str.234,@object
.libro.str.234:
	.asciz	" "
	.size	.libro.str.234, 2

	.type	.libro.str.235,@object
.libro.str.235:
	.asciz	" "
	.size	.libro.str.235, 2

	.type	.libro.str.236,@object
.libro.str.236:
	.asciz	" "
	.size	.libro.str.236, 2

	.type	.libro.str.237,@object
.libro.str.237:
	.asciz	" "
	.size	.libro.str.237, 2

	.type	.libro.str.238,@object
.libro.str.238:
	.asciz	" "
	.size	.libro.str.238, 2

	.type	.libro.str.239,@object
.libro.str.239:
	.asciz	" "
	.size	.libro.str.239, 2

	.type	.libro.str.240,@object
.libro.str.240:
	.asciz	" "
	.size	.libro.str.240, 2

	.type	.libro.str.241,@object
.libro.str.241:
	.asciz	" "
	.size	.libro.str.241, 2

	.type	.libro.str.242,@object
.libro.str.242:
	.asciz	" "
	.size	.libro.str.242, 2

	.type	.libro.str.243,@object
.libro.str.243:
	.asciz	" "
	.size	.libro.str.243, 2

	.type	.libro.str.244,@object
.libro.str.244:
	.asciz	" "
	.size	.libro.str.244, 2

	.type	.libro.str.245,@object
.libro.str.245:
	.asciz	" "
	.size	.libro.str.245, 2

	.type	.libro.str.246,@object
.libro.str.246:
	.asciz	" "
	.size	.libro.str.246, 2

	.type	.libro.str.247,@object
.libro.str.247:
	.asciz	" "
	.size	.libro.str.247, 2

	.type	.libro.str.248,@object
.libro.str.248:
	.asciz	" "
	.size	.libro.str.248, 2

	.type	.libro.str.249,@object
.libro.str.249:
	.asciz	" "
	.size	.libro.str.249, 2

	.type	.libro.str.250,@object
.libro.str.250:
	.asciz	" "
	.size	.libro.str.250, 2

	.type	.libro.str.251,@object
.libro.str.251:
	.asciz	" "
	.size	.libro.str.251, 2

	.type	.libro.str.252,@object
.libro.str.252:
	.asciz	" "
	.size	.libro.str.252, 2

	.type	.libro.str.253,@object
.libro.str.253:
	.asciz	" "
	.size	.libro.str.253, 2

	.type	.libro.str.254,@object
.libro.str.254:
	.asciz	" "
	.size	.libro.str.254, 2

	.type	.libro.str.255,@object
.libro.str.255:
	.asciz	" "
	.size	.libro.str.255, 2

	.type	.libro.str.256,@object
.libro.str.256:
	.asciz	""
	.size	.libro.str.256, 1

	.type	.libro.str.257,@object
.libro.str.257:
	.asciz	" "
	.size	.libro.str.257, 2

	.type	.libro.str.258,@object
.libro.str.258:
	.asciz	" "
	.size	.libro.str.258, 2

	.type	.libro.str.259,@object
.libro.str.259:
	.asciz	" "
	.size	.libro.str.259, 2

	.type	.libro.str.260,@object
.libro.str.260:
	.asciz	" "
	.size	.libro.str.260, 2

	.type	.libro.str.261,@object
.libro.str.261:
	.asciz	" "
	.size	.libro.str.261, 2

	.type	.libro.str.262,@object
.libro.str.262:
	.asciz	" "
	.size	.libro.str.262, 2

	.type	.libro.str.263,@object
.libro.str.263:
	.asciz	" "
	.size	.libro.str.263, 2

	.type	.libro.str.264,@object
.libro.str.264:
	.asciz	" "
	.size	.libro.str.264, 2

	.type	.libro.str.265,@object
.libro.str.265:
	.asciz	" "
	.size	.libro.str.265, 2

	.type	.libro.str.266,@object
.libro.str.266:
	.asciz	" "
	.size	.libro.str.266, 2

	.type	.libro.str.267,@object
.libro.str.267:
	.asciz	" "
	.size	.libro.str.267, 2

	.type	.libro.str.268,@object
.libro.str.268:
	.asciz	" "
	.size	.libro.str.268, 2

	.type	.libro.str.269,@object
.libro.str.269:
	.asciz	" "
	.size	.libro.str.269, 2

	.type	.libro.str.270,@object
.libro.str.270:
	.asciz	" "
	.size	.libro.str.270, 2

	.type	.libro.str.271,@object
.libro.str.271:
	.asciz	" "
	.size	.libro.str.271, 2

	.type	.libro.str.272,@object
.libro.str.272:
	.asciz	" "
	.size	.libro.str.272, 2

	.type	.libro.str.273,@object
.libro.str.273:
	.asciz	" "
	.size	.libro.str.273, 2

	.type	.libro.str.274,@object
.libro.str.274:
	.asciz	" "
	.size	.libro.str.274, 2

	.type	.libro.str.275,@object
.libro.str.275:
	.asciz	" "
	.size	.libro.str.275, 2

	.type	.libro.str.276,@object
.libro.str.276:
	.asciz	" "
	.size	.libro.str.276, 2

	.type	.libro.str.277,@object
.libro.str.277:
	.asciz	" "
	.size	.libro.str.277, 2

	.type	.libro.str.278,@object
.libro.str.278:
	.asciz	" "
	.size	.libro.str.278, 2

	.type	.libro.str.279,@object
.libro.str.279:
	.asciz	" "
	.size	.libro.str.279, 2

	.type	.libro.str.280,@object
.libro.str.280:
	.asciz	" "
	.size	.libro.str.280, 2

	.type	.libro.str.281,@object
.libro.str.281:
	.asciz	" "
	.size	.libro.str.281, 2

	.type	.libro.str.282,@object
.libro.str.282:
	.asciz	" "
	.size	.libro.str.282, 2

	.type	.libro.str.283,@object
.libro.str.283:
	.asciz	" "
	.size	.libro.str.283, 2

	.type	.libro.str.284,@object
.libro.str.284:
	.asciz	" "
	.size	.libro.str.284, 2

	.type	.libro.str.285,@object
.libro.str.285:
	.asciz	" "
	.size	.libro.str.285, 2

	.type	.libro.str.286,@object
.libro.str.286:
	.asciz	" "
	.size	.libro.str.286, 2

	.type	.libro.str.287,@object
.libro.str.287:
	.asciz	" "
	.size	.libro.str.287, 2

	.type	.libro.str.288,@object
.libro.str.288:
	.asciz	" "
	.size	.libro.str.288, 2

	.type	.libro.str.289,@object
.libro.str.289:
	.asciz	" "
	.size	.libro.str.289, 2

	.type	.libro.str.290,@object
.libro.str.290:
	.asciz	" "
	.size	.libro.str.290, 2

	.type	.libro.str.291,@object
.libro.str.291:
	.asciz	" "
	.size	.libro.str.291, 2

	.type	.libro.str.292,@object
.libro.str.292:
	.asciz	" "
	.size	.libro.str.292, 2

	.type	.libro.str.293,@object
.libro.str.293:
	.asciz	" "
	.size	.libro.str.293, 2

	.type	.libro.str.294,@object
.libro.str.294:
	.asciz	" "
	.size	.libro.str.294, 2

	.type	.libro.str.295,@object
.libro.str.295:
	.asciz	" "
	.size	.libro.str.295, 2

	.type	.libro.str.296,@object
.libro.str.296:
	.asciz	" "
	.size	.libro.str.296, 2

	.type	.libro.str.297,@object
.libro.str.297:
	.asciz	" "
	.size	.libro.str.297, 2

	.type	.libro.str.298,@object
.libro.str.298:
	.asciz	" "
	.size	.libro.str.298, 2

	.type	.libro.str.299,@object
.libro.str.299:
	.asciz	" "
	.size	.libro.str.299, 2

	.type	.libro.str.300,@object
.libro.str.300:
	.asciz	" "
	.size	.libro.str.300, 2

	.type	.libro.str.301,@object
.libro.str.301:
	.asciz	" "
	.size	.libro.str.301, 2

	.type	.libro.str.302,@object
.libro.str.302:
	.asciz	" "
	.size	.libro.str.302, 2

	.type	.libro.str.303,@object
.libro.str.303:
	.asciz	" "
	.size	.libro.str.303, 2

	.type	.libro.str.304,@object
.libro.str.304:
	.asciz	" "
	.size	.libro.str.304, 2

	.type	.libro.str.305,@object
.libro.str.305:
	.asciz	" "
	.size	.libro.str.305, 2

	.type	.libro.str.306,@object
.libro.str.306:
	.asciz	" "
	.size	.libro.str.306, 2

	.type	.libro.str.307,@object
.libro.str.307:
	.asciz	" "
	.size	.libro.str.307, 2

	.type	.libro.str.308,@object
.libro.str.308:
	.asciz	" "
	.size	.libro.str.308, 2

	.type	.libro.str.309,@object
.libro.str.309:
	.asciz	" "
	.size	.libro.str.309, 2

	.type	.libro.str.310,@object
.libro.str.310:
	.asciz	" "
	.size	.libro.str.310, 2

	.type	.libro.str.311,@object
.libro.str.311:
	.asciz	" "
	.size	.libro.str.311, 2

	.type	.libro.str.312,@object
.libro.str.312:
	.asciz	" "
	.size	.libro.str.312, 2

	.type	.libro.str.313,@object
.libro.str.313:
	.asciz	" "
	.size	.libro.str.313, 2

	.type	.libro.str.314,@object
.libro.str.314:
	.asciz	" "
	.size	.libro.str.314, 2

	.type	.libro.str.315,@object
.libro.str.315:
	.asciz	" "
	.size	.libro.str.315, 2

	.type	.libro.str.316,@object
.libro.str.316:
	.asciz	" "
	.size	.libro.str.316, 2

	.type	.libro.str.317,@object
.libro.str.317:
	.asciz	" "
	.size	.libro.str.317, 2

	.type	.libro.str.318,@object
.libro.str.318:
	.asciz	" "
	.size	.libro.str.318, 2

	.type	.libro.str.319,@object
.libro.str.319:
	.asciz	" "
	.size	.libro.str.319, 2

	.type	.libro.str.320,@object
.libro.str.320:
	.asciz	" "
	.size	.libro.str.320, 2

	.type	.libro.str.321,@object
.libro.str.321:
	.asciz	" "
	.size	.libro.str.321, 2

	.type	.libro.str.322,@object
.libro.str.322:
	.asciz	" "
	.size	.libro.str.322, 2

	.type	.libro.str.323,@object
.libro.str.323:
	.asciz	" "
	.size	.libro.str.323, 2

	.type	.libro.str.324,@object
.libro.str.324:
	.asciz	" "
	.size	.libro.str.324, 2

	.type	.libro.str.325,@object
.libro.str.325:
	.asciz	" "
	.size	.libro.str.325, 2

	.type	.libro.str.326,@object
.libro.str.326:
	.asciz	" "
	.size	.libro.str.326, 2

	.type	.libro.str.327,@object
.libro.str.327:
	.asciz	" "
	.size	.libro.str.327, 2

	.type	.libro.str.328,@object
.libro.str.328:
	.asciz	" "
	.size	.libro.str.328, 2

	.type	.libro.str.329,@object
.libro.str.329:
	.asciz	" "
	.size	.libro.str.329, 2

	.type	.libro.str.330,@object
.libro.str.330:
	.asciz	" "
	.size	.libro.str.330, 2

	.type	.libro.str.331,@object
.libro.str.331:
	.asciz	" "
	.size	.libro.str.331, 2

	.type	.libro.str.332,@object
.libro.str.332:
	.asciz	" "
	.size	.libro.str.332, 2

	.type	.libro.str.333,@object
.libro.str.333:
	.asciz	" "
	.size	.libro.str.333, 2

	.type	.libro.str.334,@object
.libro.str.334:
	.asciz	" "
	.size	.libro.str.334, 2

	.type	.libro.str.335,@object
.libro.str.335:
	.asciz	" "
	.size	.libro.str.335, 2

	.type	.libro.str.336,@object
.libro.str.336:
	.asciz	" "
	.size	.libro.str.336, 2

	.type	.libro.str.337,@object
.libro.str.337:
	.asciz	" "
	.size	.libro.str.337, 2

	.type	.libro.str.338,@object
.libro.str.338:
	.asciz	" "
	.size	.libro.str.338, 2

	.type	.libro.str.339,@object
.libro.str.339:
	.asciz	" "
	.size	.libro.str.339, 2

	.type	.libro.str.340,@object
.libro.str.340:
	.asciz	" "
	.size	.libro.str.340, 2

	.type	.libro.str.341,@object
.libro.str.341:
	.asciz	" "
	.size	.libro.str.341, 2

	.type	.libro.str.342,@object
.libro.str.342:
	.asciz	" "
	.size	.libro.str.342, 2

	.type	.libro.str.343,@object
.libro.str.343:
	.asciz	" "
	.size	.libro.str.343, 2

	.type	.libro.str.344,@object
.libro.str.344:
	.asciz	" "
	.size	.libro.str.344, 2

	.type	.libro.str.345,@object
.libro.str.345:
	.asciz	" "
	.size	.libro.str.345, 2

	.type	.libro.str.346,@object
.libro.str.346:
	.asciz	" "
	.size	.libro.str.346, 2

	.type	.libro.str.347,@object
.libro.str.347:
	.asciz	" "
	.size	.libro.str.347, 2

	.type	.libro.str.348,@object
.libro.str.348:
	.asciz	" "
	.size	.libro.str.348, 2

	.type	.libro.str.349,@object
.libro.str.349:
	.asciz	" "
	.size	.libro.str.349, 2

	.type	.libro.str.350,@object
.libro.str.350:
	.asciz	" "
	.size	.libro.str.350, 2

	.type	.libro.str.351,@object
.libro.str.351:
	.asciz	" "
	.size	.libro.str.351, 2

	.type	.libro.str.352,@object
.libro.str.352:
	.asciz	" "
	.size	.libro.str.352, 2

	.type	.libro.str.353,@object
.libro.str.353:
	.asciz	" "
	.size	.libro.str.353, 2

	.type	.libro.str.354,@object
.libro.str.354:
	.asciz	" "
	.size	.libro.str.354, 2

	.type	.libro.str.355,@object
.libro.str.355:
	.asciz	" "
	.size	.libro.str.355, 2

	.type	.libro.str.356,@object
.libro.str.356:
	.asciz	" "
	.size	.libro.str.356, 2

	.type	.libro.str.357,@object
.libro.str.357:
	.asciz	" "
	.size	.libro.str.357, 2

	.type	.libro.str.358,@object
.libro.str.358:
	.asciz	" "
	.size	.libro.str.358, 2

	.type	.libro.str.359,@object
.libro.str.359:
	.asciz	" "
	.size	.libro.str.359, 2

	.type	.libro.str.360,@object
.libro.str.360:
	.asciz	" "
	.size	.libro.str.360, 2

	.type	.libro.str.361,@object
.libro.str.361:
	.asciz	" "
	.size	.libro.str.361, 2

	.type	.libro.str.362,@object
.libro.str.362:
	.asciz	" "
	.size	.libro.str.362, 2

	.type	.libro.str.363,@object
.libro.str.363:
	.asciz	" "
	.size	.libro.str.363, 2

	.type	.libro.str.364,@object
.libro.str.364:
	.asciz	" "
	.size	.libro.str.364, 2

	.type	.libro.str.365,@object
.libro.str.365:
	.asciz	" "
	.size	.libro.str.365, 2

	.type	.libro.str.366,@object
.libro.str.366:
	.asciz	" "
	.size	.libro.str.366, 2

	.type	.libro.str.367,@object
.libro.str.367:
	.asciz	" "
	.size	.libro.str.367, 2

	.type	.libro.str.368,@object
.libro.str.368:
	.asciz	" "
	.size	.libro.str.368, 2

	.type	.libro.str.369,@object
.libro.str.369:
	.asciz	" "
	.size	.libro.str.369, 2

	.type	.libro.str.370,@object
.libro.str.370:
	.asciz	" "
	.size	.libro.str.370, 2

	.type	.libro.str.371,@object
.libro.str.371:
	.asciz	" "
	.size	.libro.str.371, 2

	.type	.libro.str.372,@object
.libro.str.372:
	.asciz	" "
	.size	.libro.str.372, 2

	.type	.libro.str.373,@object
.libro.str.373:
	.asciz	" "
	.size	.libro.str.373, 2

	.type	.libro.str.374,@object
.libro.str.374:
	.asciz	" "
	.size	.libro.str.374, 2

	.type	.libro.str.375,@object
.libro.str.375:
	.asciz	" "
	.size	.libro.str.375, 2

	.type	.libro.str.376,@object
.libro.str.376:
	.asciz	" "
	.size	.libro.str.376, 2

	.type	.libro.str.377,@object
.libro.str.377:
	.asciz	" "
	.size	.libro.str.377, 2

	.type	.libro.str.378,@object
.libro.str.378:
	.asciz	" "
	.size	.libro.str.378, 2

	.type	.libro.str.379,@object
.libro.str.379:
	.asciz	" "
	.size	.libro.str.379, 2

	.type	.libro.str.380,@object
.libro.str.380:
	.asciz	" "
	.size	.libro.str.380, 2

	.type	.libro.str.381,@object
.libro.str.381:
	.asciz	" "
	.size	.libro.str.381, 2

	.type	.libro.str.382,@object
.libro.str.382:
	.asciz	" "
	.size	.libro.str.382, 2

	.type	.libro.str.383,@object
.libro.str.383:
	.asciz	" "
	.size	.libro.str.383, 2

	.type	.libro.str.384,@object
.libro.str.384:
	.asciz	" "
	.size	.libro.str.384, 2

	.type	.libro.str.385,@object
.libro.str.385:
	.asciz	" "
	.size	.libro.str.385, 2

	.type	.libro.str.386,@object
.libro.str.386:
	.asciz	" "
	.size	.libro.str.386, 2

	.type	.libro.str.387,@object
.libro.str.387:
	.asciz	" "
	.size	.libro.str.387, 2

	.type	.libro.str.388,@object
.libro.str.388:
	.asciz	" "
	.size	.libro.str.388, 2

	.type	.libro.str.389,@object
.libro.str.389:
	.asciz	" "
	.size	.libro.str.389, 2

	.type	.libro.str.390,@object
.libro.str.390:
	.asciz	" "
	.size	.libro.str.390, 2

	.type	.libro.str.391,@object
.libro.str.391:
	.asciz	" "
	.size	.libro.str.391, 2

	.type	.libro.str.392,@object
.libro.str.392:
	.asciz	" "
	.size	.libro.str.392, 2

	.type	.libro.str.393,@object
.libro.str.393:
	.asciz	" "
	.size	.libro.str.393, 2

	.type	.libro.str.394,@object
.libro.str.394:
	.asciz	" "
	.size	.libro.str.394, 2

	.type	.libro.str.395,@object
.libro.str.395:
	.asciz	" "
	.size	.libro.str.395, 2

	.type	.libro.str.396,@object
.libro.str.396:
	.asciz	" "
	.size	.libro.str.396, 2

	.type	.libro.str.397,@object
.libro.str.397:
	.asciz	" "
	.size	.libro.str.397, 2

	.type	.libro.str.398,@object
.libro.str.398:
	.asciz	" "
	.size	.libro.str.398, 2

	.type	.libro.str.399,@object
.libro.str.399:
	.asciz	" "
	.size	.libro.str.399, 2

	.type	.libro.str.400,@object
.libro.str.400:
	.asciz	" "
	.size	.libro.str.400, 2

	.type	.libro.str.401,@object
.libro.str.401:
	.asciz	" "
	.size	.libro.str.401, 2

	.type	.libro.str.402,@object
.libro.str.402:
	.asciz	" "
	.size	.libro.str.402, 2

	.type	.libro.str.403,@object
.libro.str.403:
	.asciz	" "
	.size	.libro.str.403, 2

	.type	.libro.str.404,@object
.libro.str.404:
	.asciz	" "
	.size	.libro.str.404, 2

	.type	.libro.str.405,@object
.libro.str.405:
	.asciz	" "
	.size	.libro.str.405, 2

	.type	.libro.str.406,@object
.libro.str.406:
	.asciz	" "
	.size	.libro.str.406, 2

	.type	.libro.str.407,@object
.libro.str.407:
	.asciz	" "
	.size	.libro.str.407, 2

	.type	.libro.str.408,@object
.libro.str.408:
	.asciz	" "
	.size	.libro.str.408, 2

	.type	.libro.str.409,@object
.libro.str.409:
	.asciz	" "
	.size	.libro.str.409, 2

	.type	.libro.str.410,@object
.libro.str.410:
	.asciz	" "
	.size	.libro.str.410, 2

	.type	.libro.str.411,@object
.libro.str.411:
	.asciz	" "
	.size	.libro.str.411, 2

	.type	.libro.str.412,@object
.libro.str.412:
	.asciz	" "
	.size	.libro.str.412, 2

	.type	.libro.str.413,@object
.libro.str.413:
	.asciz	" "
	.size	.libro.str.413, 2

	.type	.libro.str.414,@object
.libro.str.414:
	.asciz	" "
	.size	.libro.str.414, 2

	.type	.libro.str.415,@object
.libro.str.415:
	.asciz	" "
	.size	.libro.str.415, 2

	.type	.libro.str.416,@object
.libro.str.416:
	.asciz	" "
	.size	.libro.str.416, 2

	.type	.libro.str.417,@object
.libro.str.417:
	.asciz	" "
	.size	.libro.str.417, 2

	.type	.libro.str.418,@object
.libro.str.418:
	.asciz	" "
	.size	.libro.str.418, 2

	.type	.libro.str.419,@object
.libro.str.419:
	.asciz	" "
	.size	.libro.str.419, 2

	.type	.libro.str.420,@object
.libro.str.420:
	.asciz	" "
	.size	.libro.str.420, 2

	.type	.libro.str.421,@object
.libro.str.421:
	.asciz	" "
	.size	.libro.str.421, 2

	.type	.libro.str.422,@object
.libro.str.422:
	.asciz	" "
	.size	.libro.str.422, 2

	.type	.libro.str.423,@object
.libro.str.423:
	.asciz	" "
	.size	.libro.str.423, 2

	.type	.libro.str.424,@object
.libro.str.424:
	.asciz	" "
	.size	.libro.str.424, 2

	.type	.libro.str.425,@object
.libro.str.425:
	.asciz	" "
	.size	.libro.str.425, 2

	.type	.libro.str.426,@object
.libro.str.426:
	.asciz	" "
	.size	.libro.str.426, 2

	.type	.libro.str.427,@object
.libro.str.427:
	.asciz	" "
	.size	.libro.str.427, 2

	.type	.libro.str.428,@object
.libro.str.428:
	.asciz	" "
	.size	.libro.str.428, 2

	.type	.libro.str.429,@object
.libro.str.429:
	.asciz	" "
	.size	.libro.str.429, 2

	.type	.libro.str.430,@object
.libro.str.430:
	.asciz	" "
	.size	.libro.str.430, 2

	.type	.libro.str.431,@object
.libro.str.431:
	.asciz	" "
	.size	.libro.str.431, 2

	.type	.libro.str.432,@object
.libro.str.432:
	.asciz	" "
	.size	.libro.str.432, 2

	.type	.libro.str.433,@object
.libro.str.433:
	.asciz	" "
	.size	.libro.str.433, 2

	.type	.libro.str.434,@object
.libro.str.434:
	.asciz	" "
	.size	.libro.str.434, 2

	.type	.libro.str.435,@object
.libro.str.435:
	.asciz	" "
	.size	.libro.str.435, 2

	.type	.libro.str.436,@object
.libro.str.436:
	.asciz	" "
	.size	.libro.str.436, 2

	.type	.libro.str.437,@object
.libro.str.437:
	.asciz	" "
	.size	.libro.str.437, 2

	.type	.libro.str.438,@object
.libro.str.438:
	.asciz	" "
	.size	.libro.str.438, 2

	.type	.libro.str.439,@object
.libro.str.439:
	.asciz	" "
	.size	.libro.str.439, 2

	.type	.libro.str.440,@object
.libro.str.440:
	.asciz	" "
	.size	.libro.str.440, 2

	.type	.libro.str.441,@object
.libro.str.441:
	.asciz	" "
	.size	.libro.str.441, 2

	.type	.libro.str.442,@object
.libro.str.442:
	.asciz	" "
	.size	.libro.str.442, 2

	.type	.libro.str.443,@object
.libro.str.443:
	.asciz	" "
	.size	.libro.str.443, 2

	.type	.libro.str.444,@object
.libro.str.444:
	.asciz	" "
	.size	.libro.str.444, 2

	.type	.libro.str.445,@object
.libro.str.445:
	.asciz	" "
	.size	.libro.str.445, 2

	.type	.libro.str.446,@object
.libro.str.446:
	.asciz	" "
	.size	.libro.str.446, 2

	.type	.libro.str.447,@object
.libro.str.447:
	.asciz	" "
	.size	.libro.str.447, 2

	.type	.libro.str.448,@object
.libro.str.448:
	.asciz	" "
	.size	.libro.str.448, 2

	.type	.libro.str.449,@object
.libro.str.449:
	.asciz	" "
	.size	.libro.str.449, 2

	.type	.libro.str.450,@object
.libro.str.450:
	.asciz	" "
	.size	.libro.str.450, 2

	.type	.libro.str.451,@object
.libro.str.451:
	.asciz	" "
	.size	.libro.str.451, 2

	.type	.libro.str.452,@object
.libro.str.452:
	.asciz	" "
	.size	.libro.str.452, 2

	.type	.libro.str.453,@object
.libro.str.453:
	.asciz	" "
	.size	.libro.str.453, 2

	.type	.libro.str.454,@object
.libro.str.454:
	.asciz	" "
	.size	.libro.str.454, 2

	.type	.libro.str.455,@object
.libro.str.455:
	.asciz	" "
	.size	.libro.str.455, 2

	.type	.libro.str.456,@object
.libro.str.456:
	.asciz	" "
	.size	.libro.str.456, 2

	.type	.libro.str.457,@object
.libro.str.457:
	.asciz	" "
	.size	.libro.str.457, 2

	.type	.libro.str.458,@object
.libro.str.458:
	.asciz	" "
	.size	.libro.str.458, 2

	.type	.libro.str.459,@object
.libro.str.459:
	.asciz	" "
	.size	.libro.str.459, 2

	.type	.libro.str.460,@object
.libro.str.460:
	.asciz	" "
	.size	.libro.str.460, 2

	.type	.libro.str.461,@object
.libro.str.461:
	.asciz	" "
	.size	.libro.str.461, 2

	.type	.libro.str.462,@object
.libro.str.462:
	.asciz	" "
	.size	.libro.str.462, 2

	.type	.libro.str.463,@object
.libro.str.463:
	.asciz	" "
	.size	.libro.str.463, 2

	.type	.libro.str.464,@object
.libro.str.464:
	.asciz	" "
	.size	.libro.str.464, 2

	.type	.libro.str.465,@object
.libro.str.465:
	.asciz	" "
	.size	.libro.str.465, 2

	.type	.libro.str.466,@object
.libro.str.466:
	.asciz	" "
	.size	.libro.str.466, 2

	.type	.libro.str.467,@object
.libro.str.467:
	.asciz	" "
	.size	.libro.str.467, 2

	.type	.libro.str.468,@object
.libro.str.468:
	.asciz	" "
	.size	.libro.str.468, 2

	.type	.libro.str.469,@object
.libro.str.469:
	.asciz	" "
	.size	.libro.str.469, 2

	.type	.libro.str.470,@object
.libro.str.470:
	.asciz	" "
	.size	.libro.str.470, 2

	.type	.libro.str.471,@object
.libro.str.471:
	.asciz	" "
	.size	.libro.str.471, 2

	.type	.libro.str.472,@object
.libro.str.472:
	.asciz	" "
	.size	.libro.str.472, 2

	.type	.libro.str.473,@object
.libro.str.473:
	.asciz	" "
	.size	.libro.str.473, 2

	.type	.libro.str.474,@object
.libro.str.474:
	.asciz	" "
	.size	.libro.str.474, 2

	.type	.libro.str.475,@object
.libro.str.475:
	.asciz	" "
	.size	.libro.str.475, 2

	.type	.libro.str.476,@object
.libro.str.476:
	.asciz	" "
	.size	.libro.str.476, 2

	.type	.libro.str.477,@object
.libro.str.477:
	.asciz	" "
	.size	.libro.str.477, 2

	.type	.libro.str.478,@object
.libro.str.478:
	.asciz	" "
	.size	.libro.str.478, 2

	.type	.libro.str.479,@object
.libro.str.479:
	.asciz	" "
	.size	.libro.str.479, 2

	.type	.libro.str.480,@object
.libro.str.480:
	.asciz	" "
	.size	.libro.str.480, 2

	.type	.libro.str.481,@object
.libro.str.481:
	.asciz	" "
	.size	.libro.str.481, 2

	.type	.libro.str.482,@object
.libro.str.482:
	.asciz	" "
	.size	.libro.str.482, 2

	.type	.libro.str.483,@object
.libro.str.483:
	.asciz	" "
	.size	.libro.str.483, 2

	.type	.libro.str.484,@object
.libro.str.484:
	.asciz	" "
	.size	.libro.str.484, 2

	.type	.libro.str.485,@object
.libro.str.485:
	.asciz	" "
	.size	.libro.str.485, 2

	.type	.libro.str.486,@object
.libro.str.486:
	.asciz	" "
	.size	.libro.str.486, 2

	.type	.libro.str.487,@object
.libro.str.487:
	.asciz	" "
	.size	.libro.str.487, 2

	.type	.libro.str.488,@object
.libro.str.488:
	.asciz	" "
	.size	.libro.str.488, 2

	.type	.libro.str.489,@object
.libro.str.489:
	.asciz	" "
	.size	.libro.str.489, 2

	.type	.libro.str.490,@object
.libro.str.490:
	.asciz	" "
	.size	.libro.str.490, 2

	.type	.libro.str.491,@object
.libro.str.491:
	.asciz	" "
	.size	.libro.str.491, 2

	.type	.libro.str.492,@object
.libro.str.492:
	.asciz	" "
	.size	.libro.str.492, 2

	.type	.libro.str.493,@object
.libro.str.493:
	.asciz	" "
	.size	.libro.str.493, 2

	.type	.libro.str.494,@object
.libro.str.494:
	.asciz	" "
	.size	.libro.str.494, 2

	.type	.libro.str.495,@object
.libro.str.495:
	.asciz	" "
	.size	.libro.str.495, 2

	.type	.libro.str.496,@object
.libro.str.496:
	.asciz	" "
	.size	.libro.str.496, 2

	.type	.libro.str.497,@object
.libro.str.497:
	.asciz	" "
	.size	.libro.str.497, 2

	.type	.libro.str.498,@object
.libro.str.498:
	.asciz	" "
	.size	.libro.str.498, 2

	.type	.libro.str.499,@object
.libro.str.499:
	.asciz	" "
	.size	.libro.str.499, 2

	.type	.libro.str.500,@object
.libro.str.500:
	.asciz	" "
	.size	.libro.str.500, 2

	.type	.libro.str.501,@object
.libro.str.501:
	.asciz	" "
	.size	.libro.str.501, 2

	.type	.libro.str.502,@object
.libro.str.502:
	.asciz	" "
	.size	.libro.str.502, 2

	.type	.libro.str.503,@object
.libro.str.503:
	.asciz	" "
	.size	.libro.str.503, 2

	.type	.libro.str.504,@object
.libro.str.504:
	.asciz	" "
	.size	.libro.str.504, 2

	.type	.libro.str.505,@object
.libro.str.505:
	.asciz	" "
	.size	.libro.str.505, 2

	.type	.libro.str.506,@object
.libro.str.506:
	.asciz	" "
	.size	.libro.str.506, 2

	.type	.libro.str.507,@object
.libro.str.507:
	.asciz	" "
	.size	.libro.str.507, 2

	.type	.libro.str.508,@object
.libro.str.508:
	.asciz	" "
	.size	.libro.str.508, 2

	.type	.libro.str.509,@object
.libro.str.509:
	.asciz	" "
	.size	.libro.str.509, 2

	.type	.libro.str.510,@object
.libro.str.510:
	.asciz	" "
	.size	.libro.str.510, 2

	.type	.libro.str.511,@object
.libro.str.511:
	.asciz	" "
	.size	.libro.str.511, 2

	.type	.libro.str.512,@object
.libro.str.512:
	.asciz	" "
	.size	.libro.str.512, 2

	.type	.libro.str.513,@object
.libro.str.513:
	.asciz	""
	.size	.libro.str.513, 1

