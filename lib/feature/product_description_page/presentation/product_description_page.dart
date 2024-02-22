import 'package:e_commerce/core/app_constants/device_size.dart';
import 'package:flutter/material.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              width: DeviceSize.getWidth(context),
              height: DeviceSize.getHeight(context) * 0.4,
              child: Image.network(
                data['image'],
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            data['title'],
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            data['price'].toString(),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            data['description'],
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Category: ${data['category']}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Rating:${data['rating']['rate'].toString()}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
