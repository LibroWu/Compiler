package Backend;

import IR.block;
import IR.program;
import IR.funcDef;
import IR.classDef;
import IR.globalVarDecl;
import IR.globalStringConstant;
import IR.declare;

public interface Pass {
    void visitBlock(block b);
    void visitProgram(program pg);
    void visitFuncDef(funcDef f);
    void visitClassDef(classDef c);
    void visitGlobalVarDecl(globalVarDecl gv);
    void visitGlobalStringConstant(globalStringConstant gs);
    void visitDeclare(declare dec);
}
