ASM_FILE=cpp_source/glob.s
CPP_FILE=cpp_source/glob.cpp
PLAN9_FILE=glob_amd64.s

c++ -O3 -mavx -mfma -masm=intel -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti \
    -S "$CPP_FILE" \
    -o "$ASM_FILE"
c2goasm -a $ASM_FILE $PLAN9_FILE

# go test . -v -count=1
# go test -benchmem -run=^$ -bench Benchmark . -v -count=1
