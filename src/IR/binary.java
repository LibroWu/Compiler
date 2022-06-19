package IR;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class binary extends statement{
    // for liveness analysis
    @Override
    public void fillSet() {
        if (rs1 instanceof register) use.add((register) rs1);
        if (rs2 instanceof register) use.add((register) rs2);
        def.add(rd);
    }

    @Override
    public void calcInst() {
        liveOut = new HashSet<>();
        if (next!=null) {
            liveOut.addAll(next.liveIn);
        }
        liveIn = new HashSet<>(liveOut);
        liveIn.removeAll(def);
        liveIn.addAll(use);
    }

    @Override
    public boolean check() {
        return !liveOut.contains(rd);
    }

    @Override
    public register getReg() {
        return rd;
    }

    //
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
        boolean flag = false;
        if (rs1 == rs) {
            rs1 = en;
            flag = true;
        }
        if (rs2 == rs) {
            rs2 = en;
            flag = true;
        }
        if (flag && en instanceof register) ((register) en).uses.add(this);
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

    @Override
    public statement clone(HashMap<register, entity> ValReplace) {
        register shdRd = new register();
        ValReplace.put(rd,shdRd);
        entity shdRs1 = rs1,shdRs2 = rs2;
        if (rs1 instanceof register) {
            if (!ValReplace.containsKey(rs1))
                throw new RuntimeException("Error");
            shdRs1 = ValReplace.get(rs1);
        }
        if (rs2 instanceof register) shdRs2 = ValReplace.get(rs2);
        return new binary(op,irType,shdRd,shdRs1,shdRs2);
    }

    @Override
    public boolean isLoopInvariant(HashSet<block> loop, HashSet<register> live) {
        // avoid side effect like "divide by zero"
        if (op==opType.MOD || op==opType.SDIV) return false;
        if (!liveOut.contains(rd)) return false;
        boolean check1,check2;
        if (rs1 instanceof constant) {
            check1 = true;
        } else {
            register rs = (register) rs1;
            check1 = (rs.def==null) || !(loop.contains(rs.def.parentBlock)) || rs.isLoopInvariant;
        }
        if (!check1) return false;
        if (rs2 instanceof constant) {
            check2 = true;
        } else {
            register rs = (register) rs2;
            check2 = (rs.def==null) || !(loop.contains(rs.def.parentBlock)) || rs.isLoopInvariant;
        }
        return check2;
    }

    @Override
    public void loopInvariantDelivery(LinkedList<statement> W, LinkedList<statement> promotableStatements, HashSet<block> loop, HashSet<register> live) {
        rd.isLoopInvariant = true;
        for (statement use : rd.uses) {
            if (use.isLoopInvariant(loop,liveOut)) {
                W.add(use);
                promotableStatements.add(use);
            }
        }
    }

    @Override
    public boolean execute(HashMap<register, Integer> vrMap, HashMap<register, Integer> globalVars, block fromBlock, byte[] bytes) {
        int r1,r2,res;
        if (rs1 instanceof register) r1 = vrMap.get(rs1);
        else r1 = ((constant) rs1).getValue();
        if (rs2 instanceof register) r2 = vrMap.get(rs2);
        else r2 = ((constant) rs2).getValue();
        switch (op) {
            case ADD  : res=r1+r2; break;
            case SUB  : res=r1-r2; break;
            case MUL  : res=r1*r2; break;
            case SDIV :
                if (r2==0) res = ~(1<<31);
                else res = r1/r2; break;
            case MOD  :
                if (r2==0) res = ~(1<<31);
                else res = r1%r2; break;
            case AND  : res = r1&r2; break;
            case OR   : res = r1|r2; break;
            case XOR  : res = r1^r2; break;
            case ASHR : res = r1>>r2; break;
            case LSHR : res = r1>>>r2; break;
            case SHL  : res = r1<<r2; break;
            default   : res = 0;
        }
        vrMap.put(rd,res);
        return false;
    }

    public enum opType {
        ADD,SUB,MUL,SDIV,MOD,AND,OR,XOR,ASHR,LSHR,SHL
    }

    public opType op;
    public entity rs1,rs2;
    public register rd;
    public IRType irType;

    public binary(opType op, IRType irType, register rd, entity rs1, entity rs2){
        this.op  = op;
        this.rd  = rd;
        this.rs1 = rs1;
        this.rs2 = rs2;
        this.irType = irType;
    }
}
