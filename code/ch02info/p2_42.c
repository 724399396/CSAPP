#include <stdio.h>

int div16(int x) {
  int bits = (x >> 31) & 0x0F;
  return (x + bits) >> 4;
}

void main() {
  printf("%d",div16(478));
  printf("%d",div16(-478));
}
