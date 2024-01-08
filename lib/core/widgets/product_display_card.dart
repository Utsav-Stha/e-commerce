import 'package:flutter/material.dart';

class ProductDisplayCard extends StatelessWidget {
  const ProductDisplayCard({super.key,required this.data});
  final Map<String,dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 200,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(data['title'].toString(),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis),
                Text(data['price'].toString()),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.network(
                  data['image'],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
