#include <stdio.h>

unsigned float2bit(float f) {
  union {
    float f;
    unsigned u;
  } temp;
  temp.f = f;
  return temp.u;
}

void main() {
  printf("%x\n", float2bit(1.5));
}
