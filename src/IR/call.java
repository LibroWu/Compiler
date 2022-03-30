package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class call extends statement{
    public register rd;
    public IRType rdType;
    public String funcName;
    public LinkedList<entityTypePair> parameters = new LinkedList<>();

    public call(register rd,IRType rdType,String funcName){
        this.rd = rd;
        this.rdType = rdType;
        this.funcName = funcName;
    }

    public void push_back(entityTypePair para){
        parameters.add(para);
    }

    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        for (entityTypePair parameter : parameters) {
            if (ValReplace.containsKey(parameter.en)) parameter.en = ValReplace.get(parameter.en);
        }
    }
}
