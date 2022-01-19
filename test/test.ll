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
	%5 = getelementptr %struct.strA, %struct.strA* %4, i32 0, i32 1
	%6 = getelementptr %struct.strB, %struct.strB* %5, i32 0, i32 0
	store %struct.strA* %8, %struct.strA** %3, align 8
	%7 = load %struct.strA*, %struct.strA** %3, align 8
	ret %struct.strA* %7
}

define void @_strA_strA(%struct.strA* %0){
	%2 = alloca %struct.strA*, align 8
	store %struct.strA* %0, %struct.strA** %2, align 8
	%3 = load %struct.strA*, %struct.strA** %2, align 8
	%4 = getelementptr %struct.strA, %struct.strA* %3, i32 0, i32 0
	store i32 10, i32* %4, align 4
	ret void null
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
	%4 = alloca i32, align 4;for new loop
	%5 = alloca i8, align 1
	%6 = alloca %struct.strA*, align 8
	store i32* null, i32** %1, align 8
	%7 = call i8* @myNew(i64 40)
	%8 = bitcast i8* %7 to i32*
	%9 = load i32*, i32** %2, align 8
	store i32* %8, i32** %2, align 8
	%10 = load i32**, i32*** %3, align 8
	%11 = getelementptr i32, i32** %10, i32 1, i32 0
	%12 = getelementptr i32, i32* %11, i32 2, i32 0
	%13 = call i8* @myNew(i64 40)
	%14 = bitcast i8* %13 to i32**
	store i32 0, i32* %4, align 4
	br label %15

15:
	%16 = load i32, i32* %4, align 4
	%17 = icmp slt i32 %16, 5
	br i1 %17, label %27, label %21

18:
	%19 = load i32, i32* %4, align 4
	%20 = add i32 %19, 1
	store i32 %20, i32* %4, align 4
	br label %15

21:
	%22 = load i32**, i32*** %3, align 8
	store i32** %14, i32*** %3, align 8
	store i8 0, i8* %5, align 1
	%23 = call i8* @myNew(i64 16)
	%24 = bitcast i8* %23 to %struct.strA*
	store %struct.strA* %24, %struct.strA** %6, align 8
	%25 = load i32*, i32** %2, align 8
	store i32* %25, i32** %1, align 8
	%26 = load i32*, i32** %1, align 8
	ret i32* %26
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
