package IR;

import java.util.HashMap;
import java.util.LinkedList;

public class binary extends statement{
    @Override
    public void replace(HashMap<entity, entity> ValReplace) {
        if (ValReplace.containsKey(rs1)) rs1 = ValReplace.get(rs1);
        if (ValReplace.containsKey(rs2)) rs2 = ValReplace.get(rs2);
    }

    @Override
    public void init() {
        rd.uses = new LinkedList<>();
        rd.def = this;
    }

    @Override
    public void analyseUseDef() {
        if (rs1 instanceof register) {
            register rs = (register) rs1;
            if (rs.label==null)rs.uses.add(this);
        }
        if (rs2 instanceof register) {
            register rs = (register) rs2;
            if (rs.label==null)rs.uses.add(this);
        }
    }

    @Override
    public boolean isResConst() {
        return !(rs1 instanceof register || rs2 instanceof register);
    }

    @Override
    public void removeStmt(LinkedList<statement> W) {
        constant con,con1=(constant) rs1,con2=(constant) rs2;
        switch (op) {
            case ADD  : con = new constant(con1.getIntValue()+con2.getIntValue()); break;
            case SUB  : con = new constant(con1.getIntValue()-con2.getIntValue()); break;
            case MUL  : con = new constant(con1.getIntValue()*con2.getIntValue()); break;
            case SDIV :
                if (con2.getIntValue()==0) con = new constant(~(1<<31));
                else con = new constant(con1.getIntValue()/con2.getIntValue()); break;
            case MOD  :
                if (con2.getIntValue()==0) con = new constant(~(1<<31));
                else con = new constant(con1.getIntValue()%con2.getIntValue()); break;
            case AND  : con = new constant(con1.getIntValue()&con2.getIntValue()); break;
            case OR   : con = new constant(con1.getIntValue()|con2.getIntValue()); break;
            case XOR  : con = new constant(con1.getIntValue()^con2.getIntValue()); break;
            case ASHR : con = new constant(con1.getIntValue()>>con2.getIntValue()); break;
            case LSHR : con = new constant(con1.getIntValue()>>>con2.getIntValue()); break;
            case SHL  : con = new constant(con1.getIntValue()<<con2.getIntValue()); break;
            default   : con = null;
        }
        for (statement use : rd.uses) {
            statement stmt = use.replaceRegWithEntity(rd,con);
            if (!stmt.inWorklist) {
                stmt.inWorklist = true;
                W.push(stmt);
            }
        }
        parentBlock.delete_Statement(this);
    }

    @Override
    public statement replaceRegWithEntity(register rs, entity en) {
        if (rs1 == rs) rs1 = en;
        if (rs2 == rs) rs2 = en;
        return this;
    }

    @Override
    public void activatePropagate(LinkedList<statement> W) {
        if (rs1 instanceof register){
             register rs = (register) rs1;
             if (rs.def !=null && !rs.def.inWorklist) {
                 rs.def.inWorklist = true;
                 rs.def.isActivate = true;
                 W.add(rs.def);
             }
        }
        if (rs2 instanceof register){
            register rs = (register) rs2;
            if (rs.def !=null && !rs.def.inWorklist) {
                rs.def.inWorklist = true;
                rs.def.isActivate = true;
                W.add(rs.def);
            }
        }
    }

    public enum opTye {
        ADD,SUB,MUL,SDIV,MOD,AND,OR,XOR,ASHR,LSHR,SHL
    }

    public opTye op;
    public entity rs1,rs2;
    public register rd;
    public IRType irType;

    public binary(opTye op,IRType irType,register rd,entity rs1,entity rs2){
        this.op  = op;
        this.rd  = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.irType = irType;
    }
}
