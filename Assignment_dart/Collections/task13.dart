// Write a program to input a list of integers and sort them in ascending and descending order 
// // without using built-in sort methods.

import 'dart:core';

void main() {
  List<int> numbers = [5, 2, 9, 1, 7];

  // Ascending sort
  List<int> ascending = bubbleSort(List.from(numbers), ascending: true);
  print("Ascending Order: $ascending");

  // Descending sort
  List<int> descending = bubbleSort(List.from(numbers), ascending: false);
  print("Descending Order: $descending");
}

List<int> bubbleSort(List<int> list, {bool ascending = true}) {
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      bool condition = ascending ? list[j] > list[j + 1] : list[j] < list[j + 1];
      if (condition) {
        // Swap
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }

  return list;
}
