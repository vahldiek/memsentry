# Configures which LLVM to use

# Ubuntu 16.04 system LLVM
CLANG    := clang-3.8/bin/clang
OPT      := clang-3.8/bin/opt-3.8
LLINK    := clang-3.8/bin/llvm-link-3.8
LLVMCONF := clang-3.8/bin/llvm-config-3.8

# Local (asserts enabled)
#LLVMPATH := /path/to/llvm/install/bin
#CLANG    := $(LLVMPATH)/clang
#OPT      := $(LLVMPATH)/opt
#LLINK    := $(LLVMPATH)/llvm-link
#LLVMCONF := $(LLVMPATH)/llvm-config
