 /* Create a simple grading system that takes a student’s score as input and prints their grade:
• A: 90–100
• B: 80–89
• C: 70–79
• D: 60–69
• F: Below 60
*/


import 'dart:io';

void main() {
  stdout.write("Enter student score: ");
  int score = int.parse(stdin.readLineSync()!);

  if (score >= 90 && score <= 100) {
    print("Grade: A");
  } else if (score >= 80 && score < 90) {
    print("Grade: B");
  } else if (score >= 70 && score < 80) {
    print("Grade: C");
  } else if (score >= 60 && score < 70) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }
}
