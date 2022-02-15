%struct.string = type { i32, i8* }
%struct.Node = type { %struct.Node*, %struct.Node**, i32, i32 }

@root = global %struct.Node* null, align 4
@MAX = global i32 128, align 4
@MaxRandInt = global i32 0, align 4
@seed = global i32 0, align 4

@.libro.str = constant [3 x i8] c": \00", align 1

define %struct.Node* @constructNode(i32 %0,%struct.Node* %1,%struct.Node* %2,%struct.Node* %3){
	%5 = alloca %struct.Node*, align 4
	%6 = alloca i32, align 4
	%7 = alloca %struct.Node*, align 4
	%8 = alloca %struct.Node*, align 4
	%9 = alloca %struct.Node*, align 4
	%10 = alloca %struct.Node*, align 4
	store %struct.Node* null, %struct.Node** %5, align 4
	store i32 %0, i32* %6, align 4
	store %struct.Node* %1, %struct.Node** %7, align 4
	store %struct.Node* %2, %struct.Node** %8, align 4
	store %struct.Node* %3, %struct.Node** %9, align 4
	%11 = call i8* @myNew(i32 16)
	%12 = bitcast i8* %11 to %struct.Node*
	store %struct.Node* %12, %struct.Node** %10, align 4
	%13 = call i8* @myNew(i32 12)
	%14 = bitcast i8* %13 to i32*
	store i32 2, i32* %14, align 4
	%15 = bitcast i8* %13 to %struct.Node**
	%16 = load %struct.Node*, %struct.Node** %10, align 4
	%17 = getelementptr %struct.Node, %struct.Node* %16, i32 0, i32 1
	%18 = load %struct.Node**, %struct.Node*** %17, align 4
	store %struct.Node** %15, %struct.Node*** %17, align 4
	%19 = load i32, i32* %6, align 4
	%20 = load %struct.Node*, %struct.Node** %10, align 4
	%21 = getelementptr %struct.Node, %struct.Node* %20, i32 0, i32 2
	%22 = load i32, i32* %21, align 4
	store i32 %19, i32* %21, align 4
	%23 = load %struct.Node*, %struct.Node** %10, align 4
	%24 = getelementptr %struct.Node, %struct.Node* %23, i32 0, i32 3
	%25 = load i32, i32* %24, align 4
	store i32 1, i32* %24, align 4
	%26 = load %struct.Node*, %struct.Node** %7, align 4
	%27 = load %struct.Node*, %struct.Node** %10, align 4
	%28 = getelementptr %struct.Node, %struct.Node* %27, i32 0, i32 0
	%29 = load %struct.Node*, %struct.Node** %28, align 4
	store %struct.Node* %26, %struct.Node** %28, align 4
	%30 = load %struct.Node*, %struct.Node** %8, align 4
	%31 = load %struct.Node*, %struct.Node** %10, align 4
	%32 = getelementptr %struct.Node, %struct.Node* %31, i32 0, i32 1
	%33 = load %struct.Node**, %struct.Node*** %32, align 4
	%34 = mul i32 0, 4
	%35 = add i32 %34, 4
	%36 = bitcast %struct.Node** %33 to i8*
	%37 = getelementptr i8, i8* %36, i32 %35
	%38 = bitcast i8* %37 to %struct.Node**
	%39 = load %struct.Node*, %struct.Node** %38, align 4
	store %struct.Node* %30, %struct.Node** %38, align 4
	%40 = load %struct.Node*, %struct.Node** %9, align 4
	%41 = load %struct.Node*, %struct.Node** %10, align 4
	%42 = getelementptr %struct.Node, %struct.Node* %41, i32 0, i32 1
	%43 = load %struct.Node**, %struct.Node*** %42, align 4
	%44 = mul i32 1, 4
	%45 = add i32 %44, 4
	%46 = bitcast %struct.Node** %43 to i8*
	%47 = getelementptr i8, i8* %46, i32 %45
	%48 = bitcast i8* %47 to %struct.Node**
	%49 = load %struct.Node*, %struct.Node** %48, align 4
	store %struct.Node* %40, %struct.Node** %48, align 4
	%50 = load %struct.Node*, %struct.Node** %10, align 4
	store %struct.Node* %50, %struct.Node** %5, align 4
	br label %51

51:
	%52 = load %struct.Node*, %struct.Node** %5, align 4
	ret %struct.Node* %52
}

