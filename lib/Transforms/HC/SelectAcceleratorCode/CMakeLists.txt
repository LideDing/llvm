add_llvm_library(LLVMSelectAcceleratorCode MODULE SelectAcceleratorCode.cpp)

add_dependencies(LLVMSelectAcceleratorCode intrinsics_gen)
