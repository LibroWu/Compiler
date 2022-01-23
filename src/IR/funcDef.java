package IR;

import java.util.ArrayList;
import java.util.Set;
import java.util.HashSet;
public class funcDef extends globalUnit {

    private funcDef parentFunc = null;

    public String funcId = null;
    public IRType returnType = null;
    public ArrayList<IRType> parameters = new ArrayList<>();
    public ArrayList<register> parameterRegs = new ArrayList<>();
    public ArrayList<alloca> allocas = new ArrayList<>();
    public block rootBlock = null;
    public register retReg = null;

    public funcDef(funcDef parentFunc) {
        this.parentFunc = parentFunc;
    }

    public funcDef(funcDef parentFunc,String funcId, IRType returnType,ArrayList<IRType> parameters) {
        this.parentFunc = parentFunc;
        this.funcId = funcId;
        this.returnType = returnType;
        this.parameters = parameters;
    }

    public funcDef parentFunc(){
        return parentFunc;
    }

    public void push_back(alloca stmt) {
        allocas.add(stmt);
    }
}
