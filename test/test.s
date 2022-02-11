	.text
	.globl main
	.p2align	2
	.type	main,@function
main: 
	addi sp, sp, -112
	sw s0, 104(sp)
	sw ra, 108(sp)
	addi s0, sp, 112
	addi %0, zero, 0
	sw %0, -12(s0)
	addi %1, zero, 1
	mv %2, %1
	sb %2, -28(s0)
	lb %3, -20(s0)
	lb %4, -20(s0)
	xor %6, %3, %4
	seqz %5, %6
	beqz %5, .LibroBB0_1
	j .LibroBB0_2
.LibroBB0_1: 
	lw %10, -40(s0)
	lw %11, -40(s0)
	add %12, %10, %11
	lw %13, -40(s0)
	sub %14, %12, %13
	lw %15, -40(s0)
	xor %17, %14, %15
	seqz %16, %17
	beqz %16, .LibroBB0_4
	j .LibroBB0_3
.LibroBB0_2: 
	lb %7, -28(s0)
	addi %8, zero, 0
	mv %9, %8
	sb %9, -28(s0)
	j .LibroBB0_1
.LibroBB0_3: 
	lb %18, -28(s0)
	addi %19, zero, 1
	mv %20, %19
	sb %20, -28(s0)
	j .LibroBB0_4
.LibroBB0_4: 
	addi %21, zero, 8
	mv a0, %21
	call myNew
	mv %22, a0
	addi %23, zero, 1
	sw %23, 0(%22)
	addi %24, zero, 0
	sw %24, -60(s0)
	j .LibroBB0_5
.LibroBB0_5: 
	lw %25, -60(s0)
	addi %26, zero, 4
	add %26, %25, %26
	sw %26, -60(s0)
	addi %28, zero, 8
	slt %27, %25, %28
	beqz %27, .LibroBB0_6
	j .LibroBB0_7
.LibroBB0_6: 
	sw %22, -56(s0)
	addi %150, zero, 0
	sw %150, -12(s0)
	j .LibroBB0_8
	addi %151, zero, 0
	sw %151, -12(s0)
	addi %152, zero, 0
	sw %152, -12(s0)
.LibroBB0_7: 
	add %29, %22, %25
	addi %30, zero, 8
	mv a0, %30
	call myNew
	mv %31, a0
	addi %32, zero, 1
	sw %32, 0(%31)
	addi %33, zero, 0
	sw %33, -64(s0)
	j .LibroBB0_9
.LibroBB0_8: 
	lw %153, -12(s0)
	mv a0, %153
	ret
.LibroBB0_9: 
	lw %34, -64(s0)
	addi %35, zero, 4
	add %35, %34, %35
	sw %35, -64(s0)
	addi %37, zero, 8
	slt %36, %34, %37
	beqz %36, .LibroBB0_10
	j .LibroBB0_11
.LibroBB0_10: 
	sw %31, 0(%29)
	j .LibroBB0_5
.LibroBB0_11: 
	add %38, %31, %34
	addi %39, zero, 8
	mv a0, %39
	call myNew
	mv %40, a0
	addi %41, zero, 1
	sw %41, 0(%40)
	addi %42, zero, 0
	sw %42, -68(s0)
	j .LibroBB0_12
.LibroBB0_12: 
	lw %43, -68(s0)
	addi %44, zero, 4
	add %44, %43, %44
	sw %44, -68(s0)
	addi %46, zero, 8
	slt %45, %43, %46
	beqz %45, .LibroBB0_14
	j .LibroBB0_13
.LibroBB0_13: 
	add %47, %40, %43
	addi %48, zero, 8
	mv a0, %48
	call myNew
	mv %49, a0
	addi %50, zero, 1
	sw %50, 0(%49)
	addi %51, zero, 0
	sw %51, -72(s0)
	j .LibroBB0_17
.LibroBB0_14: 
	sw %40, 0(%38)
	j .LibroBB0_9
.LibroBB0_15: 
	sw %49, 0(%47)
	j .LibroBB0_12
.LibroBB0_16: 
	add %56, %49, %52
	addi %57, zero, 8
	mv a0, %57
	call myNew
	mv %58, a0
	addi %59, zero, 1
	sw %59, 0(%58)
	addi %60, zero, 0
	sw %60, -76(s0)
	j .LibroBB0_19
.LibroBB0_17: 
	lw %52, -72(s0)
	addi %53, zero, 4
	add %53, %52, %53
	sw %53, -72(s0)
	addi %55, zero, 8
	slt %54, %52, %55
	beqz %54, .LibroBB0_15
	j .LibroBB0_16
.LibroBB0_18: 
	add %65, %58, %61
	addi %66, zero, 8
	mv a0, %66
	call myNew
	mv %67, a0
	addi %68, zero, 1
	sw %68, 0(%67)
	addi %69, zero, 0
	sw %69, -80(s0)
	j .LibroBB0_21
.LibroBB0_19: 
	lw %61, -76(s0)
	addi %62, zero, 4
	add %62, %61, %62
	sw %62, -76(s0)
	addi %64, zero, 8
	slt %63, %61, %64
	beqz %63, .LibroBB0_20
	j .LibroBB0_18
.LibroBB0_20: 
	sw %58, 0(%56)
	j .LibroBB0_17
.LibroBB0_21: 
	lw %70, -80(s0)
	addi %71, zero, 4
	add %71, %70, %71
	sw %71, -80(s0)
	addi %73, zero, 8
	slt %72, %70, %73
	beqz %72, .LibroBB0_23
	j .LibroBB0_22
.LibroBB0_22: 
	add %74, %67, %70
	addi %75, zero, 8
	mv a0, %75
	call myNew
	mv %76, a0
	addi %77, zero, 1
	sw %77, 0(%76)
	addi %78, zero, 0
	sw %78, -84(s0)
	j .LibroBB0_25
