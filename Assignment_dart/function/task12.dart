// Create a function that accepts a list of numbers and returns the largest and smallest
// numbers in the list.


void main() {
  List<int> numbers = [4, 9, 1, 22, 5];
  var result = findLargestAndSmallest(numbers);
  print("Largest: ${result['largest']}");
  print("Smallest: ${result['smallest']}");
}

Map<String, int> findLargestAndSmallest(List<int> numbers) {
  if (numbers.isEmpty) {
    return {'largest': 0, 'smallest': 0}; 
  }

  int largest = numbers[0];
  int smallest = numbers[0];

  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
    if (number < smallest) {
      smallest = number;
    }
  }

  return {
    'largest': largest,
    'smallest': smallest,
  };
}
