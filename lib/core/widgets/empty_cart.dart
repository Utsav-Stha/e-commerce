import 'package:e_commerce/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../feature/home_page/presentation/home_page.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Your cart is empty'),
        const SizedBox(
          height: 16.0,
        ),
        SizedBox(
          height: 400,
          width: 400,
          child: Image.asset("assets/images/empty_cart.png"),
        ),
        CustomElevatedButton(
          buttonText: 'Browse Products',
          navigationWidget: HomePage(),
        ),
      ],
    );
  }
}
