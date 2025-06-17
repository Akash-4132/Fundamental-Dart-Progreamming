// Write a function that simulates fetching multiple data points (e.g., list of users) 
// asynchronously. Use await and async keywords to wait for each "data point" to load, then 
// display all the data once loaded

import 'dart:async';

Future<void> fetchUsers() async {
  print('Fetching users...');

  List<String> users = [];


  for (int i = 1; i <= 3; i++) {
    String user = await fetchUser(i);
    users.add(user);
  }

  print('\nAll users loaded:');
  for (var user in users) {
    print(user);
  }
}

Future<String> fetchUser(int id) async {
  await Future.delayed(Duration(seconds: 1));
  return 'User $id';
}

void main() {
  fetchUsers();
}
