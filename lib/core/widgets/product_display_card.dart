import 'package:e_commerce/feature/cart_page/domain/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDisplayCard extends StatelessWidget {
  const ProductDisplayCard({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 14.0, 8.0, 14.0),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 170,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(data['title'].toString(),
                          softWrap: true, overflow: TextOverflow.ellipsis),
                      Text(data['price'].toString()),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30.0),
                      height: 150,
                      width: 150,
                      child: Image.network(
                        data['image'],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Consumer<CartProvider>(
              builder: (context, cartProviderModel, child) {
                return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                    onPressed: () {
                      cartProviderModel.addProduct(data['id']);
                    },
                    icon: const Icon(Icons.favorite_outline_outlined),
                  ),
                ]);
              },
            )
          ],
        ),
      ),
    );
  }
}
