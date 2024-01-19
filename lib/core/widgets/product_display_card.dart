import 'package:e_commerce/core/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDisplayCard extends StatelessWidget {
  const ProductDisplayCard({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(27, 38, 59, 1),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 14.0, 8.0, 14.0),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: 170,
                  child: Column(
                    children: [
                      Text(data['title'].toString(),
                          softWrap: true, overflow: TextOverflow.ellipsis),
                      Text('\$${data['price'].toString()}'),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20.0, 8.0, 0, 8.0),
                        color: Colors.white,
                        child: Stack(
                          alignment: Alignment(1.1, -1.1),
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 30.0),
                              height: 120,
                              width: 100,
                              child: Image.network(
                                data['image'],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Consumer<CartProvider>(
                              builder: (context, cartProviderModel, child) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      color: Color.fromRGBO(13, 27, 42, 1),
                                      onPressed: () {
                                        cartProviderModel.addProduct(data);
                                      },
                                      icon: const Icon(
                                        Icons.favorite_outline_outlined,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
