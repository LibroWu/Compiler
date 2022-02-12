package Assembly;

import java.util.*;

public class AsmFunc {
    public AsmBlock rootBlock = null,tailBlock = null;
    public int stackLength = 0, registerCount = 0,allocCount=0,stackReserved,originalRegisterCount,calleeSavedCount,callSpilledCount=0;
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
