package Util;

import Util.Type.*;
import Util.error.semanticError;

import java.util.HashMap;
import java.util.HashSet;

public class globalScope extends Scope {
    private HashSet<String> Keys = new HashSet<>();
    private HashMap<String, Type> types = new HashMap<>();
    private HashMap<String, funcType> funcTypes = new HashMap<>();

    public globalScope(Scope parentScope) {
        super(parentScope);
        Keys.add("int");
        Keys.add("bool");
        Keys.add("string");
        Keys.add("null");
        Keys.add("void");
        Keys.add("false");
        Keys.add("true");
        Keys.add("if");
        Keys.add("else");
        Keys.add("for");
        Keys.add("while");
        Keys.add("break");
        Keys.add("continue");
        Keys.add("return");
        Keys.add("new");
        Keys.add("class");
        Keys.add("this");
    }

    public void addFunction(String name, funcType t, position pos) {
        if (types.containsKey(name))
            throw new semanticError("name conflict with the class " + name, pos);
        if (funcTypes.containsKey(name))
            throw new semanticError("multiple definition of " + name, pos);
        funcTypes.put(name, t);
    }

    //check if the variable's name conflict with the class or Key
    public void nameConflict(String name, position pos) {
        if (types.containsKey(name)) throw new semanticError("name conflict with the class " + name, pos);
        if (Keys.contains(name)) throw new semanticError("name conflict with the Key " + name, pos);
        ;
    }

    public void addType(String name, Type t, position pos) {
        if (funcTypes.containsKey(name))
            throw new semanticError("name conflict with the function " + name, pos);
        if (types.containsKey(name))
            throw new semanticError("multiple definition of " + name, pos);
        types.put(name, t);
    }

    public Type getTypeFromName(String name, position pos) {
        if (types.containsKey(name)) return types.get(name);
        throw new semanticError("no such type: " + name, pos);
    }

    public Type getMemberTypeFromName(String type, String member, position pos) {
        if (types.containsKey(type)) {
            Type t = types.get(type);
            if (t.isClass) {
                if (((classType) t).members.containsKey(member))
                    return ((classType) t).members.get(member);
                else if (((classType) t).methods.containsKey(member))
                    return ((classType) t).methods.get(member);
                else throw new semanticError("no such member :" + member + " in class " + type, pos);
            } else throw new semanticError("no such class: " + type, pos);
        }
        throw new semanticError("no such type: " + type, pos);
    }

    public boolean hasFunction(String name) {
        return (funcTypes.containsKey(name));
    }

    public funcType getFunctionFromName(String name, position pos) {
        if (funcTypes.containsKey(name)) return funcTypes.get(name);
        throw new semanticError("no such function: " + name, pos);
    }
}
