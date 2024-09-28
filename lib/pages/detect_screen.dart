import 'package:flutter/material.dart';

class DetectScreen extends StatelessWidget {
  const DetectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 63, 125),
      body: Text(
        'detect screen',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
