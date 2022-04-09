package IR;

import java.util.ArrayList;
import java.util.Set;
import java.util.HashSet;
public class funcDef extends globalUnit {

    public String funcId = null;
    public IRType returnType = null;
    public ArrayList<IRType> parameters = new ArrayList<>();
    public ArrayList<register> parameterRegs = new ArrayList<>();
    public ArrayList<alloca> allocas = new ArrayList<>();
    public HashSet<register> globalVariableUsed = new HashSet<>();
    public block rootBlock = null,returnBlock = null,entryBlock = null;
    public register retReg = null;

    public funcDef() {
    }

    public funcDef(String funcId, IRType returnType,ArrayList<IRType> parameters) {
        this.funcId = funcId;
        this.returnType = returnType;
        this.parameters = parameters;
    }

    public void push_back(alloca stmt) {
        allocas.add(stmt);
    }
}
