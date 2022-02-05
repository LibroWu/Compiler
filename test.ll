%struct.string = type { i32, i8* }

@.libro.str = constant [1 x i8] c"\00", align 1
@.libro.str.1 = constant [2 x i8] c"\0A\00", align 1
@.libro.str.2 = constant [1 x i8] c"\00", align 1
@.libro.str.3 = constant [3 x i8] c"-1\00", align 1
@.libro.str.4 = constant [2 x i8] c"0\00", align 1
@.libro.str.5 = constant [4 x i8] c"11h\00", align 1

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca %struct.string*, align 4
	%4 = alloca i32, align 4
	%5 = alloca i32, align 4
	%6 = alloca i32, align 4
	%7 = alloca %struct.string*, align 4
	%8 = alloca %struct.string*, align 4
	%9 = alloca i32, align 4
	%10 = alloca i32, align 4
	%11 = alloca i32, align 4
	%12 = alloca i32, align 4
	%13 = alloca %struct.string*, align 4
	%14 = alloca i32, align 4
	%15 = alloca i32, align 4
	%16 = alloca i32, align 4
	%17 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	store i32 0, i32* %2, align 4
	%18 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %19

19:
	%20 = load i32, i32* %2, align 4
	%21 = icmp slt i32 %20, 10
	br i1 %21, label %22, label %40

22:
	%23 = call i8* @myNew(i32 12)
	%24 = bitcast i8* %23 to %struct.string*
	%25 = getelementptr %struct.string, %struct.string* %24, i32 0, i32 0
	store i32 0, i32* %25, align 4
	%26 = bitcast [1 x i8]* @.libro.str to i8*
	%27 = getelementptr %struct.string, %struct.string* %24, i32 0, i32 1
	store i8* %26, i8** %27, align 4
	store %struct.string* %24, %struct.string** %3, align 4
	%28 = load %struct.string*, %struct.string** %3, align 4
	%29 = call i8* @myNew(i32 12)
	%30 = bitcast i8* %29 to %struct.string*
	%31 = getelementptr %struct.string, %struct.string* %30, i32 0, i32 0
	store i32 1, i32* %31, align 4
	%32 = bitcast [2 x i8]* @.libro.str.1 to i8*
	%33 = getelementptr %struct.string, %struct.string* %30, i32 0, i32 1
	store i8* %32, i8** %33, align 4
	%34 = call %struct.string* @_string_stringAppend(%struct.string* %28, %struct.string* %30)
	%35 = getelementptr %struct.string, %struct.string* %34, i32 0, i32 1
	%36 = load i8*, i8** %35, align 4
	call void @print(i8* %36)
	br label %37

37:
	%38 = load i32, i32* %2, align 4
	%39 = add i32 %38, 1
	store i32 %39, i32* %2, align 4
	br label %19

40:
	%41 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %42

42:
	%43 = load i32, i32* %2, align 4
	%44 = icmp slt i32 %43, 10
	br i1 %44, label %45, label %49

45:
	store i32 0, i32* %4, align 4
	br label %46

46:
	%47 = load i32, i32* %4, align 4
	%48 = add i32 %47, 1
	store i32 %48, i32* %4, align 4
	br label %42

49:
	%50 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %51

51:
	%52 = load i32, i32* %2, align 4
	%53 = icmp slt i32 %52, 10
	br i1 %53, label %54, label %67

54:
	%55 = load i32, i32* %2, align 4
	store i32 0, i32* %2, align 4
	br label %56

56:
	%57 = load i32, i32* %2, align 4
	%58 = icmp slt i32 %57, 10
	br i1 %58, label %59, label %63

59:
	store i32 0, i32* %5, align 4
	br label %60

60:
	%61 = load i32, i32* %5, align 4
	%62 = add i32 %61, 1
	store i32 %62, i32* %5, align 4
	br label %56

63:
	br label %64

64:
	%65 = load i32, i32* %2, align 4
	%66 = add i32 %65, 1
	store i32 %66, i32* %2, align 4
	br label %51

67:
	store i32 0, i32* %6, align 4
	%68 = load i32, i32* %2, align 4
	%69 = icmp eq i32 %68, 0
	br i1 %69, label %70, label %81

