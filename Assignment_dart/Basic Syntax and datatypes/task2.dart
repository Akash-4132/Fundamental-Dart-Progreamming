import 'dart:io';


double cToF(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double fToC(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void main() {
  print("Choose conversion type:");
  print("1: Celsius to Fahrenheit");
  print("2: Fahrenheit to Celsius");

  stdout.write("Enter your choice (1 or 2): ");
  String? choice = stdin.readLineSync();

  if (choice == "1") {
    stdout.write("Enter temperature in Celsius: ");
    double? celsius = double.tryParse(stdin.readLineSync() ?? "");
    if (celsius != null) {
      print("Temperature in Fahrenheit: ${cToF(celsius)}°F");
    } else {
      print("Invalid input! Please enter a number.");
    }
  } else if (choice == "2") {
    stdout.write("Enter temperature in Fahrenheit: ");
    double? fahrenheit = double.tryParse(stdin.readLineSync() ?? "");
    if (fahrenheit != null) {
      print("Temperature in Celsius: ${fToC(fahrenheit)}°C");
    } else {
      print("Invalid input! Please enter a number.");
    }
  } else {
    print("Invalid choice! Please enter 1 or 2.");
  }
}
