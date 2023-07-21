import 'package:flutter/material.dart';
class defaultTextButton_widget extends StatelessWidget {
  const defaultTextButton_widget({
    super.key,
    required this.text,
    required this.onPressed
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.blue,
            fontSize: MediaQuery.of(context).size.height*0.02,
          ),
        ));
  }
}

