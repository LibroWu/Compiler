package Backend;

import IR.*;

import java.io.PrintStream;
import java.util.HashMap;

public class IRPrinter implements Pass {
    private PrintStream out;

    private int Cnt = 0;
    private HashMap<block, Integer> blockIndex = null;
    private HashMap<register, Integer> regIndex = new HashMap<>();
    private HashMap<register, String> regGlobal = new HashMap<>();

    public IRPrinter(PrintStream out) {
        this.out = out;
    }

    @Override
    public void visitProgram(program pg) {
        //class definition
        for (classDef classDef : pg.classDefs) {
            visitClassDef(classDef);
        }
        if (pg.classDefs.size() != 0) out.println();
        //global variable declaration
        for (globalVarDecl globalVarDecl : pg.globalVarDecls) {
            visitGlobalVarDecl(globalVarDecl);
        }
        if (pg.globalVarDecls.size() != 0) out.println();
        //global string const
        for (globalStringConstant globalStringConstant : pg.globalStringConstants) {
            visitGlobalStringConstant(globalStringConstant);
        }
        if (pg.globalStringConstants.size() != 0) out.println();
        //function definition
        for (funcDef funcDef : pg.funcDefs) {
            visitFuncDef(funcDef);
        }
        if (pg.funcDefs.size() != 0) out.println();
        //declares
        for (declare declare : pg.declares) {
            visitDeclare(declare);
        }
        if (pg.declares.size() != 0) out.println();
    }

    @Override
    public void visitBlock(block b) {
        if (b.jumpTo) out.println("\n"+ ((b.comment!=null)?";"+b.comment+"\n":"")  + getBlockName(b) + ":" );
        for (statement stmt : b.stmts()) {
            print(stmt);
            if (stmt instanceof terminalStmt) break;
        }
        b.successors.forEach(this::visitBlock);
    }

    private void runNaming(block b) {
        getBlockName(b);
        for (statement stmt : b.stmts()) {
            runNaming(stmt);
            if (stmt instanceof terminalStmt) break;
        }
        for (block successor : b.successors) {
            runNaming(successor);
        }
    }

    private void runNaming(statement s) {
        if (s instanceof alloca) {
            alloca a = (alloca) s;
            getRegName(a.rd);
        } else if (s instanceof binary) {
            binary b = (binary) s;
            getEntityString(b.rd);
        } else if (s instanceof br) {
        } else if (s instanceof call) {
            call c = (call) s;
            if (c.rd != null) getRegName(c.rd);
        } else if (s instanceof convertOp) {
            convertOp con = (convertOp) s;
            getRegName(con.rd);
        } else if (s instanceof getelementptr) {
            getelementptr g = (getelementptr) s;
            getRegName(g.rd);
        } else if (s instanceof icmp) {
            icmp ic = (icmp) s;
            getRegName(ic.rd);
        } else if (s instanceof load) {
            load l = (load) s;
            getRegName(l.rd);
        } else if (s instanceof phi) {
            phi p = (phi) s;
            getRegName(p.rd);
        } else if (s instanceof ret) {
        } else if (s instanceof store) {
        } else if (s instanceof bitcast) {
            bitcast b = (bitcast) s;
            getRegName(b.rd);
        }
    }

    @Override
    public void visitFuncDef(funcDef f) {
        Cnt = 0;
        blockIndex = new HashMap<>();
        regIndex = new HashMap<>();
        int len = f.parameterRegs.size();
        //run naming
        for (int i = 0; i < len; ++i) {
            getRegName(f.parameterRegs.get(i));
        }
        getBlockName(f.rootBlock);
        for (alloca alloca : f.allocas) {
            runNaming(alloca);
        }
        runNaming(f.rootBlock);
        //print
        out.print("define " + getType(f.returnType) + " @" + f.funcId + "(");
        for (int i = 0; i < len; ++i) {
            out.print(getType(f.parameters.get(i)) + " " + getRegName(f.parameterRegs.get(i)));
            if (i < len - 1) out.print(",");
        }
        out.println("){");
        for (alloca alloca : f.allocas) {
            print(alloca);
        }
        visitBlock(f.rootBlock);
        out.println("}\n");
    }

    @Override
    public void visitClassDef(classDef f) {
        out.print("%struct." + f.structName + " = type { ");
        int len = f.members.size();
        for (int i = 0; i < len - 1; ++i) {
            out.print(getType(f.members.get(i).reducePtr()) + ", ");
        }
        if (len > 0) out.print(getType(f.members.get(len - 1).reducePtr()) + " }");
        else out.print("}");
        out.println();
    }

