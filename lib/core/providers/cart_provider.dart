import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Map<String, dynamic>> cartItemList = [];

  void addProduct(Map<String, dynamic> cartItem) {
    cartItemList.add(cartItem);
    notifyListeners();
  }

  void deleteProduct(int index) {
    notifyListeners();
  }
}
