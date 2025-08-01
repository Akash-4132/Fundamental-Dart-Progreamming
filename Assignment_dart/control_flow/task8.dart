

// Implement a basic calculator that performs addition, subtraction, multiplication, or division 
// based on the user’s choice.


import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter an operator (+, -, *, /): ");
  String operator = stdin.readLineSync()!;

  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
     
        result = num1 / num2;
      break;
    
    default:
      print("Invalid operator");
      return;
  }

  print("Result: $result");
}