    @Override
    public void visitGlobalVarDecl(globalVarDecl gv) {
        regGlobal.put(gv.rd, gv.name);
        out.println(getRegName(gv.rd) + " = global " + getType(gv.rsType) + " " + getEntityString(gv.rs) + ", align " + gv.align);
    }

    @Override
    public void visitGlobalStringConstant(globalStringConstant gs) {
        regGlobal.put(gs.rd, ".libro.str" + ((gs.counter == 0) ? "" : "." + gs.counter));
        out.println(getRegName(gs.rd) + " = constant " + getType(gs.irType) + " c" + gs.content + ", align 1");
    }

    @Override
    public void visitDeclare(declare dec) {
        out.print("declare " + getType(dec.retType) + " @" + dec.funcName + "(");
        int len = dec.parameters.size();
        for (int i = 0; i < len; ++i) {
            out.print(getType(dec.parameters.get(i)));
            if (i != len - 1) out.print(", ");
        }
        out.println(")");
    }

    private String getUnnamedClassDef(classDef cDef) {
        StringBuilder s = new StringBuilder("{ ");
        int len = cDef.members.size();
        for (int i = 0; i < len - 1; ++i) {
            s.append(getType(cDef.members.get(i).reducePtr()) + ", ");
        }
        if (len > 0) s.append(getType(cDef.members.get(len - 1).reducePtr()) + " }");
        else s.append("}");
        return s.toString();
    }

    private String getType(IRType irType) {
        if (irType.isVoid) return "void";
        StringBuilder s;
        if (irType.arrayLen > 0) {
            s = new StringBuilder("[" + irType.arrayLen + " x " + getType(irType.arraySubIR) + "]");
        } else if (irType.cDef == null) {
            s = new StringBuilder("i" + irType.iNum);
        } else {
            if (irType.cDef.structName != null) s = new StringBuilder("%struct." + irType.cDef.structName);
            else s = new StringBuilder(getUnnamedClassDef(irType.cDef));
        }
        int len = irType.ptrNum;
        s.append("*".repeat(Math.max(0, len)));
        return s.toString();
    }

    private String getTypeWithPtrMinus1(IRType irType) {
        if (irType.isVoid) return "void";
        StringBuilder s;
        if (irType.cDef == null) {
            s = new StringBuilder("i" + irType.iNum);
        } else {
            s = new StringBuilder("%struct." + irType.cDef.structName);
        }
        int len = irType.ptrNum - 1;
        s.append("*".repeat(Math.max(0, len)));
        if (irType.arrayLen > 0) {
            s = new StringBuilder("[" + irType.arrayLen + " x " + s.toString() + "]");
        }
        return s.toString();
    }

    private String getBlockName(block b) {
        if (blockIndex.containsKey(b)) return blockIndex.get(b) + "";
        else {
            blockIndex.put(b, Cnt++);
            return (Cnt - 1) + "";
        }
    }

    private String getRegName(register r) {
        if (regIndex.containsKey(r)) return "%" + regIndex.get(r);
        if (regGlobal.containsKey(r)) return "@" + regGlobal.get(r);
        regIndex.put(r, Cnt++);
        return "%" + (Cnt - 1);
    }

    private String getEntityString(entity e) {
        if (e == null) return "";
        if (e instanceof register) return getRegName((register) e);
        else {
            constant constE = (constant) e;
            if (constE.genre == constant.Genre.INT) return constE.getIntValue() + "";
            else if (constE.genre == constant.Genre.STRING) return constE.getStringValue();
            else if (constE.genre == constant.Genre.BOOL) return (constE.getBoolValue() ? "1" : "0");
            else return "null";
        }
    }

    private String getOp(binary.opTye op) {
        String s;
        switch (op) {
            case ADD:
                s = "add";
                break;
            case SUB:
                s = "sub";
                break;
            case OR:
                s = "or";
                break;
            case XOR:
                s = "xor";
                break;
            case MUL:
                s = "mul";
                break;
            case SDIV:
                s = "sdiv";
                break;
            case MOD:
                s = "srem";
                break;
            case ASHR:
                s = "ashr";
                break;
            case SHL:
                s = "shl";
                break;
            case AND:
                s = "and";
                break;
            case LSHR:
                s = "lshr";
                break;
            default:
                s = "";
                break;
        }
        return s;
    }

    private String getCmpOp(icmp.cmpOpType op) {
        String s;
        switch (op) {
            case SLE:
                s = "sle";
                break;
            case SLT:
                s = "slt";
                break;
            case SGE:
                s = "sge";
                break;
            case SGT:
                s = "sgt";
                break;
            case EQ:
                s = "eq";
                break;
            case NEQ:
                s = "ne";
                break;
            default:
                s = "";
        }
        return s;
    }

