package IR;

import Util.Type.*;

public class IRType {
    public int iNum = 0;
    public int ptrNum = 0;
    public int arrayLen = 0;
    public classDef cDef = null;
    public boolean isVoid = false;

    public IRType getPtr(){
        return new IRType(this.iNum,this.ptrNum+1,this.arrayLen,this.cDef);
    }

    public IRType(){
        iNum = 32;
    }

    public IRType(int iNum){
        this.iNum = iNum;
    }

    public IRType(int iNum,int ptrNum,int arrayLen,classDef cDef) {
        this.iNum = iNum;
        this.ptrNum = ptrNum;
        this.arrayLen = arrayLen;
        this.cDef = cDef;
    }

    public IRType(Type t){
        iNum = 32;
    }
}
