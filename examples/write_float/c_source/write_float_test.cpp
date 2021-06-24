#include "write_float.h"
#include <iostream>

using namespace std;

int main() {
  float v = 12.3f;
  char buffer[5];
  cout << "before:";
  for (int i = 0; i < 5; i++) {
    printf("%02X ", (uint8_t)buffer[i]);
  }
  cout << endl;
  write_float(&v, buffer);
  cout << "after:";
  for (int i = 0; i < 5; i++) {
    printf("%02X ", (uint8_t)buffer[i]);
  }
  cout << endl;
}