    private String getConvertOp(convertOp.convertType op) {
        String s;
        switch (op) {
            case TRUNC:
                s = "trunc";
                break;
            case SEXT:
                s = "sext";
                break;
            case ZEXT:
                s = "zext";
                break;
            default:
                s = "";
        }
        return s;
    }


    private void print(statement s) {
        out.print("\t");
        if (s instanceof alloca) {
            alloca a = (alloca) s;
            out.print(getRegName(a.rd) + " = alloca " + getType(a.irType) + ", align " + a.align);
        } else if (s instanceof binary) {
            binary b = (binary) s;
            String op = getOp(b.op);
            out.print(getEntityString(b.rd) + " = " + op + " " + getType(b.irType) + " " + getEntityString(b.rs1) + ", " + getEntityString(b.rs2));
        } else if (s instanceof br) {
            br b = (br) s;
            if (b.val == null) {
                out.print("br label %" + getBlockName(b.trueBranch));
            } else {
                out.print("br i1 " + getRegName(b.val) + ", label %" + getBlockName(b.trueBranch) + ", label %" + getBlockName(b.falseBranch));
            }
        } else if (s instanceof call) {
            call c = (call) s;
            if (c.rd != null) out.print(getRegName(c.rd) + " = call " + getType(c.rdType) + " @" + c.funcName + "(");
            else out.print("call " + getType(c.rdType) + " @" + c.funcName + "(");
            int len = c.parameters.size();
            for (int i = 0; i < len - 1; ++i) {
                entityTypePair para = c.parameters.get(i);
                out.print(getType(para.ir) + " " + getEntityString(para.en) + ", ");
            }
            if (len > 0) {
                entityTypePair para = c.parameters.get(len - 1);
                out.print(getType(para.ir) + " " + getEntityString(para.en) + ")");
            } else out.print(")");
        } else if (s instanceof convertOp) {
            convertOp con = (convertOp) s;
            out.print(getRegName(con.rd) + " = " + getConvertOp(con.convert) + " " + getType(con.rsType) + " " + getEntityString(con.rs) + " to " + getType(con.rdType));
        } else if (s instanceof getelementptr) {
            getelementptr g = (getelementptr) s;
            if (g.rsType.cDef != null && g.rsType.ptrNum==1)
                out.print(getRegName(g.rd) + " = getelementptr " + getTypeWithPtrMinus1(g.rsType) + ", " + getType(g.rsType) + " " + getRegName(g.rs) + ", i32 " + getEntityString(g.locator1) + ", i32 " + getEntityString(g.locator2));
            else
                out.print(getRegName(g.rd) + " = getelementptr " + getTypeWithPtrMinus1(g.rsType) + ", " + getType(g.rsType) + " " + getRegName(g.rs) + ", i32 " + getEntityString(g.locator1));
        } else if (s instanceof icmp) {
            icmp ic = (icmp) s;
            out.print(getRegName(ic.rd) + " = icmp " + getCmpOp(ic.cmpOp) + " " + getType(ic.rsType) + " " + getEntityString(ic.rs1) + ", " + getEntityString(ic.rs2));
        } else if (s instanceof load) {
            load l = (load) s;
            out.print(getRegName(l.rd) + " = load " + getType(l.rsType.reducePtr()) + ", " + getType(l.rsType) + " " + getRegName(l.ptr) + ", align " + l.align);
        } else if (s instanceof phi) {
            phi p = (phi) s;
            out.print(getRegName(p.rd) + " = phi " + getType(p.rdType) + " ");
            int len = p.entityBlockPairs.size();
            for (int i = 0; i < len - 1; ++i) {
                entityBlockPair enBl = p.entityBlockPairs.get(i);
                out.print("[ " + getEntityString(enBl.en) + ", %" + getBlockName(enBl.bl) + " ], ");
            }
            entityBlockPair enBl = p.entityBlockPairs.get(len - 1);
            out.print("[ " + getEntityString(enBl.en) + ", %" + getBlockName(enBl.bl) + " ]");
        } else if (s instanceof ret) {
            ret r = (ret) s;
            if (r.irType.isVoid) out.print("ret void");
            else out.print("ret " + getType(r.irType) + " " + getEntityString(r.value));
        } else if (s instanceof store) {
            store t = (store) s;
            out.print("store " + getType(t.resourceType) + " " + getEntityString(t.resource) + ", " + getType(t.resourceType.getPtr()) + " " + getRegName(t.target) + ", align " + t.align);
        } else if (s instanceof bitcast) {
            bitcast b = (bitcast) s;
            out.print(getRegName(b.rd) + " = bitcast " + getType(b.rsType) + " " + getRegName(b.rs) + " to " + getType(b.rdType));
        }
        if (s.Comments != null) {
            out.println(";" + s.Comments);
        } else out.println();
    }
}
