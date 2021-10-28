package Util;

import java.util.HashMap;

public class Type {
    public boolean isInt = false, isBool = false,isVoid = false, isString = false;
    public String type = null;
    public int arrayDimension = 0;
    public HashMap<String, Type> members = null;
}
