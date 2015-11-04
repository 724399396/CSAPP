#include <stdio.h>

void main() {
  int x = 0x87654321;
  printf("%x\n", x & 0xFF);
  printf("%x\n", (~(x & (~ 0xFF))) | (x & 0xFF));
  printf("%x\n", (x & (~ 0xFF)) | 0xFF);
}
