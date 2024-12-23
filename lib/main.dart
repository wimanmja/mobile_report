import 'package:flutter/material.dart';
import 'package:mobile_report/screens/home%20screen/home_screen.dart';
import 'package:mobile_report/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Report',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "Comfortaa" 
      ),
      home: const MainScreen(),
    );
  }
}