define i32 @insertImpl(%struct.Node* %0,%struct.Node* %1,i32 %2,i32 %3){
	%5 = alloca i32, align 4
	%6 = alloca %struct.Node*, align 4
	%7 = alloca %struct.Node*, align 4
	%8 = alloca i32, align 4
	%9 = alloca i32, align 4
	%10 = alloca i32, align 4
	store i32 0, i32* %5, align 4
	store %struct.Node* %0, %struct.Node** %6, align 4
	store %struct.Node* %1, %struct.Node** %7, align 4
	store i32 %2, i32* %8, align 4
	store i32 %3, i32* %9, align 4
	%11 = load %struct.Node*, %struct.Node** %6, align 4
	%12 = icmp eq %struct.Node* %11, null
	br i1 %12, label %13, label %29

13:
	%14 = load i32, i32* %9, align 4
	%15 = load %struct.Node*, %struct.Node** %7, align 4
	%16 = call %struct.Node* @constructNode(i32 %14, %struct.Node* %15, %struct.Node* null, %struct.Node* null)
	%17 = load %struct.Node*, %struct.Node** %6, align 4
	store %struct.Node* %16, %struct.Node** %6, align 4
	%18 = load %struct.Node*, %struct.Node** %6, align 4
	%19 = load %struct.Node*, %struct.Node** %7, align 4
	%20 = getelementptr %struct.Node, %struct.Node* %19, i32 0, i32 1
	%21 = load %struct.Node**, %struct.Node*** %20, align 4
	%22 = load i32, i32* %8, align 4
	%23 = mul i32 %22, 4
	%24 = add i32 %23, 4
	%25 = bitcast %struct.Node** %21 to i8*
	%26 = getelementptr i8, i8* %25, i32 %24
	%27 = bitcast i8* %26 to %struct.Node**
	%28 = load %struct.Node*, %struct.Node** %27, align 4
	store %struct.Node* %18, %struct.Node** %27, align 4
	store i32 0, i32* %5, align 4
	br label %63

29:
	%30 = load %struct.Node*, %struct.Node** %6, align 4
	%31 = getelementptr %struct.Node, %struct.Node* %30, i32 0, i32 2
	%32 = load i32, i32* %31, align 4
	%33 = load i32, i32* %9, align 4
	%34 = icmp eq i32 %32, %33
	br i1 %34, label %35, label %40

35:
	%36 = load %struct.Node*, %struct.Node** %6, align 4
	%37 = getelementptr %struct.Node, %struct.Node* %36, i32 0, i32 3
	%38 = load i32, i32* %37, align 4
	%39 = add i32 %38, 1
	store i32 %39, i32* %37, align 4
	store i32 1, i32* %5, align 4
	br label %63

40:
	store i32 0, i32* %10, align 4
	%41 = load %struct.Node*, %struct.Node** %6, align 4
	%42 = getelementptr %struct.Node, %struct.Node* %41, i32 0, i32 2
	%43 = load i32, i32* %42, align 4
	%44 = load i32, i32* %9, align 4
	%45 = icmp slt i32 %43, %44
	br i1 %45, label %46, label %48

46:
	%47 = load i32, i32* %10, align 4
	store i32 1, i32* %10, align 4
	br label %48

48:
	%49 = load %struct.Node*, %struct.Node** %6, align 4
	%50 = getelementptr %struct.Node, %struct.Node* %49, i32 0, i32 1
	%51 = load %struct.Node**, %struct.Node*** %50, align 4
	%52 = load i32, i32* %10, align 4
	%53 = mul i32 %52, 4
	%54 = add i32 %53, 4
	%55 = bitcast %struct.Node** %51 to i8*
	%56 = getelementptr i8, i8* %55, i32 %54
	%57 = bitcast i8* %56 to %struct.Node**
	%58 = load %struct.Node*, %struct.Node** %57, align 4
	%59 = load %struct.Node*, %struct.Node** %6, align 4
	%60 = load i32, i32* %10, align 4
	%61 = load i32, i32* %9, align 4
	%62 = call i32 @insertImpl(%struct.Node* %58, %struct.Node* %59, i32 %60, i32 %61)
	store i32 %62, i32* %5, align 4
	br label %63

63:
	%64 = load i32, i32* %5, align 4
	ret i32 %64
}

define i32 @insert(i32 %0){
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	store i32 0, i32* %2, align 4
	store i32 %0, i32* %3, align 4
	%4 = load %struct.Node*, %struct.Node** @root, align 4
	%5 = icmp ne %struct.Node* %4, null
	br i1 %5, label %6, label %11

6:
	%7 = load %struct.Node*, %struct.Node** @root, align 4
	%8 = sub i32 0, 1
	%9 = load i32, i32* %3, align 4
	%10 = call i32 @insertImpl(%struct.Node* %7, %struct.Node* null, i32 %8, i32 %9)
	store i32 %10, i32* %2, align 4
	br label %15

11:
	%12 = load i32, i32* %3, align 4
	%13 = call %struct.Node* @constructNode(i32 %12, %struct.Node* null, %struct.Node* null, %struct.Node* null)
	%14 = load %struct.Node*, %struct.Node** @root, align 4
	store %struct.Node* %13, %struct.Node** @root, align 4
	store i32 0, i32* %2, align 4
	br label %15

15:
	%16 = load i32, i32* %2, align 4
	ret i32 %16
}

