package Assembly;

import java.util.*;

public class AsmFunc {
    public AsmBlock rootBlock = null;
    public int stackLength = 0, registerCount = 0,allocCount=0,stackReserved,originalRegisterCount,calleeSavedCount;
    public String funcName;
    public List<AsmBlock> blockList = new LinkedList<>();
    public BitSet calleeSavedUsed;

    public AsmFunc(String funcName){
        this.funcName = funcName;
    }

    @Override
    public String toString() {
        return funcName;
    }
}
