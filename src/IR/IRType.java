package IR;

import Util.Type.*;

import java.util.ArrayList;

public class IRType {
    public int iNum = 0;
    public int ptrNum = 0;
    public int arrayLen = 0;
    public classDef cDef = null;
    public IRType arraySubIR = null;
    public boolean isVoid = false,isString = false;
    public IRType getPtr(){
        IRType irType =  new IRType(this.iNum,this.ptrNum+1,this.arrayLen,this.cDef,this.arraySubIR);
        irType.isVoid = this.isVoid;
        irType.isString = this.isString;
        return irType;
    }

    public IRType reducePtr(){
        IRType irType =  new IRType(this.iNum,this.ptrNum-1,this.arrayLen,this.cDef,this.arraySubIR);
        irType.isVoid = this.isVoid;
        irType.isString = this.isString;
        return irType;
    }

    public IRType(IRType irType) {
        iNum = irType.iNum;
        ptrNum = irType.ptrNum;
        arrayLen = irType.arrayLen;
        cDef = irType.cDef;
        isVoid = irType.isVoid;
        isString = irType.isString;
        arraySubIR = irType.arraySubIR;
    }

    public IRType(){
        iNum = 32;
    }

    public IRType(int iNum){
        this.iNum = iNum;
    }

    public IRType(int iNum,int ptrNum,int arrayLen,classDef cDef,IRType arraySubIR) {
        this.iNum = iNum;
        this.ptrNum = ptrNum;
        this.arrayLen = arrayLen;
        this.cDef = cDef;
        this.arraySubIR = arraySubIR;
    }

    public IRType(int iNum,int ptrNum,int arrayLen,classDef cDef) {
        this.iNum = iNum;
        this.ptrNum = ptrNum;
        this.arrayLen = arrayLen;
        this.cDef = cDef;
        this.arraySubIR = arraySubIR;
    }

    public IRType(int ptrNum,int arrayLen,IRType arraySubIR) {
        this.ptrNum = ptrNum;
        this.arrayLen = arrayLen;
        this.arraySubIR = arraySubIR;
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
        if (ptrNum>0 || arrayLen>0) return 4;
        if (cDef!=null) return 4;
        return iNum/8;
    }

    public int getSize(){
        if (ptrNum>0 || arrayLen>0) return 4;
        if (cDef!=null) return cDef.getSize();
        return iNum/8;
    }

    public boolean equal(IRType another) {
        return  (ptrNum== another.ptrNum && arrayLen == another.arrayLen && iNum==another.iNum);
    }
}
