// Write a program that simulates a shopping cart. Define classes for Product, Cart, and Allow users to add products to the cart and calculate the total price of the items.


import 'dart:core';

// Product class
class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

// Cart class
class Cart {
  List<Product> _items = [];

  void addProduct(Product product) {
    _items.add(product);
    print("${product.name} added to cart at \$${product.price.toStringAsFixed(2)}");
  }

  void showCart() {
    if (_items.isEmpty) {
      print("Cart is empty.");
    } else {
      print("\nItems in Cart:");
      for (var item in _items) {
        print("- ${item.name}: \$${item.price.toStringAsFixed(2)}");
      }
    }
  }

  double calculateTotal() {
    double total = 0;
    for (var item in _items) {
      total += item.price;
    }
    return total;
  }
}

void main() {
  // Create some products
  Product p1 = Product("Shoes", 59.99);
  Product p2 = Product("T-shirt", 25.50);
  Product p3 = Product("Backpack", 40.00);

  // Create a cart
  Cart cart = Cart();

  // Simulate adding items
  cart.addProduct(p1);
  cart.addProduct(p2);
  cart.addProduct(p3);

  // Show cart and total
  cart.showCart();
  double total = cart.calculateTotal();
  print("\nTotal Price: \$${total.toStringAsFixed(2)}");
}

