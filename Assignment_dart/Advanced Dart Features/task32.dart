// implement a simple number guessing game where the computer generates a random
// number, and the user has to guess it. Use a lambda function to provide hints, such as “too 
// high” or “too low



import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int secretNumber = random.nextInt(100) + 1; 
  bool guessedCorrectly = false;


  var giveHint = (int guess) =>
      guess > secretNumber ? "Too high!" : "Too low!";

  print('🎯 Guess the number between 1 and 100');

  while (!guessedCorrectly) {
    stdout.write('Enter your guess: ');
    String? input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print('Please enter a valid number.');
      continue;
    }

    int? guess = int.tryParse(input);

    if (guess == null) {
      print('Invalid input. Please enter a number.');
      continue;
    }

    if (guess == secretNumber) {
      print('🎉 Correct! The number was $secretNumber.');
      guessedCorrectly = true;
    } else {
      print(giveHint(guess));
    }
  }
}
