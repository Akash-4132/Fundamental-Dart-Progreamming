// write a program that uses async* to create a stream of integers. Display each integer as it’s 
// emitted and stop the stream after a certain count


import 'dart:async';


Stream<int> generateIntegers(int count) async* {
  for (int i = 1; i <= count; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; 
  }
}

void main() async {
  int maxCount = 5;

  // Listen to the stream
  await for (int value in generateIntegers(maxCount)) {
    print('Received: $value');
  }

  print('Stream finished after $maxCount integers.');
}
