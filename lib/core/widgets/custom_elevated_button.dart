import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.buttonText, required this.navigationWidget});
  final String buttonText;
  final Widget navigationWidget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color.fromRGBO(255, 100, 19, 0.3),
        ),
        foregroundColor: MaterialStatePropertyAll(
          Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => navigationWidget,
            ));
      },
      child: Text(buttonText),
    );
  }
}
