@a = global i32 10, align 4
@b = global i32 0, align 4
@c = global i32* null, align 4

define void @_global_var_init.0(){
	%1 = load i32, i32* @a, align 4
	%2 = load i32, i32* @a, align 4
	%3 = mul i32 %1, %2
	store i32 %3, i32* @b, align 4
	ret void 
}

define i32* @fff(){
	%1 = alloca i32*, align 4
	%2 = alloca i32*, align 4
	store i32* null, i32** %1, align 4
	%3 = load i32*, i32** %2, align 4
	store i32* %3, i32** %1, align 4
	%4 = load i32*, i32** %1, align 4
	ret i32* %4
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca i32, align 4
	store i32 0, i32* %1, align 4
	%3 = call i32 @getInt()
	store i32 %3, i32* %2, align 4
	%4 = load i32, i32* %2, align 4
	call void @printlnInt(i32 %4)
	%5 = load i32, i32* %2, align 4
	%6 = load i32, i32* %2, align 4
	%7 = mul i32 %5, %6
	call void @printlnInt(i32 %7)
	store i32 0, i32* %1, align 4
	%8 = load i32, i32* %1, align 4
	ret i32 %8
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
