#!/bin/bash

set -o xtrace
set -o errexit 
set -o nounset

TARGET="cpp_source/glob"
c++ "$TARGET".cpp "$TARGET"_test.cpp 
./a.out