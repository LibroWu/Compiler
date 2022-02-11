%struct.string = type { i32, i8* }

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i8, align 1
	%4 = alloca %struct.string*, align 4
	%5 = alloca i8, align 1
	%6 = alloca i32, align 4
	%7 = alloca i8, align 1
	%8 = alloca i32, align 4
	%9 = alloca i32, align 4
	%10 = alloca i8, align 1
	%11 = alloca %struct.string*, align 4
	%12 = alloca i32********************, align 4
	%13 = alloca i32, align 4;for new loop
	%14 = alloca i32, align 4;for new loop
	%15 = alloca i32, align 4;for new loop
	%16 = alloca i32, align 4;for new loop
	%17 = alloca i32, align 4;for new loop
	%18 = alloca i32, align 4;for new loop
	%19 = alloca i32, align 4;for new loop
	%20 = alloca i32, align 4;for new loop
	%21 = alloca i32, align 4;for new loop
	%22 = alloca i32, align 4;for new loop
	%23 = alloca i32, align 4;for new loop
	%24 = alloca i32, align 4;for new loop
	%25 = alloca i32, align 4;for new loop
	%26 = alloca i32, align 4;for new loop
	store i32 0, i32* %1, align 4
	%27 = sext i1 1 to i8
	store i8 %27, i8* %5, align 1
	%28 = load i8, i8* %3, align 1
	%29 = load i8, i8* %3, align 1
	%30 = icmp eq i8 %28, %29
	br i1 %30, label %31, label %34

31:
	%32 = load i8, i8* %5, align 1
	%33 = sext i1 0 to i8
	store i8 %33, i8* %5, align 1
	br label %34

34:
	%35 = load i32, i32* %8, align 4
	%36 = load i32, i32* %8, align 4
	%37 = add i32 %35, %36
	%38 = load i32, i32* %8, align 4
	%39 = sub i32 %37, %38
	%40 = load i32, i32* %8, align 4
	%41 = icmp eq i32 %39, %40
	br i1 %41, label %42, label %45

42:
	%43 = load i8, i8* %5, align 1
	%44 = sext i1 1 to i8
	store i8 %44, i8* %5, align 1
	br label %45

45:
	%46 = call i8* @myNew(i32 8)
	%47 = bitcast i8* %46 to i32*
	store i32 1, i32* %47, align 4
	%48 = bitcast i8* %46 to i32********************
	store i32 0, i32* %13, align 4
	br label %49

49:
	%50 = load i32, i32* %13, align 4
	%51 = add i32 %50, 4
	store i32 %51, i32* %13, align 4
	%52 = icmp slt i32 %50, 8
	br i1 %52, label %53, label %202

53:
	%54 = getelementptr i8, i8* %46, i32 %50
	%55 = call i8* @myNew(i32 8)
	%56 = bitcast i8* %55 to i32*
	store i32 1, i32* %56, align 4
	%57 = bitcast i8* %55 to i32*******************
	store i32 0, i32* %14, align 4
	br label %58

58:
	%59 = load i32, i32* %14, align 4
	%60 = add i32 %59, 4
	store i32 %60, i32* %14, align 4
	%61 = icmp slt i32 %59, 8
	br i1 %61, label %62, label %200

62:
	%63 = getelementptr i8, i8* %55, i32 %59
	%64 = call i8* @myNew(i32 8)
	%65 = bitcast i8* %64 to i32*
	store i32 1, i32* %65, align 4
	%66 = bitcast i8* %64 to i32******************
	store i32 0, i32* %15, align 4
	br label %67

67:
	%68 = load i32, i32* %15, align 4
	%69 = add i32 %68, 4
	store i32 %69, i32* %15, align 4
	%70 = icmp slt i32 %68, 8
	br i1 %70, label %71, label %198

71:
	%72 = getelementptr i8, i8* %64, i32 %68
	%73 = call i8* @myNew(i32 8)
	%74 = bitcast i8* %73 to i32*
	store i32 1, i32* %74, align 4
	%75 = bitcast i8* %73 to i32*****************
	store i32 0, i32* %16, align 4
	br label %76

