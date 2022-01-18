package IR;

import java.util.ArrayList;
import java.util.HashMap;

public class classDef extends globalUnit {
    public String structName;
    public ArrayList<IRType> members = new ArrayList<>();
    public HashMap<String, IRTypeWithCounter> memberType = new HashMap();
    public int counter = 0,size=0,align=1;

    public void addMember(IRType irType,String Identifier){
        members.add(irType);
        IRTypeWithCounter irTypeWithCounter = new IRTypeWithCounter();
        irTypeWithCounter.counter = counter++;
        irTypeWithCounter.irType  = new IRType(irType);
        irTypeWithCounter.irType.ptrNum ++;
        memberType.put(Identifier,irTypeWithCounter);
    }
}