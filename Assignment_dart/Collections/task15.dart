// 

import 'dart:core';

void main() {
  String input = "hello world";

  Map<String, int> frequencyMap = {};

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (char != ' ') { 
      if (frequencyMap.containsKey(char)) {
        frequencyMap[char] = frequencyMap[char]! + 1;
      } else {
        frequencyMap[char] = 1;
      }
    }
  }

  print("Character Frequencies:");
  frequencyMap.forEach((char, count) {
    print("$char: $count");
  });
}
