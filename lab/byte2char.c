#include <stdio.h>

void main() {
  unsigned int hex = 0x80497c0;
  char* c = (char *)&hex;
  printf("%s\n", c);
}
