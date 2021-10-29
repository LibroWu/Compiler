package Util.Type;

import java.util.HashMap;

public class classType extends Type {
    public HashMap<String, Type> members = new HashMap<>();
    public HashMap<String, funcType> methods = new HashMap<>();

    public classType(Types t) {
        super(t);
    }

    public void defineMember(String name, Type t) {
        members.put(name, t);
    }

    public void defineMethod(String name, funcType t) {
        methods.put(name, t);
    }
}
