package Util.Type;

import java.util.HashMap;

public class classType extends Type {
    public HashMap<String, Type> members = new HashMap<>();
    public HashMap<String, funcType> methods = new HashMap<>();
    //public HashMap<String, regTypePair> entities = new HashMap<>();

    public classType(Types t) {
        super(t);
        isClass = true;
    }
}
