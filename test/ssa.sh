opt -mem2reg test.ll -o ssa.ll
llvm-dis ssa.ll -o ssa.ll
