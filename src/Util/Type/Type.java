package Util.Type;

import java.util.HashMap;

public class Type {

    public enum Types {INT_TYPE, BOOL_TYPE, VOID_TYPE, CLASS_TYPE, FUNC_TYPE, NULL, CONST_NULL}

    ;

    public Type(Types t) {
        typeType = t;
        switch (t) {
            case NULL -> name = "null";
            case INT_TYPE -> name = "int";
            case BOOL_TYPE -> name = "bool";
            case VOID_TYPE -> name = "void";
            case CONST_NULL -> name = "const_null";
        }
    }

    public Type(Type t) {
        dimension = t.dimension;
        typeType = t.typeType;
        name = t.name;
        isFunc = t.isFunc;
        isClass = t.isClass;
        assignable = t.assignable;
    }

    public Types typeType = null;
    public boolean isFunc = false, isClass = false;
    public boolean assignable = false;
    public int dimension = 0;
    public String name = null;
}