define %struct.Node* @findLargest(%struct.Node* %0){
	%2 = alloca %struct.Node*, align 4
	%3 = alloca %struct.Node*, align 4
	store %struct.Node* null, %struct.Node** %2, align 4
	store %struct.Node* %0, %struct.Node** %3, align 4
	%4 = load %struct.Node*, %struct.Node** %3, align 4
	%5 = getelementptr %struct.Node, %struct.Node* %4, i32 0, i32 1
	%6 = load %struct.Node**, %struct.Node*** %5, align 4
	%7 = mul i32 1, 4
	%8 = add i32 %7, 4
	%9 = bitcast %struct.Node** %6 to i8*
	%10 = getelementptr i8, i8* %9, i32 %8
	%11 = bitcast i8* %10 to %struct.Node**
	%12 = load %struct.Node*, %struct.Node** %11, align 4
	%13 = icmp eq %struct.Node* %12, null
	br i1 %13, label %14, label %16

14:
	%15 = load %struct.Node*, %struct.Node** %3, align 4
	store %struct.Node* %15, %struct.Node** %2, align 4
	br label %27

16:
	%17 = load %struct.Node*, %struct.Node** %3, align 4
	%18 = getelementptr %struct.Node, %struct.Node* %17, i32 0, i32 1
	%19 = load %struct.Node**, %struct.Node*** %18, align 4
	%20 = mul i32 1, 4
	%21 = add i32 %20, 4
	%22 = bitcast %struct.Node** %19 to i8*
	%23 = getelementptr i8, i8* %22, i32 %21
	%24 = bitcast i8* %23 to %struct.Node**
	%25 = load %struct.Node*, %struct.Node** %24, align 4
	%26 = call %struct.Node* @findLargest(%struct.Node* %25)
	store %struct.Node* %26, %struct.Node** %2, align 4
	br label %27

27:
	%28 = load %struct.Node*, %struct.Node** %2, align 4
	ret %struct.Node* %28
}

