#include <stdio.h>

int fun1(unsigned word) {
  return (int) ((word << 24) >> 24);
}

int fun2(unsigned word) {
  return ((int) word << 24) >> 24;
}

int main() {
  while (1) {
    int num;
    scanf("%x", &num);
    printf("%d %d\n", fun1(num), fun2(num));
  }
}
