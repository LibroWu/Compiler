	.text
	.globl main
	.p2align	2
	.type	main,@function
getcount: 
	addi sp, sp, -8
	sw ra, 4(sp)
	sw s0, 0(sp)
	addi t1, zero, 0
	addi t0, zero, 4
	mul t1, t1, t0
	addi t0, t1, 4
	add t1, a0, t0
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
	lui t6, 1048575
	addi t6, t6, -960
	add sp, sp, t6
	lui t6, 1
	add t6, sp, t6
	sw ra, 956(t6)
	lui t6, 1
	add t6, sp, t6
	sw s0, 952(t6)
	lui t6, 1
	add t6, sp, t6
	sw s1, 948(t6)
	lui t6, 1
	add t6, sp, t6
	sw s2, 944(t6)
	lui t6, 1
	add t6, sp, t6
	sw s3, 940(t6)
	lui t6, 1
	add t6, sp, t6
	sw s4, 936(t6)
	lui t6, 1
	add t6, sp, t6
	sw s5, 932(t6)
	lui t6, 1
	add t6, sp, t6
	sw s6, 928(t6)
	lui t6, 1
	add t6, sp, t6
	sw s7, 924(t6)
	lui t6, 1
	add t6, sp, t6
	sw s8, 920(t6)
	lui t6, 1
	add t6, sp, t6
	sw s9, 916(t6)
	lui t6, 1
	add t6, sp, t6
	sw s10, 912(t6)
	lui t6, 1
	add t6, sp, t6
	sw s11, 908(t6)
	lui t6, 1
	addi t6, t6, 960
	add s0, sp, t6
	addi a0, zero, 8
	call myNew
	addi s1, zero, 1
	sw s1, 0(a0)
	la s1, count
	sw a0, 0(s1)
	la s1, count
	lw s2, 0(s1)
	addi a0, zero, 0
	addi s1, zero, 4
	mul a0, a0, s1
	addi s1, a0, 4
	add a0, s2, s1
	addi s1, zero, 0
	sw s1, 0(a0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -132(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -140(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -144(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -148(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -152(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -156(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -160(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -168(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -176(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -184(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -196(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -200(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -208(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -212(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -216(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -220(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -224(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -228(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -236(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -240(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -252(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -260(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -268(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -276(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -280(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -284(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -288(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -292(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -296(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -304(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -308(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -320(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -328(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -336(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -344(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -348(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -352(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -356(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -360(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -364(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -372(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -376(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -388(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -396(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -404(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -412(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -416(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -420(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -424(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -428(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -432(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -440(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -444(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -456(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -464(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -472(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -480(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -484(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -488(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -492(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -496(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -500(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -508(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -512(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -524(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -532(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -540(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -548(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -552(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -556(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -560(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -564(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -568(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -576(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -580(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -592(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -600(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -608(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -616(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -620(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -624(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -628(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -632(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -636(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -644(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -648(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -660(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -668(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -676(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -684(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -688(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -692(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -696(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -700(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -704(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -712(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -716(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -728(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -736(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -744(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -752(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -756(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -760(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -764(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -768(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -772(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -780(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -784(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -796(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -804(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -812(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -820(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -824(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -828(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -832(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -836(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -840(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -848(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -852(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -864(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -872(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -880(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -888(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -892(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -896(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -900(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -904(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -908(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -916(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -920(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -932(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -940(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -948(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -956(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -960(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -964(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -968(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -972(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -976(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -984(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -988(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1000(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1008(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1016(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1024(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1028(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1032(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1036(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1040(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1044(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1052(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1056(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1068(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1076(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1084(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1092(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1096(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1100(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1104(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1108(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1112(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1120(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1124(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1136(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1144(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1152(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1160(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1164(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1168(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1172(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1176(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1180(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1188(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1192(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1204(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1212(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1220(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1228(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1232(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1236(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1240(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1244(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1248(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1256(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1260(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1272(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1280(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1288(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1296(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1300(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1304(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1308(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1312(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1316(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1324(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1328(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1340(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1348(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1356(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1364(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1368(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1372(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1376(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1380(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1384(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1392(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1396(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1408(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1416(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1424(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1432(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1436(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1440(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1444(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1448(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1452(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1460(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1464(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1476(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1484(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1492(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1500(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1504(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1508(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1512(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1516(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1520(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1528(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1532(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1544(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1552(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1560(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1568(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1572(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1576(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1580(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1584(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1588(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1596(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1600(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1612(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1620(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1628(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1636(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1640(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -1644(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	sw a0, -5056(s0)
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s10, a0
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s9, a0
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s8, a0
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s7, a0
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s6, a0
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s5, a0
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s4, a0
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s3, a0
	la s1, count
	lw a0, 0(s1)
	call getcount
	mv s2, a0
	lw a0, -132(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3496(s0)
	addi s11, zero, 1
	lw a0, -3496(s0)
	sw s11, 0(a0)
	la a0, .libro.str
	sw a0, -3500(s0)
	addi s11, a1, 4
	lw a0, -3500(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -140(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3520(s0)
	addi s11, zero, 1
	lw a0, -3520(s0)
	sw s11, 0(a0)
	la a0, .libro.str.1
	sw a0, -3524(s0)
	addi s11, a1, 4
	lw a0, -3524(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -144(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3544(s0)
	addi s11, zero, 1
	lw a0, -3544(s0)
	sw s11, 0(a0)
	la a0, .libro.str.2
	sw a0, -3548(s0)
	addi s11, a1, 4
	lw a0, -3548(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -148(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3568(s0)
	addi s11, zero, 1
	lw a0, -3568(s0)
	sw s11, 0(a0)
	la a0, .libro.str.3
	sw a0, -3572(s0)
	addi s11, a1, 4
	lw a0, -3572(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -152(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3592(s0)
	addi s11, zero, 1
	lw a0, -3592(s0)
	sw s11, 0(a0)
	la a0, .libro.str.4
	sw a0, -3596(s0)
	addi s11, a1, 4
	lw a0, -3596(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -156(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3616(s0)
	addi s11, zero, 1
	lw a0, -3616(s0)
	sw s11, 0(a0)
	la a0, .libro.str.5
	sw a0, -3620(s0)
	addi s11, a1, 4
	lw a0, -3620(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -160(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3640(s0)
	addi s11, zero, 1
	lw a0, -3640(s0)
	sw s11, 0(a0)
	la a0, .libro.str.6
	sw a0, -3644(s0)
	addi s11, a1, 4
	lw a0, -3644(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -168(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3664(s0)
	addi s11, zero, 1
	lw a0, -3664(s0)
	sw s11, 0(a0)
	la a0, .libro.str.7
	sw a0, -3668(s0)
	addi s11, a1, 4
	lw a0, -3668(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -176(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3688(s0)
	addi s11, zero, 1
	lw a0, -3688(s0)
	sw s11, 0(a0)
	la a0, .libro.str.8
	sw a0, -3692(s0)
	addi s11, a1, 4
	lw a0, -3692(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -184(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3712(s0)
	addi s11, zero, 1
	lw a0, -3712(s0)
	sw s11, 0(a0)
	la a0, .libro.str.9
	sw a0, -3716(s0)
	addi s11, a1, 4
	lw a0, -3716(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -196(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3736(s0)
	addi s11, zero, 1
	lw a0, -3736(s0)
	sw s11, 0(a0)
	la a0, .libro.str.10
	sw a0, -3740(s0)
	addi s11, a1, 4
	lw a0, -3740(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -200(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3760(s0)
	addi s11, zero, 1
	lw a0, -3760(s0)
	sw s11, 0(a0)
	la a0, .libro.str.11
	sw a0, -3764(s0)
	addi s11, a1, 4
	lw a0, -3764(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -208(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3784(s0)
	addi s11, zero, 1
	lw a0, -3784(s0)
	sw s11, 0(a0)
	la a0, .libro.str.12
	sw a0, -3788(s0)
	addi s11, a1, 4
	lw a0, -3788(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -212(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3808(s0)
	addi s11, zero, 1
	lw a0, -3808(s0)
	sw s11, 0(a0)
	la a0, .libro.str.13
	sw a0, -3812(s0)
	addi s11, a1, 4
	lw a0, -3812(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -216(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3832(s0)
	addi s11, zero, 1
	lw a0, -3832(s0)
	sw s11, 0(a0)
	la a0, .libro.str.14
	sw a0, -3836(s0)
	addi s11, a1, 4
	lw a0, -3836(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -220(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3856(s0)
	addi s11, zero, 1
	lw a0, -3856(s0)
	sw s11, 0(a0)
	la a0, .libro.str.15
	sw a0, -3860(s0)
	addi s11, a1, 4
	lw a0, -3860(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -224(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3880(s0)
	addi s11, zero, 1
	lw a0, -3880(s0)
	sw s11, 0(a0)
	la a0, .libro.str.16
	sw a0, -3884(s0)
	addi s11, a1, 4
	lw a0, -3884(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -228(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3904(s0)
	addi s11, zero, 1
	lw a0, -3904(s0)
	sw s11, 0(a0)
	la a0, .libro.str.17
	sw a0, -3908(s0)
	addi s11, a1, 4
	lw a0, -3908(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -236(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3928(s0)
	addi s11, zero, 1
	lw a0, -3928(s0)
	sw s11, 0(a0)
	la a0, .libro.str.18
	sw a0, -3932(s0)
	addi s11, a1, 4
	lw a0, -3932(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -240(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3952(s0)
	addi s11, zero, 1
	lw a0, -3952(s0)
	sw s11, 0(a0)
	la a0, .libro.str.19
	sw a0, -3956(s0)
	addi s11, a1, 4
	lw a0, -3956(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -252(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3976(s0)
	addi s11, zero, 1
	lw a0, -3976(s0)
	sw s11, 0(a0)
	la a0, .libro.str.20
	sw a0, -3980(s0)
	addi s11, a1, 4
	lw a0, -3980(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -260(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4000(s0)
	addi s11, zero, 1
	lw a0, -4000(s0)
	sw s11, 0(a0)
	la a0, .libro.str.21
	sw a0, -4004(s0)
	addi s11, a1, 4
	lw a0, -4004(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -268(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4024(s0)
	addi s11, zero, 1
	lw a0, -4024(s0)
	sw s11, 0(a0)
	la a0, .libro.str.22
	sw a0, -4028(s0)
	addi s11, a1, 4
	lw a0, -4028(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -276(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4048(s0)
	addi s11, zero, 1
	lw a0, -4048(s0)
	sw s11, 0(a0)
	la a0, .libro.str.23
	sw a0, -4052(s0)
	addi s11, a1, 4
	lw a0, -4052(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -280(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4072(s0)
	addi s11, zero, 1
	lw a0, -4072(s0)
	sw s11, 0(a0)
	la a0, .libro.str.24
	sw a0, -4076(s0)
	addi s11, a1, 4
	lw a0, -4076(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -284(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4096(s0)
	addi s11, zero, 1
	lw a0, -4096(s0)
	sw s11, 0(a0)
	la a0, .libro.str.25
	sw a0, -4100(s0)
	addi s11, a1, 4
	lw a0, -4100(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -288(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4120(s0)
	addi s11, zero, 1
	lw a0, -4120(s0)
	sw s11, 0(a0)
	la a0, .libro.str.26
	sw a0, -4124(s0)
	addi s11, a1, 4
	lw a0, -4124(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -292(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4144(s0)
	addi s11, zero, 1
	lw a0, -4144(s0)
	sw s11, 0(a0)
	la a0, .libro.str.27
	sw a0, -4148(s0)
	addi s11, a1, 4
	lw a0, -4148(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -296(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4168(s0)
	addi s11, zero, 1
	lw a0, -4168(s0)
	sw s11, 0(a0)
	la a0, .libro.str.28
	sw a0, -4172(s0)
	addi s11, a1, 4
	lw a0, -4172(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -304(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4192(s0)
	addi s11, zero, 1
	lw a0, -4192(s0)
	sw s11, 0(a0)
	la a0, .libro.str.29
	sw a0, -4196(s0)
	addi s11, a1, 4
	lw a0, -4196(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -308(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4216(s0)
	addi s11, zero, 1
	lw a0, -4216(s0)
	sw s11, 0(a0)
	la a0, .libro.str.30
	sw a0, -4220(s0)
	addi s11, a1, 4
	lw a0, -4220(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -320(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4240(s0)
	addi s11, zero, 1
	lw a0, -4240(s0)
	sw s11, 0(a0)
	la a0, .libro.str.31
	sw a0, -4244(s0)
	addi s11, a1, 4
	lw a0, -4244(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -328(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4264(s0)
	addi s11, zero, 1
	lw a0, -4264(s0)
	sw s11, 0(a0)
	la a0, .libro.str.32
	sw a0, -4268(s0)
	addi s11, a1, 4
	lw a0, -4268(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -336(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4288(s0)
	addi s11, zero, 1
	lw a0, -4288(s0)
	sw s11, 0(a0)
	la a0, .libro.str.33
	sw a0, -4292(s0)
	addi s11, a1, 4
	lw a0, -4292(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -344(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4312(s0)
	addi s11, zero, 1
	lw a0, -4312(s0)
	sw s11, 0(a0)
	la a0, .libro.str.34
	sw a0, -4316(s0)
	addi s11, a1, 4
	lw a0, -4316(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -348(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4336(s0)
	addi s11, zero, 1
	lw a0, -4336(s0)
	sw s11, 0(a0)
	la a0, .libro.str.35
	sw a0, -4340(s0)
	addi s11, a1, 4
	lw a0, -4340(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -352(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4360(s0)
	addi s11, zero, 1
	lw a0, -4360(s0)
	sw s11, 0(a0)
	la a0, .libro.str.36
	sw a0, -4364(s0)
	addi s11, a1, 4
	lw a0, -4364(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -356(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4384(s0)
	addi s11, zero, 1
	lw a0, -4384(s0)
	sw s11, 0(a0)
	la a0, .libro.str.37
	sw a0, -4388(s0)
	addi s11, a1, 4
	lw a0, -4388(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -360(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4408(s0)
	addi s11, zero, 1
	lw a0, -4408(s0)
	sw s11, 0(a0)
	la a0, .libro.str.38
	sw a0, -4412(s0)
	addi s11, a1, 4
	lw a0, -4412(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -364(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4432(s0)
	addi s11, zero, 1
	lw a0, -4432(s0)
	sw s11, 0(a0)
	la a0, .libro.str.39
	sw a0, -4436(s0)
	addi s11, a1, 4
	lw a0, -4436(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -372(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4456(s0)
	addi s11, zero, 1
	lw a0, -4456(s0)
	sw s11, 0(a0)
	la a0, .libro.str.40
	sw a0, -4460(s0)
	addi s11, a1, 4
	lw a0, -4460(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -376(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4480(s0)
	addi s11, zero, 1
	lw a0, -4480(s0)
	sw s11, 0(a0)
	la a0, .libro.str.41
	sw a0, -4484(s0)
	addi s11, a1, 4
	lw a0, -4484(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -388(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4504(s0)
	addi s11, zero, 1
	lw a0, -4504(s0)
	sw s11, 0(a0)
	la a0, .libro.str.42
	sw a0, -4508(s0)
	addi s11, a1, 4
	lw a0, -4508(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -396(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4528(s0)
	addi s11, zero, 1
	lw a0, -4528(s0)
	sw s11, 0(a0)
	la a0, .libro.str.43
	sw a0, -4532(s0)
	addi s11, a1, 4
	lw a0, -4532(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -404(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4552(s0)
	addi s11, zero, 1
	lw a0, -4552(s0)
	sw s11, 0(a0)
	la a0, .libro.str.44
	sw a0, -4556(s0)
	addi s11, a1, 4
	lw a0, -4556(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -412(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4576(s0)
	addi s11, zero, 1
	lw a0, -4576(s0)
	sw s11, 0(a0)
	la a0, .libro.str.45
	sw a0, -4580(s0)
	addi s11, a1, 4
	lw a0, -4580(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -416(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4600(s0)
	addi s11, zero, 1
	lw a0, -4600(s0)
	sw s11, 0(a0)
	la a0, .libro.str.46
	sw a0, -4604(s0)
	addi s11, a1, 4
	lw a0, -4604(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -420(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4624(s0)
	addi s11, zero, 1
	lw a0, -4624(s0)
	sw s11, 0(a0)
	la a0, .libro.str.47
	sw a0, -4628(s0)
	addi s11, a1, 4
	lw a0, -4628(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -424(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4648(s0)
	addi s11, zero, 1
	lw a0, -4648(s0)
	sw s11, 0(a0)
	la a0, .libro.str.48
	sw a0, -4652(s0)
	addi s11, a1, 4
	lw a0, -4652(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -428(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4672(s0)
	addi s11, zero, 1
	lw a0, -4672(s0)
	sw s11, 0(a0)
	la a0, .libro.str.49
	sw a0, -4676(s0)
	addi s11, a1, 4
	lw a0, -4676(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -432(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4696(s0)
	addi s11, zero, 1
	lw a0, -4696(s0)
	sw s11, 0(a0)
	la a0, .libro.str.50
	sw a0, -4700(s0)
	addi s11, a1, 4
	lw a0, -4700(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -440(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4720(s0)
	addi s11, zero, 1
	lw a0, -4720(s0)
	sw s11, 0(a0)
	la a0, .libro.str.51
	sw a0, -4724(s0)
	addi s11, a1, 4
	lw a0, -4724(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -444(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4744(s0)
	addi s11, zero, 1
	lw a0, -4744(s0)
	sw s11, 0(a0)
	la a0, .libro.str.52
	sw a0, -4748(s0)
	addi s11, a1, 4
	lw a0, -4748(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -456(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4768(s0)
	addi s11, zero, 1
	lw a0, -4768(s0)
	sw s11, 0(a0)
	la a0, .libro.str.53
	sw a0, -4772(s0)
	addi s11, a1, 4
	lw a0, -4772(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -464(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4792(s0)
	addi s11, zero, 1
	lw a0, -4792(s0)
	sw s11, 0(a0)
	la a0, .libro.str.54
	sw a0, -4796(s0)
	addi s11, a1, 4
	lw a0, -4796(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -472(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4816(s0)
	addi s11, zero, 1
	lw a0, -4816(s0)
	sw s11, 0(a0)
	la a0, .libro.str.55
	sw a0, -4820(s0)
	addi s11, a1, 4
	lw a0, -4820(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -480(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4840(s0)
	addi s11, zero, 1
	lw a0, -4840(s0)
	sw s11, 0(a0)
	la a0, .libro.str.56
	sw a0, -4844(s0)
	addi s11, a1, 4
	lw a0, -4844(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -484(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4864(s0)
	addi s11, zero, 1
	lw a0, -4864(s0)
	sw s11, 0(a0)
	la a0, .libro.str.57
	sw a0, -4868(s0)
	addi s11, a1, 4
	lw a0, -4868(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -488(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4888(s0)
	addi s11, zero, 1
	lw a0, -4888(s0)
	sw s11, 0(a0)
	la a0, .libro.str.58
	sw a0, -4892(s0)
	addi s11, a1, 4
	lw a0, -4892(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -492(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4912(s0)
	addi s11, zero, 1
	lw a0, -4912(s0)
	sw s11, 0(a0)
	la a0, .libro.str.59
	sw a0, -4916(s0)
	addi s11, a1, 4
	lw a0, -4916(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -496(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4936(s0)
	addi s11, zero, 1
	lw a0, -4936(s0)
	sw s11, 0(a0)
	la a0, .libro.str.60
	sw a0, -4940(s0)
	addi s11, a1, 4
	lw a0, -4940(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -500(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4960(s0)
	addi s11, zero, 1
	lw a0, -4960(s0)
	sw s11, 0(a0)
	la a0, .libro.str.61
	sw a0, -4964(s0)
	addi s11, a1, 4
	lw a0, -4964(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -508(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4984(s0)
	addi s11, zero, 1
	lw a0, -4984(s0)
	sw s11, 0(a0)
	la a0, .libro.str.62
	sw a0, -4988(s0)
	addi s11, a1, 4
	lw a0, -4988(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -512(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -5008(s0)
	addi s11, zero, 1
	lw a0, -5008(s0)
	sw s11, 0(a0)
	la a0, .libro.str.63
	sw a0, -5012(s0)
	addi s11, a1, 4
	lw a0, -5012(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -524(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -5032(s0)
	addi s11, zero, 1
	lw a0, -5032(s0)
	sw s11, 0(a0)
	la a0, .libro.str.64
	sw a0, -5036(s0)
	addi s11, a1, 4
	lw a0, -5036(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -532(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -5052(s0)
	addi s11, zero, 1
	lw a0, -5052(s0)
	sw s11, 0(a0)
	la a0, .libro.str.65
	sw a0, -60(s0)
	addi s11, a1, 4
	lw a0, -60(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -540(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -76(s0)
	addi s11, zero, 1
	lw a0, -76(s0)
	sw s11, 0(a0)
	la a0, .libro.str.66
	sw a0, -84(s0)
	addi s11, a1, 4
	lw a0, -84(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -548(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -100(s0)
	addi s11, zero, 1
	lw a0, -100(s0)
	sw s11, 0(a0)
	la a0, .libro.str.67
	sw a0, -108(s0)
	addi s11, a1, 4
	lw a0, -108(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -552(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -124(s0)
	addi s11, zero, 1
	lw a0, -124(s0)
	sw s11, 0(a0)
	la a0, .libro.str.68
	sw a0, -136(s0)
	addi s11, a1, 4
	lw a0, -136(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -556(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -188(s0)
	addi s11, zero, 1
	lw a0, -188(s0)
	sw s11, 0(a0)
	la a0, .libro.str.69
	sw a0, -204(s0)
	addi s11, a1, 4
	lw a0, -204(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -560(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -256(s0)
	addi s11, zero, 1
	lw a0, -256(s0)
	sw s11, 0(a0)
	la a0, .libro.str.70
	sw a0, -272(s0)
	addi s11, a1, 4
	lw a0, -272(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -564(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -324(s0)
	addi s11, zero, 1
	lw a0, -324(s0)
	sw s11, 0(a0)
	la a0, .libro.str.71
	sw a0, -340(s0)
	addi s11, a1, 4
	lw a0, -340(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -568(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -392(s0)
	addi s11, zero, 1
	lw a0, -392(s0)
	sw s11, 0(a0)
	la a0, .libro.str.72
	sw a0, -408(s0)
	addi s11, a1, 4
	lw a0, -408(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -576(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -460(s0)
	addi s11, zero, 1
	lw a0, -460(s0)
	sw s11, 0(a0)
	la a0, .libro.str.73
	sw a0, -476(s0)
	addi s11, a1, 4
	lw a0, -476(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -580(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -528(s0)
	addi s11, zero, 1
	lw a0, -528(s0)
	sw s11, 0(a0)
	la a0, .libro.str.74
	sw a0, -544(s0)
	addi s11, a1, 4
	lw a0, -544(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -592(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -596(s0)
	addi s11, zero, 1
	lw a0, -596(s0)
	sw s11, 0(a0)
	la a0, .libro.str.75
	sw a0, -612(s0)
	addi s11, a1, 4
	lw a0, -612(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -600(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -664(s0)
	addi s11, zero, 1
	lw a0, -664(s0)
	sw s11, 0(a0)
	la a0, .libro.str.76
	sw a0, -680(s0)
	addi s11, a1, 4
	lw a0, -680(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -608(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -732(s0)
	addi s11, zero, 1
	lw a0, -732(s0)
	sw s11, 0(a0)
	la a0, .libro.str.77
	sw a0, -748(s0)
	addi s11, a1, 4
	lw a0, -748(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -616(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -800(s0)
	addi s11, zero, 1
	lw a0, -800(s0)
	sw s11, 0(a0)
	la a0, .libro.str.78
	sw a0, -816(s0)
	addi s11, a1, 4
	lw a0, -816(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -620(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -868(s0)
	addi s11, zero, 1
	lw a0, -868(s0)
	sw s11, 0(a0)
	la a0, .libro.str.79
	sw a0, -884(s0)
	addi s11, a1, 4
	lw a0, -884(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -624(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -936(s0)
	addi s11, zero, 1
	lw a0, -936(s0)
	sw s11, 0(a0)
	la a0, .libro.str.80
	sw a0, -952(s0)
	addi s11, a1, 4
	lw a0, -952(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -628(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1004(s0)
	addi s11, zero, 1
	lw a0, -1004(s0)
	sw s11, 0(a0)
	la a0, .libro.str.81
	sw a0, -1020(s0)
	addi s11, a1, 4
	lw a0, -1020(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -632(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1072(s0)
	addi s11, zero, 1
	lw a0, -1072(s0)
	sw s11, 0(a0)
	la a0, .libro.str.82
	sw a0, -1088(s0)
	addi s11, a1, 4
	lw a0, -1088(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -636(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1140(s0)
	addi s11, zero, 1
	lw a0, -1140(s0)
	sw s11, 0(a0)
	la a0, .libro.str.83
	sw a0, -1156(s0)
	addi s11, a1, 4
	lw a0, -1156(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -644(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1208(s0)
	addi s11, zero, 1
	lw a0, -1208(s0)
	sw s11, 0(a0)
	la a0, .libro.str.84
	sw a0, -1224(s0)
	addi s11, a1, 4
	lw a0, -1224(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -648(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1276(s0)
	addi s11, zero, 1
	lw a0, -1276(s0)
	sw s11, 0(a0)
	la a0, .libro.str.85
	sw a0, -1292(s0)
	addi s11, a1, 4
	lw a0, -1292(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -660(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1344(s0)
	addi s11, zero, 1
	lw a0, -1344(s0)
	sw s11, 0(a0)
	la a0, .libro.str.86
	sw a0, -1360(s0)
	addi s11, a1, 4
	lw a0, -1360(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -668(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1412(s0)
	addi s11, zero, 1
	lw a0, -1412(s0)
	sw s11, 0(a0)
	la a0, .libro.str.87
	sw a0, -1428(s0)
	addi s11, a1, 4
	lw a0, -1428(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -676(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1480(s0)
	addi s11, zero, 1
	lw a0, -1480(s0)
	sw s11, 0(a0)
	la a0, .libro.str.88
	sw a0, -1496(s0)
	addi s11, a1, 4
	lw a0, -1496(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -684(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1548(s0)
	addi s11, zero, 1
	lw a0, -1548(s0)
	sw s11, 0(a0)
	la a0, .libro.str.89
	sw a0, -1564(s0)
	addi s11, a1, 4
	lw a0, -1564(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -688(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1616(s0)
	addi s11, zero, 1
	lw a0, -1616(s0)
	sw s11, 0(a0)
	la a0, .libro.str.90
	sw a0, -1632(s0)
	addi s11, a1, 4
	lw a0, -1632(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -692(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1660(s0)
	addi s11, zero, 1
	lw a0, -1660(s0)
	sw s11, 0(a0)
	la a0, .libro.str.91
	sw a0, -1668(s0)
	addi s11, a1, 4
	lw a0, -1668(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -696(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1684(s0)
	addi s11, zero, 1
	lw a0, -1684(s0)
	sw s11, 0(a0)
	la a0, .libro.str.92
	sw a0, -1692(s0)
	addi s11, a1, 4
	lw a0, -1692(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -700(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1708(s0)
	addi s11, zero, 1
	lw a0, -1708(s0)
	sw s11, 0(a0)
	la a0, .libro.str.93
	sw a0, -1716(s0)
	addi s11, a1, 4
	lw a0, -1716(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -704(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1732(s0)
	addi s11, zero, 1
	lw a0, -1732(s0)
	sw s11, 0(a0)
	la a0, .libro.str.94
	sw a0, -1740(s0)
	addi s11, a1, 4
	lw a0, -1740(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -712(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1756(s0)
	addi s11, zero, 1
	lw a0, -1756(s0)
	sw s11, 0(a0)
	la a0, .libro.str.95
	sw a0, -1764(s0)
	addi s11, a1, 4
	lw a0, -1764(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -716(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1780(s0)
	addi s11, zero, 1
	lw a0, -1780(s0)
	sw s11, 0(a0)
	la a0, .libro.str.96
	sw a0, -1788(s0)
	addi s11, a1, 4
	lw a0, -1788(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -728(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1804(s0)
	addi s11, zero, 1
	lw a0, -1804(s0)
	sw s11, 0(a0)
	la a0, .libro.str.97
	sw a0, -1812(s0)
	addi s11, a1, 4
	lw a0, -1812(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -736(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1828(s0)
	addi s11, zero, 1
	lw a0, -1828(s0)
	sw s11, 0(a0)
	la a0, .libro.str.98
	sw a0, -1836(s0)
	addi s11, a1, 4
	lw a0, -1836(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -744(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1852(s0)
	addi s11, zero, 1
	lw a0, -1852(s0)
	sw s11, 0(a0)
	la a0, .libro.str.99
	sw a0, -1860(s0)
	addi s11, a1, 4
	lw a0, -1860(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -752(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1876(s0)
	addi s11, zero, 1
	lw a0, -1876(s0)
	sw s11, 0(a0)
	la a0, .libro.str.100
	sw a0, -1884(s0)
	addi s11, a1, 4
	lw a0, -1884(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -756(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1900(s0)
	addi s11, zero, 1
	lw a0, -1900(s0)
	sw s11, 0(a0)
	la a0, .libro.str.101
	sw a0, -1908(s0)
	addi s11, a1, 4
	lw a0, -1908(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -760(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1924(s0)
	addi s11, zero, 1
	lw a0, -1924(s0)
	sw s11, 0(a0)
	la a0, .libro.str.102
	sw a0, -1932(s0)
	addi s11, a1, 4
	lw a0, -1932(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -764(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1948(s0)
	addi s11, zero, 1
	lw a0, -1948(s0)
	sw s11, 0(a0)
	la a0, .libro.str.103
	sw a0, -1956(s0)
	addi s11, a1, 4
	lw a0, -1956(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -768(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1972(s0)
	addi s11, zero, 1
	lw a0, -1972(s0)
	sw s11, 0(a0)
	la a0, .libro.str.104
	sw a0, -1980(s0)
	addi s11, a1, 4
	lw a0, -1980(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -772(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1996(s0)
	addi s11, zero, 1
	lw a0, -1996(s0)
	sw s11, 0(a0)
	la a0, .libro.str.105
	sw a0, -2004(s0)
	addi s11, a1, 4
	lw a0, -2004(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -780(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2020(s0)
	addi s11, zero, 1
	lw a0, -2020(s0)
	sw s11, 0(a0)
	la a0, .libro.str.106
	sw a0, -2028(s0)
	addi s11, a1, 4
	lw a0, -2028(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -784(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2044(s0)
	addi s11, zero, 1
	lw a0, -2044(s0)
	sw s11, 0(a0)
	la a0, .libro.str.107
	sw a0, -2052(s0)
	addi s11, a1, 4
	lw a0, -2052(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -796(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2068(s0)
	addi s11, zero, 1
	lw a0, -2068(s0)
	sw s11, 0(a0)
	la a0, .libro.str.108
	sw a0, -2076(s0)
	addi s11, a1, 4
	lw a0, -2076(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -804(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2092(s0)
	addi s11, zero, 1
	lw a0, -2092(s0)
	sw s11, 0(a0)
	la a0, .libro.str.109
	sw a0, -2100(s0)
	addi s11, a1, 4
	lw a0, -2100(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -812(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2116(s0)
	addi s11, zero, 1
	lw a0, -2116(s0)
	sw s11, 0(a0)
	la a0, .libro.str.110
	sw a0, -2124(s0)
	addi s11, a1, 4
	lw a0, -2124(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -820(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2140(s0)
	addi s11, zero, 1
	lw a0, -2140(s0)
	sw s11, 0(a0)
	la a0, .libro.str.111
	sw a0, -2148(s0)
	addi s11, a1, 4
	lw a0, -2148(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -824(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2164(s0)
	addi s11, zero, 1
	lw a0, -2164(s0)
	sw s11, 0(a0)
	la a0, .libro.str.112
	sw a0, -2172(s0)
	addi s11, a1, 4
	lw a0, -2172(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -828(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2188(s0)
	addi s11, zero, 1
	lw a0, -2188(s0)
	sw s11, 0(a0)
	la a0, .libro.str.113
	sw a0, -2196(s0)
	addi s11, a1, 4
	lw a0, -2196(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -832(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2212(s0)
	addi s11, zero, 1
	lw a0, -2212(s0)
	sw s11, 0(a0)
	la a0, .libro.str.114
	sw a0, -2220(s0)
	addi s11, a1, 4
	lw a0, -2220(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -836(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2236(s0)
	addi s11, zero, 1
	lw a0, -2236(s0)
	sw s11, 0(a0)
	la a0, .libro.str.115
	sw a0, -2244(s0)
	addi s11, a1, 4
	lw a0, -2244(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -840(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2260(s0)
	addi s11, zero, 1
	lw a0, -2260(s0)
	sw s11, 0(a0)
	la a0, .libro.str.116
	sw a0, -2268(s0)
	addi s11, a1, 4
	lw a0, -2268(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -848(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2284(s0)
	addi s11, zero, 1
	lw a0, -2284(s0)
	sw s11, 0(a0)
	la a0, .libro.str.117
	sw a0, -2292(s0)
	addi s11, a1, 4
	lw a0, -2292(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -852(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2308(s0)
	addi s11, zero, 1
	lw a0, -2308(s0)
	sw s11, 0(a0)
	la a0, .libro.str.118
	sw a0, -2316(s0)
	addi s11, a1, 4
	lw a0, -2316(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -864(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2332(s0)
	addi s11, zero, 1
	lw a0, -2332(s0)
	sw s11, 0(a0)
	la a0, .libro.str.119
	sw a0, -2340(s0)
	addi s11, a1, 4
	lw a0, -2340(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -872(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2356(s0)
	addi s11, zero, 1
	lw a0, -2356(s0)
	sw s11, 0(a0)
	la a0, .libro.str.120
	sw a0, -2364(s0)
	addi s11, a1, 4
	lw a0, -2364(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -880(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2380(s0)
	addi s11, zero, 1
	lw a0, -2380(s0)
	sw s11, 0(a0)
	la a0, .libro.str.121
	sw a0, -2388(s0)
	addi s11, a1, 4
	lw a0, -2388(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -888(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2404(s0)
	addi s11, zero, 1
	lw a0, -2404(s0)
	sw s11, 0(a0)
	la a0, .libro.str.122
	sw a0, -2412(s0)
	addi s11, a1, 4
	lw a0, -2412(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -892(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2428(s0)
	addi s11, zero, 1
	lw a0, -2428(s0)
	sw s11, 0(a0)
	la a0, .libro.str.123
	sw a0, -2436(s0)
	addi s11, a1, 4
	lw a0, -2436(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -896(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2452(s0)
	addi s11, zero, 1
	lw a0, -2452(s0)
	sw s11, 0(a0)
	la a0, .libro.str.124
	sw a0, -2460(s0)
	addi s11, a1, 4
	lw a0, -2460(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -900(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2476(s0)
	addi s11, zero, 1
	lw a0, -2476(s0)
	sw s11, 0(a0)
	la a0, .libro.str.125
	sw a0, -2484(s0)
	addi s11, a1, 4
	lw a0, -2484(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -904(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2500(s0)
	addi s11, zero, 1
	lw a0, -2500(s0)
	sw s11, 0(a0)
	la a0, .libro.str.126
	sw a0, -2508(s0)
	addi s11, a1, 4
	lw a0, -2508(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -908(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2524(s0)
	addi s11, zero, 1
	lw a0, -2524(s0)
	sw s11, 0(a0)
	la a0, .libro.str.127
	sw a0, -2532(s0)
	addi s11, a1, 4
	lw a0, -2532(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -916(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2548(s0)
	addi s11, zero, 1
	lw a0, -2548(s0)
	sw s11, 0(a0)
	la a0, .libro.str.128
	sw a0, -2556(s0)
	addi s11, a1, 4
	lw a0, -2556(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -920(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2572(s0)
	addi s11, zero, 1
	lw a0, -2572(s0)
	sw s11, 0(a0)
	la a0, .libro.str.129
	sw a0, -2580(s0)
	addi s11, a1, 4
	lw a0, -2580(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -932(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2588(s0)
	addi s11, zero, 1
	lw a0, -2588(s0)
	sw s11, 0(a0)
	la a0, .libro.str.130
	sw a0, -2596(s0)
	addi s11, a1, 4
	lw a0, -2596(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -940(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2604(s0)
	addi s11, zero, 1
	lw a0, -2604(s0)
	sw s11, 0(a0)
	la a0, .libro.str.131
	sw a0, -2612(s0)
	addi s11, a1, 4
	lw a0, -2612(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -948(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2620(s0)
	addi s11, zero, 1
	lw a0, -2620(s0)
	sw s11, 0(a0)
	la a0, .libro.str.132
	sw a0, -2628(s0)
	addi s11, a1, 4
	lw a0, -2628(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -956(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2636(s0)
	addi s11, zero, 1
	lw a0, -2636(s0)
	sw s11, 0(a0)
	la a0, .libro.str.133
	sw a0, -2644(s0)
	addi s11, a1, 4
	lw a0, -2644(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -960(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2652(s0)
	addi s11, zero, 1
	lw a0, -2652(s0)
	sw s11, 0(a0)
	la a0, .libro.str.134
	sw a0, -2660(s0)
	addi s11, a1, 4
	lw a0, -2660(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -964(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2668(s0)
	addi s11, zero, 1
	lw a0, -2668(s0)
	sw s11, 0(a0)
	la a0, .libro.str.135
	sw a0, -2676(s0)
	addi s11, a1, 4
	lw a0, -2676(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -968(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2684(s0)
	addi s11, zero, 1
	lw a0, -2684(s0)
	sw s11, 0(a0)
	la a0, .libro.str.136
	sw a0, -2692(s0)
	addi s11, a1, 4
	lw a0, -2692(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -972(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2700(s0)
	addi s11, zero, 1
	lw a0, -2700(s0)
	sw s11, 0(a0)
	la a0, .libro.str.137
	sw a0, -2708(s0)
	addi s11, a1, 4
	lw a0, -2708(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -976(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2716(s0)
	addi s11, zero, 1
	lw a0, -2716(s0)
	sw s11, 0(a0)
	la a0, .libro.str.138
	sw a0, -2724(s0)
	addi s11, a1, 4
	lw a0, -2724(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -984(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2732(s0)
	addi s11, zero, 1
	lw a0, -2732(s0)
	sw s11, 0(a0)
	la a0, .libro.str.139
	sw a0, -2740(s0)
	addi s11, a1, 4
	lw a0, -2740(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -988(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2748(s0)
	addi s11, zero, 1
	lw a0, -2748(s0)
	sw s11, 0(a0)
	la a0, .libro.str.140
	sw a0, -2756(s0)
	addi s11, a1, 4
	lw a0, -2756(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1000(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2764(s0)
	addi s11, zero, 1
	lw a0, -2764(s0)
	sw s11, 0(a0)
	la a0, .libro.str.141
	sw a0, -2772(s0)
	addi s11, a1, 4
	lw a0, -2772(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1008(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2780(s0)
	addi s11, zero, 1
	lw a0, -2780(s0)
	sw s11, 0(a0)
	la a0, .libro.str.142
	sw a0, -2788(s0)
	addi s11, a1, 4
	lw a0, -2788(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1016(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2796(s0)
	addi s11, zero, 1
	lw a0, -2796(s0)
	sw s11, 0(a0)
	la a0, .libro.str.143
	sw a0, -2804(s0)
	addi s11, a1, 4
	lw a0, -2804(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1024(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2812(s0)
	addi s11, zero, 1
	lw a0, -2812(s0)
	sw s11, 0(a0)
	la a0, .libro.str.144
	sw a0, -2820(s0)
	addi s11, a1, 4
	lw a0, -2820(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1028(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2828(s0)
	addi s11, zero, 1
	lw a0, -2828(s0)
	sw s11, 0(a0)
	la a0, .libro.str.145
	sw a0, -2836(s0)
	addi s11, a1, 4
	lw a0, -2836(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1032(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2844(s0)
	addi s11, zero, 1
	lw a0, -2844(s0)
	sw s11, 0(a0)
	la a0, .libro.str.146
	sw a0, -2852(s0)
	addi s11, a1, 4
	lw a0, -2852(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1036(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2860(s0)
	addi s11, zero, 1
	lw a0, -2860(s0)
	sw s11, 0(a0)
	la a0, .libro.str.147
	sw a0, -2868(s0)
	addi s11, a1, 4
	lw a0, -2868(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1040(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2876(s0)
	addi s11, zero, 1
	lw a0, -2876(s0)
	sw s11, 0(a0)
	la a0, .libro.str.148
	sw a0, -2884(s0)
	addi s11, a1, 4
	lw a0, -2884(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1044(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2892(s0)
	addi s11, zero, 1
	lw a0, -2892(s0)
	sw s11, 0(a0)
	la a0, .libro.str.149
	sw a0, -2900(s0)
	addi s11, a1, 4
	lw a0, -2900(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1052(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2908(s0)
	addi s11, zero, 1
	lw a0, -2908(s0)
	sw s11, 0(a0)
	la a0, .libro.str.150
	sw a0, -2916(s0)
	addi s11, a1, 4
	lw a0, -2916(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1056(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2924(s0)
	addi s11, zero, 1
	lw a0, -2924(s0)
	sw s11, 0(a0)
	la a0, .libro.str.151
	sw a0, -2932(s0)
	addi s11, a1, 4
	lw a0, -2932(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1068(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2940(s0)
	addi s11, zero, 1
	lw a0, -2940(s0)
	sw s11, 0(a0)
	la a0, .libro.str.152
	sw a0, -2948(s0)
	addi s11, a1, 4
	lw a0, -2948(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1076(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2956(s0)
	addi s11, zero, 1
	lw a0, -2956(s0)
	sw s11, 0(a0)
	la a0, .libro.str.153
	sw a0, -2964(s0)
	addi s11, a1, 4
	lw a0, -2964(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1084(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2972(s0)
	addi s11, zero, 1
	lw a0, -2972(s0)
	sw s11, 0(a0)
	la a0, .libro.str.154
	sw a0, -2980(s0)
	addi s11, a1, 4
	lw a0, -2980(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1092(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2988(s0)
	addi s11, zero, 1
	lw a0, -2988(s0)
	sw s11, 0(a0)
	la a0, .libro.str.155
	sw a0, -2996(s0)
	addi s11, a1, 4
	lw a0, -2996(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1096(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3004(s0)
	addi s11, zero, 1
	lw a0, -3004(s0)
	sw s11, 0(a0)
	la a0, .libro.str.156
	sw a0, -3012(s0)
	addi s11, a1, 4
	lw a0, -3012(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1100(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3020(s0)
	addi s11, zero, 1
	lw a0, -3020(s0)
	sw s11, 0(a0)
	la a0, .libro.str.157
	sw a0, -3028(s0)
	addi s11, a1, 4
	lw a0, -3028(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1104(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3036(s0)
	addi s11, zero, 1
	lw a0, -3036(s0)
	sw s11, 0(a0)
	la a0, .libro.str.158
	sw a0, -3044(s0)
	addi s11, a1, 4
	lw a0, -3044(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1108(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3052(s0)
	addi s11, zero, 1
	lw a0, -3052(s0)
	sw s11, 0(a0)
	la a0, .libro.str.159
	sw a0, -3060(s0)
	addi s11, a1, 4
	lw a0, -3060(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1112(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3068(s0)
	addi s11, zero, 1
	lw a0, -3068(s0)
	sw s11, 0(a0)
	la a0, .libro.str.160
	sw a0, -3076(s0)
	addi s11, a1, 4
	lw a0, -3076(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1120(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3084(s0)
	addi s11, zero, 1
	lw a0, -3084(s0)
	sw s11, 0(a0)
	la a0, .libro.str.161
	sw a0, -3092(s0)
	addi s11, a1, 4
	lw a0, -3092(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1124(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3100(s0)
	addi s11, zero, 1
	lw a0, -3100(s0)
	sw s11, 0(a0)
	la a0, .libro.str.162
	sw a0, -3108(s0)
	addi s11, a1, 4
	lw a0, -3108(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1136(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3116(s0)
	addi s11, zero, 1
	lw a0, -3116(s0)
	sw s11, 0(a0)
	la a0, .libro.str.163
	sw a0, -3124(s0)
	addi s11, a1, 4
	lw a0, -3124(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1144(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3132(s0)
	addi s11, zero, 1
	lw a0, -3132(s0)
	sw s11, 0(a0)
	la a0, .libro.str.164
	sw a0, -3140(s0)
	addi s11, a1, 4
	lw a0, -3140(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1152(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3148(s0)
	addi s11, zero, 1
	lw a0, -3148(s0)
	sw s11, 0(a0)
	la a0, .libro.str.165
	sw a0, -3156(s0)
	addi s11, a1, 4
	lw a0, -3156(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1160(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3164(s0)
	addi s11, zero, 1
	lw a0, -3164(s0)
	sw s11, 0(a0)
	la a0, .libro.str.166
	sw a0, -3172(s0)
	addi s11, a1, 4
	lw a0, -3172(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1164(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3180(s0)
	addi s11, zero, 1
	lw a0, -3180(s0)
	sw s11, 0(a0)
	la a0, .libro.str.167
	sw a0, -3188(s0)
	addi s11, a1, 4
	lw a0, -3188(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1168(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3196(s0)
	addi s11, zero, 1
	lw a0, -3196(s0)
	sw s11, 0(a0)
	la a0, .libro.str.168
	sw a0, -3204(s0)
	addi s11, a1, 4
	lw a0, -3204(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1172(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3212(s0)
	addi s11, zero, 1
	lw a0, -3212(s0)
	sw s11, 0(a0)
	la a0, .libro.str.169
	sw a0, -3220(s0)
	addi s11, a1, 4
	lw a0, -3220(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1176(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3228(s0)
	addi s11, zero, 1
	lw a0, -3228(s0)
	sw s11, 0(a0)
	la a0, .libro.str.170
	sw a0, -3236(s0)
	addi s11, a1, 4
	lw a0, -3236(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1180(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3244(s0)
	addi s11, zero, 1
	lw a0, -3244(s0)
	sw s11, 0(a0)
	la a0, .libro.str.171
	sw a0, -3252(s0)
	addi s11, a1, 4
	lw a0, -3252(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1188(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3260(s0)
	addi s11, zero, 1
	lw a0, -3260(s0)
	sw s11, 0(a0)
	la a0, .libro.str.172
	sw a0, -3268(s0)
	addi s11, a1, 4
	lw a0, -3268(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1192(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3276(s0)
	addi s11, zero, 1
	lw a0, -3276(s0)
	sw s11, 0(a0)
	la a0, .libro.str.173
	sw a0, -3284(s0)
	addi s11, a1, 4
	lw a0, -3284(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1204(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3292(s0)
	addi s11, zero, 1
	lw a0, -3292(s0)
	sw s11, 0(a0)
	la a0, .libro.str.174
	sw a0, -3300(s0)
	addi s11, a1, 4
	lw a0, -3300(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1212(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3308(s0)
	addi s11, zero, 1
	lw a0, -3308(s0)
	sw s11, 0(a0)
	la a0, .libro.str.175
	sw a0, -3316(s0)
	addi s11, a1, 4
	lw a0, -3316(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1220(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3324(s0)
	addi s11, zero, 1
	lw a0, -3324(s0)
	sw s11, 0(a0)
	la a0, .libro.str.176
	sw a0, -3332(s0)
	addi s11, a1, 4
	lw a0, -3332(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1228(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3340(s0)
	addi s11, zero, 1
	lw a0, -3340(s0)
	sw s11, 0(a0)
	la a0, .libro.str.177
	sw a0, -3348(s0)
	addi s11, a1, 4
	lw a0, -3348(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1232(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3356(s0)
	addi s11, zero, 1
	lw a0, -3356(s0)
	sw s11, 0(a0)
	la a0, .libro.str.178
	sw a0, -3364(s0)
	addi s11, a1, 4
	lw a0, -3364(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1236(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3372(s0)
	addi s11, zero, 1
	lw a0, -3372(s0)
	sw s11, 0(a0)
	la a0, .libro.str.179
	sw a0, -3380(s0)
	addi s11, a1, 4
	lw a0, -3380(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1240(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3388(s0)
	addi s11, zero, 1
	lw a0, -3388(s0)
	sw s11, 0(a0)
	la a0, .libro.str.180
	sw a0, -3396(s0)
	addi s11, a1, 4
	lw a0, -3396(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1244(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3404(s0)
	addi s11, zero, 1
	lw a0, -3404(s0)
	sw s11, 0(a0)
	la a0, .libro.str.181
	sw a0, -3412(s0)
	addi s11, a1, 4
	lw a0, -3412(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1248(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3420(s0)
	addi s11, zero, 1
	lw a0, -3420(s0)
	sw s11, 0(a0)
	la a0, .libro.str.182
	sw a0, -3428(s0)
	addi s11, a1, 4
	lw a0, -3428(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1256(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3436(s0)
	addi s11, zero, 1
	lw a0, -3436(s0)
	sw s11, 0(a0)
	la a0, .libro.str.183
	sw a0, -3444(s0)
	addi s11, a1, 4
	lw a0, -3444(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1260(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3452(s0)
	addi s11, zero, 1
	lw a0, -3452(s0)
	sw s11, 0(a0)
	la a0, .libro.str.184
	sw a0, -3460(s0)
	addi s11, a1, 4
	lw a0, -3460(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1272(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3468(s0)
	addi s11, zero, 1
	lw a0, -3468(s0)
	sw s11, 0(a0)
	la a0, .libro.str.185
	sw a0, -3476(s0)
	addi s11, a1, 4
	lw a0, -3476(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1280(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3484(s0)
	addi s11, zero, 1
	lw a0, -3484(s0)
	sw s11, 0(a0)
	la a0, .libro.str.186
	sw a0, -3492(s0)
	addi s11, a1, 4
	lw a0, -3492(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1288(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3508(s0)
	addi s11, zero, 1
	lw a0, -3508(s0)
	sw s11, 0(a0)
	la a0, .libro.str.187
	sw a0, -3516(s0)
	addi s11, a1, 4
	lw a0, -3516(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1296(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3532(s0)
	addi s11, zero, 1
	lw a0, -3532(s0)
	sw s11, 0(a0)
	la a0, .libro.str.188
	sw a0, -3540(s0)
	addi s11, a1, 4
	lw a0, -3540(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1300(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3556(s0)
	addi s11, zero, 1
	lw a0, -3556(s0)
	sw s11, 0(a0)
	la a0, .libro.str.189
	sw a0, -3564(s0)
	addi s11, a1, 4
	lw a0, -3564(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1304(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3580(s0)
	addi s11, zero, 1
	lw a0, -3580(s0)
	sw s11, 0(a0)
	la a0, .libro.str.190
	sw a0, -3588(s0)
	addi s11, a1, 4
	lw a0, -3588(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1308(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3604(s0)
	addi s11, zero, 1
	lw a0, -3604(s0)
	sw s11, 0(a0)
	la a0, .libro.str.191
	sw a0, -3612(s0)
	addi s11, a1, 4
	lw a0, -3612(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1312(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3628(s0)
	addi s11, zero, 1
	lw a0, -3628(s0)
	sw s11, 0(a0)
	la a0, .libro.str.192
	sw a0, -3636(s0)
	addi s11, a1, 4
	lw a0, -3636(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1316(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3652(s0)
	addi s11, zero, 1
	lw a0, -3652(s0)
	sw s11, 0(a0)
	la a0, .libro.str.193
	sw a0, -3660(s0)
	addi s11, a1, 4
	lw a0, -3660(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1324(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3676(s0)
	addi s11, zero, 1
	lw a0, -3676(s0)
	sw s11, 0(a0)
	la a0, .libro.str.194
	sw a0, -3684(s0)
	addi s11, a1, 4
	lw a0, -3684(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1328(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3700(s0)
	addi s11, zero, 1
	lw a0, -3700(s0)
	sw s11, 0(a0)
	la a0, .libro.str.195
	sw a0, -3708(s0)
	addi s11, a1, 4
	lw a0, -3708(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1340(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3724(s0)
	addi a0, zero, 1
	lw s11, -3724(s0)
	sw a0, 0(s11)
	la a0, .libro.str.196
	sw a0, -3732(s0)
	addi a0, a1, 4
	lw s11, -3732(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1348(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3748(s0)
	addi a0, zero, 1
	lw s11, -3748(s0)
	sw a0, 0(s11)
	la a0, .libro.str.197
	sw a0, -3756(s0)
	addi a0, a1, 4
	lw s11, -3756(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1356(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3772(s0)
	addi a0, zero, 1
	lw s11, -3772(s0)
	sw a0, 0(s11)
	la a0, .libro.str.198
	sw a0, -3780(s0)
	addi a0, a1, 4
	lw s11, -3780(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1364(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3796(s0)
	addi a0, zero, 1
	lw s11, -3796(s0)
	sw a0, 0(s11)
	la a0, .libro.str.199
	sw a0, -3804(s0)
	addi a0, a1, 4
	lw s11, -3804(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1368(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3820(s0)
	addi a0, zero, 1
	lw s11, -3820(s0)
	sw a0, 0(s11)
	la a0, .libro.str.200
	sw a0, -3828(s0)
	addi a0, a1, 4
	lw s11, -3828(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1372(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3844(s0)
	addi a0, zero, 1
	lw s11, -3844(s0)
	sw a0, 0(s11)
	la a0, .libro.str.201
	sw a0, -3852(s0)
	addi a0, a1, 4
	lw s11, -3852(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1376(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3868(s0)
	addi a0, zero, 1
	lw s11, -3868(s0)
	sw a0, 0(s11)
	la a0, .libro.str.202
	sw a0, -3876(s0)
	addi a0, a1, 4
	lw s11, -3876(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1380(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3892(s0)
	addi a0, zero, 1
	lw s11, -3892(s0)
	sw a0, 0(s11)
	la a0, .libro.str.203
	sw a0, -3900(s0)
	addi a0, a1, 4
	lw s11, -3900(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1384(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3916(s0)
	addi a0, zero, 1
	lw s11, -3916(s0)
	sw a0, 0(s11)
	la a0, .libro.str.204
	sw a0, -3924(s0)
	addi a0, a1, 4
	lw s11, -3924(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1392(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3940(s0)
	addi a0, zero, 1
	lw s11, -3940(s0)
	sw a0, 0(s11)
	la a0, .libro.str.205
	sw a0, -3948(s0)
	addi a0, a1, 4
	lw s11, -3948(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1396(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3964(s0)
	addi a0, zero, 1
	lw s11, -3964(s0)
	sw a0, 0(s11)
	la a0, .libro.str.206
	sw a0, -3972(s0)
	addi a0, a1, 4
	lw s11, -3972(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1408(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3988(s0)
	addi a0, zero, 1
	lw s11, -3988(s0)
	sw a0, 0(s11)
	la a0, .libro.str.207
	sw a0, -3996(s0)
	addi a0, a1, 4
	lw s11, -3996(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1416(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4012(s0)
	addi a0, zero, 1
	lw s11, -4012(s0)
	sw a0, 0(s11)
	la a0, .libro.str.208
	sw a0, -4020(s0)
	addi a0, a1, 4
	lw s11, -4020(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1424(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4036(s0)
	addi a0, zero, 1
	lw s11, -4036(s0)
	sw a0, 0(s11)
	la a0, .libro.str.209
	sw a0, -4044(s0)
	addi a0, a1, 4
	lw s11, -4044(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1432(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4060(s0)
	addi a0, zero, 1
	lw s11, -4060(s0)
	sw a0, 0(s11)
	la a0, .libro.str.210
	sw a0, -4068(s0)
	addi a0, a1, 4
	lw s11, -4068(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1436(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4084(s0)
	addi a0, zero, 1
	lw s11, -4084(s0)
	sw a0, 0(s11)
	la a0, .libro.str.211
	sw a0, -4092(s0)
	addi a0, a1, 4
	lw s11, -4092(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1440(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4108(s0)
	addi a0, zero, 1
	lw s11, -4108(s0)
	sw a0, 0(s11)
	la a0, .libro.str.212
	sw a0, -4116(s0)
	addi a0, a1, 4
	lw s11, -4116(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1444(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4132(s0)
	addi a0, zero, 1
	lw s11, -4132(s0)
	sw a0, 0(s11)
	la a0, .libro.str.213
	sw a0, -4140(s0)
	addi a0, a1, 4
	lw s11, -4140(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1448(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4156(s0)
	addi a0, zero, 1
	lw s11, -4156(s0)
	sw a0, 0(s11)
	la a0, .libro.str.214
	sw a0, -4164(s0)
	addi a0, a1, 4
	lw s11, -4164(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1452(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4180(s0)
	addi a0, zero, 1
	lw s11, -4180(s0)
	sw a0, 0(s11)
	la a0, .libro.str.215
	sw a0, -4188(s0)
	addi a0, a1, 4
	lw s11, -4188(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1460(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4204(s0)
	addi a0, zero, 1
	lw s11, -4204(s0)
	sw a0, 0(s11)
	la a0, .libro.str.216
	sw a0, -4212(s0)
	addi a0, a1, 4
	lw s11, -4212(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1464(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4228(s0)
	addi a0, zero, 1
	lw s11, -4228(s0)
	sw a0, 0(s11)
	la a0, .libro.str.217
	sw a0, -4236(s0)
	addi a0, a1, 4
	lw s11, -4236(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1476(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4252(s0)
	addi a0, zero, 1
	lw s11, -4252(s0)
	sw a0, 0(s11)
	la a0, .libro.str.218
	sw a0, -4260(s0)
	addi a0, a1, 4
	lw s11, -4260(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1484(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4276(s0)
	addi a0, zero, 1
	lw s11, -4276(s0)
	sw a0, 0(s11)
	la a0, .libro.str.219
	sw a0, -4284(s0)
	addi a0, a1, 4
	lw s11, -4284(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1492(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4300(s0)
	addi a0, zero, 1
	lw s11, -4300(s0)
	sw a0, 0(s11)
	la a0, .libro.str.220
	sw a0, -4308(s0)
	addi a0, a1, 4
	lw s11, -4308(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1500(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4324(s0)
	addi a0, zero, 1
	lw s11, -4324(s0)
	sw a0, 0(s11)
	la a0, .libro.str.221
	sw a0, -4332(s0)
	addi a0, a1, 4
	lw s11, -4332(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1504(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4348(s0)
	addi a0, zero, 1
	lw s11, -4348(s0)
	sw a0, 0(s11)
	la a0, .libro.str.222
	sw a0, -4356(s0)
	addi a0, a1, 4
	lw s11, -4356(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1508(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4372(s0)
	addi a0, zero, 1
	lw s11, -4372(s0)
	sw a0, 0(s11)
	la a0, .libro.str.223
	sw a0, -4380(s0)
	addi a0, a1, 4
	lw s11, -4380(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1512(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4396(s0)
	addi a0, zero, 1
	lw s11, -4396(s0)
	sw a0, 0(s11)
	la a0, .libro.str.224
	sw a0, -4404(s0)
	addi a0, a1, 4
	lw s11, -4404(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1516(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4420(s0)
	addi a0, zero, 1
	lw s11, -4420(s0)
	sw a0, 0(s11)
	la a0, .libro.str.225
	sw a0, -4428(s0)
	addi a0, a1, 4
	lw s11, -4428(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1520(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4444(s0)
	addi a0, zero, 1
	lw s11, -4444(s0)
	sw a0, 0(s11)
	la a0, .libro.str.226
	sw a0, -4452(s0)
	addi a0, a1, 4
	lw s11, -4452(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1528(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4468(s0)
	addi a0, zero, 1
	lw s11, -4468(s0)
	sw a0, 0(s11)
	la a0, .libro.str.227
	sw a0, -4476(s0)
	addi a0, a1, 4
	lw s11, -4476(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1532(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4492(s0)
	addi a0, zero, 1
	lw s11, -4492(s0)
	sw a0, 0(s11)
	la a0, .libro.str.228
	sw a0, -4500(s0)
	addi a0, a1, 4
	lw s11, -4500(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1544(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4516(s0)
	addi a0, zero, 1
	lw s11, -4516(s0)
	sw a0, 0(s11)
	la a0, .libro.str.229
	sw a0, -4524(s0)
	addi a0, a1, 4
	lw s11, -4524(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1552(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4540(s0)
	addi a0, zero, 1
	lw s11, -4540(s0)
	sw a0, 0(s11)
	la a0, .libro.str.230
	sw a0, -4548(s0)
	addi a0, a1, 4
	lw s11, -4548(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1560(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4564(s0)
	addi a0, zero, 1
	lw s11, -4564(s0)
	sw a0, 0(s11)
	la a0, .libro.str.231
	sw a0, -4572(s0)
	addi a0, a1, 4
	lw s11, -4572(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1568(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4588(s0)
	addi a0, zero, 1
	lw s11, -4588(s0)
	sw a0, 0(s11)
	la a0, .libro.str.232
	sw a0, -4596(s0)
	addi a0, a1, 4
	lw s11, -4596(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1572(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4612(s0)
	addi a0, zero, 1
	lw s11, -4612(s0)
	sw a0, 0(s11)
	la a0, .libro.str.233
	sw a0, -4620(s0)
	addi a0, a1, 4
	lw s11, -4620(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1576(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4636(s0)
	addi a0, zero, 1
	lw s11, -4636(s0)
	sw a0, 0(s11)
	la a0, .libro.str.234
	sw a0, -4644(s0)
	addi a0, a1, 4
	lw s11, -4644(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1580(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4660(s0)
	addi a0, zero, 1
	lw s11, -4660(s0)
	sw a0, 0(s11)
	la a0, .libro.str.235
	sw a0, -4668(s0)
	addi a0, a1, 4
	lw s11, -4668(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1584(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4684(s0)
	addi a0, zero, 1
	lw s11, -4684(s0)
	sw a0, 0(s11)
	la a0, .libro.str.236
	sw a0, -4692(s0)
	addi a0, a1, 4
	lw s11, -4692(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1588(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4708(s0)
	addi a0, zero, 1
	lw s11, -4708(s0)
	sw a0, 0(s11)
	la a0, .libro.str.237
	sw a0, -4716(s0)
	addi a0, a1, 4
	lw s11, -4716(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1596(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4732(s0)
	addi a0, zero, 1
	lw s11, -4732(s0)
	sw a0, 0(s11)
	la a0, .libro.str.238
	sw a0, -4740(s0)
	addi a0, a1, 4
	lw s11, -4740(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1600(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4756(s0)
	addi a0, zero, 1
	lw s11, -4756(s0)
	sw a0, 0(s11)
	la a0, .libro.str.239
	sw a0, -4764(s0)
	addi a0, a1, 4
	lw s11, -4764(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1612(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4780(s0)
	addi a0, zero, 1
	lw s11, -4780(s0)
	sw a0, 0(s11)
	la a0, .libro.str.240
	sw a0, -4788(s0)
	addi a0, a1, 4
	lw s11, -4788(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1620(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4804(s0)
	addi a0, zero, 1
	lw s11, -4804(s0)
	sw a0, 0(s11)
	la a0, .libro.str.241
	sw a0, -4812(s0)
	addi a0, a1, 4
	lw s11, -4812(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1628(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4828(s0)
	addi a0, zero, 1
	lw s11, -4828(s0)
	sw a0, 0(s11)
	la a0, .libro.str.242
	sw a0, -4836(s0)
	addi a0, a1, 4
	lw s11, -4836(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1636(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4852(s0)
	addi a0, zero, 1
	lw s11, -4852(s0)
	sw a0, 0(s11)
	la a0, .libro.str.243
	sw a0, -4860(s0)
	addi a0, a1, 4
	lw s11, -4860(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1640(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4876(s0)
	addi a0, zero, 1
	lw s11, -4876(s0)
	sw a0, 0(s11)
	la a0, .libro.str.244
	sw a0, -4884(s0)
	addi a0, a1, 4
	lw s11, -4884(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1644(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4900(s0)
	addi a0, zero, 1
	lw s11, -4900(s0)
	sw a0, 0(s11)
	la a0, .libro.str.245
	sw a0, -4908(s0)
	addi a0, a1, 4
	lw s11, -4908(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -5056(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4924(s0)
	addi a0, zero, 1
	lw s11, -4924(s0)
	sw a0, 0(s11)
	la a0, .libro.str.246
	sw a0, -4932(s0)
	addi a0, a1, 4
	lw s11, -4932(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s10
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4948(s0)
	addi a0, zero, 1
	lw s11, -4948(s0)
	sw a0, 0(s11)
	la a0, .libro.str.247
	sw a0, -4956(s0)
	addi a0, a1, 4
	lw s11, -4956(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s9
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4972(s0)
	addi a0, zero, 1
	lw s11, -4972(s0)
	sw a0, 0(s11)
	la a0, .libro.str.248
	sw a0, -4980(s0)
	addi a0, a1, 4
	lw s11, -4980(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s8
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4996(s0)
	addi a0, zero, 1
	lw s11, -4996(s0)
	sw a0, 0(s11)
	la a0, .libro.str.249
	sw a0, -5004(s0)
	addi a0, a1, 4
	lw s11, -5004(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s7
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -5020(s0)
	addi a0, zero, 1
	lw s11, -5020(s0)
	sw a0, 0(s11)
	la a0, .libro.str.250
	sw a0, -5028(s0)
	addi a0, a1, 4
	lw s11, -5028(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s6
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -5044(s0)
	addi a0, zero, 1
	lw s11, -5044(s0)
	sw a0, 0(s11)
	la a0, .libro.str.251
	addi s11, a1, 4
	sw s11, -56(s0)
	lw s11, -56(s0)
	sw a0, 0(s11)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s5
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -68(s0)
	addi a0, zero, 1
	lw s11, -68(s0)
	sw a0, 0(s11)
	la a0, .libro.str.252
	sw a0, -80(s0)
	addi a0, a1, 4
	lw s11, -80(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s4
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -92(s0)
	addi a0, zero, 1
	lw s11, -92(s0)
	sw a0, 0(s11)
	la a0, .libro.str.253
	sw a0, -104(s0)
	addi a0, a1, 4
	lw s11, -104(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s3
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -116(s0)
	addi a0, zero, 1
	lw s11, -116(s0)
	sw a0, 0(s11)
	la a0, .libro.str.254
	sw a0, -128(s0)
	addi a0, a1, 4
	lw s11, -128(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s2
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -172(s0)
	addi a0, zero, 1
	lw s11, -172(s0)
	sw a0, 0(s11)
	la a0, .libro.str.255
	sw a0, -192(s0)
	addi a0, a1, 4
	lw s11, -192(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	la a0, .libro.str.256
	call println
	lw a0, -132(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -248(s0)
	addi a0, zero, 1
	lw s11, -248(s0)
	sw a0, 0(s11)
	la a0, .libro.str.257
	sw a0, -264(s0)
	addi a0, a1, 4
	lw s11, -264(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -140(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -316(s0)
	addi a0, zero, 1
	lw s11, -316(s0)
	sw a0, 0(s11)
	la a0, .libro.str.258
	sw a0, -332(s0)
	addi a0, a1, 4
	lw s11, -332(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -144(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -384(s0)
	addi a0, zero, 1
	lw s11, -384(s0)
	sw a0, 0(s11)
	la a0, .libro.str.259
	sw a0, -400(s0)
	addi a0, a1, 4
	lw s11, -400(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -148(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -452(s0)
	addi a0, zero, 1
	lw s11, -452(s0)
	sw a0, 0(s11)
	la a0, .libro.str.260
	sw a0, -468(s0)
	addi a0, a1, 4
	lw s11, -468(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -152(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -520(s0)
	addi a0, zero, 1
	lw s11, -520(s0)
	sw a0, 0(s11)
	la a0, .libro.str.261
	sw a0, -536(s0)
	addi a0, a1, 4
	lw s11, -536(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -156(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -588(s0)
	addi a0, zero, 1
	lw s11, -588(s0)
	sw a0, 0(s11)
	la a0, .libro.str.262
	sw a0, -604(s0)
	addi a0, a1, 4
	lw s11, -604(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -160(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -656(s0)
	addi a0, zero, 1
	lw s11, -656(s0)
	sw a0, 0(s11)
	la a0, .libro.str.263
	sw a0, -672(s0)
	addi a0, a1, 4
	lw s11, -672(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -168(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -724(s0)
	addi a0, zero, 1
	lw s11, -724(s0)
	sw a0, 0(s11)
	la a0, .libro.str.264
	sw a0, -740(s0)
	addi a0, a1, 4
	lw s11, -740(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -176(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -792(s0)
	addi a0, zero, 1
	lw s11, -792(s0)
	sw a0, 0(s11)
	la a0, .libro.str.265
	sw a0, -808(s0)
	addi a0, a1, 4
	lw s11, -808(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -184(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -860(s0)
	addi a0, zero, 1
	lw s11, -860(s0)
	sw a0, 0(s11)
	la a0, .libro.str.266
	sw a0, -876(s0)
	addi a0, a1, 4
	lw s11, -876(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -196(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -928(s0)
	addi a0, zero, 1
	lw s11, -928(s0)
	sw a0, 0(s11)
	la a0, .libro.str.267
	sw a0, -944(s0)
	addi a0, a1, 4
	lw s11, -944(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -200(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -996(s0)
	addi a0, zero, 1
	lw s11, -996(s0)
	sw a0, 0(s11)
	la a0, .libro.str.268
	sw a0, -1012(s0)
	addi a0, a1, 4
	lw s11, -1012(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -208(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1064(s0)
	addi a0, zero, 1
	lw s11, -1064(s0)
	sw a0, 0(s11)
	la a0, .libro.str.269
	sw a0, -1080(s0)
	addi a0, a1, 4
	lw s11, -1080(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -212(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1132(s0)
	addi a0, zero, 1
	lw s11, -1132(s0)
	sw a0, 0(s11)
	la a0, .libro.str.270
	sw a0, -1148(s0)
	addi a0, a1, 4
	lw s11, -1148(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -216(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1200(s0)
	addi a0, zero, 1
	lw s11, -1200(s0)
	sw a0, 0(s11)
	la a0, .libro.str.271
	sw a0, -1216(s0)
	addi a0, a1, 4
	lw s11, -1216(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -220(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1268(s0)
	addi a0, zero, 1
	lw s11, -1268(s0)
	sw a0, 0(s11)
	la a0, .libro.str.272
	sw a0, -1284(s0)
	addi a0, a1, 4
	lw s11, -1284(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -224(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1336(s0)
	addi a0, zero, 1
	lw s11, -1336(s0)
	sw a0, 0(s11)
	la a0, .libro.str.273
	sw a0, -1352(s0)
	addi a0, a1, 4
	lw s11, -1352(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -228(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1404(s0)
	addi a0, zero, 1
	lw s11, -1404(s0)
	sw a0, 0(s11)
	la a0, .libro.str.274
	sw a0, -1420(s0)
	addi a0, a1, 4
	lw s11, -1420(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -236(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1472(s0)
	addi a0, zero, 1
	lw s11, -1472(s0)
	sw a0, 0(s11)
	la a0, .libro.str.275
	sw a0, -1488(s0)
	addi a0, a1, 4
	lw s11, -1488(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -240(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1540(s0)
	addi a0, zero, 1
	lw s11, -1540(s0)
	sw a0, 0(s11)
	la a0, .libro.str.276
	sw a0, -1556(s0)
	addi a0, a1, 4
	lw s11, -1556(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -252(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1608(s0)
	addi a0, zero, 1
	lw s11, -1608(s0)
	sw a0, 0(s11)
	la a0, .libro.str.277
	sw a0, -1624(s0)
	addi a0, a1, 4
	lw s11, -1624(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -260(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1656(s0)
	addi a0, zero, 1
	lw s11, -1656(s0)
	sw a0, 0(s11)
	la a0, .libro.str.278
	sw a0, -1664(s0)
	addi a0, a1, 4
	lw s11, -1664(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -268(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1680(s0)
	addi a0, zero, 1
	lw s11, -1680(s0)
	sw a0, 0(s11)
	la a0, .libro.str.279
	sw a0, -1688(s0)
	addi a0, a1, 4
	lw s11, -1688(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -276(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1704(s0)
	addi a0, zero, 1
	lw s11, -1704(s0)
	sw a0, 0(s11)
	la a0, .libro.str.280
	sw a0, -1712(s0)
	addi a0, a1, 4
	lw s11, -1712(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -280(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1728(s0)
	addi a0, zero, 1
	lw s11, -1728(s0)
	sw a0, 0(s11)
	la a0, .libro.str.281
	sw a0, -1736(s0)
	addi a0, a1, 4
	lw s11, -1736(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -284(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1752(s0)
	addi a0, zero, 1
	lw s11, -1752(s0)
	sw a0, 0(s11)
	la a0, .libro.str.282
	sw a0, -1760(s0)
	addi a0, a1, 4
	lw s11, -1760(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -288(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1776(s0)
	addi a0, zero, 1
	lw s11, -1776(s0)
	sw a0, 0(s11)
	la a0, .libro.str.283
	sw a0, -1784(s0)
	addi a0, a1, 4
	lw s11, -1784(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -292(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1800(s0)
	addi a0, zero, 1
	lw s11, -1800(s0)
	sw a0, 0(s11)
	la a0, .libro.str.284
	sw a0, -1808(s0)
	addi a0, a1, 4
	lw s11, -1808(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -296(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1824(s0)
	addi a0, zero, 1
	lw s11, -1824(s0)
	sw a0, 0(s11)
	la a0, .libro.str.285
	sw a0, -1832(s0)
	addi a0, a1, 4
	lw s11, -1832(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -304(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1848(s0)
	addi a0, zero, 1
	lw s11, -1848(s0)
	sw a0, 0(s11)
	la a0, .libro.str.286
	sw a0, -1856(s0)
	addi a0, a1, 4
	lw s11, -1856(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -308(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1872(s0)
	addi a0, zero, 1
	lw s11, -1872(s0)
	sw a0, 0(s11)
	la a0, .libro.str.287
	sw a0, -1880(s0)
	addi a0, a1, 4
	lw s11, -1880(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -320(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1896(s0)
	addi a0, zero, 1
	lw s11, -1896(s0)
	sw a0, 0(s11)
	la a0, .libro.str.288
	sw a0, -1904(s0)
	addi a0, a1, 4
	lw s11, -1904(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -328(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1920(s0)
	addi a0, zero, 1
	lw s11, -1920(s0)
	sw a0, 0(s11)
	la a0, .libro.str.289
	sw a0, -1928(s0)
	addi a0, a1, 4
	lw s11, -1928(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -336(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1944(s0)
	addi a0, zero, 1
	lw s11, -1944(s0)
	sw a0, 0(s11)
	la a0, .libro.str.290
	sw a0, -1952(s0)
	addi a0, a1, 4
	lw s11, -1952(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -344(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1968(s0)
	addi a0, zero, 1
	lw s11, -1968(s0)
	sw a0, 0(s11)
	la a0, .libro.str.291
	sw a0, -1976(s0)
	addi a0, a1, 4
	lw s11, -1976(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -348(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1992(s0)
	addi a0, zero, 1
	lw s11, -1992(s0)
	sw a0, 0(s11)
	la a0, .libro.str.292
	sw a0, -2000(s0)
	addi a0, a1, 4
	lw s11, -2000(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -352(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2016(s0)
	addi a0, zero, 1
	lw s11, -2016(s0)
	sw a0, 0(s11)
	la a0, .libro.str.293
	sw a0, -2024(s0)
	addi a0, a1, 4
	lw s11, -2024(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -356(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2040(s0)
	addi a0, zero, 1
	lw s11, -2040(s0)
	sw a0, 0(s11)
	la a0, .libro.str.294
	sw a0, -2048(s0)
	addi a0, a1, 4
	lw s11, -2048(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -360(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2064(s0)
	addi a0, zero, 1
	lw s11, -2064(s0)
	sw a0, 0(s11)
	la a0, .libro.str.295
	sw a0, -2072(s0)
	addi a0, a1, 4
	lw s11, -2072(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -364(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2088(s0)
	addi a0, zero, 1
	lw s11, -2088(s0)
	sw a0, 0(s11)
	la a0, .libro.str.296
	sw a0, -2096(s0)
	addi a0, a1, 4
	lw s11, -2096(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -372(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2112(s0)
	addi a0, zero, 1
	lw s11, -2112(s0)
	sw a0, 0(s11)
	la a0, .libro.str.297
	sw a0, -2120(s0)
	addi a0, a1, 4
	lw s11, -2120(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -376(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2136(s0)
	addi a0, zero, 1
	lw s11, -2136(s0)
	sw a0, 0(s11)
	la a0, .libro.str.298
	sw a0, -2144(s0)
	addi a0, a1, 4
	lw s11, -2144(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -388(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2160(s0)
	addi a0, zero, 1
	lw s11, -2160(s0)
	sw a0, 0(s11)
	la a0, .libro.str.299
	sw a0, -2168(s0)
	addi a0, a1, 4
	lw s11, -2168(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -396(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2184(s0)
	addi a0, zero, 1
	lw s11, -2184(s0)
	sw a0, 0(s11)
	la a0, .libro.str.300
	sw a0, -2192(s0)
	addi a0, a1, 4
	lw s11, -2192(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -404(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2208(s0)
	addi a0, zero, 1
	lw s11, -2208(s0)
	sw a0, 0(s11)
	la a0, .libro.str.301
	sw a0, -2216(s0)
	addi a0, a1, 4
	lw s11, -2216(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -412(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2232(s0)
	addi a0, zero, 1
	lw s11, -2232(s0)
	sw a0, 0(s11)
	la a0, .libro.str.302
	sw a0, -2240(s0)
	addi a0, a1, 4
	lw s11, -2240(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -416(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2256(s0)
	addi a0, zero, 1
	lw s11, -2256(s0)
	sw a0, 0(s11)
	la a0, .libro.str.303
	sw a0, -2264(s0)
	addi a0, a1, 4
	lw s11, -2264(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -420(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2280(s0)
	addi a0, zero, 1
	lw s11, -2280(s0)
	sw a0, 0(s11)
	la a0, .libro.str.304
	sw a0, -2288(s0)
	addi a0, a1, 4
	lw s11, -2288(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -424(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2304(s0)
	addi a0, zero, 1
	lw s11, -2304(s0)
	sw a0, 0(s11)
	la a0, .libro.str.305
	sw a0, -2312(s0)
	addi a0, a1, 4
	lw s11, -2312(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -428(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2328(s0)
	addi a0, zero, 1
	lw s11, -2328(s0)
	sw a0, 0(s11)
	la a0, .libro.str.306
	sw a0, -2336(s0)
	addi a0, a1, 4
	lw s11, -2336(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -432(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2352(s0)
	addi a0, zero, 1
	lw s11, -2352(s0)
	sw a0, 0(s11)
	la a0, .libro.str.307
	sw a0, -2360(s0)
	addi a0, a1, 4
	lw s11, -2360(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -440(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2376(s0)
	addi a0, zero, 1
	lw s11, -2376(s0)
	sw a0, 0(s11)
	la a0, .libro.str.308
	sw a0, -2384(s0)
	addi a0, a1, 4
	lw s11, -2384(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -444(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2400(s0)
	addi a0, zero, 1
	lw s11, -2400(s0)
	sw a0, 0(s11)
	la a0, .libro.str.309
	sw a0, -2408(s0)
	addi a0, a1, 4
	lw s11, -2408(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -456(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2424(s0)
	addi a0, zero, 1
	lw s11, -2424(s0)
	sw a0, 0(s11)
	la a0, .libro.str.310
	sw a0, -2432(s0)
	addi a0, a1, 4
	lw s11, -2432(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -464(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2448(s0)
	addi a0, zero, 1
	lw s11, -2448(s0)
	sw a0, 0(s11)
	la a0, .libro.str.311
	sw a0, -2456(s0)
	addi a0, a1, 4
	lw s11, -2456(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -472(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2472(s0)
	addi a0, zero, 1
	lw s11, -2472(s0)
	sw a0, 0(s11)
	la a0, .libro.str.312
	sw a0, -2480(s0)
	addi a0, a1, 4
	lw s11, -2480(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -480(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2496(s0)
	addi a0, zero, 1
	lw s11, -2496(s0)
	sw a0, 0(s11)
	la a0, .libro.str.313
	sw a0, -2504(s0)
	addi a0, a1, 4
	lw s11, -2504(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -484(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2520(s0)
	addi a0, zero, 1
	lw s11, -2520(s0)
	sw a0, 0(s11)
	la a0, .libro.str.314
	sw a0, -2528(s0)
	addi a0, a1, 4
	lw s11, -2528(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -488(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2544(s0)
	addi a0, zero, 1
	lw s11, -2544(s0)
	sw a0, 0(s11)
	la a0, .libro.str.315
	sw a0, -2552(s0)
	addi a0, a1, 4
	lw s11, -2552(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -492(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2564(s0)
	addi a0, zero, 1
	lw s11, -2564(s0)
	sw a0, 0(s11)
	la a0, .libro.str.316
	sw a0, -2576(s0)
	addi a0, a1, 4
	lw s11, -2576(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -496(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2584(s0)
	addi a0, zero, 1
	lw s11, -2584(s0)
	sw a0, 0(s11)
	la a0, .libro.str.317
	sw a0, -2592(s0)
	addi a0, a1, 4
	lw s11, -2592(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -500(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2600(s0)
	addi a0, zero, 1
	lw s11, -2600(s0)
	sw a0, 0(s11)
	la a0, .libro.str.318
	sw a0, -2608(s0)
	addi a0, a1, 4
	lw s11, -2608(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -508(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2616(s0)
	addi a0, zero, 1
	lw s11, -2616(s0)
	sw a0, 0(s11)
	la a0, .libro.str.319
	sw a0, -2624(s0)
	addi a0, a1, 4
	lw s11, -2624(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -512(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2632(s0)
	addi a0, zero, 1
	lw s11, -2632(s0)
	sw a0, 0(s11)
	la a0, .libro.str.320
	sw a0, -2640(s0)
	addi a0, a1, 4
	lw s11, -2640(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -524(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2648(s0)
	addi a0, zero, 1
	lw s11, -2648(s0)
	sw a0, 0(s11)
	la a0, .libro.str.321
	sw a0, -2656(s0)
	addi a0, a1, 4
	lw s11, -2656(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -532(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2664(s0)
	addi a0, zero, 1
	lw s11, -2664(s0)
	sw a0, 0(s11)
	la a0, .libro.str.322
	sw a0, -2672(s0)
	addi a0, a1, 4
	lw s11, -2672(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -540(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2680(s0)
	addi a0, zero, 1
	lw s11, -2680(s0)
	sw a0, 0(s11)
	la a0, .libro.str.323
	sw a0, -2688(s0)
	addi a0, a1, 4
	lw s11, -2688(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -548(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2696(s0)
	addi a0, zero, 1
	lw s11, -2696(s0)
	sw a0, 0(s11)
	la a0, .libro.str.324
	sw a0, -2704(s0)
	addi a0, a1, 4
	lw s11, -2704(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -552(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2712(s0)
	addi a0, zero, 1
	lw s11, -2712(s0)
	sw a0, 0(s11)
	la a0, .libro.str.325
	sw a0, -2720(s0)
	addi a0, a1, 4
	lw s11, -2720(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -556(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2728(s0)
	addi a0, zero, 1
	lw s11, -2728(s0)
	sw a0, 0(s11)
	la a0, .libro.str.326
	sw a0, -2736(s0)
	addi a0, a1, 4
	lw s11, -2736(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -560(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2744(s0)
	addi a0, zero, 1
	lw s11, -2744(s0)
	sw a0, 0(s11)
	la a0, .libro.str.327
	sw a0, -2752(s0)
	addi a0, a1, 4
	lw s11, -2752(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -564(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2760(s0)
	addi a0, zero, 1
	lw s11, -2760(s0)
	sw a0, 0(s11)
	la a0, .libro.str.328
	sw a0, -2768(s0)
	addi a0, a1, 4
	lw s11, -2768(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -568(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2776(s0)
	addi a0, zero, 1
	lw s11, -2776(s0)
	sw a0, 0(s11)
	la a0, .libro.str.329
	sw a0, -2784(s0)
	addi a0, a1, 4
	lw s11, -2784(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -576(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2792(s0)
	addi a0, zero, 1
	lw s11, -2792(s0)
	sw a0, 0(s11)
	la a0, .libro.str.330
	sw a0, -2800(s0)
	addi a0, a1, 4
	lw s11, -2800(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -580(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2808(s0)
	addi a0, zero, 1
	lw s11, -2808(s0)
	sw a0, 0(s11)
	la a0, .libro.str.331
	sw a0, -2816(s0)
	addi a0, a1, 4
	lw s11, -2816(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -592(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2824(s0)
	addi a0, zero, 1
	lw s11, -2824(s0)
	sw a0, 0(s11)
	la a0, .libro.str.332
	sw a0, -2832(s0)
	addi a0, a1, 4
	lw s11, -2832(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -600(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2840(s0)
	addi a0, zero, 1
	lw s11, -2840(s0)
	sw a0, 0(s11)
	la a0, .libro.str.333
	sw a0, -2848(s0)
	addi a0, a1, 4
	lw s11, -2848(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -608(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2856(s0)
	addi a0, zero, 1
	lw s11, -2856(s0)
	sw a0, 0(s11)
	la a0, .libro.str.334
	sw a0, -2864(s0)
	addi a0, a1, 4
	lw s11, -2864(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -616(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2872(s0)
	addi a0, zero, 1
	lw s11, -2872(s0)
	sw a0, 0(s11)
	la a0, .libro.str.335
	sw a0, -2880(s0)
	addi a0, a1, 4
	lw s11, -2880(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -620(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2888(s0)
	addi a0, zero, 1
	lw s11, -2888(s0)
	sw a0, 0(s11)
	la a0, .libro.str.336
	sw a0, -2896(s0)
	addi a0, a1, 4
	lw s11, -2896(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -624(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2904(s0)
	addi a0, zero, 1
	lw s11, -2904(s0)
	sw a0, 0(s11)
	la a0, .libro.str.337
	sw a0, -2912(s0)
	addi a0, a1, 4
	lw s11, -2912(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -628(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2920(s0)
	addi a0, zero, 1
	lw s11, -2920(s0)
	sw a0, 0(s11)
	la a0, .libro.str.338
	sw a0, -2928(s0)
	addi a0, a1, 4
	lw s11, -2928(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -632(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2936(s0)
	addi a0, zero, 1
	lw s11, -2936(s0)
	sw a0, 0(s11)
	la a0, .libro.str.339
	sw a0, -2944(s0)
	addi a0, a1, 4
	lw s11, -2944(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -636(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2952(s0)
	addi a0, zero, 1
	lw s11, -2952(s0)
	sw a0, 0(s11)
	la a0, .libro.str.340
	sw a0, -2960(s0)
	addi a0, a1, 4
	lw s11, -2960(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -644(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2968(s0)
	addi a0, zero, 1
	lw s11, -2968(s0)
	sw a0, 0(s11)
	la a0, .libro.str.341
	sw a0, -2976(s0)
	addi a0, a1, 4
	lw s11, -2976(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -648(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2984(s0)
	addi a0, zero, 1
	lw s11, -2984(s0)
	sw a0, 0(s11)
	la a0, .libro.str.342
	sw a0, -2992(s0)
	addi a0, a1, 4
	lw s11, -2992(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -660(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3000(s0)
	addi a0, zero, 1
	lw s11, -3000(s0)
	sw a0, 0(s11)
	la a0, .libro.str.343
	sw a0, -3008(s0)
	addi a0, a1, 4
	lw s11, -3008(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -668(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3016(s0)
	addi a0, zero, 1
	lw s11, -3016(s0)
	sw a0, 0(s11)
	la a0, .libro.str.344
	sw a0, -3024(s0)
	addi a0, a1, 4
	lw s11, -3024(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -676(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3032(s0)
	addi a0, zero, 1
	lw s11, -3032(s0)
	sw a0, 0(s11)
	la a0, .libro.str.345
	sw a0, -3040(s0)
	addi a0, a1, 4
	lw s11, -3040(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -684(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3048(s0)
	addi a0, zero, 1
	lw s11, -3048(s0)
	sw a0, 0(s11)
	la a0, .libro.str.346
	sw a0, -3056(s0)
	addi a0, a1, 4
	lw s11, -3056(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -688(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3064(s0)
	addi a0, zero, 1
	lw s11, -3064(s0)
	sw a0, 0(s11)
	la a0, .libro.str.347
	sw a0, -3072(s0)
	addi a0, a1, 4
	lw s11, -3072(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -692(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3080(s0)
	addi a0, zero, 1
	lw s11, -3080(s0)
	sw a0, 0(s11)
	la a0, .libro.str.348
	sw a0, -3088(s0)
	addi a0, a1, 4
	lw s11, -3088(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -696(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3096(s0)
	addi a0, zero, 1
	lw s11, -3096(s0)
	sw a0, 0(s11)
	la a0, .libro.str.349
	sw a0, -3104(s0)
	addi a0, a1, 4
	lw s11, -3104(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -700(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3112(s0)
	addi a0, zero, 1
	lw s11, -3112(s0)
	sw a0, 0(s11)
	la a0, .libro.str.350
	sw a0, -3120(s0)
	addi a0, a1, 4
	lw s11, -3120(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -704(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3128(s0)
	addi a0, zero, 1
	lw s11, -3128(s0)
	sw a0, 0(s11)
	la a0, .libro.str.351
	sw a0, -3136(s0)
	addi a0, a1, 4
	lw s11, -3136(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -712(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3144(s0)
	addi a0, zero, 1
	lw s11, -3144(s0)
	sw a0, 0(s11)
	la a0, .libro.str.352
	sw a0, -3152(s0)
	addi a0, a1, 4
	lw s11, -3152(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -716(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3160(s0)
	addi a0, zero, 1
	lw s11, -3160(s0)
	sw a0, 0(s11)
	la a0, .libro.str.353
	sw a0, -3168(s0)
	addi a0, a1, 4
	lw s11, -3168(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -728(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3176(s0)
	addi a0, zero, 1
	lw s11, -3176(s0)
	sw a0, 0(s11)
	la a0, .libro.str.354
	sw a0, -3184(s0)
	addi a0, a1, 4
	lw s11, -3184(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -736(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3192(s0)
	addi a0, zero, 1
	lw s11, -3192(s0)
	sw a0, 0(s11)
	la a0, .libro.str.355
	sw a0, -3200(s0)
	addi a0, a1, 4
	lw s11, -3200(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -744(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3208(s0)
	addi a0, zero, 1
	lw s11, -3208(s0)
	sw a0, 0(s11)
	la a0, .libro.str.356
	sw a0, -3216(s0)
	addi a0, a1, 4
	lw s11, -3216(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -752(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3224(s0)
	addi a0, zero, 1
	lw s11, -3224(s0)
	sw a0, 0(s11)
	la a0, .libro.str.357
	sw a0, -3232(s0)
	addi a0, a1, 4
	lw s11, -3232(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -756(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3240(s0)
	addi a0, zero, 1
	lw s11, -3240(s0)
	sw a0, 0(s11)
	la a0, .libro.str.358
	sw a0, -3248(s0)
	addi a0, a1, 4
	lw s11, -3248(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -760(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3256(s0)
	addi a0, zero, 1
	lw s11, -3256(s0)
	sw a0, 0(s11)
	la a0, .libro.str.359
	sw a0, -3264(s0)
	addi a0, a1, 4
	lw s11, -3264(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -764(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3272(s0)
	addi a0, zero, 1
	lw s11, -3272(s0)
	sw a0, 0(s11)
	la a0, .libro.str.360
	sw a0, -3280(s0)
	addi a0, a1, 4
	lw s11, -3280(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -768(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3288(s0)
	addi a0, zero, 1
	lw s11, -3288(s0)
	sw a0, 0(s11)
	la a0, .libro.str.361
	sw a0, -3296(s0)
	addi a0, a1, 4
	lw s11, -3296(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -772(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3304(s0)
	addi a0, zero, 1
	lw s11, -3304(s0)
	sw a0, 0(s11)
	la a0, .libro.str.362
	sw a0, -3312(s0)
	addi a0, a1, 4
	lw s11, -3312(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -780(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3320(s0)
	addi a0, zero, 1
	lw s11, -3320(s0)
	sw a0, 0(s11)
	la a0, .libro.str.363
	sw a0, -3328(s0)
	addi a0, a1, 4
	lw s11, -3328(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -784(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3336(s0)
	addi a0, zero, 1
	lw s11, -3336(s0)
	sw a0, 0(s11)
	la a0, .libro.str.364
	sw a0, -3344(s0)
	addi a0, a1, 4
	lw s11, -3344(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -796(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3352(s0)
	addi a0, zero, 1
	lw s11, -3352(s0)
	sw a0, 0(s11)
	la a0, .libro.str.365
	sw a0, -3360(s0)
	addi a0, a1, 4
	lw s11, -3360(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -804(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3368(s0)
	addi a0, zero, 1
	lw s11, -3368(s0)
	sw a0, 0(s11)
	la a0, .libro.str.366
	sw a0, -3376(s0)
	addi a0, a1, 4
	lw s11, -3376(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -812(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3384(s0)
	addi a0, zero, 1
	lw s11, -3384(s0)
	sw a0, 0(s11)
	la a0, .libro.str.367
	sw a0, -3392(s0)
	addi a0, a1, 4
	lw s11, -3392(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -820(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3400(s0)
	addi a0, zero, 1
	lw s11, -3400(s0)
	sw a0, 0(s11)
	la a0, .libro.str.368
	sw a0, -3408(s0)
	addi a0, a1, 4
	lw s11, -3408(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -824(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3416(s0)
	addi a0, zero, 1
	lw s11, -3416(s0)
	sw a0, 0(s11)
	la a0, .libro.str.369
	sw a0, -3424(s0)
	addi a0, a1, 4
	lw s11, -3424(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -828(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3432(s0)
	addi a0, zero, 1
	lw s11, -3432(s0)
	sw a0, 0(s11)
	la a0, .libro.str.370
	sw a0, -3440(s0)
	addi a0, a1, 4
	lw s11, -3440(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -832(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3448(s0)
	addi a0, zero, 1
	lw s11, -3448(s0)
	sw a0, 0(s11)
	la a0, .libro.str.371
	sw a0, -3456(s0)
	addi a0, a1, 4
	lw s11, -3456(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -836(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3464(s0)
	addi a0, zero, 1
	lw s11, -3464(s0)
	sw a0, 0(s11)
	la a0, .libro.str.372
	sw a0, -3472(s0)
	addi a0, a1, 4
	lw s11, -3472(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -840(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3480(s0)
	addi a0, zero, 1
	lw s11, -3480(s0)
	sw a0, 0(s11)
	la a0, .libro.str.373
	sw a0, -3488(s0)
	addi a0, a1, 4
	lw s11, -3488(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -848(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3504(s0)
	addi a0, zero, 1
	lw s11, -3504(s0)
	sw a0, 0(s11)
	la a0, .libro.str.374
	sw a0, -3512(s0)
	addi a0, a1, 4
	lw s11, -3512(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -852(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3528(s0)
	addi a0, zero, 1
	lw s11, -3528(s0)
	sw a0, 0(s11)
	la a0, .libro.str.375
	sw a0, -3536(s0)
	addi a0, a1, 4
	lw s11, -3536(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -864(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3552(s0)
	addi a0, zero, 1
	lw s11, -3552(s0)
	sw a0, 0(s11)
	la a0, .libro.str.376
	sw a0, -3560(s0)
	addi a0, a1, 4
	lw s11, -3560(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -872(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3576(s0)
	addi a0, zero, 1
	lw s11, -3576(s0)
	sw a0, 0(s11)
	la a0, .libro.str.377
	sw a0, -3584(s0)
	addi a0, a1, 4
	lw s11, -3584(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -880(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3600(s0)
	addi a0, zero, 1
	lw s11, -3600(s0)
	sw a0, 0(s11)
	la a0, .libro.str.378
	sw a0, -3608(s0)
	addi a0, a1, 4
	lw s11, -3608(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -888(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3624(s0)
	addi a0, zero, 1
	lw s11, -3624(s0)
	sw a0, 0(s11)
	la a0, .libro.str.379
	sw a0, -3632(s0)
	addi a0, a1, 4
	lw s11, -3632(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -892(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3648(s0)
	addi a0, zero, 1
	lw s11, -3648(s0)
	sw a0, 0(s11)
	la a0, .libro.str.380
	sw a0, -3656(s0)
	addi a0, a1, 4
	lw s11, -3656(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -896(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3672(s0)
	addi a0, zero, 1
	lw s11, -3672(s0)
	sw a0, 0(s11)
	la a0, .libro.str.381
	sw a0, -3680(s0)
	addi a0, a1, 4
	lw s11, -3680(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -900(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3696(s0)
	addi a0, zero, 1
	lw s11, -3696(s0)
	sw a0, 0(s11)
	la a0, .libro.str.382
	sw a0, -3704(s0)
	addi a0, a1, 4
	lw s11, -3704(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -904(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3720(s0)
	addi a0, zero, 1
	lw s11, -3720(s0)
	sw a0, 0(s11)
	la a0, .libro.str.383
	sw a0, -3728(s0)
	addi a0, a1, 4
	lw s11, -3728(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -908(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3744(s0)
	addi a0, zero, 1
	lw s11, -3744(s0)
	sw a0, 0(s11)
	la a0, .libro.str.384
	sw a0, -3752(s0)
	addi a0, a1, 4
	lw s11, -3752(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -916(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3768(s0)
	addi a0, zero, 1
	lw s11, -3768(s0)
	sw a0, 0(s11)
	la a0, .libro.str.385
	sw a0, -3776(s0)
	addi a0, a1, 4
	lw s11, -3776(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -920(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3792(s0)
	addi a0, zero, 1
	lw s11, -3792(s0)
	sw a0, 0(s11)
	la a0, .libro.str.386
	sw a0, -3800(s0)
	addi a0, a1, 4
	lw s11, -3800(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -932(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3816(s0)
	addi a0, zero, 1
	lw s11, -3816(s0)
	sw a0, 0(s11)
	la a0, .libro.str.387
	sw a0, -3824(s0)
	addi a0, a1, 4
	lw s11, -3824(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -940(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3840(s0)
	addi a0, zero, 1
	lw s11, -3840(s0)
	sw a0, 0(s11)
	la a0, .libro.str.388
	sw a0, -3848(s0)
	addi a0, a1, 4
	lw s11, -3848(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -948(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3864(s0)
	addi a0, zero, 1
	lw s11, -3864(s0)
	sw a0, 0(s11)
	la a0, .libro.str.389
	sw a0, -3872(s0)
	addi a0, a1, 4
	lw s11, -3872(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -956(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3888(s0)
	addi a0, zero, 1
	lw s11, -3888(s0)
	sw a0, 0(s11)
	la a0, .libro.str.390
	sw a0, -3896(s0)
	addi a0, a1, 4
	lw s11, -3896(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -960(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3912(s0)
	addi a0, zero, 1
	lw s11, -3912(s0)
	sw a0, 0(s11)
	la a0, .libro.str.391
	sw a0, -3920(s0)
	addi a0, a1, 4
	lw s11, -3920(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -964(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3936(s0)
	addi a0, zero, 1
	lw s11, -3936(s0)
	sw a0, 0(s11)
	la a0, .libro.str.392
	sw a0, -3944(s0)
	addi a0, a1, 4
	lw s11, -3944(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -968(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3960(s0)
	addi a0, zero, 1
	lw s11, -3960(s0)
	sw a0, 0(s11)
	la a0, .libro.str.393
	sw a0, -3968(s0)
	addi a0, a1, 4
	lw s11, -3968(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -972(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -3984(s0)
	addi a0, zero, 1
	lw s11, -3984(s0)
	sw a0, 0(s11)
	la a0, .libro.str.394
	sw a0, -3992(s0)
	addi a0, a1, 4
	lw s11, -3992(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -976(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4008(s0)
	addi a0, zero, 1
	lw s11, -4008(s0)
	sw a0, 0(s11)
	la a0, .libro.str.395
	sw a0, -4016(s0)
	addi a0, a1, 4
	lw s11, -4016(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -984(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4032(s0)
	addi a0, zero, 1
	lw s11, -4032(s0)
	sw a0, 0(s11)
	la a0, .libro.str.396
	sw a0, -4040(s0)
	addi a0, a1, 4
	lw s11, -4040(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -988(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4056(s0)
	addi a0, zero, 1
	lw s11, -4056(s0)
	sw a0, 0(s11)
	la a0, .libro.str.397
	sw a0, -4064(s0)
	addi a0, a1, 4
	lw s11, -4064(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1000(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4080(s0)
	addi a0, zero, 1
	lw s11, -4080(s0)
	sw a0, 0(s11)
	la a0, .libro.str.398
	sw a0, -4088(s0)
	addi a0, a1, 4
	lw s11, -4088(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1008(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4104(s0)
	addi a0, zero, 1
	lw s11, -4104(s0)
	sw a0, 0(s11)
	la a0, .libro.str.399
	sw a0, -4112(s0)
	addi a0, a1, 4
	lw s11, -4112(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1016(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4128(s0)
	addi a0, zero, 1
	lw s11, -4128(s0)
	sw a0, 0(s11)
	la a0, .libro.str.400
	sw a0, -4136(s0)
	addi a0, a1, 4
	lw s11, -4136(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1024(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4152(s0)
	addi a0, zero, 1
	lw s11, -4152(s0)
	sw a0, 0(s11)
	la a0, .libro.str.401
	sw a0, -4160(s0)
	addi a0, a1, 4
	lw s11, -4160(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1028(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4176(s0)
	addi a0, zero, 1
	lw s11, -4176(s0)
	sw a0, 0(s11)
	la a0, .libro.str.402
	sw a0, -4184(s0)
	addi a0, a1, 4
	lw s11, -4184(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1032(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4200(s0)
	addi a0, zero, 1
	lw s11, -4200(s0)
	sw a0, 0(s11)
	la a0, .libro.str.403
	sw a0, -4208(s0)
	addi a0, a1, 4
	lw s11, -4208(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1036(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4224(s0)
	addi a0, zero, 1
	lw s11, -4224(s0)
	sw a0, 0(s11)
	la a0, .libro.str.404
	sw a0, -4232(s0)
	addi a0, a1, 4
	lw s11, -4232(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1040(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4248(s0)
	addi a0, zero, 1
	lw s11, -4248(s0)
	sw a0, 0(s11)
	la a0, .libro.str.405
	sw a0, -4256(s0)
	addi a0, a1, 4
	lw s11, -4256(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1044(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4272(s0)
	addi a0, zero, 1
	lw s11, -4272(s0)
	sw a0, 0(s11)
	la a0, .libro.str.406
	sw a0, -4280(s0)
	addi a0, a1, 4
	lw s11, -4280(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1052(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4296(s0)
	addi a0, zero, 1
	lw s11, -4296(s0)
	sw a0, 0(s11)
	la a0, .libro.str.407
	sw a0, -4304(s0)
	addi a0, a1, 4
	lw s11, -4304(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1056(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4320(s0)
	addi a0, zero, 1
	lw s11, -4320(s0)
	sw a0, 0(s11)
	la a0, .libro.str.408
	sw a0, -4328(s0)
	addi a0, a1, 4
	lw s11, -4328(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1068(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4344(s0)
	addi a0, zero, 1
	lw s11, -4344(s0)
	sw a0, 0(s11)
	la a0, .libro.str.409
	sw a0, -4352(s0)
	addi a0, a1, 4
	lw s11, -4352(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1076(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4368(s0)
	addi a0, zero, 1
	lw s11, -4368(s0)
	sw a0, 0(s11)
	la a0, .libro.str.410
	sw a0, -4376(s0)
	addi a0, a1, 4
	lw s11, -4376(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1084(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4392(s0)
	addi a0, zero, 1
	lw s11, -4392(s0)
	sw a0, 0(s11)
	la a0, .libro.str.411
	sw a0, -4400(s0)
	addi a0, a1, 4
	lw s11, -4400(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1092(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4416(s0)
	addi a0, zero, 1
	lw s11, -4416(s0)
	sw a0, 0(s11)
	la a0, .libro.str.412
	sw a0, -4424(s0)
	addi a0, a1, 4
	lw s11, -4424(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1096(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4440(s0)
	addi a0, zero, 1
	lw s11, -4440(s0)
	sw a0, 0(s11)
	la a0, .libro.str.413
	sw a0, -4448(s0)
	addi a0, a1, 4
	lw s11, -4448(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1100(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4464(s0)
	addi a0, zero, 1
	lw s11, -4464(s0)
	sw a0, 0(s11)
	la a0, .libro.str.414
	sw a0, -4472(s0)
	addi a0, a1, 4
	lw s11, -4472(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1104(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4488(s0)
	addi a0, zero, 1
	lw s11, -4488(s0)
	sw a0, 0(s11)
	la a0, .libro.str.415
	sw a0, -4496(s0)
	addi a0, a1, 4
	lw s11, -4496(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1108(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4512(s0)
	addi a0, zero, 1
	lw s11, -4512(s0)
	sw a0, 0(s11)
	la a0, .libro.str.416
	sw a0, -4520(s0)
	addi a0, a1, 4
	lw s11, -4520(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1112(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4536(s0)
	addi a0, zero, 1
	lw s11, -4536(s0)
	sw a0, 0(s11)
	la a0, .libro.str.417
	sw a0, -4544(s0)
	addi a0, a1, 4
	lw s11, -4544(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1120(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4560(s0)
	addi a0, zero, 1
	lw s11, -4560(s0)
	sw a0, 0(s11)
	la a0, .libro.str.418
	sw a0, -4568(s0)
	addi a0, a1, 4
	lw s11, -4568(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1124(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4584(s0)
	addi a0, zero, 1
	lw s11, -4584(s0)
	sw a0, 0(s11)
	la a0, .libro.str.419
	sw a0, -4592(s0)
	addi a0, a1, 4
	lw s11, -4592(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1136(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4608(s0)
	addi a0, zero, 1
	lw s11, -4608(s0)
	sw a0, 0(s11)
	la a0, .libro.str.420
	sw a0, -4616(s0)
	addi a0, a1, 4
	lw s11, -4616(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1144(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4632(s0)
	addi a0, zero, 1
	lw s11, -4632(s0)
	sw a0, 0(s11)
	la a0, .libro.str.421
	sw a0, -4640(s0)
	addi a0, a1, 4
	lw s11, -4640(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1152(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4656(s0)
	addi a0, zero, 1
	lw s11, -4656(s0)
	sw a0, 0(s11)
	la a0, .libro.str.422
	sw a0, -4664(s0)
	addi a0, a1, 4
	lw s11, -4664(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1160(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4680(s0)
	addi a0, zero, 1
	lw s11, -4680(s0)
	sw a0, 0(s11)
	la a0, .libro.str.423
	sw a0, -4688(s0)
	addi a0, a1, 4
	lw s11, -4688(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1164(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4704(s0)
	addi a0, zero, 1
	lw s11, -4704(s0)
	sw a0, 0(s11)
	la a0, .libro.str.424
	sw a0, -4712(s0)
	addi a0, a1, 4
	lw s11, -4712(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1168(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4728(s0)
	addi a0, zero, 1
	lw s11, -4728(s0)
	sw a0, 0(s11)
	la a0, .libro.str.425
	sw a0, -4736(s0)
	addi a0, a1, 4
	lw s11, -4736(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1172(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4752(s0)
	addi a0, zero, 1
	lw s11, -4752(s0)
	sw a0, 0(s11)
	la a0, .libro.str.426
	sw a0, -4760(s0)
	addi a0, a1, 4
	lw s11, -4760(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1176(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4776(s0)
	addi a0, zero, 1
	lw s11, -4776(s0)
	sw a0, 0(s11)
	la a0, .libro.str.427
	sw a0, -4784(s0)
	addi a0, a1, 4
	lw s11, -4784(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1180(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4800(s0)
	addi a0, zero, 1
	lw s11, -4800(s0)
	sw a0, 0(s11)
	la a0, .libro.str.428
	sw a0, -4808(s0)
	addi a0, a1, 4
	lw s11, -4808(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1188(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4824(s0)
	addi a0, zero, 1
	lw s11, -4824(s0)
	sw a0, 0(s11)
	la a0, .libro.str.429
	sw a0, -4832(s0)
	addi a0, a1, 4
	lw s11, -4832(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1192(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4848(s0)
	addi a0, zero, 1
	lw s11, -4848(s0)
	sw a0, 0(s11)
	la a0, .libro.str.430
	sw a0, -4856(s0)
	addi a0, a1, 4
	lw s11, -4856(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1204(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4872(s0)
	addi a0, zero, 1
	lw s11, -4872(s0)
	sw a0, 0(s11)
	la a0, .libro.str.431
	sw a0, -4880(s0)
	addi a0, a1, 4
	lw s11, -4880(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1212(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4896(s0)
	addi a0, zero, 1
	lw s11, -4896(s0)
	sw a0, 0(s11)
	la a0, .libro.str.432
	sw a0, -4904(s0)
	addi a0, a1, 4
	lw s11, -4904(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1220(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4920(s0)
	addi a0, zero, 1
	lw s11, -4920(s0)
	sw a0, 0(s11)
	la a0, .libro.str.433
	sw a0, -4928(s0)
	addi a0, a1, 4
	lw s11, -4928(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1228(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4944(s0)
	addi a0, zero, 1
	lw s11, -4944(s0)
	sw a0, 0(s11)
	la a0, .libro.str.434
	sw a0, -4952(s0)
	addi a0, a1, 4
	lw s11, -4952(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1232(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4968(s0)
	addi a0, zero, 1
	lw s11, -4968(s0)
	sw a0, 0(s11)
	la a0, .libro.str.435
	sw a0, -4976(s0)
	addi a0, a1, 4
	lw s11, -4976(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1236(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -4992(s0)
	addi a0, zero, 1
	lw s11, -4992(s0)
	sw a0, 0(s11)
	la a0, .libro.str.436
	sw a0, -5000(s0)
	addi a0, a1, 4
	lw s11, -5000(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1240(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -5016(s0)
	addi a0, zero, 1
	lw s11, -5016(s0)
	sw a0, 0(s11)
	la a0, .libro.str.437
	sw a0, -5024(s0)
	addi a0, a1, 4
	lw s11, -5024(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1244(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -5040(s0)
	addi a0, zero, 1
	lw s11, -5040(s0)
	sw a0, 0(s11)
	la a0, .libro.str.438
	sw a0, -5048(s0)
	addi a0, a1, 4
	lw s11, -5048(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1248(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -64(s0)
	addi a0, zero, 1
	lw s11, -64(s0)
	sw a0, 0(s11)
	la a0, .libro.str.439
	sw a0, -72(s0)
	addi a0, a1, 4
	lw s11, -72(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1256(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -88(s0)
	addi a0, zero, 1
	lw s11, -88(s0)
	sw a0, 0(s11)
	la a0, .libro.str.440
	sw a0, -96(s0)
	addi a0, a1, 4
	lw s11, -96(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1260(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -112(s0)
	addi a0, zero, 1
	lw s11, -112(s0)
	sw a0, 0(s11)
	la a0, .libro.str.441
	sw a0, -120(s0)
	addi a0, a1, 4
	lw s11, -120(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1272(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -164(s0)
	addi a0, zero, 1
	lw s11, -164(s0)
	sw a0, 0(s11)
	la a0, .libro.str.442
	sw a0, -180(s0)
	addi a0, a1, 4
	lw s11, -180(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1280(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -232(s0)
	addi a0, zero, 1
	lw s11, -232(s0)
	sw a0, 0(s11)
	la a0, .libro.str.443
	sw a0, -244(s0)
	addi a0, a1, 4
	lw s11, -244(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1288(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -300(s0)
	addi a0, zero, 1
	lw s11, -300(s0)
	sw a0, 0(s11)
	la a0, .libro.str.444
	sw a0, -312(s0)
	addi a0, a1, 4
	lw s11, -312(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1296(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -368(s0)
	addi a0, zero, 1
	lw s11, -368(s0)
	sw a0, 0(s11)
	la a0, .libro.str.445
	sw a0, -380(s0)
	addi a0, a1, 4
	lw s11, -380(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1300(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -436(s0)
	addi a0, zero, 1
	lw s11, -436(s0)
	sw a0, 0(s11)
	la a0, .libro.str.446
	sw a0, -448(s0)
	addi a0, a1, 4
	lw s11, -448(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1304(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -504(s0)
	addi a0, zero, 1
	lw s11, -504(s0)
	sw a0, 0(s11)
	la a0, .libro.str.447
	sw a0, -516(s0)
	addi a0, a1, 4
	lw s11, -516(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1308(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -572(s0)
	addi a0, zero, 1
	lw s11, -572(s0)
	sw a0, 0(s11)
	la a0, .libro.str.448
	sw a0, -584(s0)
	addi a0, a1, 4
	lw s11, -584(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1312(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -640(s0)
	addi a0, zero, 1
	lw s11, -640(s0)
	sw a0, 0(s11)
	la a0, .libro.str.449
	sw a0, -652(s0)
	addi a0, a1, 4
	lw s11, -652(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1316(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -708(s0)
	addi a0, zero, 1
	lw s11, -708(s0)
	sw a0, 0(s11)
	la a0, .libro.str.450
	sw a0, -720(s0)
	addi a0, a1, 4
	lw s11, -720(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1324(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -776(s0)
	addi a0, zero, 1
	lw s11, -776(s0)
	sw a0, 0(s11)
	la a0, .libro.str.451
	sw a0, -788(s0)
	addi a0, a1, 4
	lw s11, -788(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1328(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -844(s0)
	addi a0, zero, 1
	lw s11, -844(s0)
	sw a0, 0(s11)
	la a0, .libro.str.452
	sw a0, -856(s0)
	addi a0, a1, 4
	lw s11, -856(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1340(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -912(s0)
	addi a0, zero, 1
	lw s11, -912(s0)
	sw a0, 0(s11)
	la a0, .libro.str.453
	sw a0, -924(s0)
	addi a0, a1, 4
	lw s11, -924(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1348(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -980(s0)
	addi a0, zero, 1
	lw s11, -980(s0)
	sw a0, 0(s11)
	la a0, .libro.str.454
	sw a0, -992(s0)
	addi a0, a1, 4
	lw s11, -992(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1356(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1048(s0)
	addi a0, zero, 1
	lw s11, -1048(s0)
	sw a0, 0(s11)
	la a0, .libro.str.455
	sw a0, -1060(s0)
	addi a0, a1, 4
	lw s11, -1060(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1364(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1116(s0)
	addi a0, zero, 1
	lw s11, -1116(s0)
	sw a0, 0(s11)
	la a0, .libro.str.456
	sw a0, -1128(s0)
	addi a0, a1, 4
	lw s11, -1128(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1368(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1184(s0)
	addi a0, zero, 1
	lw s11, -1184(s0)
	sw a0, 0(s11)
	la a0, .libro.str.457
	sw a0, -1196(s0)
	addi a0, a1, 4
	lw s11, -1196(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1372(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1252(s0)
	addi a0, zero, 1
	lw s11, -1252(s0)
	sw a0, 0(s11)
	la a0, .libro.str.458
	sw a0, -1264(s0)
	addi a0, a1, 4
	lw s11, -1264(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1376(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1320(s0)
	addi a0, zero, 1
	lw s11, -1320(s0)
	sw a0, 0(s11)
	la a0, .libro.str.459
	sw a0, -1332(s0)
	addi a0, a1, 4
	lw s11, -1332(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1380(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1388(s0)
	addi a0, zero, 1
	lw s11, -1388(s0)
	sw a0, 0(s11)
	la a0, .libro.str.460
	sw a0, -1400(s0)
	addi a0, a1, 4
	lw s11, -1400(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1384(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1456(s0)
	addi a0, zero, 1
	lw s11, -1456(s0)
	sw a0, 0(s11)
	la a0, .libro.str.461
	sw a0, -1468(s0)
	addi a0, a1, 4
	lw s11, -1468(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1392(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1524(s0)
	addi a0, zero, 1
	lw s11, -1524(s0)
	sw a0, 0(s11)
	la a0, .libro.str.462
	sw a0, -1536(s0)
	addi a0, a1, 4
	lw s11, -1536(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1396(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1592(s0)
	addi a0, zero, 1
	lw s11, -1592(s0)
	sw a0, 0(s11)
	la a0, .libro.str.463
	sw a0, -1604(s0)
	addi a0, a1, 4
	lw s11, -1604(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1408(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1648(s0)
	addi a0, zero, 1
	lw s11, -1648(s0)
	sw a0, 0(s11)
	la a0, .libro.str.464
	sw a0, -1652(s0)
	addi a0, a1, 4
	lw s11, -1652(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1416(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1672(s0)
	addi a0, zero, 1
	lw s11, -1672(s0)
	sw a0, 0(s11)
	la a0, .libro.str.465
	sw a0, -1676(s0)
	addi a0, a1, 4
	lw s11, -1676(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1424(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1696(s0)
	addi a0, zero, 1
	lw s11, -1696(s0)
	sw a0, 0(s11)
	la a0, .libro.str.466
	sw a0, -1700(s0)
	addi a0, a1, 4
	lw s11, -1700(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1432(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1720(s0)
	addi a0, zero, 1
	lw s11, -1720(s0)
	sw a0, 0(s11)
	la a0, .libro.str.467
	sw a0, -1724(s0)
	addi a0, a1, 4
	lw s11, -1724(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1436(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1744(s0)
	addi a0, zero, 1
	lw s11, -1744(s0)
	sw a0, 0(s11)
	la a0, .libro.str.468
	sw a0, -1748(s0)
	addi a0, a1, 4
	lw s11, -1748(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1440(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1768(s0)
	addi a0, zero, 1
	lw s11, -1768(s0)
	sw a0, 0(s11)
	la a0, .libro.str.469
	sw a0, -1772(s0)
	addi a0, a1, 4
	lw s11, -1772(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1444(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1792(s0)
	addi a0, zero, 1
	lw s11, -1792(s0)
	sw a0, 0(s11)
	la a0, .libro.str.470
	sw a0, -1796(s0)
	addi a0, a1, 4
	lw s11, -1796(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1448(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1816(s0)
	addi a0, zero, 1
	lw s11, -1816(s0)
	sw a0, 0(s11)
	la a0, .libro.str.471
	sw a0, -1820(s0)
	addi a0, a1, 4
	lw s11, -1820(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1452(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1840(s0)
	addi a0, zero, 1
	lw s11, -1840(s0)
	sw a0, 0(s11)
	la a0, .libro.str.472
	sw a0, -1844(s0)
	addi a0, a1, 4
	lw s11, -1844(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1460(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1864(s0)
	addi a0, zero, 1
	lw s11, -1864(s0)
	sw a0, 0(s11)
	la a0, .libro.str.473
	sw a0, -1868(s0)
	addi a0, a1, 4
	lw s11, -1868(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1464(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1888(s0)
	addi a0, zero, 1
	lw s11, -1888(s0)
	sw a0, 0(s11)
	la a0, .libro.str.474
	sw a0, -1892(s0)
	addi a0, a1, 4
	lw s11, -1892(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1476(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1912(s0)
	addi a0, zero, 1
	lw s11, -1912(s0)
	sw a0, 0(s11)
	la a0, .libro.str.475
	sw a0, -1916(s0)
	addi a0, a1, 4
	lw s11, -1916(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1484(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1936(s0)
	addi a0, zero, 1
	lw s11, -1936(s0)
	sw a0, 0(s11)
	la a0, .libro.str.476
	sw a0, -1940(s0)
	addi a0, a1, 4
	lw s11, -1940(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1492(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1960(s0)
	addi a0, zero, 1
	lw s11, -1960(s0)
	sw a0, 0(s11)
	la a0, .libro.str.477
	sw a0, -1964(s0)
	addi a0, a1, 4
	lw s11, -1964(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1500(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -1984(s0)
	addi a0, zero, 1
	lw s11, -1984(s0)
	sw a0, 0(s11)
	la a0, .libro.str.478
	sw a0, -1988(s0)
	addi a0, a1, 4
	lw s11, -1988(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1504(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2008(s0)
	addi a0, zero, 1
	lw s11, -2008(s0)
	sw a0, 0(s11)
	la a0, .libro.str.479
	sw a0, -2012(s0)
	addi a0, a1, 4
	lw s11, -2012(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1508(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2032(s0)
	addi a0, zero, 1
	lw s11, -2032(s0)
	sw a0, 0(s11)
	la a0, .libro.str.480
	sw a0, -2036(s0)
	addi a0, a1, 4
	lw s11, -2036(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1512(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2056(s0)
	addi a0, zero, 1
	lw s11, -2056(s0)
	sw a0, 0(s11)
	la a0, .libro.str.481
	sw a0, -2060(s0)
	addi a0, a1, 4
	lw s11, -2060(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1516(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2080(s0)
	addi a0, zero, 1
	lw s11, -2080(s0)
	sw a0, 0(s11)
	la a0, .libro.str.482
	sw a0, -2084(s0)
	addi a0, a1, 4
	lw s11, -2084(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1520(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2104(s0)
	addi a0, zero, 1
	lw s11, -2104(s0)
	sw a0, 0(s11)
	la a0, .libro.str.483
	sw a0, -2108(s0)
	addi a0, a1, 4
	lw s11, -2108(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1528(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2128(s0)
	addi a0, zero, 1
	lw s11, -2128(s0)
	sw a0, 0(s11)
	la a0, .libro.str.484
	sw a0, -2132(s0)
	addi a0, a1, 4
	lw s11, -2132(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1532(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2152(s0)
	addi a0, zero, 1
	lw s11, -2152(s0)
	sw a0, 0(s11)
	la a0, .libro.str.485
	sw a0, -2156(s0)
	addi a0, a1, 4
	lw s11, -2156(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1544(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2176(s0)
	addi a0, zero, 1
	lw s11, -2176(s0)
	sw a0, 0(s11)
	la a0, .libro.str.486
	sw a0, -2180(s0)
	addi a0, a1, 4
	lw s11, -2180(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1552(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2200(s0)
	addi a0, zero, 1
	lw s11, -2200(s0)
	sw a0, 0(s11)
	la a0, .libro.str.487
	sw a0, -2204(s0)
	addi a0, a1, 4
	lw s11, -2204(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1560(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2224(s0)
	addi a0, zero, 1
	lw s11, -2224(s0)
	sw a0, 0(s11)
	la a0, .libro.str.488
	sw a0, -2228(s0)
	addi a0, a1, 4
	lw s11, -2228(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1568(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2248(s0)
	addi a0, zero, 1
	lw s11, -2248(s0)
	sw a0, 0(s11)
	la a0, .libro.str.489
	sw a0, -2252(s0)
	addi a0, a1, 4
	lw s11, -2252(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1572(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2272(s0)
	addi a0, zero, 1
	lw s11, -2272(s0)
	sw a0, 0(s11)
	la a0, .libro.str.490
	sw a0, -2276(s0)
	addi a0, a1, 4
	lw s11, -2276(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1576(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2296(s0)
	addi a0, zero, 1
	lw s11, -2296(s0)
	sw a0, 0(s11)
	la a0, .libro.str.491
	sw a0, -2300(s0)
	addi a0, a1, 4
	lw s11, -2300(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1580(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2320(s0)
	addi a0, zero, 1
	lw s11, -2320(s0)
	sw a0, 0(s11)
	la a0, .libro.str.492
	sw a0, -2324(s0)
	addi a0, a1, 4
	lw s11, -2324(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1584(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2344(s0)
	addi a0, zero, 1
	lw s11, -2344(s0)
	sw a0, 0(s11)
	la a0, .libro.str.493
	sw a0, -2348(s0)
	addi a0, a1, 4
	lw s11, -2348(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1588(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2368(s0)
	addi a0, zero, 1
	lw s11, -2368(s0)
	sw a0, 0(s11)
	la a0, .libro.str.494
	sw a0, -2372(s0)
	addi a0, a1, 4
	lw s11, -2372(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1596(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2392(s0)
	addi a0, zero, 1
	lw s11, -2392(s0)
	sw a0, 0(s11)
	la a0, .libro.str.495
	sw a0, -2396(s0)
	addi a0, a1, 4
	lw s11, -2396(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1600(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2416(s0)
	addi a0, zero, 1
	lw s11, -2416(s0)
	sw a0, 0(s11)
	la a0, .libro.str.496
	sw a0, -2420(s0)
	addi a0, a1, 4
	lw s11, -2420(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1612(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2440(s0)
	addi a0, zero, 1
	lw s11, -2440(s0)
	sw a0, 0(s11)
	la a0, .libro.str.497
	sw a0, -2444(s0)
	addi a0, a1, 4
	lw s11, -2444(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1620(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2464(s0)
	addi a0, zero, 1
	lw s11, -2464(s0)
	sw a0, 0(s11)
	la a0, .libro.str.498
	sw a0, -2468(s0)
	addi a0, a1, 4
	lw s11, -2468(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1628(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2488(s0)
	addi a0, zero, 1
	lw s11, -2488(s0)
	sw a0, 0(s11)
	la a0, .libro.str.499
	sw a0, -2492(s0)
	addi a0, a1, 4
	lw s11, -2492(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1636(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2512(s0)
	addi a0, zero, 1
	lw s11, -2512(s0)
	sw a0, 0(s11)
	la a0, .libro.str.500
	sw a0, -2516(s0)
	addi a0, a1, 4
	lw s11, -2516(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1640(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2536(s0)
	addi a0, zero, 1
	lw s11, -2536(s0)
	sw a0, 0(s11)
	la a0, .libro.str.501
	sw a0, -2540(s0)
	addi a0, a1, 4
	lw s11, -2540(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -1644(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi a0, a1, 0
	sw a0, -2560(s0)
	addi a0, zero, 1
	lw s11, -2560(s0)
	sw a0, 0(s11)
	la a0, .libro.str.502
	sw a0, -2568(s0)
	addi a0, a1, 4
	lw s11, -2568(s0)
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	lw a0, -5056(s0)
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s11, a1, 0
	addi a0, zero, 1
	sw a0, 0(s11)
	la s11, .libro.str.503
	addi a0, a1, 4
	sw s11, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s10
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s10, a1, 0
	addi a0, zero, 1
	sw a0, 0(s10)
	la s10, .libro.str.504
	addi a0, a1, 4
	sw s10, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s9
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s9, a1, 0
	addi a0, zero, 1
	sw a0, 0(s9)
	la s9, .libro.str.505
	addi a0, a1, 4
	sw s9, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s8
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s8, a1, 0
	addi a0, zero, 1
	sw a0, 0(s8)
	la s8, .libro.str.506
	addi a0, a1, 4
	sw s8, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s7
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s7, a1, 0
	addi a0, zero, 1
	sw a0, 0(s7)
	la s7, .libro.str.507
	addi a0, a1, 4
	sw s7, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s6
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s6, a1, 0
	addi a0, zero, 1
	sw a0, 0(s6)
	la s6, .libro.str.508
	addi a0, a1, 4
	sw s6, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s5
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s5, a1, 0
	addi a0, zero, 1
	sw a0, 0(s5)
	la s5, .libro.str.509
	addi a0, a1, 4
	sw s5, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s4
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s4, a1, 0
	addi a0, zero, 1
	sw a0, 0(s4)
	la s4, .libro.str.510
	addi a0, a1, 4
	sw s4, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s3
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s3, a1, 0
	addi a0, zero, 1
	sw a0, 0(s3)
	la s3, .libro.str.511
	addi a0, a1, 4
	sw s3, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	mv a0, s2
	call toString
	mv s1, a0
	addi a0, zero, 12
	call myNew
	mv a1, a0
	addi s2, a1, 0
	addi a0, zero, 1
	sw a0, 0(s2)
	la s2, .libro.str.512
	addi a0, a1, 4
	sw s2, 0(a0)
	mv a0, s1
	call _string_stringAppend
	addi s1, a0, 4
	lw a0, 0(s1)
	call print
	la a0, .libro.str.513
	call println
	addi a0, zero, 0
	j .LibroBB1_1
.LibroBB1_1: 
	lui t6, 1
	add t6, sp, t6
	lw s0, 952(t6)
	lui t6, 1
	add t6, sp, t6
	lw s1, 948(t6)
	lui t6, 1
	add t6, sp, t6
	lw s2, 944(t6)
	lui t6, 1
	add t6, sp, t6
	lw s3, 940(t6)
	lui t6, 1
	add t6, sp, t6
	lw s4, 936(t6)
	lui t6, 1
	add t6, sp, t6
	lw s5, 932(t6)
	lui t6, 1
	add t6, sp, t6
	lw s6, 928(t6)
	lui t6, 1
	add t6, sp, t6
	lw s7, 924(t6)
	lui t6, 1
	add t6, sp, t6
	lw s8, 920(t6)
	lui t6, 1
	add t6, sp, t6
	lw s9, 916(t6)
	lui t6, 1
	add t6, sp, t6
	lw s10, 912(t6)
	lui t6, 1
	add t6, sp, t6
	lw s11, 908(t6)
	lui t6, 1
	add t6, sp, t6
	lw ra, 956(t6)
	lui t6, 1
	addi t6, t6, 960
	add sp, sp, t6
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

