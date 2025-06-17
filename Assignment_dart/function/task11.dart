
// fibonacci

void main() {
  int limit = 12; // 
  printFibonacciSeries(0, 1, limit);
}

void printFibonacciSeries(int a, int b, int limit) {
  if (a > limit) return;
  print(a);
  
  printFibonacciSeries(b, a + b, limit); 
}
