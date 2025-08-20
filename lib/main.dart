import 'package:flutter/material.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOHAMMED HM',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Mohammed AL Manarh'),
    );
  }
}
