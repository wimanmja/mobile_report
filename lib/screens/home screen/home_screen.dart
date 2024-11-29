import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("HOME"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBar: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: GNav(
            activeColor: Colors.amber,
            backgroundColor: Colors.red,
            tabBackgroundColor: Colors.red.shade300,
            padding: EdgeInsets.all(20),
            tabs: const [
              GButton(icon: Icons.home_rounded, iconColor: Colors.white, text: "Home"),
              GButton(icon: Icons.assignment_add, iconColor: Colors.white, text: "Report"),
              GButton(icon: Icons.person_rounded, iconColor: Colors.white, text: "Profile")
            ]
          ),
        ),
      ),
    );
  }
}