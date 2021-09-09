#include <iostream>
#include "glob.h"

using namespace std;

int main() {
  const int size = 16;
  char buffer[size];
  cout << "before:";
  for (int i = 0; i < size; i++) {
    buffer[i] = i + 10;
    printf("%02X ", (uint8_t)buffer[i]);
  }
  cout << endl;
  swap_flot32_array(buffer, size);
  cout << "after:";
  for (int i = 0; i < size; i++) {
    printf("%02X ", (uint8_t)buffer[i]);
  }
  cout << endl;

  cout << "\ntest func: big_endian_to_float" << endl;
  buffer[0] = 63;
  buffer[1] = 157;
  buffer[2] = 112;
  buffer[3] = 164;
  float v = -1;
  big_endian_to_float(buffer, &v);
  cout << "v = " << v << endl;
}