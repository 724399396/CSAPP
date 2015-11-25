long int gfun(int x, int y) {
  long int t1 = (long) x + y; /* 64 bit addtion*/
  long int t2 = (long) (x + y); /* 32 bit addtion*/
  return t1 | t2;
}
