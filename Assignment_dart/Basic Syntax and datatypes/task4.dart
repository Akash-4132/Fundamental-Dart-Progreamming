// Create a program that calculates the area and circumference of a circle. Use constants to
// store the value of pi.

import 'dart:io';

void main() {
  
  const  pi = 3.14;

  // Get user input for the radius
  stdout.write("Enter the radius of the circle: ");
  double? radius = double.parse(stdin.readLineSync()!);

  // Check if input is valid
  if (radius > 0) {
   
    double area = pi * radius * radius;
    double circumference = 2 * pi * radius;

    // Print results
    print("Area of the circle: $area");
    print("Circumference of the circle: $circumference");
  } else {
    print("Invalid input! Please enter a positive number for the radius.");
  }
}
