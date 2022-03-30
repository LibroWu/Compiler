package IR;

import java.util.HashMap;

public class load extends user{
    public register rd,ptr;
    public IRType rsType;
    public int align;
    public entity recorder = null;

    public load(register rd,register ptr,IRType rsType){
        this.rd = rd;
        this.ptr = ptr;
        this.rsType = rsType;
        this.align = rsType.reducePtr().getAlign();
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (recorder!=null && ValReplace.containsKey(recorder)) recorder = ValReplace.get(recorder);
    }
}
