%struct.string = type { i32, i8* }

@.libro.str = constant [4 x i8] c"gcd\00", align 1
@.libro.str.1 = constant [4 x i8] c"***\00", align 1
@.libro.str.2 = constant [5 x i8] c"gcd1\00", align 1
@.libro.str.3 = constant [4 x i8] c"---\00", align 1
@.libro.str.4 = constant [5 x i8] c"gcd2\00", align 1
@.libro.str.5 = constant [4 x i8] c"^^^\00", align 1

define i32 @gcd(i32 %0,i32 %1,i32 %2,i32 %3,i32 %4,i32 %5,i32 %6,i32 %7,i32 %8,i32 %9,i32 %10,i32 %11,i32 %12,i32 %13,i32 %14,i32 %15,i32 %16,i32 %17,i32 %18,i32 %19,i32 %20,i32 %21,i32 %22,i32 %23,i32 %24,i32 %25,i32 %26,i32 %27,i32 %28,i32 %29,i32 %30,i32 %31){
	%33 = alloca i32, align 4
	%34 = alloca i32, align 4
	%35 = alloca i32, align 4
	%36 = alloca i32, align 4
	%37 = alloca i32, align 4
	%38 = alloca i32, align 4
	%39 = alloca i32, align 4
	%40 = alloca i32, align 4
	%41 = alloca i32, align 4
	%42 = alloca i32, align 4
	%43 = alloca i32, align 4
	%44 = alloca i32, align 4
	%45 = alloca i32, align 4
	%46 = alloca i32, align 4
	%47 = alloca i32, align 4
	%48 = alloca i32, align 4
	%49 = alloca i32, align 4
	%50 = alloca i32, align 4
	%51 = alloca i32, align 4
	%52 = alloca i32, align 4
	%53 = alloca i32, align 4
	%54 = alloca i32, align 4
	%55 = alloca i32, align 4
	%56 = alloca i32, align 4
	%57 = alloca i32, align 4
	%58 = alloca i32, align 4
	%59 = alloca i32, align 4
	%60 = alloca i32, align 4
	%61 = alloca i32, align 4
	%62 = alloca i32, align 4
	%63 = alloca i32, align 4
	%64 = alloca i32, align 4
	%65 = alloca i32, align 4
	%66 = alloca i32, align 4
	%67 = alloca i32, align 4
	store i32 0, i32* %33, align 4
	store i32 %0, i32* %34, align 4
	store i32 %1, i32* %35, align 4
	store i32 %2, i32* %36, align 4
	store i32 %3, i32* %37, align 4
	store i32 %4, i32* %38, align 4
	store i32 %5, i32* %39, align 4
	store i32 %6, i32* %40, align 4
	store i32 %7, i32* %41, align 4
	store i32 %8, i32* %42, align 4
	store i32 %9, i32* %43, align 4
	store i32 %10, i32* %44, align 4
	store i32 %11, i32* %45, align 4
	store i32 %12, i32* %46, align 4
	store i32 %13, i32* %47, align 4
	store i32 %14, i32* %48, align 4
	store i32 %15, i32* %49, align 4
	store i32 %16, i32* %50, align 4
	store i32 %17, i32* %51, align 4
	store i32 %18, i32* %52, align 4
	store i32 %19, i32* %53, align 4
	store i32 %20, i32* %54, align 4
	store i32 %21, i32* %55, align 4
	store i32 %22, i32* %56, align 4
	store i32 %23, i32* %57, align 4
	store i32 %24, i32* %58, align 4
	store i32 %25, i32* %59, align 4
	store i32 %26, i32* %60, align 4
	store i32 %27, i32* %61, align 4
	store i32 %28, i32* %62, align 4
	store i32 %29, i32* %63, align 4
	store i32 %30, i32* %64, align 4
	store i32 %31, i32* %65, align 4
	%68 = bitcast [4 x i8]* @.libro.str to i8*
	call void @println(i8* %68)
	%69 = load i32, i32* %35, align 4
	%70 = icmp eq i32 %69, 0
	br i1 %70, label %71, label %73

71:
	%72 = bitcast [4 x i8]* @.libro.str.1 to i8*
	call void @println(i8* %72)
	store i32 1, i32* %33, align 4
	br label %187

73:
	%74 = load i32, i32* %66, align 4
	store i32 0, i32* %66, align 4
	br label %75

75:
	%76 = load i32, i32* %66, align 4
	%77 = icmp sle i32 %76, 10
	br i1 %77, label %78, label %143

78:
	%79 = load i32, i32* %36, align 4
	%80 = load i32, i32* %37, align 4
	%81 = add i32 %79, %80
	%82 = load i32, i32* %38, align 4
	%83 = add i32 %81, %82
	%84 = load i32, i32* %39, align 4
	%85 = add i32 %83, %84
	%86 = load i32, i32* %40, align 4
	%87 = add i32 %85, %86
	%88 = load i32, i32* %41, align 4
	%89 = add i32 %87, %88
	%90 = load i32, i32* %42, align 4
	%91 = add i32 %89, %90
	%92 = load i32, i32* %43, align 4
	%93 = add i32 %91, %92
	%94 = load i32, i32* %44, align 4
	%95 = add i32 %93, %94
	%96 = load i32, i32* %45, align 4
	%97 = add i32 %95, %96
	%98 = load i32, i32* %46, align 4
	%99 = add i32 %97, %98
	%100 = load i32, i32* %47, align 4
	%101 = add i32 %99, %100
	%102 = load i32, i32* %48, align 4
	%103 = add i32 %101, %102
	%104 = load i32, i32* %49, align 4
	%105 = add i32 %103, %104
	%106 = load i32, i32* %50, align 4
	%107 = add i32 %105, %106
	%108 = load i32, i32* %51, align 4
	%109 = add i32 %107, %108
	%110 = load i32, i32* %52, align 4
	%111 = add i32 %109, %110
	%112 = load i32, i32* %53, align 4
	%113 = add i32 %111, %112
	%114 = load i32, i32* %54, align 4
	%115 = add i32 %113, %114
	%116 = load i32, i32* %55, align 4
	%117 = add i32 %115, %116
	%118 = load i32, i32* %56, align 4
	%119 = add i32 %117, %118
	%120 = load i32, i32* %57, align 4
	%121 = add i32 %119, %120
	%122 = load i32, i32* %58, align 4
	%123 = add i32 %121, %122
	%124 = load i32, i32* %59, align 4
	%125 = add i32 %123, %124
	%126 = load i32, i32* %60, align 4
	%127 = add i32 %125, %126
	%128 = load i32, i32* %61, align 4
	%129 = add i32 %127, %128
	%130 = load i32, i32* %62, align 4
	%131 = add i32 %129, %130
	%132 = load i32, i32* %63, align 4
	%133 = add i32 %131, %132
	%134 = load i32, i32* %64, align 4
	%135 = add i32 %133, %134
	%136 = load i32, i32* %65, align 4
	%137 = add i32 %135, %136
	%138 = srem i32 %137, 100
	%139 = load i32, i32* %67, align 4
	store i32 %138, i32* %67, align 4
	br label %140

140:
	%141 = load i32, i32* %66, align 4
	%142 = add i32 %141, 1
	store i32 %142, i32* %66, align 4
	br label %75

143:
	%144 = load i32, i32* %34, align 4
	%145 = load i32, i32* %35, align 4
	%146 = srem i32 %144, %145
	%147 = icmp eq i32 %146, 0
	br i1 %147, label %148, label %150

148:
	%149 = load i32, i32* %35, align 4
	store i32 %149, i32* %33, align 4
	br label %187

150:
	%151 = load i32, i32* %35, align 4
	%152 = load i32, i32* %34, align 4
	%153 = load i32, i32* %35, align 4
	%154 = srem i32 %152, %153
	%155 = load i32, i32* %67, align 4
	%156 = call i32 @gcd(i32 10, i32 68, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58)
	%157 = load i32, i32* %38, align 4
	%158 = load i32, i32* %39, align 4
	%159 = load i32, i32* %40, align 4
	%160 = load i32, i32* %41, align 4
	%161 = load i32, i32* %42, align 4
	%162 = load i32, i32* %43, align 4
	%163 = load i32, i32* %44, align 4
	%164 = load i32, i32* %45, align 4
	%165 = load i32, i32* %46, align 4
	%166 = load i32, i32* %47, align 4
	%167 = load i32, i32* %48, align 4
	%168 = load i32, i32* %49, align 4
	%169 = load i32, i32* %50, align 4
	%170 = load i32, i32* %51, align 4
	%171 = load i32, i32* %52, align 4
	%172 = load i32, i32* %53, align 4
	%173 = load i32, i32* %54, align 4
	%174 = load i32, i32* %55, align 4
	%175 = load i32, i32* %56, align 4
	%176 = load i32, i32* %57, align 4
	%177 = load i32, i32* %58, align 4
	%178 = load i32, i32* %59, align 4
	%179 = load i32, i32* %60, align 4
	%180 = load i32, i32* %61, align 4
	%181 = load i32, i32* %62, align 4
	%182 = load i32, i32* %63, align 4
	%183 = load i32, i32* %64, align 4
	%184 = load i32, i32* %65, align 4
	%185 = call i32 @gcd1(i32 %151, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
	store i32 %185, i32* %33, align 4
	br label %187

186:
	store i32 0, i32* %33, align 4
	br label %187

187:
	%188 = load i32, i32* %33, align 4
	ret i32 %188
}

define i32 @gcd1(i32 %0,i32 %1,i32 %2,i32 %3,i32 %4,i32 %5,i32 %6,i32 %7,i32 %8,i32 %9,i32 %10,i32 %11,i32 %12,i32 %13,i32 %14,i32 %15,i32 %16,i32 %17,i32 %18,i32 %19,i32 %20,i32 %21,i32 %22,i32 %23,i32 %24,i32 %25,i32 %26,i32 %27,i32 %28,i32 %29,i32 %30,i32 %31){
	%33 = alloca i32, align 4
	%34 = alloca i32, align 4
	%35 = alloca i32, align 4
	%36 = alloca i32, align 4
	%37 = alloca i32, align 4
	%38 = alloca i32, align 4
	%39 = alloca i32, align 4
	%40 = alloca i32, align 4
	%41 = alloca i32, align 4
	%42 = alloca i32, align 4
	%43 = alloca i32, align 4
	%44 = alloca i32, align 4
	%45 = alloca i32, align 4
	%46 = alloca i32, align 4
	%47 = alloca i32, align 4
	%48 = alloca i32, align 4
	%49 = alloca i32, align 4
	%50 = alloca i32, align 4
	%51 = alloca i32, align 4
	%52 = alloca i32, align 4
	%53 = alloca i32, align 4
	%54 = alloca i32, align 4
	%55 = alloca i32, align 4
	%56 = alloca i32, align 4
	%57 = alloca i32, align 4
	%58 = alloca i32, align 4
	%59 = alloca i32, align 4
	%60 = alloca i32, align 4
	%61 = alloca i32, align 4
	%62 = alloca i32, align 4
	%63 = alloca i32, align 4
	%64 = alloca i32, align 4
	%65 = alloca i32, align 4
	%66 = alloca i32, align 4
	store i32 0, i32* %33, align 4
	store i32 %0, i32* %34, align 4
	store i32 %1, i32* %35, align 4
	store i32 %2, i32* %36, align 4
	store i32 %3, i32* %37, align 4
	store i32 %4, i32* %38, align 4
	store i32 %5, i32* %39, align 4
	store i32 %6, i32* %40, align 4
	store i32 %7, i32* %41, align 4
	store i32 %8, i32* %42, align 4
	store i32 %9, i32* %43, align 4
	store i32 %10, i32* %44, align 4
	store i32 %11, i32* %45, align 4
	store i32 %12, i32* %46, align 4
	store i32 %13, i32* %47, align 4
	store i32 %14, i32* %48, align 4
	store i32 %15, i32* %49, align 4
	store i32 %16, i32* %50, align 4
	store i32 %17, i32* %51, align 4
	store i32 %18, i32* %52, align 4
	store i32 %19, i32* %53, align 4
	store i32 %20, i32* %54, align 4
	store i32 %21, i32* %55, align 4
	store i32 %22, i32* %56, align 4
	store i32 %23, i32* %57, align 4
	store i32 %24, i32* %58, align 4
	store i32 %25, i32* %59, align 4
	store i32 %26, i32* %60, align 4
	store i32 %27, i32* %61, align 4
	store i32 %28, i32* %62, align 4
	store i32 %29, i32* %63, align 4
	store i32 %30, i32* %64, align 4
	store i32 %31, i32* %65, align 4
	%67 = bitcast [5 x i8]* @.libro.str.2 to i8*
	call void @println(i8* %67)
	%68 = load i32, i32* %35, align 4
	%69 = icmp eq i32 %68, 0
	br i1 %69, label %70, label %72

70:
	%71 = bitcast [4 x i8]* @.libro.str.3 to i8*
	call void @println(i8* %71)
	store i32 1, i32* %33, align 4
	br label %177

72:
	%73 = load i32, i32* %36, align 4
	%74 = load i32, i32* %37, align 4
	%75 = add i32 %73, %74
	%76 = load i32, i32* %38, align 4
	%77 = add i32 %75, %76
	%78 = load i32, i32* %39, align 4
	%79 = add i32 %77, %78
	%80 = load i32, i32* %40, align 4
	%81 = add i32 %79, %80
	%82 = load i32, i32* %41, align 4
	%83 = add i32 %81, %82
	%84 = load i32, i32* %42, align 4
	%85 = add i32 %83, %84
	%86 = load i32, i32* %43, align 4
	%87 = add i32 %85, %86
	%88 = load i32, i32* %44, align 4
	%89 = add i32 %87, %88
	%90 = load i32, i32* %45, align 4
	%91 = add i32 %89, %90
	%92 = load i32, i32* %46, align 4
	%93 = add i32 %91, %92
	%94 = load i32, i32* %47, align 4
	%95 = add i32 %93, %94
	%96 = load i32, i32* %48, align 4
	%97 = add i32 %95, %96
	%98 = load i32, i32* %49, align 4
	%99 = add i32 %97, %98
	%100 = load i32, i32* %50, align 4
	%101 = add i32 %99, %100
	%102 = load i32, i32* %51, align 4
	%103 = add i32 %101, %102
	%104 = load i32, i32* %52, align 4
	%105 = add i32 %103, %104
	%106 = load i32, i32* %53, align 4
	%107 = add i32 %105, %106
	%108 = load i32, i32* %54, align 4
	%109 = add i32 %107, %108
	%110 = load i32, i32* %55, align 4
	%111 = add i32 %109, %110
	%112 = load i32, i32* %56, align 4
	%113 = add i32 %111, %112
	%114 = load i32, i32* %57, align 4
	%115 = add i32 %113, %114
	%116 = load i32, i32* %58, align 4
	%117 = add i32 %115, %116
	%118 = load i32, i32* %59, align 4
	%119 = add i32 %117, %118
	%120 = load i32, i32* %60, align 4
	%121 = add i32 %119, %120
	%122 = load i32, i32* %61, align 4
	%123 = add i32 %121, %122
	%124 = load i32, i32* %62, align 4
	%125 = add i32 %123, %124
	%126 = load i32, i32* %63, align 4
	%127 = add i32 %125, %126
	%128 = load i32, i32* %64, align 4
	%129 = add i32 %127, %128
	%130 = load i32, i32* %65, align 4
	%131 = add i32 %129, %130
	%132 = srem i32 %131, 100
	%133 = load i32, i32* %66, align 4
	store i32 %132, i32* %66, align 4
	%134 = load i32, i32* %34, align 4
	%135 = load i32, i32* %35, align 4
	%136 = srem i32 %134, %135
	%137 = icmp eq i32 %136, 0
	br i1 %137, label %138, label %140

138:
	%139 = load i32, i32* %35, align 4
	store i32 %139, i32* %33, align 4
	br label %177

140:
	%141 = load i32, i32* %35, align 4
	%142 = load i32, i32* %34, align 4
	%143 = load i32, i32* %35, align 4
	%144 = srem i32 %142, %143
	%145 = load i32, i32* %66, align 4
	%146 = load i32, i32* %37, align 4
	%147 = load i32, i32* %38, align 4
	%148 = load i32, i32* %39, align 4
	%149 = load i32, i32* %40, align 4
	%150 = load i32, i32* %41, align 4
	%151 = load i32, i32* %42, align 4
	%152 = load i32, i32* %43, align 4
	%153 = load i32, i32* %44, align 4
	%154 = load i32, i32* %45, align 4
	%155 = load i32, i32* %46, align 4
	%156 = load i32, i32* %47, align 4
	%157 = load i32, i32* %48, align 4
	%158 = load i32, i32* %49, align 4
	%159 = load i32, i32* %50, align 4
	%160 = load i32, i32* %51, align 4
	%161 = load i32, i32* %52, align 4
	%162 = load i32, i32* %53, align 4
	%163 = load i32, i32* %54, align 4
	%164 = load i32, i32* %55, align 4
	%165 = load i32, i32* %56, align 4
	%166 = load i32, i32* %57, align 4
	%167 = load i32, i32* %58, align 4
	%168 = load i32, i32* %59, align 4
	%169 = load i32, i32* %60, align 4
	%170 = load i32, i32* %61, align 4
	%171 = load i32, i32* %62, align 4
	%172 = load i32, i32* %63, align 4
	%173 = load i32, i32* %64, align 4
	%174 = load i32, i32* %65, align 4
	%175 = call i32 @gcd2(i32 %141, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
	store i32 %175, i32* %33, align 4
	br label %177

176:
	store i32 0, i32* %33, align 4
	br label %177

177:
	%178 = load i32, i32* %33, align 4
	ret i32 %178
}

define i32 @gcd2(i32 %0,i32 %1,i32 %2,i32 %3,i32 %4,i32 %5,i32 %6,i32 %7,i32 %8,i32 %9,i32 %10,i32 %11,i32 %12,i32 %13,i32 %14,i32 %15,i32 %16,i32 %17,i32 %18,i32 %19,i32 %20,i32 %21,i32 %22,i32 %23,i32 %24,i32 %25,i32 %26,i32 %27,i32 %28,i32 %29,i32 %30,i32 %31){
	%33 = alloca i32, align 4
	%34 = alloca i32, align 4
	%35 = alloca i32, align 4
	%36 = alloca i32, align 4
	%37 = alloca i32, align 4
	%38 = alloca i32, align 4
	%39 = alloca i32, align 4
	%40 = alloca i32, align 4
	%41 = alloca i32, align 4
	%42 = alloca i32, align 4
	%43 = alloca i32, align 4
	%44 = alloca i32, align 4
	%45 = alloca i32, align 4
	%46 = alloca i32, align 4
	%47 = alloca i32, align 4
	%48 = alloca i32, align 4
	%49 = alloca i32, align 4
	%50 = alloca i32, align 4
	%51 = alloca i32, align 4
	%52 = alloca i32, align 4
	%53 = alloca i32, align 4
	%54 = alloca i32, align 4
	%55 = alloca i32, align 4
	%56 = alloca i32, align 4
	%57 = alloca i32, align 4
	%58 = alloca i32, align 4
	%59 = alloca i32, align 4
	%60 = alloca i32, align 4
	%61 = alloca i32, align 4
	%62 = alloca i32, align 4
	%63 = alloca i32, align 4
	%64 = alloca i32, align 4
	%65 = alloca i32, align 4
	%66 = alloca i32, align 4
	store i32 0, i32* %33, align 4
	store i32 %0, i32* %34, align 4
	store i32 %1, i32* %35, align 4
	store i32 %2, i32* %36, align 4
	store i32 %3, i32* %37, align 4
	store i32 %4, i32* %38, align 4
	store i32 %5, i32* %39, align 4
	store i32 %6, i32* %40, align 4
	store i32 %7, i32* %41, align 4
	store i32 %8, i32* %42, align 4
	store i32 %9, i32* %43, align 4
	store i32 %10, i32* %44, align 4
	store i32 %11, i32* %45, align 4
	store i32 %12, i32* %46, align 4
	store i32 %13, i32* %47, align 4
	store i32 %14, i32* %48, align 4
	store i32 %15, i32* %49, align 4
	store i32 %16, i32* %50, align 4
	store i32 %17, i32* %51, align 4
	store i32 %18, i32* %52, align 4
	store i32 %19, i32* %53, align 4
	store i32 %20, i32* %54, align 4
	store i32 %21, i32* %55, align 4
	store i32 %22, i32* %56, align 4
	store i32 %23, i32* %57, align 4
	store i32 %24, i32* %58, align 4
	store i32 %25, i32* %59, align 4
	store i32 %26, i32* %60, align 4
	store i32 %27, i32* %61, align 4
	store i32 %28, i32* %62, align 4
	store i32 %29, i32* %63, align 4
	store i32 %30, i32* %64, align 4
	store i32 %31, i32* %65, align 4
	%67 = bitcast [5 x i8]* @.libro.str.4 to i8*
	call void @println(i8* %67)
	%68 = load i32, i32* %35, align 4
	%69 = icmp eq i32 %68, 0
	br i1 %69, label %70, label %72

70:
	%71 = bitcast [4 x i8]* @.libro.str.5 to i8*
	call void @println(i8* %71)
	store i32 1, i32* %33, align 4
	br label %177

72:
	%73 = load i32, i32* %36, align 4
	%74 = load i32, i32* %37, align 4
	%75 = add i32 %73, %74
	%76 = load i32, i32* %38, align 4
	%77 = add i32 %75, %76
	%78 = load i32, i32* %39, align 4
	%79 = add i32 %77, %78
	%80 = load i32, i32* %40, align 4
	%81 = add i32 %79, %80
	%82 = load i32, i32* %41, align 4
	%83 = add i32 %81, %82
	%84 = load i32, i32* %42, align 4
	%85 = add i32 %83, %84
	%86 = load i32, i32* %43, align 4
	%87 = add i32 %85, %86
	%88 = load i32, i32* %44, align 4
	%89 = add i32 %87, %88
	%90 = load i32, i32* %45, align 4
	%91 = add i32 %89, %90
	%92 = load i32, i32* %46, align 4
	%93 = add i32 %91, %92
	%94 = load i32, i32* %47, align 4
	%95 = add i32 %93, %94
	%96 = load i32, i32* %48, align 4
	%97 = add i32 %95, %96
	%98 = load i32, i32* %49, align 4
	%99 = add i32 %97, %98
	%100 = load i32, i32* %50, align 4
	%101 = add i32 %99, %100
	%102 = load i32, i32* %51, align 4
	%103 = add i32 %101, %102
	%104 = load i32, i32* %52, align 4
	%105 = add i32 %103, %104
	%106 = load i32, i32* %53, align 4
	%107 = add i32 %105, %106
	%108 = load i32, i32* %54, align 4
	%109 = add i32 %107, %108
	%110 = load i32, i32* %55, align 4
	%111 = add i32 %109, %110
	%112 = load i32, i32* %56, align 4
	%113 = add i32 %111, %112
	%114 = load i32, i32* %57, align 4
	%115 = add i32 %113, %114
	%116 = load i32, i32* %58, align 4
	%117 = add i32 %115, %116
	%118 = load i32, i32* %59, align 4
	%119 = add i32 %117, %118
	%120 = load i32, i32* %60, align 4
	%121 = add i32 %119, %120
	%122 = load i32, i32* %61, align 4
	%123 = add i32 %121, %122
	%124 = load i32, i32* %62, align 4
	%125 = add i32 %123, %124
	%126 = load i32, i32* %63, align 4
	%127 = add i32 %125, %126
	%128 = load i32, i32* %64, align 4
	%129 = add i32 %127, %128
	%130 = load i32, i32* %65, align 4
	%131 = add i32 %129, %130
	%132 = srem i32 %131, 100
	%133 = load i32, i32* %66, align 4
	store i32 %132, i32* %66, align 4
	%134 = load i32, i32* %34, align 4
	%135 = load i32, i32* %35, align 4
	%136 = srem i32 %134, %135
	%137 = icmp eq i32 %136, 0
	br i1 %137, label %138, label %140

138:
	%139 = load i32, i32* %35, align 4
	store i32 %139, i32* %33, align 4
	br label %177

140:
	%141 = load i32, i32* %35, align 4
	%142 = load i32, i32* %34, align 4
	%143 = load i32, i32* %35, align 4
	%144 = srem i32 %142, %143
	%145 = load i32, i32* %36, align 4
	%146 = load i32, i32* %37, align 4
	%147 = load i32, i32* %38, align 4
	%148 = load i32, i32* %39, align 4
	%149 = load i32, i32* %40, align 4
	%150 = load i32, i32* %41, align 4
	%151 = load i32, i32* %42, align 4
	%152 = load i32, i32* %43, align 4
	%153 = load i32, i32* %44, align 4
	%154 = load i32, i32* %45, align 4
	%155 = load i32, i32* %46, align 4
	%156 = load i32, i32* %47, align 4
	%157 = load i32, i32* %48, align 4
	%158 = load i32, i32* %49, align 4
	%159 = load i32, i32* %50, align 4
	%160 = load i32, i32* %51, align 4
	%161 = load i32, i32* %52, align 4
	%162 = load i32, i32* %53, align 4
	%163 = load i32, i32* %54, align 4
	%164 = load i32, i32* %55, align 4
	%165 = load i32, i32* %56, align 4
	%166 = load i32, i32* %57, align 4
	%167 = load i32, i32* %58, align 4
	%168 = load i32, i32* %59, align 4
	%169 = load i32, i32* %60, align 4
	%170 = load i32, i32* %61, align 4
	%171 = load i32, i32* %62, align 4
	%172 = load i32, i32* %63, align 4
	%173 = load i32, i32* %64, align 4
	%174 = load i32, i32* %65, align 4
	%175 = call i32 @gcd(i32 %141, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
	store i32 %175, i32* %33, align 4
	br label %177

176:
	store i32 0, i32* %33, align 4
	br label %177

177:
	%178 = load i32, i32* %33, align 4
	ret i32 %178
}

define i32 @main(){
	%1 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%2 = call i32 @gcd(i32 10, i32 1, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58)
	%3 = add i32 %2, 1024
	%4 = call %struct.string* @toString(i32 %3)
	%5 = getelementptr %struct.string, %struct.string* %4, i32 0, i32 1
	%6 = load i8*, i8** %5, align 4
	call void @println(i8* %6)
	store i32 0, i32* %1, align 4
	br label %7

7:
	%8 = load i32, i32* %1, align 4
	ret i32 %8
}


declare i32 @_string_length(%struct.string*)
declare %struct.string* @_string_substring(%struct.string*, i32, i32)
declare i32 @_string_parseInt(%struct.string*)
declare i32 @_string_ord(%struct.string*, i32)
declare %struct.string* @_string_stringAppend(%struct.string*, %struct.string*)
declare i32 @_string_getStrcmp(%struct.string*, %struct.string*)
declare %struct.string* @toString(i32)
declare void @print(i8*)
declare void @println(i8*)
declare void @printInt(i32)
declare void @printlnInt(i32)
declare i32 @getInt()
declare %struct.string* @getString()
declare i8* @myNew(i32)

