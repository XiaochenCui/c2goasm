#include "glob.h"
#include <cstdint>
#include <iostream>

void swap_flot32_array(char *src, int len) {
  for (std::size_t i = 0; i < len; i += 4) {
    std::uint32_t Lower =
        __builtin_bswap32(*reinterpret_cast<std::uint32_t *>(&src[i]));
    *reinterpret_cast<std::uint32_t *>(&src[i]) = Lower;
  }
}

void big_endian_to_float(char *src, float *dest) {
  float v = __builtin_bswap32(*reinterpret_cast<float *>(&src[0]));
  dest[0] = v;
}