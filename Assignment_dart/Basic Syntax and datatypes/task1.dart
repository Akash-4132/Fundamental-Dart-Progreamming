// Write a program that takes a user's name and age as input and prints a welcome message
// that includes their name and how many years they have left until they turn 100.


import 'dart:io';

void main() {

  String? name;
  int? age;

  print("Enter your name");
  name=stdin.readLineSync()!;

  print("Enter yoyur age");
  age=int.parse(stdin.readLineSync()!);

  int yearsleft = 100 - age;

  print(" Your name is ${name} and your age is left for 100 year is ${yearsleft}");


}
