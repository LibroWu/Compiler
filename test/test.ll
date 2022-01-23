%struct.strA = type { i32, %struct.strB* }
%struct.strB = type { %struct.strA*, i8 }

@a = global i32 10, align 4
@b = global i32 0, align 4
@c = global i32* null, align 8

@.libro.str = constant [4 x i8] c"%c\0A\00", align 1

define void @_global_var_init.0(){
	%1 = load i32, i32* @a, align 8
	%2 = load i32, i32* @a, align 8
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
	%5 = call i32 @_strA_fffff(%struct.strA* %4)
	%6 = load %struct.strA*, %struct.strA** %2, align 8
	%7 = getelementptr %struct.strA, %struct.strA* %6, i64 0, i32 1
	%8 = load %struct.strB*, %struct.strB** %7, align 8
	%9 = getelementptr %struct.strB, %struct.strB* %8, i64 0, i32 0
	%10 = load %struct.strA*, %struct.strA** %9, align 8
	store %struct.strA* %10, %struct.strA** %3, align 8
	%11 = load %struct.strA*, %struct.strA** %3, align 8
	ret %struct.strA* %11
}

define i32 @_strA_fffff(%struct.strA* %0){
	%2 = alloca %struct.strA*, align 8
	%3 = alloca i32, align 4
	store %struct.strA* %0, %struct.strA** %2, align 8
	store i32 0, i32* %3, align 4
	store i32 1, i32* %3, align 4
	%4 = load i32, i32* %3, align 8
	ret i32 %4
}

define void @_strA_strA(%struct.strA* %0){
	%2 = alloca %struct.strA*, align 8
	store %struct.strA* %0, %struct.strA** %2, align 8
	%3 = load %struct.strA*, %struct.strA** %2, align 8
	%4 = getelementptr %struct.strA, %struct.strA* %3, i64 0, i32 0
	%5 = load i32, i32* %4, align 8
	store i32 10, i32* %4, align 4
	ret void
}

define i32 @main(){
	%1 = alloca i32, align 4
	%2 = alloca %struct.strA*, align 8
	store i32 0, i32* %1, align 4
	%3 = load %struct.strA*, %struct.strA** %2, align 8
	%4 = call i32 @_strA_fffff(%struct.strA* %3)
	%5 = bitcast [4 x i8]* @.libro.str to i8*
	call void @println(i8* %5)
	store i32 0, i32* %1, align 4
	%6 = load i32, i32* %1, align 8
	ret i32 %6
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

