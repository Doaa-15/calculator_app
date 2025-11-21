import 'package:calculator_app/calculator_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( calculator_app());
}
class calculator_app extends StatefulWidget {
  const calculator_app({super.key});

  @override
  State<calculator_app> createState() => _calculator_appState();
}

class _calculator_appState extends State<calculator_app> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:calculator(),
    );
  }
}