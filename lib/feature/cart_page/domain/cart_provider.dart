import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<int> cartItemList = [];
  void addProduct(int index) {
    cartItemList.add(index);
    notifyListeners();
  }

  void deleteProduct(int index) {
    notifyListeners();
  }
}
