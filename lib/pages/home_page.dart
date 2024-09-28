import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'about_us_screen.dart';
import 'results_screen.dart';
import 'detect_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> _screens = [
    const DetectScreen(), // Screen 1
    const ResultsScreen(), // Screen 2
    const AboutUsScreen(), // Screen 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fision'),
        backgroundColor: const Color.fromRGBO(2, 41, 84, 1),
        foregroundColor: Colors.white,
      ),
      body: _screens[currentIndex], // Update body based on the current index
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(2, 41, 84, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            curve: Curves.linear,
            duration: const Duration(milliseconds: 300),
            backgroundColor: const Color.fromRGBO(2, 41, 84, 1),
            rippleColor: Colors.grey,
            hoverColor: Colors.grey,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            tabShadow: [
              BoxShadow(color: const Color.fromARGB(255, 11, 54, 101))
            ],
            activeColor: Colors.white,
            color: const Color.fromRGBO(31, 124, 145, 1),
            padding: const EdgeInsets.all(9),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.add_a_photo_rounded,
                text: 'Detect',
              ),
              GButton(
                icon: Icons.bar_chart_sharp,
                text: 'Results',
                iconColor: Color.fromRGBO(31, 124, 145, 1),
                iconActiveColor: Color.fromARGB(255, 255, 255, 255),
              ),
              GButton(
                icon: Icons.people,
                text: 'About Us',
                iconColor: Color.fromRGBO(31, 124, 145, 1),
                iconActiveColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ],
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
