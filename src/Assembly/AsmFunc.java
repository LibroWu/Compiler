package Assembly;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class AsmFunc {
    public AsmBlock rootBlock = null;
    public int stackLength = 0, registerCount = 0,allocCount=0,stackReserved,originalRegisterCount;
    public String funcName;
    public List<AsmBlock> blockList = new LinkedList<>();

    public AsmFunc(String funcName){
        this.funcName = funcName;
    }

    @Override
    public String toString() {
        return funcName;
    }
}
