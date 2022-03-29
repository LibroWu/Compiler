package IR;

import java.util.HashMap;

public class store extends user{
    public register target;
    public entity resource;
    public int align;
    public IRType resourceType;

    public store(entity resource,register target,IRType resourceType){
        this.resource = resource;
        this.target = target;
        this.align = resourceType.getAlign();
        this.resourceType = resourceType;
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(resource)) resource = ValReplace.get(resource);
    }
}
