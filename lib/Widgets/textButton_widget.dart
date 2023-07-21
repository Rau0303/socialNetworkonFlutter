import 'package:flutter/material.dart';
class TextButton_widget extends StatelessWidget {
  const TextButton_widget({
    super.key,
    required this.text,
    required this.onPressed
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(

      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height*0.04,

          ),
        ),
      ),
    );
  }
}