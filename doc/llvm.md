## LLVM

### 基础命令

```shell
# 生成可执行文件
$ clang main.c -o main
$ clang main.ll -o main
# 查看编译的过程
$ clang -ccc-print-phases main.c

# 生成 tokens
$ clang -E -Xclang -dump-tokens main.c
# 生成语法树
$ clang -fsyntax-only -Xclang -ast-dump main.c
# 生成 llvm ir（不开优化 -o0）-S 生成可视ir(.ll) -c生成二进制ir(.bc)
$ clang -S -emit-llvm main.c -o main.ll -O0

# 生成汇编
$ clang -S main.c -o main.s
# 生成目标文件
$ clang -c main.c -o main.o

# bc <-> ll
$ llvm-as test.ll # ll -> bc
$ llvm-dis test.bc # bc -> ll
```

#### llvm-link

```shell
# 1. 分别导出 libsysy 和 main.c 对应的的 .ll 文件
$ clang -emit-llvm -S libsysy.c -o lib.ll
$ clang -emit-llvm -S main.c -o main.ll

# 2. 使用 llvm-link 将两个文件链接，生成新的 IR 文件
$ llvm-link main.ll lib.ll  -o out.ll

# 3. 用 lli 解释运行
$ lli out.ll
19260817
```

### 其他有用的工具

- **llc**：可以将 `.ll` 形式的 IR 编译成指定体系结构的汇编
- **opt**：LLVM 模块化的优化器和分析器。它以 LLVM 源文件为输入，对其运行指定的优化或分析，然后生成优化文件或输出分析结果。

#### CFG可视化

```shell
#使用opt生成 .main.dot 注意是隐藏文件
$ opt -dot-cfg for.ll
#Graphviz 将 .main.dot 转为 .png
$ dot .main.dot -Tpng -o for.png
```

## O0下的IR generator

#### type system

* **global**
  * syntax:`@<global_value_name> = global <type> ([initialise list] | {initialise list})?`
* **local**
* **array**
  * `[<len> x <type>]`

#### basic statement

* **alloca**
  * syntax：`<res> = alloca <type>, align <num>`
  * 在`stack`中申请一块空间，返回指针`type*`。
  * **align**

* **store**
  * syntax：`store <type> <value>(%v|constant), <type*> ptr, align <num>`
* **load**
  * syntax：`<res> = load <type>, <type*> ptr, align <num>`
* **ret**
  * syntax：`ret <type> <value>(%v|constant)`
  * 是exit（每个`basic block`都需要有一个出口）
* **calculation**
  * `<res> = (add|sub|mul|sdiv|shl|shr) (nsw|nuw)? <type> <opValue1>,<type> <opValue2>`

#### struct & array

* **类的声明**
  * `%<type_name> = type { <ty1>, <ty2>, ...}`
  * 匿名struct`{<ty1>,<ty2>,...}`
* **getelementptr**
  * syntax:`<res> = getelement (inbounds <type>)? <ptr_type>, <iN> <indice1>,<iN> <indice2>`

#### if

* **label**
* **br**
  * syntax:`br label <label>` or `br i1 <value>. label <labelTrue>, label <labelFalse>`
  * 是exit（每个`basic block`都需要有一个出口）
* 用`store/load`实现ssa
* 用`phi`实现ssa (**todo**)

#### for,while

#### function

#### others

* 在字符串中，转义字符必须以`\xy`的形式出现，其中`xy`是这个转义字符的ASCII码。

* 符号扩展

  ```
  %zext_integer = zext i8 -1 to i32 ; extend 8 bit 0xFF to 32 bit 0x000000FF, get 255
  %sext_integer = sext i8 -1 to i32 ; extend 8 bit 0xFF to 32 bit 0xFFFFFFFF, get -1
  ```