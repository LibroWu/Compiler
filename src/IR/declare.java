package IR;

import java.util.ArrayList;

public class declare extends globalUnit{
    public IRType retType;
    public ArrayList<IRType> parameters = new ArrayList<>();
    public String funcName;

    public declare(IRType retType,String funcName) {
        this.retType = retType;
        this.funcName = funcName;
    }
}
