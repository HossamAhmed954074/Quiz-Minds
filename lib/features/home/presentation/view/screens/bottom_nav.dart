import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:quiz_minds/features/home/presentation/view/screens/home_screen.dart';
import 'package:quiz_minds/features/profile/presentation/view/screens/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> icons = [
    Icon(Icons.home_outlined),
    Icon(Icons.favorite_outlined),
    Icon(Icons.person_outlined),
  ];

  List<Widget> pages = [HomeScreen(), HomeScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[_selectedIndex]),
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.orangeAccent,
        color: Colors.blueAccent,
        index: _selectedIndex,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: icons,
      ),
    );
  }
}
