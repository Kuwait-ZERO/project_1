import 'package:flutter/material.dart';
import 'package:project_1/splash_screen.dart';
import 'home_page.dart';

void main() {
  runApp(LetsPlayCodeApp());
}

class LetsPlayCodeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burgan Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
