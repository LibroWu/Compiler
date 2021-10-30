package Util.Type;

import java.util.ArrayList;
import java.util.HashMap;

public class funcType extends Type{
    public Type returnType = null;
    public ArrayList<Type> parameter = null;

    public funcType(String name,Type returnType){
        super(Types.FUNC_TYPE);
        this.name = name;
        this.returnType = returnType;
        isFunc = true;
    }

    public funcType(Types t) {
        super(t);
        isFunc = true;
    }
}
