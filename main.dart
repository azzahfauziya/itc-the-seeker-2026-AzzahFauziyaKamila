import 'package:flutter/material.dart';
import 'homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITC Directory',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 3, 41, 0),
        ),
      ),
      home: HomeScreen(),
    );
  }
}