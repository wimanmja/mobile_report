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
  @override
  Widget build(BuildContext context) {
    List<Widget> widget = [
      HomeScreen(),
      ReportScreen(),
      ProfileScreen()
    ];

    return Container(color: Colors.red);
  }

}