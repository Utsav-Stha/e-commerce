import 'package:e_commerce/core/widgets/empty_cart.dart';
import 'package:e_commerce/core/providers/cart_provider.dart';
import 'package:e_commerce/feature/cart_page/presentation/cart_list.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<CartProvider>(
        builder: (context, cartProviderModel, child) {
          return Center(
            child: cartProviderModel.cartItemList.isNotEmpty
                ? const CartList()
                : const EmptyCart(),
          );
        },
      ),
    );
  }
}
