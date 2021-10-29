package Util.Type;

import java.util.HashMap;

public class Type {

    public enum Types {INT_TYPE,BOOL_TYPE,VOID_TYPE,CLASS_TYPE,FUNC_TYPE,NULL};
    public Type(Types t){
        typeType = t;
    }

    public Types typeType = null;
    public int dimension = 0;
    public String name = null;
}
