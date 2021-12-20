package IR;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class program {
    public ArrayList<global> globals = new ArrayList<>();
    public funcDef mainFunc = null;

    public void push_back(global gl) {
        globals.add(gl);
    }
}
