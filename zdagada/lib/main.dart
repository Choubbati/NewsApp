import 'package:flutter/material.dart';
import 'package:zdagada/Screens/Home_page.dart';

void main() {
  runApp(const Zdagada());
}

class Zdagada extends StatelessWidget {
  const Zdagada({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
