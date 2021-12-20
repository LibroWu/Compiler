package Backend;

import IR.block;
import IR.program;
public interface Pass {
    void visitBlock(block b);
    void visitFn(program f);
}
