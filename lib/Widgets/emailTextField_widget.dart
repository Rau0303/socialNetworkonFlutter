import 'package:flutter/material.dart';

class emailTextField_widget extends StatelessWidget {
  const emailTextField_widget({
    super.key,
    required this.usernameController,
    required this.hintText
  });

  final TextEditingController usernameController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: usernameController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )
      ),
    );
  }
}