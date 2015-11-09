#include <stdio.h>

void main() {
  char a = 125;
  char b = 125;
  char sum = a + b;
  char c = sum - a;
  char d = sum - b;
  printf("%d, %d, %d\n", sum, c ,d);
}