70:
	%71 = call i8* @myNew(i32 12)
	%72 = bitcast i8* %71 to %struct.string*
	%73 = getelementptr %struct.string, %struct.string* %72, i32 0, i32 0
	store i32 0, i32* %73, align 4
	%74 = bitcast [1 x i8]* @.libro.str.2 to i8*
	%75 = getelementptr %struct.string, %struct.string* %72, i32 0, i32 1
	store i8* %74, i8** %75, align 4
	store %struct.string* %72, %struct.string** %7, align 4
	%76 = load %struct.string*, %struct.string** %7, align 4
	%77 = load %struct.string*, %struct.string** %7, align 4
	%78 = call %struct.string* @_string_stringAppend(%struct.string* %76, %struct.string* %77)
	%79 = getelementptr %struct.string, %struct.string* %78, i32 0, i32 1
	%80 = load i8*, i8** %79, align 4
	call void @println(i8* %80)
	br label %94

81:
	%82 = call i8* @myNew(i32 12)
	%83 = bitcast i8* %82 to %struct.string*
	%84 = getelementptr %struct.string, %struct.string* %83, i32 0, i32 0
	store i32 2, i32* %84, align 4
	%85 = bitcast [3 x i8]* @.libro.str.3 to i8*
	%86 = getelementptr %struct.string, %struct.string* %83, i32 0, i32 1
	store i8* %85, i8** %86, align 4
	store %struct.string* %83, %struct.string** %8, align 4
	%87 = load %struct.string*, %struct.string** %8, align 4
	%88 = load %struct.string*, %struct.string** %8, align 4
	%89 = call %struct.string* @_string_stringAppend(%struct.string* %87, %struct.string* %88)
	%90 = call %struct.string* @getString()
	%91 = call %struct.string* @_string_stringAppend(%struct.string* %89, %struct.string* %90)
	%92 = getelementptr %struct.string, %struct.string* %91, i32 0, i32 1
	%93 = load i8*, i8** %92, align 4
	call void @println(i8* %93)
	br label %94

94:
	%95 = load i32, i32* %2, align 4
	%96 = icmp eq i32 %95, 0
	br i1 %96, label %97, label %98

97:
	store i32 0, i32* %9, align 4
	br label %108

98:
	%99 = load i32, i32* %2, align 4
	%100 = icmp eq i32 %99, 0
	br i1 %100, label %101, label %107

101:
	%102 = load i32, i32* %2, align 4
	%103 = icmp eq i32 %102, 0
	br i1 %103, label %104, label %105

104:
	store i32 0, i32* %10, align 4
	br label %106

105:
	store i32 0, i32* %11, align 4
	br label %106

106:
	br label %107

107:
	br label %108

108:
	store i32 0, i32* %12, align 4
	br label %109

109:
	%110 = load i32, i32* %2, align 4
	%111 = call %struct.string* @toString(i32 %110)
	%112 = call i8* @myNew(i32 12)
	%113 = bitcast i8* %112 to %struct.string*
	%114 = getelementptr %struct.string, %struct.string* %113, i32 0, i32 0
	store i32 1, i32* %114, align 4
	%115 = bitcast [2 x i8]* @.libro.str.4 to i8*
	%116 = getelementptr %struct.string, %struct.string* %113, i32 0, i32 1
	store i8* %115, i8** %116, align 4
	%117 = call i32 @_string_getStrcmp(%struct.string* %111, %struct.string* %113)
	%118 = icmp eq i32 %117, 0
	br i1 %118, label %119, label %127

119:
	%120 = call i8* @myNew(i32 12)
	%121 = bitcast i8* %120 to %struct.string*
	%122 = getelementptr %struct.string, %struct.string* %121, i32 0, i32 0
	store i32 3, i32* %122, align 4
	%123 = bitcast [4 x i8]* @.libro.str.5 to i8*
	%124 = getelementptr %struct.string, %struct.string* %121, i32 0, i32 1
	store i8* %123, i8** %124, align 4
	store %struct.string* %121, %struct.string** %13, align 4
	%125 = load %struct.string*, %struct.string** %13, align 4
	%126 = call i32 @_string_parseInt(%struct.string* %125)
	store i32 %126, i32* %14, align 4
	br label %109

127:
	br label %128

128:
	%129 = load i32, i32* %2, align 4
	%130 = icmp eq i32 %129, 0
	br i1 %130, label %131, label %132

131:
	store i32 0, i32* %15, align 4
	br label %128

132:
	br label %133

133:
	%134 = load i32, i32* %2, align 4
	%135 = icmp eq i32 %134, 0
	br i1 %135, label %136, label %142

136:
	br label %137

137:
	%138 = load i32, i32* %2, align 4
	%139 = icmp eq i32 %138, 0
	br i1 %139, label %140, label %141

140:
	store i32 0, i32* %16, align 4
	br label %137

141:
	br label %133

142:
	store i32 0, i32* %17, align 4
	store i32 0, i32* %1, align 4
	br label %143

143:
	%144 = load i32, i32* %1, align 4
	ret i32 %144
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

