import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  List cart = [
    //itemName, itemPrice, itemImage, color
    ["Shirt", "Casual Shirt","50", "lib/images/shirt.jpg", 20],
    ["Suit", "Mens Suit","200", "lib/images/suit.jpg", 30],
    ["shoes", "Formal Shoes","100", "lib/images/shoes.jpg", 15],
    ["Belt", "Mens Belt","40", "lib/images/belt.jpg", 40],
    ["Watch", "Casual Watch","80", "lib/images/watch.jpg", 35]
  ];

  List _cartItems = [
  ];

  get shopItems => cart;
  get CartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(cart[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String CalculateTotal(){
    double totalPrice=0;
    for(int i=0; i< _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][2]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}
