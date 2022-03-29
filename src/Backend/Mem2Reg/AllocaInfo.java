package Backend.Mem2Reg;

import IR.*;

import java.util.HashSet;

public class AllocaInfo {
    public boolean OnlyUsedInOneBlock;
    public store OnlyStore;
    public block OnlyBlock;
    public HashSet<block> DefiningBlocks, UsingBlocks;
    public int storeCount;

    public void clear() {
        OnlyUsedInOneBlock = true;
        OnlyBlock = null;
        OnlyStore = null;
        storeCount = 0;
        DefiningBlocks = new HashSet<>();
        UsingBlocks = new HashSet<>();
    }

    public void analyseAlloca(alloca AI){
        clear();
        for (user user : AI.users) {
            if (user instanceof store) {
                ++storeCount;
                OnlyStore = (store) user;
                DefiningBlocks.add(user.parentBlock);
            } else {
                UsingBlocks.add(user.parentBlock);
            }
            if (OnlyUsedInOneBlock) {
                if (OnlyBlock==null) OnlyBlock = user.parentBlock;
                else if (OnlyBlock != user.parentBlock) OnlyUsedInOneBlock = false;
            }
        }
    }
}
