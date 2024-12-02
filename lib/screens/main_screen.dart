// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_report/screens/home%20screen/home_screen.dart';
import 'package:mobile_report/screens/profile%20screen/profile_screen.dart';
import 'package:mobile_report/screens/report%20screen/report_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [HomeScreen(), ReportScreen(), ProfileScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.red,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: GNav(
          onTabChange: _onItemTapped,
          backgroundColor: Colors.red,
          color: Colors.white,
          activeColor: Colors.amber,
          tabBackgroundColor: Colors.red.shade300,
          padding: EdgeInsets.all(16),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.assignment,
              text: 'Report',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
