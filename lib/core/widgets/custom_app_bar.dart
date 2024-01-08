import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(onPressed: () {

      }, icon: const Icon(Icons.person_outline_rounded),),
      title:const Text('PASAL'),
      titleTextStyle: const TextStyle(
          letterSpacing: 6.0
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: IconButton(onPressed: () {

          }, icon: const Icon(Icons.shopping_cart_outlined),),
        )
      ],
      actionsIconTheme: const IconThemeData(
        color: Colors.black,
      ),
    );
  }
}
