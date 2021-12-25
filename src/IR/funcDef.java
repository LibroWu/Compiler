package IR;

import java.util.ArrayList;
import java.util.Set;
import java.util.HashSet;
public class funcDef extends global{

    private funcDef parentFunc = null;

    public String funcId = null;
    public IRType returnType = null;
    public ArrayList<IRType> parameters = new ArrayList<>();
    public ArrayList<register> parameterRegs = new ArrayList<>();
    public ArrayList<alloca> allocas = new ArrayList<>();
    public block rootBlock = new block();
    public Set<block> blocks = new HashSet<>();
    public register retReg = null;

    public funcDef(funcDef parentFunc) {
        this.parentFunc = parentFunc;
        blocks.add(rootBlock);
    }

    public funcDef parentFunc(){
        return parentFunc;
    }

    public void push_back(alloca stmt) {
        allocas.add(stmt);
    }
}