define i32 @eraseImpl(%struct.Node* %0,%struct.Node* %1,i32 %2,i32 %3){
	%5 = alloca i32, align 4
	%6 = alloca %struct.Node*, align 4
	%7 = alloca %struct.Node*, align 4
	%8 = alloca i32, align 4
	%9 = alloca i32, align 4
	%10 = alloca %struct.Node*, align 4
	store i32 0, i32* %5, align 4
	store %struct.Node* %0, %struct.Node** %6, align 4
	store %struct.Node* %1, %struct.Node** %7, align 4
	store i32 %2, i32* %8, align 4
	store i32 %3, i32* %9, align 4
	%11 = load %struct.Node*, %struct.Node** %6, align 4
	%12 = icmp eq %struct.Node* %11, null
	br i1 %12, label %13, label %14

13:
	store i32 0, i32* %5, align 4
	br label %329

14:
	%15 = load %struct.Node*, %struct.Node** %6, align 4
	%16 = getelementptr %struct.Node, %struct.Node* %15, i32 0, i32 2
	%17 = load i32, i32* %16, align 4
	%18 = load i32, i32* %9, align 4
	%19 = icmp sgt i32 %17, %18
	br i1 %19, label %20, label %33

20:
	%21 = load %struct.Node*, %struct.Node** %6, align 4
	%22 = getelementptr %struct.Node, %struct.Node* %21, i32 0, i32 1
	%23 = load %struct.Node**, %struct.Node*** %22, align 4
	%24 = mul i32 0, 4
	%25 = add i32 %24, 4
	%26 = bitcast %struct.Node** %23 to i8*
	%27 = getelementptr i8, i8* %26, i32 %25
	%28 = bitcast i8* %27 to %struct.Node**
	%29 = load %struct.Node*, %struct.Node** %28, align 4
	%30 = load %struct.Node*, %struct.Node** %6, align 4
	%31 = load i32, i32* %9, align 4
	%32 = call i32 @eraseImpl(%struct.Node* %29, %struct.Node* %30, i32 0, i32 %31)
	store i32 %32, i32* %5, align 4
	br label %329

33:
	%34 = load %struct.Node*, %struct.Node** %6, align 4
	%35 = getelementptr %struct.Node, %struct.Node* %34, i32 0, i32 2
	%36 = load i32, i32* %35, align 4
	%37 = load i32, i32* %9, align 4
	%38 = icmp slt i32 %36, %37
	br i1 %38, label %39, label %52

39:
	%40 = load %struct.Node*, %struct.Node** %6, align 4
	%41 = getelementptr %struct.Node, %struct.Node* %40, i32 0, i32 1
	%42 = load %struct.Node**, %struct.Node*** %41, align 4
	%43 = mul i32 1, 4
	%44 = add i32 %43, 4
	%45 = bitcast %struct.Node** %42 to i8*
	%46 = getelementptr i8, i8* %45, i32 %44
	%47 = bitcast i8* %46 to %struct.Node**
	%48 = load %struct.Node*, %struct.Node** %47, align 4
	%49 = load %struct.Node*, %struct.Node** %6, align 4
	%50 = load i32, i32* %9, align 4
	%51 = call i32 @eraseImpl(%struct.Node* %48, %struct.Node* %49, i32 1, i32 %50)
	store i32 %51, i32* %5, align 4
	br label %329

52:
	%53 = load %struct.Node*, %struct.Node** %6, align 4
	%54 = getelementptr %struct.Node, %struct.Node* %53, i32 0, i32 3
	%55 = load i32, i32* %54, align 4
	%56 = sub i32 %55, 1
	store i32 %56, i32* %54, align 4
	%57 = load %struct.Node*, %struct.Node** %6, align 4
	%58 = getelementptr %struct.Node, %struct.Node* %57, i32 0, i32 3
	%59 = load i32, i32* %58, align 4
	%60 = icmp sgt i32 %59, 0
	br i1 %60, label %61, label %62

61:
	store i32 1, i32* %5, align 4
	br label %329

62:
	%63 = load %struct.Node*, %struct.Node** %6, align 4
	%64 = getelementptr %struct.Node, %struct.Node* %63, i32 0, i32 1
	%65 = load %struct.Node**, %struct.Node*** %64, align 4
	%66 = mul i32 0, 4
	%67 = add i32 %66, 4
	%68 = bitcast %struct.Node** %65 to i8*
	%69 = getelementptr i8, i8* %68, i32 %67
	%70 = bitcast i8* %69 to %struct.Node**
	%71 = load %struct.Node*, %struct.Node** %70, align 4
	%72 = icmp eq %struct.Node* %71, null
	br i1 %72, label %73, label %138

73:
	%74 = load %struct.Node*, %struct.Node** %7, align 4
	%75 = icmp ne %struct.Node* %74, null
	br i1 %75, label %76, label %96

76:
	%77 = load %struct.Node*, %struct.Node** %6, align 4
	%78 = getelementptr %struct.Node, %struct.Node* %77, i32 0, i32 1
	%79 = load %struct.Node**, %struct.Node*** %78, align 4
	%80 = mul i32 1, 4
	%81 = add i32 %80, 4
	%82 = bitcast %struct.Node** %79 to i8*
	%83 = getelementptr i8, i8* %82, i32 %81
	%84 = bitcast i8* %83 to %struct.Node**
	%85 = load %struct.Node*, %struct.Node** %84, align 4
	%86 = load %struct.Node*, %struct.Node** %7, align 4
	%87 = getelementptr %struct.Node, %struct.Node* %86, i32 0, i32 1
	%88 = load %struct.Node**, %struct.Node*** %87, align 4
	%89 = load i32, i32* %8, align 4
	%90 = mul i32 %89, 4
	%91 = add i32 %90, 4
	%92 = bitcast %struct.Node** %88 to i8*
	%93 = getelementptr i8, i8* %92, i32 %91
	%94 = bitcast i8* %93 to %struct.Node**
	%95 = load %struct.Node*, %struct.Node** %94, align 4
	store %struct.Node* %85, %struct.Node** %94, align 4
	br label %96

96:
	%97 = load %struct.Node*, %struct.Node** %6, align 4
	%98 = getelementptr %struct.Node, %struct.Node* %97, i32 0, i32 1
	%99 = load %struct.Node**, %struct.Node*** %98, align 4
	%100 = mul i32 1, 4
	%101 = add i32 %100, 4
	%102 = bitcast %struct.Node** %99 to i8*
	%103 = getelementptr i8, i8* %102, i32 %101
	%104 = bitcast i8* %103 to %struct.Node**
	%105 = load %struct.Node*, %struct.Node** %104, align 4
	%106 = icmp ne %struct.Node* %105, null
	br i1 %106, label %107, label %120

107:
	%108 = load %struct.Node*, %struct.Node** %7, align 4
	%109 = load %struct.Node*, %struct.Node** %6, align 4
	%110 = getelementptr %struct.Node, %struct.Node* %109, i32 0, i32 1
	%111 = load %struct.Node**, %struct.Node*** %110, align 4
	%112 = mul i32 1, 4
	%113 = add i32 %112, 4
	%114 = bitcast %struct.Node** %111 to i8*
	%115 = getelementptr i8, i8* %114, i32 %113
	%116 = bitcast i8* %115 to %struct.Node**
	%117 = load %struct.Node*, %struct.Node** %116, align 4
	%118 = getelementptr %struct.Node, %struct.Node* %117, i32 0, i32 0
	%119 = load %struct.Node*, %struct.Node** %118, align 4
	store %struct.Node* %108, %struct.Node** %118, align 4
	br label %120

120:
	%121 = load i32, i32* %9, align 4
	%122 = load %struct.Node*, %struct.Node** @root, align 4
	%123 = getelementptr %struct.Node, %struct.Node* %122, i32 0, i32 2
	%124 = load i32, i32* %123, align 4
	%125 = icmp eq i32 %121, %124
	br i1 %125, label %126, label %137

126:
	%127 = load %struct.Node*, %struct.Node** %6, align 4
	%128 = getelementptr %struct.Node, %struct.Node* %127, i32 0, i32 1
	%129 = load %struct.Node**, %struct.Node*** %128, align 4
	%130 = mul i32 1, 4
	%131 = add i32 %130, 4
	%132 = bitcast %struct.Node** %129 to i8*
	%133 = getelementptr i8, i8* %132, i32 %131
	%134 = bitcast i8* %133 to %struct.Node**
	%135 = load %struct.Node*, %struct.Node** %134, align 4
	%136 = load %struct.Node*, %struct.Node** @root, align 4
	store %struct.Node* %135, %struct.Node** @root, align 4
	br label %137

137:
	store i32 1, i32* %5, align 4
	br label %329

138:
	%139 = load %struct.Node*, %struct.Node** %6, align 4
	%140 = getelementptr %struct.Node, %struct.Node* %139, i32 0, i32 1
	%141 = load %struct.Node**, %struct.Node*** %140, align 4
	%142 = mul i32 0, 4
	%143 = add i32 %142, 4
	%144 = bitcast %struct.Node** %141 to i8*
	%145 = getelementptr i8, i8* %144, i32 %143
	%146 = bitcast i8* %145 to %struct.Node**
	%147 = load %struct.Node*, %struct.Node** %146, align 4
	%148 = call %struct.Node* @findLargest(%struct.Node* %147)
	store %struct.Node* %148, %struct.Node** %10, align 4
	%149 = load i32, i32* %9, align 4
	%150 = load %struct.Node*, %struct.Node** @root, align 4
	%151 = getelementptr %struct.Node, %struct.Node* %150, i32 0, i32 2
	%152 = load i32, i32* %151, align 4
	%153 = icmp eq i32 %149, %152
	br i1 %153, label %154, label %157

154:
	%155 = load %struct.Node*, %struct.Node** %10, align 4
	%156 = load %struct.Node*, %struct.Node** @root, align 4
	store %struct.Node* %155, %struct.Node** @root, align 4
	br label %157

157:
	%158 = load %struct.Node*, %struct.Node** %10, align 4
	%159 = getelementptr %struct.Node, %struct.Node* %158, i32 0, i32 2
	%160 = load i32, i32* %159, align 4
	%161 = load %struct.Node*, %struct.Node** %6, align 4
	%162 = getelementptr %struct.Node, %struct.Node* %161, i32 0, i32 1
	%163 = load %struct.Node**, %struct.Node*** %162, align 4
	%164 = mul i32 0, 4
	%165 = add i32 %164, 4
	%166 = bitcast %struct.Node** %163 to i8*
	%167 = getelementptr i8, i8* %166, i32 %165
	%168 = bitcast i8* %167 to %struct.Node**
	%169 = load %struct.Node*, %struct.Node** %168, align 4
	%170 = getelementptr %struct.Node, %struct.Node* %169, i32 0, i32 2
	%171 = load i32, i32* %170, align 4
	%172 = icmp ne i32 %160, %171
	br i1 %172, label %173, label %220

173:
	%174 = load %struct.Node*, %struct.Node** %10, align 4
	%175 = getelementptr %struct.Node, %struct.Node* %174, i32 0, i32 1
	%176 = load %struct.Node**, %struct.Node*** %175, align 4
	%177 = mul i32 0, 4
	%178 = add i32 %177, 4
	%179 = bitcast %struct.Node** %176 to i8*
	%180 = getelementptr i8, i8* %179, i32 %178
	%181 = bitcast i8* %180 to %struct.Node**
	%182 = load %struct.Node*, %struct.Node** %181, align 4
	%183 = load %struct.Node*, %struct.Node** %10, align 4
	%184 = getelementptr %struct.Node, %struct.Node* %183, i32 0, i32 0
	%185 = load %struct.Node*, %struct.Node** %184, align 4
	%186 = getelementptr %struct.Node, %struct.Node* %185, i32 0, i32 1
	%187 = load %struct.Node**, %struct.Node*** %186, align 4
	%188 = mul i32 1, 4
	%189 = add i32 %188, 4
	%190 = bitcast %struct.Node** %187 to i8*
	%191 = getelementptr i8, i8* %190, i32 %189
	%192 = bitcast i8* %191 to %struct.Node**
	%193 = load %struct.Node*, %struct.Node** %192, align 4
	store %struct.Node* %182, %struct.Node** %192, align 4
	%194 = load %struct.Node*, %struct.Node** %10, align 4
	%195 = getelementptr %struct.Node, %struct.Node* %194, i32 0, i32 1
	%196 = load %struct.Node**, %struct.Node*** %195, align 4
	%197 = mul i32 0, 4
	%198 = add i32 %197, 4
	%199 = bitcast %struct.Node** %196 to i8*
	%200 = getelementptr i8, i8* %199, i32 %198
	%201 = bitcast i8* %200 to %struct.Node**
	%202 = load %struct.Node*, %struct.Node** %201, align 4
	%203 = icmp ne %struct.Node* %202, null
	br i1 %203, label %204, label %219

204:
	%205 = load %struct.Node*, %struct.Node** %10, align 4
	%206 = getelementptr %struct.Node, %struct.Node* %205, i32 0, i32 0
	%207 = load %struct.Node*, %struct.Node** %206, align 4
	%208 = load %struct.Node*, %struct.Node** %10, align 4
	%209 = getelementptr %struct.Node, %struct.Node* %208, i32 0, i32 1
	%210 = load %struct.Node**, %struct.Node*** %209, align 4
	%211 = mul i32 0, 4
	%212 = add i32 %211, 4
	%213 = bitcast %struct.Node** %210 to i8*
	%214 = getelementptr i8, i8* %213, i32 %212
	%215 = bitcast i8* %214 to %struct.Node**
	%216 = load %struct.Node*, %struct.Node** %215, align 4
	%217 = getelementptr %struct.Node, %struct.Node* %216, i32 0, i32 0
	%218 = load %struct.Node*, %struct.Node** %217, align 4
	store %struct.Node* %207, %struct.Node** %217, align 4
	br label %219

219:
	br label %220

220:
	%221 = load %struct.Node*, %struct.Node** %7, align 4
	%222 = icmp ne %struct.Node* %221, null
	br i1 %222, label %223, label %235

223:
	%224 = load %struct.Node*, %struct.Node** %10, align 4
	%225 = load %struct.Node*, %struct.Node** %7, align 4
	%226 = getelementptr %struct.Node, %struct.Node* %225, i32 0, i32 1
	%227 = load %struct.Node**, %struct.Node*** %226, align 4
	%228 = load i32, i32* %8, align 4
	%229 = mul i32 %228, 4
	%230 = add i32 %229, 4
	%231 = bitcast %struct.Node** %227 to i8*
	%232 = getelementptr i8, i8* %231, i32 %230
	%233 = bitcast i8* %232 to %struct.Node**
	%234 = load %struct.Node*, %struct.Node** %233, align 4
	store %struct.Node* %224, %struct.Node** %233, align 4
	br label %235

235:
	%236 = load %struct.Node*, %struct.Node** %7, align 4
	%237 = load %struct.Node*, %struct.Node** %10, align 4
	%238 = getelementptr %struct.Node, %struct.Node* %237, i32 0, i32 0
	%239 = load %struct.Node*, %struct.Node** %238, align 4
	store %struct.Node* %236, %struct.Node** %238, align 4
	%240 = load %struct.Node*, %struct.Node** %6, align 4
	%241 = getelementptr %struct.Node, %struct.Node* %240, i32 0, i32 1
	%242 = load %struct.Node**, %struct.Node*** %241, align 4
	%243 = mul i32 1, 4
	%244 = add i32 %243, 4
	%245 = bitcast %struct.Node** %242 to i8*
	%246 = getelementptr i8, i8* %245, i32 %244
	%247 = bitcast i8* %246 to %struct.Node**
	%248 = load %struct.Node*, %struct.Node** %247, align 4
	%249 = load %struct.Node*, %struct.Node** %10, align 4
	%250 = getelementptr %struct.Node, %struct.Node* %249, i32 0, i32 1
	%251 = load %struct.Node**, %struct.Node*** %250, align 4
	%252 = mul i32 1, 4
	%253 = add i32 %252, 4
	%254 = bitcast %struct.Node** %251 to i8*
	%255 = getelementptr i8, i8* %254, i32 %253
	%256 = bitcast i8* %255 to %struct.Node**
	%257 = load %struct.Node*, %struct.Node** %256, align 4
	store %struct.Node* %248, %struct.Node** %256, align 4
	%258 = load %struct.Node*, %struct.Node** %6, align 4
	%259 = getelementptr %struct.Node, %struct.Node* %258, i32 0, i32 1
	%260 = load %struct.Node**, %struct.Node*** %259, align 4
	%261 = mul i32 1, 4
	%262 = add i32 %261, 4
	%263 = bitcast %struct.Node** %260 to i8*
	%264 = getelementptr i8, i8* %263, i32 %262
	%265 = bitcast i8* %264 to %struct.Node**
	%266 = load %struct.Node*, %struct.Node** %265, align 4
	%267 = icmp ne %struct.Node* %266, null
	br i1 %267, label %268, label %281

268:
	%269 = load %struct.Node*, %struct.Node** %10, align 4
	%270 = load %struct.Node*, %struct.Node** %6, align 4
	%271 = getelementptr %struct.Node, %struct.Node* %270, i32 0, i32 1
	%272 = load %struct.Node**, %struct.Node*** %271, align 4
	%273 = mul i32 1, 4
	%274 = add i32 %273, 4
	%275 = bitcast %struct.Node** %272 to i8*
	%276 = getelementptr i8, i8* %275, i32 %274
	%277 = bitcast i8* %276 to %struct.Node**
	%278 = load %struct.Node*, %struct.Node** %277, align 4
	%279 = getelementptr %struct.Node, %struct.Node* %278, i32 0, i32 0
	%280 = load %struct.Node*, %struct.Node** %279, align 4
	store %struct.Node* %269, %struct.Node** %279, align 4
	br label %281

281:
	%282 = load %struct.Node*, %struct.Node** %10, align 4
	%283 = getelementptr %struct.Node, %struct.Node* %282, i32 0, i32 2
	%284 = load i32, i32* %283, align 4
	%285 = load %struct.Node*, %struct.Node** %6, align 4
	%286 = getelementptr %struct.Node, %struct.Node* %285, i32 0, i32 1
	%287 = load %struct.Node**, %struct.Node*** %286, align 4
	%288 = mul i32 0, 4
	%289 = add i32 %288, 4
	%290 = bitcast %struct.Node** %287 to i8*
	%291 = getelementptr i8, i8* %290, i32 %289
	%292 = bitcast i8* %291 to %struct.Node**
	%293 = load %struct.Node*, %struct.Node** %292, align 4
	%294 = getelementptr %struct.Node, %struct.Node* %293, i32 0, i32 2
	%295 = load i32, i32* %294, align 4
	%296 = icmp ne i32 %284, %295
	br i1 %296, label %297, label %328

297:
	%298 = load %struct.Node*, %struct.Node** %6, align 4
	%299 = getelementptr %struct.Node, %struct.Node* %298, i32 0, i32 1
	%300 = load %struct.Node**, %struct.Node*** %299, align 4
	%301 = mul i32 0, 4
	%302 = add i32 %301, 4
	%303 = bitcast %struct.Node** %300 to i8*
	%304 = getelementptr i8, i8* %303, i32 %302
	%305 = bitcast i8* %304 to %struct.Node**
	%306 = load %struct.Node*, %struct.Node** %305, align 4
	%307 = load %struct.Node*, %struct.Node** %10, align 4
	%308 = getelementptr %struct.Node, %struct.Node* %307, i32 0, i32 1
	%309 = load %struct.Node**, %struct.Node*** %308, align 4
	%310 = mul i32 0, 4
	%311 = add i32 %310, 4
	%312 = bitcast %struct.Node** %309 to i8*
	%313 = getelementptr i8, i8* %312, i32 %311
	%314 = bitcast i8* %313 to %struct.Node**
	%315 = load %struct.Node*, %struct.Node** %314, align 4
	store %struct.Node* %306, %struct.Node** %314, align 4
	%316 = load %struct.Node*, %struct.Node** %10, align 4
	%317 = load %struct.Node*, %struct.Node** %6, align 4
	%318 = getelementptr %struct.Node, %struct.Node* %317, i32 0, i32 1
	%319 = load %struct.Node**, %struct.Node*** %318, align 4
	%320 = mul i32 0, 4
	%321 = add i32 %320, 4
	%322 = bitcast %struct.Node** %319 to i8*
	%323 = getelementptr i8, i8* %322, i32 %321
	%324 = bitcast i8* %323 to %struct.Node**
	%325 = load %struct.Node*, %struct.Node** %324, align 4
	%326 = getelementptr %struct.Node, %struct.Node* %325, i32 0, i32 0
	%327 = load %struct.Node*, %struct.Node** %326, align 4
	store %struct.Node* %316, %struct.Node** %326, align 4
	br label %328

328:
	store i32 1, i32* %5, align 4
	br label %329

329:
	%330 = load i32, i32* %5, align 4
	ret i32 %330
}