76:
	%77 = load i32, i32* %16, align 4
	%78 = add i32 %77, 4
	store i32 %78, i32* %16, align 4
	%79 = icmp slt i32 %77, 8
	br i1 %79, label %80, label %196

80:
	%81 = getelementptr i8, i8* %73, i32 %77
	%82 = call i8* @myNew(i32 8)
	%83 = bitcast i8* %82 to i32*
	store i32 1, i32* %83, align 4
	%84 = bitcast i8* %82 to i32****************
	store i32 0, i32* %17, align 4
	br label %85

85:
	%86 = load i32, i32* %17, align 4
	%87 = add i32 %86, 4
	store i32 %87, i32* %17, align 4
	%88 = icmp slt i32 %86, 8
	br i1 %88, label %89, label %194

89:
	%90 = getelementptr i8, i8* %82, i32 %86
	%91 = call i8* @myNew(i32 8)
	%92 = bitcast i8* %91 to i32*
	store i32 1, i32* %92, align 4
	%93 = bitcast i8* %91 to i32***************
	store i32 0, i32* %18, align 4
	br label %94

94:
	%95 = load i32, i32* %18, align 4
	%96 = add i32 %95, 4
	store i32 %96, i32* %18, align 4
	%97 = icmp slt i32 %95, 8
	br i1 %97, label %98, label %192

98:
	%99 = getelementptr i8, i8* %91, i32 %95
	%100 = call i8* @myNew(i32 8)
	%101 = bitcast i8* %100 to i32*
	store i32 1, i32* %101, align 4
	%102 = bitcast i8* %100 to i32**************
	store i32 0, i32* %19, align 4
	br label %103

103:
	%104 = load i32, i32* %19, align 4
	%105 = add i32 %104, 4
	store i32 %105, i32* %19, align 4
	%106 = icmp slt i32 %104, 8
	br i1 %106, label %107, label %190

107:
	%108 = getelementptr i8, i8* %100, i32 %104
	%109 = call i8* @myNew(i32 8)
	%110 = bitcast i8* %109 to i32*
	store i32 1, i32* %110, align 4
	%111 = bitcast i8* %109 to i32*************
	store i32 0, i32* %20, align 4
	br label %112

112:
	%113 = load i32, i32* %20, align 4
	%114 = add i32 %113, 4
	store i32 %114, i32* %20, align 4
	%115 = icmp slt i32 %113, 8
	br i1 %115, label %116, label %188

116:
	%117 = getelementptr i8, i8* %109, i32 %113
	%118 = call i8* @myNew(i32 8)
	%119 = bitcast i8* %118 to i32*
	store i32 1, i32* %119, align 4
	%120 = bitcast i8* %118 to i32************
	store i32 0, i32* %21, align 4
	br label %121

121:
	%122 = load i32, i32* %21, align 4
	%123 = add i32 %122, 4
	store i32 %123, i32* %21, align 4
	%124 = icmp slt i32 %122, 8
	br i1 %124, label %125, label %186

125:
	%126 = getelementptr i8, i8* %118, i32 %122
	%127 = call i8* @myNew(i32 8)
	%128 = bitcast i8* %127 to i32*
	store i32 1, i32* %128, align 4
	%129 = bitcast i8* %127 to i32***********
	store i32 0, i32* %22, align 4
	br label %130

130:
	%131 = load i32, i32* %22, align 4
	%132 = add i32 %131, 4
	store i32 %132, i32* %22, align 4
	%133 = icmp slt i32 %131, 8
	br i1 %133, label %134, label %184

134:
	%135 = getelementptr i8, i8* %127, i32 %131
	%136 = call i8* @myNew(i32 8)
	%137 = bitcast i8* %136 to i32*
	store i32 1, i32* %137, align 4
	%138 = bitcast i8* %136 to i32**********
	store i32 0, i32* %23, align 4
	br label %139

