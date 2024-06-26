// main.dart
import 'package:flutter/material.dart';
import 'home.dart'; // Import home.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(), 
       debugShowCheckedModeBanner: false,
    );
  }
}
