  // create a program that fetches data from a fake API endpoint (using the http package). 
// Display the data after it's loaded and catch any errors if the request fails

import 'dart:convert';
//import 'package:http/http.dart' as http;

void main() async {
  print('Fetching data...');

  try {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Data loaded successfully:');
      print(data);
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}
