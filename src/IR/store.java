package IR;

public class store extends statement{
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
}
