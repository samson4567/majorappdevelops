import 'package:flutter/material.dart';
import 'package:majorappdevelops/user_interface/SignUp.dart';
import 'user_interface/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const Home_screen2());
  }
}
