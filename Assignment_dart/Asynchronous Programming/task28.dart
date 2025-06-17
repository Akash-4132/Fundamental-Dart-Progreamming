// implement a mock weather fetching program. Display different messages as it waits for a 
// response and then shows a message like “Weather data loaded successfully.”

import 'dart:async';

Future<void> fetchWeatherData() async {
  print('Connecting to weather server...');
  await Future.delayed(Duration(seconds: 1));

  print('Fetching latest weather updates...');
  await Future.delayed(Duration(seconds: 2));

  print('Processing data...');
  await Future.delayed(Duration(seconds: 1));

  print('\n✅ Weather data loaded successfully!');
}

void main() {
  fetchWeatherData();
}
