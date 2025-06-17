import 'dart:io';

bool isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}

void main() {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  if (isPalindrome(input)) {
    print("'$input' is a palindrome.");
  } else {
    print("'$input' is not a palindrome.");
  }
}