import 'package:flutter/material.dart';

class MovieTheme {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red.shade600,
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      hintStyle: TextStyle(color: Colors.grey),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
