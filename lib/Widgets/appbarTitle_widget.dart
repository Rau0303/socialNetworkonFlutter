
import 'package:flutter/material.dart';

class appbarTitle_widget extends StatelessWidget {
  const appbarTitle_widget({
    super.key,
    required this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          color: Colors.black
      ),
    );
  }
}
