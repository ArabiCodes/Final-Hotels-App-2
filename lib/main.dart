import 'package:flutter/material.dart';
import 'package:hotelsapp/loginpage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotels Indonesia',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}
