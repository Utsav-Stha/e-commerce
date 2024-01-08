import 'package:e_commerce/core/widgets/empty_cart.dart';

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key, cartItem});
  final List? cartItem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: cartItem!.isNotEmpty ? CartList() : EmptyCart()),
    );
  }
}

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is cart list'),
    );
  }
}
