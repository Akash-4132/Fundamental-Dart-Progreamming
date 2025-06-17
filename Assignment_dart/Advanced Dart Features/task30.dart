// Create a function that uses higher-order functions. Define a List of numbers and pass it to a 
// function that returns a list of squares, cubes, or halves based on the function passed as an 
// argument


List<double> transformList(List<double> numbers, double Function(double) operation) {
  return numbers.map(operation).toList();
}


double square(double x) => x * x;
double cube(double x) => x * x * x;
double half(double x) => x / 2;

void main() {
  List<double> numbers = [2, 4, 6, 8, 10];

 
  List<double> squares = transformList(numbers, square);
  List<double> cubes = transformList(numbers, cube);
  List<double> halves = transformList(numbers, half);

  // Print results
  print('Original: $numbers');
  print('Squares: $squares');
  print('Cubes: $cubes');
  print('Halves: $halves');
}
