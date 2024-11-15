#ifndef LLVM_TRANSFORMS_UTILS_DEBUGINSTPRINT_H
#define LLVM_TRANSFORMS_UTILS_DEBUGINSTPRINT_H

#include "llvm/IR/PassManager.h"

namespace llvm {

class DebugInstPrintPass: public PassInfoMixin<DebugInstPrintPass> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM);
};

} // namespace llvm

#endif // LLVM_TRANSFORMS_UTILS_DEBUGINSTPRINT_H