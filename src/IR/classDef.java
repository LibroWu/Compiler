package IR;

import java.util.ArrayList;
import java.util.HashMap;

public class classDef extends global {
    public String structName;
    public ArrayList<IRType> members = new ArrayList<>();
    public HashMap<String, IRTypeWithCounter> memberType = new HashMap();
    public int counter = 0;
}