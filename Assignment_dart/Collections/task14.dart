// Create a program that takes a list of words and removes any duplicates. Use a set to
// eliminate duplicates, then display the unique words in alphabetical order.

import 'dart:core';

void main() {
  List<String> words = ['apple', 'banana', 'orange', 'apple', 'banana', 'grape'];

  // Step 1: Remove duplicates using Set
  Set<String> uniqueWordsSet = Set.from(words);

  // Step 2: Convert back to list for sorting
  List<String> uniqueWords = uniqueWordsSet.toList();

  // Step 3: Sort the list alphabetically (simple bubble sort shown below)
  for (int i = 0; i < uniqueWords.length - 1; i++) {
    for (int j = 0; j < uniqueWords.length - i - 1; j++) {
      if (uniqueWords[j].compareTo(uniqueWords[j + 1]) > 0) {
        // Swap
        String temp = uniqueWords[j];
        uniqueWords[j] = uniqueWords[j + 1];
        uniqueWords[j + 1] = temp;
      }
    }
  }

  // Step 4: Display the sorted, unique words
  print("Unique words in alphabetical order:");
  for (String word in uniqueWords) {
    print(word);
  }
}
