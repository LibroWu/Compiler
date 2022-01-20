%struct.strA = type { i32, %struct.strB* }
%struct.strB = type { %struct.strA*, i8 }

@a = global i32 10, align 4
@b = global i32 0, align 4
@c = global i32* null, align 8

define void @_global_var_init.0(){
	%1 = load i32, i32* @a, align 4
	%2 = load i32, i32* @a, align 4
	%3 = mul i32 %1, %2
	store i32 %3, i32* @b, align 4
	ret void
}

define %struct.strA* @_strA_getAofB(%struct.strA* %0){
	%2 = alloca %struct.strA*, align 8
	%3 = alloca %struct.strA*, align 8
	store %struct.strA* %0, %struct.strA** %2, align 8
	store %struct.strA* null, %struct.strA** %3, align 8
	%4 = load %struct.strA*, %struct.strA** %2, align 8
	%5 = getelementptr %struct.strA, %struct.strA* %4, i64 0, i32 1
	%6 = load %struct.strB*, %struct.strB** %5, align 8
	%7 = getelementptr %struct.strB, %struct.strB* %6, i64 0, i32 0
	%8 = load %struct.strA*, %struct.strA** %7, align 8
	store %struct.strA* %8, %struct.strA** %3, align 8
	%9 = load %struct.strA*, %struct.strA** %3, align 8
	ret %struct.strA* %9
}

define void @_strA_strA(%struct.strA* %0){
	%2 = alloca %struct.strA*, align 8
	store %struct.strA* %0, %struct.strA** %2, align 8
	%3 = load %struct.strA*, %struct.strA** %2, align 8
	%4 = getelementptr %struct.strA, %struct.strA* %3, i64 0, i32 0
	%5 = load i32, i32* %4, align 4
	store i32 10, i32* %4, align 4
	ret void
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	%3 = alloca i8, align 1
	%4 = alloca i32*, align 8
	store i32 0, i32* %1, align 4
	%5 = call i32 @getInt()
	store i32 %5, i32* %2, align 4
	%6 = load i32, i32* %2, align 4
	call void @printlnInt(i32 %6)
	%7 = load i32, i32* %2, align 4
	%8 = load i32, i32* %2, align 4
	%9 = mul i32 %7, %8
	call void @printlnInt(i32 %9)
	%10 = load i8, i8* %3, align 1
	%11 = sext i1 0 to i8
	store i8 %11, i8* %3, align 1
	%12 = call i32* @fff()
	store i32* %12, i32** %4, align 8
	store i32 0, i32* %1, align 4
	%13 = load i32, i32* %1, align 4
	ret i32 %13
}

define i32* @fff(){
	%1 = alloca i32*, align 8
	%2 = alloca i32*, align 8
	%3 = alloca i32**, align 8
	%4 = alloca i64, align 8;for new loop
	%5 = alloca i8, align 1
	%6 = alloca %struct.strA*, align 8
	store i32* null, i32** %1, align 8
	%7 = call i8* @myNew(i64 40)
	%8 = bitcast i8* %7 to i32*
	%9 = load i32*, i32** %2, align 8
	store i32* %8, i32** %2, align 8
	%10 = load i32**, i32*** %3, align 8
	%11 = getelementptr i32*, i32** %10, i64 1
	%12 = load i32*, i32** %11, align 8
	%13 = getelementptr i32, i32* %12, i64 2
	%14 = load i32, i32* %13, align 4
	%15 = call i8* @myNew(i64 40)
	%16 = bitcast i8* %15 to i32**
	store i64 -1, i64* %4, align 8
	br label %17

17:
	%18 = load i64, i64* %4, align 8
	%19 = add i64 %18, 1
	store i64 %19, i64* %4, align 8
	%20 = icmp slt i64 %18, 5
	br i1 %20, label %21, label %25

21:
	%22 = getelementptr i32*, i32** %16, i64 %18
	%23 = call i8* @myNew(i64 24)
	%24 = bitcast i8* %23 to i32*
	store i32* %24, i32** %22, align 8
	br label %17

25:
	%26 = load i32**, i32*** %3, align 8
	store i32** %16, i32*** %3, align 8
	%27 = load i32**, i32*** %3, align 8
	%28 = getelementptr i32*, i32** %27, i64 2
	%29 = load i32*, i32** %28, align 8
	%30 = getelementptr i32, i32* %29, i64 3
	%31 = load i32, i32* %30, align 4
	store i32 10, i32* %30, align 4
	%32 = load i32**, i32*** %3, align 8
	%33 = getelementptr i32*, i32** %32, i64 2
	%34 = load i32*, i32** %33, align 8
	%35 = getelementptr i32, i32* %34, i64 3
	%36 = load i32, i32* %35, align 4
	call void @printlnInt(i32 %36)
	%37 = load i32**, i32*** %3, align 8
	%38 = getelementptr i32*, i32** %37, i64 2
	%39 = load i32*, i32** %38, align 8
	%40 = getelementptr i32, i32* %39, i64 4
	%41 = load i32, i32* %40, align 4
	call void @printlnInt(i32 %41)
	store i8 0, i8* %5, align 1
	%42 = call i8* @myNew(i64 16)
	%43 = bitcast i8* %42 to %struct.strA*
	store %struct.strA* %43, %struct.strA** %6, align 8
	%44 = load i32*, i32** %2, align 8
	store i32* %44, i32** %1, align 8
	%45 = load i32*, i32** %1, align 8
	ret i32* %45
}

define void @_GLOBAL_(){
	call void @_global_var_init.0()
	ret void
}


declare void @toString(i32)
declare void @print(i8*)
declare void @println(i8*)
declare void @printInt(i32)
declare void @printlnInt(i32)
declare i32 @getInt()
declare i8* @getString()
declare i8* @myNew(i64)