define i32 @erase(i32 %0){
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	store i32 0, i32* %2, align 4
	store i32 %0, i32* %3, align 4
	%4 = load %struct.Node*, %struct.Node** @root, align 4
	%5 = icmp eq %struct.Node* %4, null
	br i1 %5, label %6, label %7

6:
	store i32 0, i32* %2, align 4
	br label %12

7:
	%8 = load %struct.Node*, %struct.Node** @root, align 4
	%9 = sub i32 0, 1
	%10 = load i32, i32* %3, align 4
	%11 = call i32 @eraseImpl(%struct.Node* %8, %struct.Node* null, i32 %9, i32 %10)
	store i32 %11, i32* %2, align 4
	br label %12

12:
	%13 = load i32, i32* %2, align 4
	ret i32 %13
}

define void @printTree(%struct.Node* %0){
	%2 = alloca %struct.Node*, align 4
	store %struct.Node* %0, %struct.Node** %2, align 4
	%3 = load %struct.Node*, %struct.Node** %2, align 4
	%4 = icmp eq %struct.Node* %3, null
	br i1 %4, label %5, label %6

5:
	br label %42

6:
	%7 = load %struct.Node*, %struct.Node** %2, align 4
	%8 = getelementptr %struct.Node, %struct.Node* %7, i32 0, i32 1
	%9 = load %struct.Node**, %struct.Node*** %8, align 4
	%10 = mul i32 0, 4
	%11 = add i32 %10, 4
	%12 = bitcast %struct.Node** %9 to i8*
	%13 = getelementptr i8, i8* %12, i32 %11
	%14 = bitcast i8* %13 to %struct.Node**
	%15 = load %struct.Node*, %struct.Node** %14, align 4
	call void @printTree(%struct.Node* %15)
	%16 = load %struct.Node*, %struct.Node** %2, align 4
	%17 = getelementptr %struct.Node, %struct.Node* %16, i32 0, i32 2
	%18 = load i32, i32* %17, align 4
	%19 = call %struct.string* @toString(i32 %18)
	%20 = call i8* @myNew(i32 12)
	%21 = bitcast i8* %20 to %struct.string*
	%22 = getelementptr %struct.string, %struct.string* %21, i32 0, i32 0
	store i32 2, i32* %22, align 4
	%23 = bitcast [3 x i8]* @.libro.str to i8*
	%24 = getelementptr %struct.string, %struct.string* %21, i32 0, i32 1
	store i8* %23, i8** %24, align 4
	%25 = call %struct.string* @_string_stringAppend(%struct.string* %19, %struct.string* %21)
	%26 = load %struct.Node*, %struct.Node** %2, align 4
	%27 = getelementptr %struct.Node, %struct.Node* %26, i32 0, i32 3
	%28 = load i32, i32* %27, align 4
	%29 = call %struct.string* @toString(i32 %28)
	%30 = call %struct.string* @_string_stringAppend(%struct.string* %25, %struct.string* %29)
	%31 = getelementptr %struct.string, %struct.string* %30, i32 0, i32 1
	%32 = load i8*, i8** %31, align 4
	call void @println(i8* %32)
	%33 = load %struct.Node*, %struct.Node** %2, align 4
	%34 = getelementptr %struct.Node, %struct.Node* %33, i32 0, i32 1
	%35 = load %struct.Node**, %struct.Node*** %34, align 4
	%36 = mul i32 1, 4
	%37 = add i32 %36, 4
	%38 = bitcast %struct.Node** %35 to i8*
	%39 = getelementptr i8, i8* %38, i32 %37
	%40 = bitcast i8* %39 to %struct.Node**
	%41 = load %struct.Node*, %struct.Node** %40, align 4
	call void @printTree(%struct.Node* %41)
	br label %42

42:
	ret void
}

