package IR;

import java.util.ArrayList;
import java.util.Set;
import java.util.HashSet;
public class funcDef extends global{

    public String funcId;
    public IRType returnType;
    public ArrayList<IRType> parameters = null;
    public block rootBlock = new block();
    public Set<block> blocks = new HashSet<>();
    public funcDef parentFunc = null;
    public funcDef(funcDef parentFunc) {
        this.parentFunc = parentFunc;
        blocks.add(rootBlock);
    }
}
