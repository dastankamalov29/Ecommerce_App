import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //Product for sale
  final List<Product> _shop = [
    //Product 1
    Product(
        name: 'Product 1',
        price: 100.1,
        description: "Description Item",
        imagePath: 'assets/Product1.png'),
    //Product 2
    Product(
        name: 'Product 2',
        price: 100.1,
        description: "Description Item",
        imagePath: 'assets/Product2.png'),
    //Product 3
    Product(
        name: 'Product 3',
        price: 100.1,
        description: "Description Item",
        imagePath: 'assets/Product3.png'),
    //Product 4
    Product(
        name: 'Product 4',
        price: 100.1,
        description: "Description Item",
        imagePath: 'assets/Product4.png'),
  ];

  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
