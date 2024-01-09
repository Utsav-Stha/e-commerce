import 'package:e_commerce/config/network/networkRequest.dart';
import 'package:e_commerce/feature/cart_page/domain/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, cartProviderModel, child) => FutureBuilder(
        future: NetworkRequest.getOneProduct(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: cartProviderModel.cartItemList.length,
            itemBuilder: (context, index) {
              return Card(
                child: Text(index.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
