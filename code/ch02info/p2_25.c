#include <stdio.h>
/* WARNING: This is buggy code */
float sum_elements(float a[], unsigned length) {
  int i;
  float result = 0;

  for (i = 0; i <= length - 1; i++)
    result += a[i];
  return result;
}

void main() {
  float a[] = {1.0,2.0};
  printf("%f", sum_elements(a, 0));
}
