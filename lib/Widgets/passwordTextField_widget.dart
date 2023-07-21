import 'package:flutter/material.dart';

class passwordTextField_widget extends StatelessWidget {
  const passwordTextField_widget({
    super.key,
    required this.userPassController,
    required this.hintText
  });

  final TextEditingController userPassController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userPassController,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      obscureText: true,
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )
      ),
    );
  }
}