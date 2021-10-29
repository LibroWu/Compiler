package Util.Type;

import java.util.HashMap;

public class Type {

    public enum Types {INT_TYPE,BOOL_TYPE,VOID_TYPE,CLASS_TYPE,FUNC_TYPE,NULL};
    public Type(Types t){
        typeType = t;
        switch (t) {
            case NULL -> name="NULL";
            case INT_TYPE -> name = "Int";
            case BOOL_TYPE -> name = "bool";
            case VOID_TYPE -> name = "void";
        }
    }

    public Type(Type t){
        dimension = t.dimension;
        typeType = t.typeType;
        name = t.name;
    }
    public Types typeType = null;
    public int dimension = 0;
    public String name = null;
}
