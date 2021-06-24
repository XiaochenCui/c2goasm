ASM_FILE=c_source/write_float.s
PLAN9_FILE=write_float_amd64.s

c++ -O3 -mavx -mfma -masm=intel -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti -S c_source/write_float.cpp -o $ASM_FILE
c2goasm -a $ASM_FILE $PLAN9_FILE
go test . -v -count=1

go test -benchmem -run=^$ -bench Benchmark . -v -count=1