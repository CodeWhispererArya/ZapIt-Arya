import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme:  AppBarTheme(
      color: Colors.blue, toolbarTextStyle: 
      TextTheme(
        titleLarge: TextStyle(color: Colors.white),
      ).bodyText2, titleTextStyle: TextTheme(
        titleLarge: TextStyle(color: Colors.white),
      ).titleLarge,
    ),
    textTheme:  TextTheme(
      titleLarge: TextStyle(fontSize: 18),
      bodyLarge: TextStyle(fontSize: 16),
    ),
  );

  static final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: Colors.grey[800],
    appBarTheme: AppBarTheme(
      color: Colors.grey[800], toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(color: Colors.white),
      ).bodyText2, titleTextStyle: TextTheme(
        titleLarge: TextStyle(color: Colors.white),
      ).titleLarge,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 18),
      bodyLarge: TextStyle(fontSize: 16),
    ),
  );
}

extension on TextTheme {
  get bodyText2 => null;
}