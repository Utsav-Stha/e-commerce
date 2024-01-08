import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  void addProduct() {
    notifyListeners();
  }
}
