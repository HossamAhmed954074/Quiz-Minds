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
    Icon(Icons.category_outlined),
    Icon(Icons.leaderboard_outlined),
    Icon(Icons.person_outlined),
  ];

  List<Widget> pages = [HomeScreen(), HomeScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,

      child: Scaffold(
        body: SafeArea(child: pages[_selectedIndex]),
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.orangeAccent,
          color: Colors.blueAccent.shade100,
          animationCurve: Curves.easeInOut,
          index: _selectedIndex,
          animationDuration:const Duration(milliseconds: 200),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: icons,
        ),
      ),
    );
  }
}
