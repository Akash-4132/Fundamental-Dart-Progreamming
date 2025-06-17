//Write a program to take a number from the user and determine if it’s even or odd

import 'dart:io';

void main(){

  print("Enter numbers");
  int?  num = int.parse(stdin.readLineSync()!);

  if(num%2==0){

    print("Even number ");

  }
    else{
    
    print("odd number");
    }

  }