# Configures which LLVM to use

# Ubuntu 16.04 system LLVM
PWD := /local/vahldiek/erim-public/src/MemSentry/
CLANG    := $(PWD)/clang-3.8/bin/clang
CLANG++  := $(PWD)/clang-3.8/bin/clang++
OPT      := $(PWD)/clang-3.8/bin/opt
LLINK    := $(PWD)/clang-3.8/bin/llvm-link
LLVMCONF := $(PWD)/clang-3.8/bin/llvm-config

# Local (asserts enabled)
#LLVMPATH := /path/to/llvm/install/bin
#CLANG    := $(LLVMPATH)/clang
#OPT      := $(LLVMPATH)/opt
#LLINK    := $(LLVMPATH)/llvm-link
#LLVMCONF := $(LLVMPATH)/llvm-config