define void @_global_var_init.2(){
	%1 = shl i32 1, 31
	store i32 %1, i32* @MaxRandInt, align 4
	ret void
}

define i32 @randInt31(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%3 = load i32, i32* @seed, align 4
	store i32 %3, i32* %2, align 4
	%4 = load i32, i32* %2, align 4
	%5 = load i32, i32* %2, align 4
	%6 = shl i32 %5, 13
	%7 = xor i32 %4, %6
	%8 = load i32, i32* %2, align 4
	store i32 %7, i32* %2, align 4
	%9 = load i32, i32* %2, align 4
	%10 = shl i32 1, 31
	%11 = and i32 %9, %10
	%12 = load i32, i32* %2, align 4
	store i32 %11, i32* %2, align 4
	%13 = load i32, i32* %2, align 4
	%14 = load i32, i32* %2, align 4
	%15 = ashr i32 %14, 17
	%16 = xor i32 %13, %15
	%17 = load i32, i32* %2, align 4
	store i32 %16, i32* %2, align 4
	%18 = load i32, i32* %2, align 4
	%19 = load i32, i32* %2, align 4
	%20 = shl i32 %19, 5
	%21 = xor i32 %18, %20
	%22 = load i32, i32* %2, align 4
	store i32 %21, i32* %2, align 4
	%23 = load i32, i32* %2, align 4
	%24 = shl i32 1, 31
	%25 = and i32 %23, %24
	%26 = load i32, i32* %2, align 4
	store i32 %25, i32* %2, align 4
	%27 = load i32, i32* %2, align 4
	%28 = load i32, i32* @seed, align 4
	store i32 %27, i32* @seed, align 4
	%29 = load i32, i32* %2, align 4
	store i32 %29, i32* %1, align 4
	br label %30

30:
	%31 = load i32, i32* %1, align 4
	ret i32 %31
}

