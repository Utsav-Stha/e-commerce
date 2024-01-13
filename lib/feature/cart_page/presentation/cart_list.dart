import 'package:e_commerce/config/network/networkRequest.dart';
import 'package:e_commerce/core/widgets/product_display_card.dart';
import 'package:e_commerce/core/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, cartProviderModel, child) => FutureBuilder(
        future: NetworkRequest.getAllProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.hasError.toString()),
            );
          } else {
            return ListView.builder(
              itemCount: cartProviderModel.cartItemList.length,
              itemBuilder: (context, index) {
                var retrievedData = snapshot.data?[index];

                return ProductDisplayCard(data: retrievedData);
              },
            );
          }
        },
      ),
    );
  }
}
