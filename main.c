#include <stdio.h>

int getByte(int x, int n) {
  int move = n << 3;
  printf("%d\n", move);
  printf("%x\n", x >> move);
  return (x >> move) & 0xff;
}

void main() {
  printf("%x\n", getByte(0x80000000,0));
  printf("%x\n", getByte(0x80000000,1));
  printf("%x\n", getByte(0x80000000,2));
  printf("%x\n", getByte(0x80000000,3));
}
