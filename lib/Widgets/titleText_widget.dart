import 'package:flutter/material.dart';

class TitleText_widget extends StatelessWidget {
   TitleText_widget(
    this.text,
  );
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        color: Colors.black,
        fontSize: MediaQuery.of(context).size.height*0.06,
        fontWeight: FontWeight.bold
    ),
    );
  }
}