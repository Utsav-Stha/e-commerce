import 'package:e_commerce/core/styling/elevated_button_themes.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.buttonText, required this.navigationWidget});
  final String buttonText;
  final Widget navigationWidget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButtonThemes.light,
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => navigationWidget,
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          buttonText,
          style: TextStyle(letterSpacing: 3.0),
        ),
      ),
    );
  }
}
