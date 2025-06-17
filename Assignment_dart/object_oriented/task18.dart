// Define a BankAccount class with properties like account number, account holder, and 
// balance. Add methods to deposit, withdraw, and check the balance. Ensure the withdraw 
// method doesn’t allow overdrafts.

import 'dart:core';

class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Invalid withdrawal amount.");
    } else if (amount > balance) {
      print("Insufficient balance. Withdrawal denied.");
    } else {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}");
    }
  }

  void checkBalance() {
    print("Current balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  BankAccount myAccount = BankAccount("123456789", "John Doe", 1000.0);

  print("Welcome, ${myAccount.accountHolder}");
  myAccount.checkBalance();

  myAccount.deposit(250.0);
  myAccount.withdraw(1200.0); // Should fail
  myAccount.withdraw(500.0);  // Should succeed
  myAccount.checkBalance();
}
