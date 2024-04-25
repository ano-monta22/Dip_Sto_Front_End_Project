import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.black,
      onPressed: onPressed,
      child:Text(text,
        style: TextStyle(
          fontSize: 26,
          color: Colors.black,
        ),
      ),
    );
  }
}
