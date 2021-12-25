package Backend;

import IR.block;
import IR.program;
import IR.funcDef;
import IR.classDef;
import IR.globalVarDecl;

public interface Pass {
    void visitBlock(block b);
    void visitProgram(program pg);
    void visitFuncDef(funcDef f);
    void visitClassDef(classDef f);
    void visitGlobalVarDecl(globalVarDecl gv);
}
