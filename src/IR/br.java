package IR;

import java.util.HashMap;

public class br extends terminalStmt{
    //null if jump directly
    public register val;
    public block trueBranch,falseBranch;

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(val)) val = (register) ValReplace.get(val);
    }
    public br(register val,block trueBranch,block falseBranch){
        this.val = val;
        this.trueBranch = trueBranch;
        this.falseBranch = falseBranch;
    }
}
