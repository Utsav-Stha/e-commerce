import 'package:e_commerce/core/providers/cart_item_count_provider.dart';
import 'package:e_commerce/feature/cart_page/domain/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../feature/cart_page/presentation/cart_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.person_outline_rounded),
      ),
      title: const Text('PASAL'),
      titleTextStyle: const TextStyle(letterSpacing: 6.0),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: Stack(
            children: [
              Positioned(
                right: -1.0,
                child: Consumer<CartProvider>(
                    builder: (context, cartProviderModel, child) =>
                        cartProviderModel.cartItemList.isEmpty
                            ? const Text('')
                            : CircleAvatar(
                                radius: 8,
                                child: Text(
                                  cartProviderModel.cartItemList.length
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              )),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
            ],
          ),
        )
      ],
      actionsIconTheme: const IconThemeData(
        color: Colors.black,
      ),
    );
  }
}