define i32 @randOp(i32 %0){
	%2 = alloca i32, align 4
	%3 = alloca i32, align 4
	store i32 0, i32* %2, align 4
	store i32 %0, i32* %3, align 4
	%4 = call i32 @randInt31()
	%5 = load i32, i32* %3, align 4
	%6 = icmp slt i32 %4, %5
	br i1 %6, label %7, label %8

7:
	store i32 1, i32* %2, align 4
	br label %9

8:
	store i32 2, i32* %2, align 4
	br label %9

9:
	%10 = load i32, i32* %2, align 4
	ret i32 %10
}

define void @generateOperations(i32 %0,i32 %1){
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	store i32 %0, i32* %3, align 4
	store i32 %1, i32* %4, align 4
	%7 = load i32, i32* %5, align 4
	store i32 0, i32* %5, align 4
	br label %8

8:
	%9 = load i32, i32* %5, align 4
	%10 = load i32, i32* %4, align 4
	%11 = icmp slt i32 %9, %10
	br i1 %11, label %12, label %29

12:
	%13 = call i32 @randInt31()
	%14 = load i32, i32* @MAX, align 4
	%15 = srem i32 %13, %14
	store i32 %15, i32* %6, align 4
	%16 = load i32, i32* %3, align 4
	%17 = call i32 @randOp(i32 %16)
	%18 = icmp eq i32 %17, 1
	br i1 %18, label %19, label %22

19:
	%20 = load i32, i32* %6, align 4
	%21 = call i32 @insert(i32 %20)
	br label %25

22:
	%23 = load i32, i32* %6, align 4
	%24 = call i32 @erase(i32 %23)
	br label %25

25:
	br label %26

26:
	%27 = load i32, i32* %5, align 4
	%28 = add i32 %27, 1
	store i32 %28, i32* %5, align 4
	br label %8

29:
	br label %30

30:
	ret void
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	call void @_GLOBAL_()
	store i32 0, i32* %1, align 4
	%3 = call i32 @getInt()
	%4 = load i32, i32* @seed, align 4
	store i32 %3, i32* @seed, align 4
	store i32 50000, i32* %2, align 4
	%5 = load i32, i32* @MaxRandInt, align 4
	%6 = sdiv i32 %5, 10
	%7 = mul i32 8, %6
	%8 = load i32, i32* %2, align 4
	call void @generateOperations(i32 %7, i32 %8)
	%9 = load i32, i32* @MaxRandInt, align 4
	%10 = sdiv i32 %9, 10
	%11 = mul i32 2, %10
	%12 = load i32, i32* %2, align 4
	%13 = mul i32 2, %12
	call void @generateOperations(i32 %11, i32 %13)
	%14 = load i32, i32* @MaxRandInt, align 4
	%15 = sdiv i32 %14, 10
	%16 = mul i32 4, %15
	%17 = load i32, i32* %2, align 4
	call void @generateOperations(i32 %16, i32 %17)
	%18 = load %struct.Node*, %struct.Node** @root, align 4
	call void @printTree(%struct.Node* %18)
	store i32 0, i32* %1, align 4
	br label %19

19:
	%20 = load i32, i32* %1, align 4
	ret i32 %20
}

define void @_GLOBAL_(){
	call void @_global_var_init.2()
	ret void
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

