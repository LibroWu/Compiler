package Backend;

import IR.*;

import java.io.PrintStream;
import java.util.HashMap;

public class IRPrinter implements Pass{
    private PrintStream out;

    private int Cnt = 0;
    private HashMap<block, Integer> blockIndex = new HashMap<>();
    private HashMap<register, Integer> regIndex = new HashMap<>();

    public IRPrinter(PrintStream out) {
        this.out = out;
    }

    @Override
    public void visitBlock(block b) {
        out.println(getBlockName(b));
        b.stmts().forEach(this::print);
        b.successors().forEach(this::visitBlock);
    }

    @Override
    public void visitFn(program f) {
        visitBlock(f.rootBlock);
    }

    private String getBlockName(block b) {
        if (blockIndex.containsKey(b)) return blockIndex.get(b) + ":";
        else {
            blockIndex.put(b,Cnt++);
            return (Cnt-1)+":";
        }
    }

    private String getRegName(register r) {
        if (regIndex.containsKey(r)) return "%" + regIndex.get(r);
        else {
            regIndex.put(r,Cnt++);
            return "%" + (Cnt-1);
        }
    }

    private String getEntityString(entity e) {
        if (e instanceof register) return getRegName((register) e);
        else {
            constant constE = (constant) e;
            if (constE.genre== constant.Genre.INT) return constE.getIntValue() + "";
            else if (constE.genre == constant.Genre.STRING) return constE.getStringValue();
            else return "void";
        }
    }

    private void print(statement s){
        if (s instanceof alloca) {

        } else if (s instanceof binary) {

        } else if (s instanceof br) {

        } else if (s instanceof call) {

        } else if (s instanceof constStmt) {

        } else if (s instanceof convertOp) {

        } else if (s instanceof declare) {

        } else if (s instanceof getelementptr) {

        } else if (s instanceof icmp) {

        } else if (s instanceof load) {

        } else if (s instanceof phi) {

        } else if (s instanceof ret) {

        } else if (s instanceof store) {

        }
    }
}
