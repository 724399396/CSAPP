#include <stdio.h>

/* WARNING: this is buggy code*/
float sum_elements(float a[], unsigned length) {
  float result;
  int i;

  for (i = 0; i <= length - 1; i++)
    result += a[i];
  return result;
}

void main() {
  float a[] = {};
  printf("%f", sum_elements(a,0));
}
