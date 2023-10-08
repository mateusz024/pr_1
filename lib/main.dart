import 'package:flutter/material.dart';
import 'package:pr_3/screenHome/home_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}