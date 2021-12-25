package IR;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class program {
    public ArrayList<funcDef> funcDefs = new ArrayList<>();
    public ArrayList<classDef> classDefs = new ArrayList<>();
    public ArrayList<globalVarDecl> globalVarDecls = new ArrayList<>();

    public funcDef mainFunc = null;

    public void push_back(funcDef gl) {
        funcDefs.add(gl);
    }

    public void push_back(classDef gl) {
        classDefs.add(gl);
    }

    public void push_back(globalVarDecl gl) {
        globalVarDecls.add(gl);
    }
}
