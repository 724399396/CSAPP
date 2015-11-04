int bis(int x, int m) {
  return x | m;
}

int biz(int x, int m) {
  return x & (~ m);
}

int bool_or(int x, int y) {
  int result = bis(x, y);
  return result;
}


int bool_xor(int x, int y) {
  int result = bool_or(x,y) & ;
}
