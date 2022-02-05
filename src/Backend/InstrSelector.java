package Backend;

import Assembly.AsmBlock;
import Assembly.*;
import Assembly.Instr.*;
import Assembly.Operand.*;
import IR.*;

import javax.swing.plaf.basic.BasicListUI;
import java.util.HashMap;

public class InstrSelector implements Pass {
    private HashMap<block, AsmBlock> blockMap = new HashMap<>();
    private HashMap<register, virtualReg> regMap = new HashMap<>();
    private int cnt = 0, reserveCnt = 0;
    private PhyReg ra, sp, s0, zero, t0, t1, t2, t3, t4, t5, a0;
    private Imm ImmZero = new Imm(0);

    public AsmPg asmPg;

    private int getLo(int con){
        int tmp =   (0xfffff800)* ((con>>11)&1)+(con&2047);
        return tmp;
    }

    public InstrSelector(AsmPg asmPg) {
        this.asmPg = asmPg;
        ra = asmPg.phyRegs.get(1);
        sp = asmPg.phyRegs.get(2);
        s0 = asmPg.phyRegs.get(8);
        zero = asmPg.phyRegs.get(0);
        t0 = asmPg.phyRegs.get(5);
        t1 = asmPg.phyRegs.get(6);
        t2 = asmPg.phyRegs.get(7);
        t3 = asmPg.phyRegs.get(28);
        t4 = asmPg.phyRegs.get(29);
        t5 = asmPg.phyRegs.get(30);
        a0 = asmPg.phyRegs.get(10);
    }

    private AsmBlock getAsmBlock(block b) {
        if (!blockMap.containsKey(b)) {
            blockMap.put(b, new AsmBlock());
        }
        return blockMap.get(b);
    }

    private virtualReg getAsmReg(register r) {
        if (!regMap.containsKey(r)) {
            regMap.put(r, new virtualReg(cnt++));
        }
        return regMap.get(r);
    }

    private int getImmValue(constant c) {
        int value;
        switch (c.genre) {
            case BOOL:
                value = c.getBoolValue() ? 1 : 0;
                break;
            case INT:
                value = c.getIntValue();
                break;
            case VOID:
                value = 0;
                break;
            default: {
                return 0;
            }
        }
        return value;
    }

    @Override
    public void visitProgram(program pg) {
        pg.funcDefs.forEach(this::visitFuncDef);
        pg.globalVarDecls.forEach(this::visitGlobalVarDecl);
        pg.globalStringConstants.forEach(this::visitGlobalStringConstant);
    }

    @Override
    public void visitFuncDef(funcDef f) {
        cnt = 0;
        reserveCnt = -2;
        AsmFunc asmFunc = new AsmFunc(f.funcId);
        asmFunc.rootBlock = getAsmBlock(f.rootBlock);
        asmPg.funcS.add(asmFunc);
        //todo parameters,ra,sp
        //todo allocas
        //todo parameter re-store
        AsmBlock rootBlock = getAsmBlock(f.rootBlock);
        int parameterCnt = 0;
        for (register parameterReg : f.parameterRegs) {
            if (parameterCnt < 8) {
                rootBlock.push_back(new Mv(getAsmReg(parameterReg), asmPg.phyRegs.get(10 + parameterCnt)));
            } else {

            }
            ++parameterCnt;
        }
        for (alloca alloca : f.allocas) {
            regMap.put(alloca.rd, new virtualReg(--reserveCnt));
        }
        visitBlock(f.rootBlock);
        asmFunc.stackLength = 4 * (cnt - reserveCnt);
    }

