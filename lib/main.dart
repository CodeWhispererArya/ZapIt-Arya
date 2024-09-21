import 'package:flutter/material.dart';
import './pages/splash_screen.dart';
import './pages/theme.dart'; // New file for theme definitions

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZAP',
      theme: AppTheme.lightTheme, // Use the light theme by default
      home: SplashScreen(),
    );
  }
}