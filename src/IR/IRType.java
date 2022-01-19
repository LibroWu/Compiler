package IR;

import Util.Type.*;

import java.util.ArrayList;

public class IRType {
    public int iNum = 0;
    public int ptrNum = 0;
    public int arrayLen = 0;
    public classDef cDef = null;
    public boolean isVoid = false;
    public IRType getPtr(){
        return new IRType(this.iNum,this.ptrNum+1,this.arrayLen,this.cDef);
    }

    public IRType(IRType irType) {
        iNum = irType.iNum;
        ptrNum = irType.ptrNum;
        arrayLen = irType.arrayLen;
        cDef = irType.cDef;
        isVoid = irType.isVoid;
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
        if (t.isClass) {

        } else {
            if (t.typeType== Type.Types.INT_TYPE) iNum = 32;
            else if (t.typeType == Type.Types.BOOL_TYPE) iNum = 8;
            else if (t.typeType== Type.Types.VOID_TYPE||t.typeType== Type.Types.NULL) isVoid = true;
            else iNum =32;
            ptrNum = t.dimension;
        }
    }

    public IRType(classDef cDef,int ptrNum,int arrayLen) {
        this.cDef = cDef;
        this.ptrNum = ptrNum;
        this.arrayLen = arrayLen;
    }

    public int getAlign(){
        if (ptrNum>0 || arrayLen>0) return 8;
        if (cDef!=null) return 8;
        return iNum/8;
    }

    public long getSize(){
        if (ptrNum>0 || arrayLen>0) return 8;
        if (cDef!=null) return cDef.getSize();
        return iNum/8;
    }
}
