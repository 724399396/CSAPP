/* Compute x! and store at resultp */
void sfact_helper(long int x, long int *resultp) {
  if (x <= 1)
    *resultp = 1;
  else {
    long int nresult;
    sfact_helper(x-1, &nresult);
    *resultp = x * nresult;
  }
}

long int sfact(long int x) {
  long int result;
  sfact_helper(x, &result);
  return result;
}
