import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 63, 125),
      body: Text(
        'about us screen',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
