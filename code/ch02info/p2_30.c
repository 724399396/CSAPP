#include <limits.h>
#include <stdio.h>

/* Determine whether arguments can be added without overflow*/
int tadd_ok(int x, int y) {
  if (x > 0 && y > 0 && (x + y) < 0) {
    return -1;
  }
  if (x < 0 && y < 0 && (x + y) > 0) {
    return -1;
  }
  return 1;
}

void main() {
  printf("%d", tadd_ok(INT_MAX,INT_MAX));
}
