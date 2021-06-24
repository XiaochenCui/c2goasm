#include <cstring>

void write_float(float* v, char* buffer) {
    buffer[0] = 2;
    memcpy(buffer+1, v, sizeof(float));
}