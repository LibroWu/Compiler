package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class alloca extends statement{
    public register rd;
    public int align;
    public IRType irType;
    public LinkedList<user> users;

    public alloca(register rd,IRType irType){
        this.rd = rd;
        this.align = irType.getAlign();
        this.irType = irType;
        this.users = new LinkedList<>();
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {

    }
}