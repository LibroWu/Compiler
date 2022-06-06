package Backend.Optimizer;

import IR.*;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

public class ExpressionEliminatePass {
    private program pg;

    private LinkedList<statement> getWorklist(funcDef f) {
        for (register parameterReg : f.parameterRegs) {
            parameterReg.uses = new LinkedList<>();
        }
        LinkedList<statement> W = new LinkedList<>(f.allocas);
        for (IR.alloca alloca : f.allocas) {
            alloca.init();
        }
        LinkedList<block> bfsQue = new LinkedList<>();
        HashSet<block> blockVisited = new HashSet<>();
        bfsQue.add(f.rootBlock);
        while (!bfsQue.isEmpty()) {
            block BB = bfsQue.pop();
            BB.reachable = true;
            for (statement s = BB.headStatement; s != null; s = s.next) {
                W.add(s);
                s.init();
            }
            for (block successor : BB.successors) {
                if (!blockVisited.contains(successor)) {
                    blockVisited.add(successor);
                    bfsQue.add(successor);
                }
            }
        }
        for (statement s : W) {
            s.inWorklist = true;
            if (!s.parentBlock.reachable) continue;
            s.analyseUseDef();
        }
        return W;
    }

    private boolean checkOp(binary.opType op) {
        if (op== binary.opType.ADD) return true;
        return op == binary.opType.SUB;
    }

    public void RunInFunc(funcDef f){
        HashMap<register,binary> RegToExp = new HashMap<>();
        LinkedList<statement> W = getWorklist(f);
        while (!W.isEmpty()) {
            statement s = W.pop();
            s.inWorklist = false;
            if (s instanceof binary) {
                binary bi = (binary) s;
                if (checkOp(bi.op)) {
                    boolean isReg1 = bi.rs1 instanceof register, isReg2 = bi.rs2 instanceof register;
                    if (isReg1 ^ isReg2){
                        register rs;
                        constant con;
                        if (isReg1) {
                            // rd = RHS op con
                            rs = (register) bi.rs1;
                            con = (constant) bi.rs2;
                            // -> rd = RHS + con'
                            if (bi.op== binary.opType.SUB) {
                                bi.op = binary.opType.ADD;
                                bi.rs2 = con = new constant(-con.getIntValue());
                            }
                            if (RegToExp.containsKey(rs)) {
                                binary rhs = RegToExp.get(rs);
                                constant conRhs;
                                register regRhs;
                                if (rhs.rs1 instanceof constant) {
                                    // RHS = con op val
                                    conRhs = (constant) rhs.rs1;
                                    regRhs = (register) rhs.rs2;
                                    bi.op = rhs.op;
                                    bi.rs2 = regRhs;
                                    bi.rs1 = new constant(conRhs.getIntValue()+con.getIntValue());
                                } else {
                                    // RHS = val + con
                                    conRhs = (constant) rhs.rs2;
                                    regRhs = (register) rhs.rs1;
                                    bi.rs1 = regRhs;
                                    bi.rs2 = new constant(conRhs.getIntValue()+con.getIntValue());
                                }
                                regRhs.uses.add(bi);
                                rs.uses.remove(bi);
                                if (rs.uses.size()==0) {
                                    rs.def.parentBlock.delete_Statement(rs.def);
                                }
                            }
                        } else {
                            // rd = con op RHS
                            rs = (register) bi.rs2;
                            con = (constant) bi.rs1;
                            if (RegToExp.containsKey(rs)) {
                                binary rhs = RegToExp.get(rs);
                                constant conRhs;
                                register regRhs;
                                if (rhs.rs1 instanceof constant) {
                                    // RHS = con op val
                                    conRhs = (constant) rhs.rs1;
                                    regRhs = (register) rhs.rs2;
                                    if (bi.op== binary.opType.ADD)
                                        bi.rs1 = new constant(conRhs.getIntValue()+con.getIntValue());
                                    else
                                        bi.rs1 = new constant(con.getIntValue()-conRhs.getIntValue());
                                    if (bi.op== binary.opType.ADD)
                                        bi.op = rhs.op;
                                    else bi.op = (rhs.op== binary.opType.ADD)? binary.opType.SUB: binary.opType.ADD;
                                    bi.rs2 = regRhs;
                                } else {
                                    // RHS = val + con
                                    conRhs = (constant) rhs.rs2;
                                    regRhs = (register) rhs.rs1;
                                    if (bi.op== binary.opType.ADD)
                                        bi.rs1 = new constant(conRhs.getIntValue()+con.getIntValue());
                                    else
                                        bi.rs1 = new constant(con.getIntValue()-conRhs.getIntValue());
                                    bi.rs2 = regRhs;
                                }
                                regRhs.uses.add(bi);
                                rs.uses.remove(bi);
                                if (rs.uses.size()==0) {
                                    rs.def.parentBlock.delete_Statement(rs.def);
                                }
                            }
                        }
                        RegToExp.put(bi.rd,bi);
                    }
                }
            }
            //if (!s.removed && s.parentBlock.reachable && s.isResConst())
            //    s.removeStmt(W);
        }
    }

    public void Run(){
        pg.funcDefs.forEach(this::RunInFunc);
    }

    public ExpressionEliminatePass(program pg) {
        this.pg = pg;
    }
}