139:
	%140 = load i32, i32* %23, align 4
	%141 = add i32 %140, 4
	store i32 %141, i32* %23, align 4
	%142 = icmp slt i32 %140, 8
	br i1 %142, label %143, label %182

143:
	%144 = getelementptr i8, i8* %136, i32 %140
	%145 = call i8* @myNew(i32 8)
	%146 = bitcast i8* %145 to i32*
	store i32 1, i32* %146, align 4
	%147 = bitcast i8* %145 to i32*********
	store i32 0, i32* %24, align 4
	br label %148

148:
	%149 = load i32, i32* %24, align 4
	%150 = add i32 %149, 4
	store i32 %150, i32* %24, align 4
	%151 = icmp slt i32 %149, 8
	br i1 %151, label %152, label %180

152:
	%153 = getelementptr i8, i8* %145, i32 %149
	%154 = call i8* @myNew(i32 8)
	%155 = bitcast i8* %154 to i32*
	store i32 1, i32* %155, align 4
	%156 = bitcast i8* %154 to i32********
	store i32 0, i32* %25, align 4
	br label %157

157:
	%158 = load i32, i32* %25, align 4
	%159 = add i32 %158, 4
	store i32 %159, i32* %25, align 4
	%160 = icmp slt i32 %158, 8
	br i1 %160, label %161, label %178

161:
	%162 = getelementptr i8, i8* %154, i32 %158
	%163 = call i8* @myNew(i32 8)
	%164 = bitcast i8* %163 to i32*
	store i32 1, i32* %164, align 4
	%165 = bitcast i8* %163 to i32*******
	store i32 0, i32* %26, align 4
	br label %166

166:
	%167 = load i32, i32* %26, align 4
	%168 = add i32 %167, 4
	store i32 %168, i32* %26, align 4
	%169 = icmp slt i32 %167, 8
	br i1 %169, label %170, label %176

170:
	%171 = getelementptr i8, i8* %163, i32 %167
	%172 = call i8* @myNew(i32 8)
	%173 = bitcast i8* %172 to i32*
	store i32 1, i32* %173, align 4
	%174 = bitcast i8* %172 to i32******
	%175 = bitcast i8* %171 to i32*******
	store i32****** %174, i32******* %175, align 4
	br label %166

176:
	%177 = bitcast i8* %162 to i32********
	store i32******* %165, i32******** %177, align 4
	br label %157

178:
	%179 = bitcast i8* %153 to i32*********
	store i32******** %156, i32********* %179, align 4
	br label %148

180:
	%181 = bitcast i8* %144 to i32**********
	store i32********* %147, i32********** %181, align 4
	br label %139

182:
	%183 = bitcast i8* %135 to i32***********
	store i32********** %138, i32*********** %183, align 4
	br label %130

184:
	%185 = bitcast i8* %126 to i32************
	store i32*********** %129, i32************ %185, align 4
	br label %121

186:
	%187 = bitcast i8* %117 to i32*************
	store i32************ %120, i32************* %187, align 4
	br label %112

188:
	%189 = bitcast i8* %108 to i32**************
	store i32************* %111, i32************** %189, align 4
	br label %103

190:
	%191 = bitcast i8* %99 to i32***************
	store i32************** %102, i32*************** %191, align 4
	br label %94

192:
	%193 = bitcast i8* %90 to i32****************
	store i32*************** %93, i32**************** %193, align 4
	br label %85

194:
	%195 = bitcast i8* %81 to i32*****************
	store i32**************** %84, i32***************** %195, align 4
	br label %76

196:
	%197 = bitcast i8* %72 to i32******************
	store i32***************** %75, i32****************** %197, align 4
	br label %67

198:
	%199 = bitcast i8* %63 to i32*******************
	store i32****************** %66, i32******************* %199, align 4
	br label %58

200:
	%201 = bitcast i8* %54 to i32********************
	store i32******************* %57, i32******************** %201, align 4
	br label %49

202:
	store i32******************** %48, i32********************* %12, align 4
	store i32 0, i32* %1, align 4
	br label %203

203:
	%204 = load i32, i32* %1, align 4
	ret i32 %204
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

