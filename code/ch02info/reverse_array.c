#include <stdio.h>

void inplace_swap(int *x, int *y) {
  *y = *x ^ *y;
  *x = *x ^ *y;
  *y = *x ^ *y;
}

void reverse_array(int a[], int cnt) {
  int first, last;
  for (first = 0, last = cnt - 1; first < last; first++,last--)
    inplace_swap(&a[first],&a[last]);
}

void main() {
  int a[] = {1,2,3};
  reverse_array(a, 3);
  int i = 0;
  for(; i < 3; i++)
    printf("%d", a[i]);
  printf("\n");
}
