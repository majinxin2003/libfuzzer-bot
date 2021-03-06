#!/bin/bash
# Copyright 2015 Google Inc. All Rights Reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
(
rm -rf llvm-build
mkdir llvm-build
cd llvm-build
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja $HOME/llvm
ninja check-asan check-clang check-llvm check-ubsan
)
cp llvm/projects/compiler-rt/lib/sanitizer_common/scripts/sancov.py llvm-build/bin/
