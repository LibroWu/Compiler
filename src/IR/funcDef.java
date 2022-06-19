package IR;

import java.util.*;

public class funcDef extends globalUnit {

    public String funcId = null;
    public IRType returnType = null;
    public ArrayList<IRType> parameters = new ArrayList<>();
    public ArrayList<register> parameterRegs = new ArrayList<>();
    public ArrayList<alloca> allocas = new ArrayList<>();
    public HashSet<register> globalVariableUsed = new HashSet<>();
    public block rootBlock = null,returnBlock = null,entryBlock = null;
    public register retReg = null;
    // for Inline Expansion
    public int stmtCount=10000000,selfCallCount = 0, expandedCount = 0;
    public LinkedList<block> blockQue;
    public HashSet<funcDef> directedCall = new HashSet<>();

    public funcDef() {}

    public funcDef(String funcId, IRType returnType,ArrayList<IRType> parameters) {
        this.funcId = funcId;
        this.returnType = returnType;
        this.parameters = parameters;
    }

    public void push_back(alloca stmt) {
        allocas.add(stmt);
    }

    public funcDef copyFunc(){
        funcDef newf = new funcDef(funcId,returnType,parameters);
        block begBl = new block(rootBlock.loopDepth);
        LinkedList<block> originalQueue = new LinkedList<>(),shadowQueue = new LinkedList<>();
        HashMap<block,block>originToShadow = new HashMap<>();
        HashMap<register,entity> ValReplace = new HashMap<>();
        for (int i=0;i<parameters.size();++i) {
            register rd = new register();
            newf.parameterRegs.add(rd);
            ValReplace.put(parameterRegs.get(i),rd);
        }
        originalQueue.add(rootBlock);
        shadowQueue.add(begBl);
        originToShadow.put(rootBlock,begBl);
        while (!originalQueue.isEmpty()) {
            block ori = originalQueue.pop(),shd = originToShadow.get(ori);
            shd.parentFunc = newf;
            for (statement s=ori.headStatement;s!=null;s=s.next) {
                statement shadowStmt = s.clone(ValReplace);
                shd.push_back(shadowStmt);
            }
            if (ori.tailStatement instanceof br) {
                br BI = (br) ori.tailStatement;
                if (!originToShadow.containsKey(BI.trueBranch)) {
                    block BT = new block(BI.trueBranch.loopDepth);
                    originToShadow.put(BI.trueBranch,BT);
                    originalQueue.add(BI.trueBranch);
                    shadowQueue.add(BT);
                    ((br)shd.tailStatement).trueBranch = BT;
                } else {
                    ((br)shd.tailStatement).trueBranch = originToShadow.get(BI.trueBranch);
                }
                if (BI.falseBranch!=null) {
                    if (!originToShadow.containsKey(BI.falseBranch)) {
                        block BF = new block( BI.falseBranch.loopDepth);
                        originToShadow.put(BI.falseBranch, BF);
                        originalQueue.add(BI.falseBranch);
                        shadowQueue.add(BF);
                        ((br) shd.tailStatement).falseBranch = BF;
                    } else {
                        ((br)shd.tailStatement).falseBranch = originToShadow.get(BI.falseBranch);
                    }
                }
            }
            shd.predecessor.clear();
            shd.successors.clear();
        }
        // todo maintain use and def
        for (block BB : shadowQueue) {
            for (phi phi : BB.Phis) {
                for (entityBlockPair entityBlockPair : phi.entityBlockPairs) {
                    entityBlockPair.bl = originToShadow.get(entityBlockPair.bl);
                    if (entityBlockPair.en instanceof register) {
                        if (!ValReplace.containsKey(entityBlockPair.en)) {
                            //System.out.println(entityBlockPair.en);
                            throw new RuntimeException("Error!");
                        }
                        entityBlockPair.en = ValReplace.get(entityBlockPair.en);
                    }
                }
            }
            for (statement s = BB.headStatement;s!=null;s=s.next){
                s.init();
            }
        }
        for (block BB : shadowQueue) {
            for (statement s = BB.headStatement;s!=null;s=s.next){
                s.analyseUseDef();
            }
        }
        return newf;
    }
}