.LibroBB0_23: 
	sw %67, 0(%65)
	j .LibroBB0_19
.LibroBB0_24: 
	sw %76, 0(%74)
	j .LibroBB0_21
.LibroBB0_25: 
	lw %79, -84(s0)
	addi %80, zero, 4
	add %80, %79, %80
	sw %80, -84(s0)
	addi %82, zero, 8
	slt %81, %79, %82
	beqz %81, .LibroBB0_24
	j .LibroBB0_26
.LibroBB0_26: 
	add %83, %76, %79
	addi %84, zero, 8
	mv a0, %84
	call myNew
	mv %85, a0
	addi %86, zero, 1
	sw %86, 0(%85)
	addi %87, zero, 0
	sw %87, -88(s0)
	j .LibroBB0_29
.LibroBB0_27: 
	sw %85, 0(%83)
	j .LibroBB0_25
.LibroBB0_28: 
	add %92, %85, %88
	addi %93, zero, 8
	mv a0, %93
	call myNew
	mv %94, a0
	addi %95, zero, 1
	sw %95, 0(%94)
	addi %96, zero, 0
	sw %96, -92(s0)
	j .LibroBB0_32
.LibroBB0_29: 
	lw %88, -88(s0)
	addi %89, zero, 4
	add %89, %88, %89
	sw %89, -88(s0)
	addi %91, zero, 8
	slt %90, %88, %91
	beqz %90, .LibroBB0_27
	j .LibroBB0_28
.LibroBB0_30: 
	sw %94, 0(%92)
	j .LibroBB0_29
.LibroBB0_31: 
	add %101, %94, %97
	addi %102, zero, 8
	mv a0, %102
	call myNew
	mv %103, a0
	addi %104, zero, 1
	sw %104, 0(%103)
	addi %105, zero, 0
	sw %105, -96(s0)
	j .LibroBB0_33
.LibroBB0_32: 
	lw %97, -92(s0)
	addi %98, zero, 4
	add %98, %97, %98
	sw %98, -92(s0)
	addi %100, zero, 8
	slt %99, %97, %100
	beqz %99, .LibroBB0_30
	j .LibroBB0_31
.LibroBB0_33: 
	lw %106, -96(s0)
	addi %107, zero, 4
	add %107, %106, %107
	sw %107, -96(s0)
	addi %109, zero, 8
	slt %108, %106, %109
	beqz %108, .LibroBB0_35
	j .LibroBB0_34
.LibroBB0_34: 
	add %110, %103, %106
	addi %111, zero, 8
	mv a0, %111
	call myNew
	mv %112, a0
	addi %113, zero, 1
	sw %113, 0(%112)
	addi %114, zero, 0
	sw %114, -100(s0)
	j .LibroBB0_37
.LibroBB0_35: 
	sw %103, 0(%101)
	j .LibroBB0_32
.LibroBB0_36: 
	add %119, %112, %115
	addi %120, zero, 8
	mv a0, %120
	call myNew
	mv %121, a0
	addi %122, zero, 1
	sw %122, 0(%121)
	addi %123, zero, 0
	sw %123, -104(s0)
	j .LibroBB0_41
.LibroBB0_37: 
	lw %115, -100(s0)
	addi %116, zero, 4
	add %116, %115, %116
	sw %116, -100(s0)
	addi %118, zero, 8
	slt %117, %115, %118
	beqz %117, .LibroBB0_38
	j .LibroBB0_36
.LibroBB0_38: 
	sw %112, 0(%110)
	j .LibroBB0_33
.LibroBB0_39: 
	sw %121, 0(%119)
	j .LibroBB0_37
.LibroBB0_40: 
	add %128, %121, %124
	addi %129, zero, 8
	mv a0, %129
	call myNew
	mv %130, a0
	addi %131, zero, 1
	sw %131, 0(%130)
	addi %132, zero, 0
	sw %132, -108(s0)
	j .LibroBB0_43
.LibroBB0_41: 
	lw %124, -104(s0)
	addi %125, zero, 4
	add %125, %124, %125
	sw %125, -104(s0)
	addi %127, zero, 8
	slt %126, %124, %127
	beqz %126, .LibroBB0_39
	j .LibroBB0_40
.LibroBB0_42: 
	add %137, %130, %133
	addi %138, zero, 8
	mv a0, %138
	call myNew
	mv %139, a0
	addi %140, zero, 1
	sw %140, 0(%139)
	addi %141, zero, 0
	sw %141, -112(s0)
	j .LibroBB0_47
.LibroBB0_43: 
	lw %133, -108(s0)
	addi %134, zero, 4
	add %134, %133, %134
	sw %134, -108(s0)
	addi %136, zero, 8
	slt %135, %133, %136
	beqz %135, .LibroBB0_44
	j .LibroBB0_42
.LibroBB0_44: 
	sw %130, 0(%128)
	j .LibroBB0_41
.LibroBB0_45: 
	sw %139, 0(%137)
	j .LibroBB0_43
.LibroBB0_46: 
	add %146, %139, %142
	addi %147, zero, 8
	mv a0, %147
	call myNew
	mv %148, a0
	addi %149, zero, 1
	sw %149, 0(%148)
	sw %148, 0(%146)
	j .LibroBB0_47
.LibroBB0_47: 
	lw %142, -112(s0)
	addi %143, zero, 4
	add %143, %142, %143
	sw %143, -112(s0)
	addi %145, zero, 8
	slt %144, %142, %145
	beqz %144, .LibroBB0_45
	lw s0, 104(sp)
	lw ra, 108(sp)
	addi sp, sp, 112
	j .LibroBB0_46
.data
