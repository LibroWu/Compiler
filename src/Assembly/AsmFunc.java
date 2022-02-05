package Assembly;

import java.util.HashSet;
import java.util.Set;

public class AsmFunc {
    public AsmBlock rootBlock = null;
    public int stackLength = 0;
    public String funcName;

    public AsmFunc(String funcName){
        this.funcName = funcName;
    }

    @Override
    public String toString() {
        return funcName;
    }
}
