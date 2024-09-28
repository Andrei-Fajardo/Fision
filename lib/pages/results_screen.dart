import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 63, 125),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                textAlign: TextAlign.center,
                'here yung pics',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 11, 81, 156),
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  width: 4,
                  color: const Color.fromARGB(255, 22, 82, 146),
                ),
              ),
              width: 225,
              height: 225,
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                textAlign: TextAlign.center,
                'here ang results:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 11, 81, 156),
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  width: 4,
                  color: const Color.fromARGB(255, 22, 82, 146),
                ),
              ),
              width: 375,
              height: 450,
            )
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const ResultsScreen());
