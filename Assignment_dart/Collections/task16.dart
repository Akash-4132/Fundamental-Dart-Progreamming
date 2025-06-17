// Create a simple address book using a map, where the keys are names and the values are 
// phone numbers. Add, update, and remove entries based on user input.


import 'dart:io';

void main() {
  Map<String, String> addressBook = {};

  while (true) {
    print('\n--- Address Book ---');
    print('1. Add Entry');
    print('2. Update Entry');
    print('3. Remove Entry');
    print('4. View All Entries');
    print('5. Exit');
    stdout.write('Choose an option (1-5): ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter name: ');
        String? name = stdin.readLineSync();
        stdout.write('Enter phone number: ');
        String? phone = stdin.readLineSync();
        if (name != null && phone != null) {
          addressBook[name] = phone;
          print('Entry added.');
        }
        break;

      case '2':
        stdout.write('Enter name to update: ');
        String? name = stdin.readLineSync();
        if (name != null && addressBook.containsKey(name)) {
          stdout.write('Enter new phone number: ');
          String? newPhone = stdin.readLineSync();
          if (newPhone != null) {
            addressBook[name] = newPhone;
            print('Entry updated.');
          }
        } else {
          print('Name not found.');
        }
        break;

      case '3':
        stdout.write('Enter name to remove: ');
        String? name = stdin.readLineSync();
        if (name != null && addressBook.containsKey(name)) {
          addressBook.remove(name);
          print('Entry removed.');
        } else {
          print('Name not found.');
        }
        break;

      case '4':
        if (addressBook.isEmpty) {
          print('Address book is empty.');
        } else {
          print('\n--- Address Book Entries ---');
          addressBook.forEach((name, phone) {
            print('$name: $phone');
          });
        }
        break;

      case '5':
        print('Exiting program.');
        return;

      default:
        print('Invalid option. Please try again.');
    }
  }
}