    @Override
    public void visitBlock(block b) {
        AsmBlock asmBlock = getAsmBlock(b);
        b.stmts().forEach(s -> {
            if (s instanceof binary) {
                binary bi = (binary) s;
                Inst.CalCategory op;
                switch (bi.op) {
                    case ADD:
                        op = Inst.CalCategory.add;
                        break;
                    case SUB:
                        op = Inst.CalCategory.sub;
                        break;
                    case MUL:
                        op = Inst.CalCategory.mul;
                        break;
                    case SDIV:
                        op = Inst.CalCategory.div;
                        break;
                    case MOD:
                        op = Inst.CalCategory.rem;
                        break;
                    case AND:
                        op = Inst.CalCategory.and;
                        break;
                    case OR:
                        op = Inst.CalCategory.or;
                        break;
                    case XOR:
                        op = Inst.CalCategory.xor;
                        break;
                    case ASHR:
                        op = Inst.CalCategory.sra;
                        break;
                    case LSHR:
                        op = Inst.CalCategory.srl;
                        break;
                    case SHL:
                        op = Inst.CalCategory.sll;
                        break;
                    default:
                        op = null;
                }
                Reg rd = getAsmReg(bi.rd);
                if (bi.rs1 instanceof constant) {
                    int constValue = getImmValue((constant) bi.rs1);
                    if (constValue > 2047 || constValue <-2048) {
                        constValue += 1<<12;
                        asmBlock.push_back(new Lui(rd, new Imm(constValue >>> 12)));
                        asmBlock.push_back(new IType(rd, rd, new Imm(getLo(constValue)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rd, zero, new Imm(constValue), Inst.CalCategory.add));
                    Reg rs;
                    if (bi.rs2 instanceof constant) {
                        //todo calc const expression
                        rs = new virtualReg(cnt++);
                        int constValue1 = getImmValue((constant) bi.rs2);
                        if (constValue1 > 2047 || constValue1 <-2048) {
                            constValue1 += 1<<12;
                            asmBlock.push_back(new Lui(rs, new Imm(constValue1 >>> 12)));
                            asmBlock.push_back(new IType(rs, rs, new Imm(getLo(constValue1)), Inst.CalCategory.add));
                        } else asmBlock.push_back(new IType(rs, zero, new Imm(constValue1), Inst.CalCategory.add));
                    } else {
                        rs = getAsmReg((register) bi.rs2);
                    }
                    asmBlock.push_back(new RType(rd, rd, rs, op));
                } else {
                    if (bi.rs2 instanceof constant) {
                        int constValue = getImmValue((constant) bi.rs2);
                        if (constValue > 2047 || constValue <-2048) {
                            constValue += 1<<12;
                            asmBlock.push_back(new Lui(rd, new Imm(constValue >>> 12)));
                            asmBlock.push_back(new IType(rd, rd, new Imm(getLo(constValue)), Inst.CalCategory.add));
                        } else asmBlock.push_back(new IType(rd, zero, new Imm(constValue), Inst.CalCategory.add));
                        asmBlock.push_back(new RType(rd, getAsmReg((register) bi.rs1), rd, op));
                    } else {
                        asmBlock.push_back(new RType(rd, getAsmReg((register) bi.rs1), getAsmReg((register) bi.rs2), op));
                    }
                }
            } else if (s instanceof br) {
                br branch = (br) s;
                if (branch.val == null) {
                    AsmBlock target = getAsmBlock(branch.trueBranch);
                    Jp jp = new Jp(target);
                    target.JumpFrom.put(asmBlock, jp);
                    asmBlock.push_back(jp);
                } else {
                    AsmBlock targetT = getAsmBlock(branch.trueBranch), targetF = getAsmBlock(branch.falseBranch);
                    Jp jpT = new Jp(targetT);
                    targetT.JumpFrom.put(asmBlock, jpT);
                    Br brF = new Br(Inst.CompareCategory.eq, getAsmReg(branch.val), null, targetF);
                    targetF.JumpFrom.put(asmBlock, brF);
                    asmBlock.push_back(brF);
                    asmBlock.push_back(jpT);
                }
            } else if (s instanceof call) {
                call c = (call) s;
                int parameterCnt = 0;
                for (entityTypePair parameter : c.parameters) {
                    Reg rs;
                    entity en = parameter.en;
                    if (en instanceof constant) {
                        rs = t3;
                        int constValue = getImmValue((constant) en);
                        if (constValue > 2047 || constValue <-2048) {
                            constValue += 1<<12;
                            asmBlock.push_back(new Lui(rs, new Imm(constValue >>> 12)));
                            asmBlock.push_back(new IType(rs, rs, new Imm(getLo(constValue)), Inst.CalCategory.add));
                        } else asmBlock.push_back(new IType(rs, zero, new Imm(constValue), Inst.CalCategory.add));
                    } else {
                        rs = getAsmReg((register) en);
                    }
                    if (parameterCnt < 8) {
                        asmBlock.push_back(new Mv(asmPg.phyRegs.get(parameterCnt + 10), rs));
                    } else {

                    }
                    parameterCnt++;
                }
                asmBlock.push_back(new FuncCall(c.funcName));
                if (c.rd != null) asmBlock.push_back(new Mv(getAsmReg(c.rd), a0));
            } else if (s instanceof convertOp) {
                convertOp con = (convertOp) s;
                if (con.rs instanceof constant) {
                    Reg rs = t3;
                    int constValue = getImmValue((constant) con.rs);
                    if (constValue > 2047 || constValue <-2048) {
                        constValue += 1<<12;
                        asmBlock.push_back(new Lui(rs, new Imm(constValue >>> 12)));
                        asmBlock.push_back(new IType(rs, rs, new Imm(getLo(constValue)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rs, zero, new Imm(constValue), Inst.CalCategory.add));
                    virtualReg vr = getAsmReg(con.rd);
                    asmBlock.push_back(new Mv(vr, rs));
                } else {
                    regMap.put(con.rd, getAsmReg((register) con.rs));
                }
            } else if (s instanceof getelementptr) {
                getelementptr getelem = (getelementptr) s;
                IRType irType = getelem.rsType;
                Reg rd = getAsmReg(getelem.rd), rs = getAsmReg(getelem.rs);
                if (irType.cDef == null) {
                    //array
                    int atomSize = irType.reducePtr().getSize();
                    entity en = getelem.locator1;
                    if (en instanceof constant) {
                        int constValue = getImmValue((constant) en) * atomSize;
                        if (constValue > 2047 || constValue <-2048) {
                            constValue += 1<<12;
                            asmBlock.push_back(new Lui(t3, new Imm(constValue >>> 12)));
                            asmBlock.push_back(new IType(t3, t3, new Imm(getLo(constValue)), Inst.CalCategory.add));
                            asmBlock.push_back(new RType(rd, rs, t3, Inst.CalCategory.add));
                        } else asmBlock.push_back(new IType(rd, rs, new Imm(constValue), Inst.CalCategory.add));
                    } else {
                        Reg tmp = getAsmReg((register) en);
                        if (atomSize > 1)
                            asmBlock.push_back(new IType(tmp, tmp, new Imm(atomSize), Inst.CalCategory.mul));
                        asmBlock.push_back(new RType(rd, rs, tmp, Inst.CalCategory.add));
                    }
                } else {
                    //class
                    classDef cDef = irType.cDef;
                    constant con = (constant) getelem.locator2;
                    IRTypeWithCounter irTypeWithCounter = cDef.memberForAsm.get(con.getIntValue());
                    int offset;
                    if (cDef.align == 1) offset = irTypeWithCounter.offset1;
                    else offset = irTypeWithCounter.offset4;
                    asmBlock.push_back(new IType(rd, rs, new Imm(offset), Inst.CalCategory.add));
                }
            } else if (s instanceof icmp) {
                icmp ic = (icmp) s;
                Reg rd = getAsmReg(ic.rd), rs1, rs2;
                if (ic.rs1 instanceof constant) {
                    rs1 = t3;
                    int constValue = getImmValue((constant) ic.rs1);
                    if (constValue > 2047 || constValue <-2048) {
                        constValue += 1<<12;
                        asmBlock.push_back(new Lui(rs1, new Imm(constValue >>> 12)));
                        asmBlock.push_back(new IType(rs1, rs1, new Imm(getLo(constValue)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rs1, zero, new Imm(constValue), Inst.CalCategory.add));
                } else {
                    rs1 = getAsmReg((register) ic.rs1);
                }
                if (ic.rs2 instanceof constant) {
                    rs2 = t4;
                    int constValue1 = getImmValue((constant) ic.rs2);
                    if (constValue1 > 2047 || constValue1 <-2048) {
                        constValue1 += 1<<12;
                        asmBlock.push_back(new Lui(rs2, new Imm(constValue1 >>> 12)));
                        asmBlock.push_back(new IType(rs2, rs2, new Imm(getLo(constValue1)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rs2, zero, new Imm(constValue1), Inst.CalCategory.add));
                } else {
                    rs2 = getAsmReg((register) ic.rs2);
                }
                switch (ic.cmpOp) {
                    case SLT:
                        asmBlock.push_back(new RType(rd, rs1, rs2, Inst.CalCategory.slt));
                        break;
                    case SLE: {
                        asmBlock.push_back(new RType(t5, rs2, rs1, Inst.CalCategory.slt));
                        asmBlock.push_back(new IType(rd, t5, ImmZero, Inst.CalCategory.seq));
                        break;
                    }
                    case SGT:
                        asmBlock.push_back(new RType(rd, rs2, rs1, Inst.CalCategory.slt));
                        break;
                    case SGE: {
                        asmBlock.push_back(new RType(t5, rs1, rs2, Inst.CalCategory.slt));
                        asmBlock.push_back(new IType(rd, t5, ImmZero, Inst.CalCategory.seq));
                        break;
                    }
                    case EQ: {
                        asmBlock.push_back(new RType(t5, rs1, rs2, Inst.CalCategory.xor));
                        asmBlock.push_back(new IType(rd, t5, ImmZero, Inst.CalCategory.seq));
                        break;
                    }
                    case NEQ: {
                        asmBlock.push_back(new RType(t5, rs1, rs2, Inst.CalCategory.xor));
                        asmBlock.push_back(new IType(rd, t5, ImmZero, Inst.CalCategory.sne));
                        break;
                    }
                }
            } else if (s instanceof load) {
                load l = (load) s;
                if (l.ptr.label != null) {
                    asmBlock.push_back(new La(t3, l.ptr.label));
                    asmBlock.push_back(new Ld(getAsmReg(l.rd), t3, ImmZero,l.align));
                } else {
                    virtualReg vr = getAsmReg(l.ptr);
                    if (vr.index < 0)
                        asmBlock.push_back(new Ld(getAsmReg(l.rd), s0, new Imm(vr.index * 4),l.align));
                    else asmBlock.push_back(new Ld(getAsmReg(l.rd), vr, ImmZero,l.align));
                }
            } else if (s instanceof phi) {
                phi p = (phi) s;
                Reg rd = getAsmReg(p.rd), rs;
                for (entityBlockPair entityBlockPair : p.entityBlockPairs) {
                    entity en = entityBlockPair.en;
                    AsmBlock from = getAsmBlock(entityBlockPair.bl);
                    Inst i = asmBlock.JumpFrom.get(from);
                    if (i!=null) {
                        if (en instanceof constant) {
                            rs = t3;
                            int constValue = getImmValue((constant) en);
                            if (constValue > 2047 || constValue <-2048) {
                                constValue += 1<<12;
                                from.insert_before(i, new Lui(rs, new Imm(constValue >>> 12)));
                                from.insert_before(i, new IType(rs, rs, new Imm(getLo(constValue)), Inst.CalCategory.add));
                            } else
                                from.insert_before(i, new IType(rs, zero, new Imm(constValue), Inst.CalCategory.add));
                        } else {
                            rs = getAsmReg((register) en);
                        }
                        from.insert_before(i, new Mv(rd, rs));
                    }
                }
            } else if (s instanceof ret) {
                ret r = (ret) s;
                if (r.value != null) {
                    if (r.value instanceof register)
                        asmBlock.push_back(
                                new Mv(asmPg.phyRegs.get(10), getAsmReg((register) r.value))
                        );
                    else asmBlock.push_back(
                            new Li(asmPg.phyRegs.get(10), new Imm(getImmValue((constant) r.value)))
                    );
                }   // First move the return value to x10, then return
                asmBlock.push_back(new Ret());
            } else if (s instanceof store) {
                store st = (store) s;
                Reg rs;
                if (st.resource instanceof constant) {
                    rs = t4;
                    int constValue = getImmValue((constant) st.resource);
                    if (constValue > 2047 || constValue <-2048) {
                        constValue += 1<<12;
                        asmBlock.push_back(new Lui(rs, new Imm(constValue >>> 12)));
                        asmBlock.push_back(new IType(rs, rs, new Imm(getLo(constValue)), Inst.CalCategory.add));
                    } else asmBlock.push_back(new IType(rs, zero, new Imm(constValue), Inst.CalCategory.add));
                } else {
                    rs = getAsmReg((register) st.resource);
                }
                if (st.target.label != null) {
                    asmBlock.push_back(new La(t3, st.target.label));
                    asmBlock.push_back(new St(rs, t3, ImmZero,st.align));
                } else {
                    virtualReg vr = getAsmReg(st.target);
                    if (vr.index < 0)
                        asmBlock.push_back(new St(rs, s0, new Imm(vr.index * 4),st.align));
                    else asmBlock.push_back(new St(rs, vr, ImmZero,st.align));
                }
            } else if (s instanceof bitcast) {
                bitcast bit = (bitcast) s;
                if (bit.rs.label != null) {
                    asmBlock.push_back(new La(getAsmReg(bit.rd), bit.rs.label));
                } else regMap.put(bit.rd, getAsmReg(bit.rs));
            }
        });
        b.successors.forEach(succ -> {
            asmBlock.successors.add(getAsmBlock(succ));
            visitBlock(succ);
        });
    }

    @Override
    public void visitGlobalVarDecl(globalVarDecl gv) {
        asmPg.globals.add(new AsmGlobal(gv.name, gv.align, "" + getImmValue((constant) gv.rs), false));
    }

    @Override
    public void visitGlobalStringConstant(globalStringConstant gs) {
        asmPg.globals.add(new AsmGlobal(".libro.str" + ((gs.counter == 0) ? "" : "." + gs.counter), gs.irType.arrayLen, gs.rawString, true));
    }

    @Override
    public void visitClassDef(classDef f) {

    }

    @Override
    public void visitDeclare(declare dec) {

    }
}
