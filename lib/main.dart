import 'package:flutter/material.dart';
import 'package:scocial_network_flutter/Screens/Home%20UI/profile_screen.dart';
import 'package:scocial_network_flutter/Screens/Login%20UI/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen()
    );
  }
}
