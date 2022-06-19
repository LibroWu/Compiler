package IR;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class program {
    public ArrayList<funcDef> funcDefs = new ArrayList<>();
    public ArrayList<classDef> classDefs = new ArrayList<>();//useless in asm?
    public ArrayList<globalVarDecl> globalVarDecls = new ArrayList<>();
    public ArrayList<declare> declares = new ArrayList<>();//useless in asm
    public ArrayList<globalStringConstant> globalStringConstants = new ArrayList<>();

    public funcDef builtinFunc,mainFunc;

    public void push_back(funcDef gl) {
        funcDefs.add(gl);
    }

    public void push_back(classDef gl) {
        classDefs.add(gl);
    }

    public void push_back(globalVarDecl gl) {
        globalVarDecls.add(gl);
    }

    public void push_back(declare gl) {
        declares.add(gl);
    }

    public void push_back(globalStringConstant gl) {
        globalStringConstants.add(gl);
    }
}
