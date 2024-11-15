#include "llvm/Transforms/Utils/DebugInstPrint.h"
#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/Analysis.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/DebugProgramInstruction.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/raw_ostream.h"

llvm::PreservedAnalyses llvm::DebugInstPrintPass::run(llvm::Function &F, llvm::FunctionAnalysisManager &AM) {
    errs()  << F.getName() << ":\n";
    int declares = 0, assigns = 0, values = 0;

    for(auto& BB : F) {
        for(auto& I : BB) {
            for(auto DVR : filterDbgVars(I.getDbgRecordRange())) {
                for (DbgVariableRecord &DVR : filterDbgVars(I.getDbgRecordRange())) {
                    if (DVR.isDbgDeclare()) declares++;
                    else if(DVR.isDbgAssign()) assigns++;
                    else if (DVR.isDbgValue()) values++;
                }
            }
        }
    }

    errs() << "llvm.dbg.declare: " << declares << "\n";
    errs() << "llvm.dbg.assign: " << assigns<< "\n";
    errs() << "llvm.dbg.value: " << values << "\n";

    return PreservedAnalyses::all();
}