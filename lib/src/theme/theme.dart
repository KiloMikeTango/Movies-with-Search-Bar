import 'package:flutter/material.dart';

class MovieTheme {
  static final ThemeData lightTheme = ThemeData(
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all<Color?>(Colors.white),
      trackColor: MaterialStateProperty.all<Color?>(Colors.grey.shade400),
      trackOutlineColor: MaterialStateProperty.all<Color?>(Colors.grey.shade400),
    ),
    cardTheme: CardThemeData(color: Colors.white,),
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    brightness: Brightness.light,
    primaryColor: Colors.red.shade600,
    scaffoldBackgroundColor: Colors.white,
    //Searchbar text color
    primaryColorDark: Colors.black,
    textTheme: TextTheme(
      titleSmall: TextStyle(
        color: Colors.black,
        fontSize: 16.5,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red.shade600,
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all<Color?>(Colors.white),
      trackColor: MaterialStateProperty.all<Color?>(Colors.green),
    ),
    cardTheme: CardThemeData(color: Colors.grey.shade900, shadowColor: Colors.blueGrey),
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    brightness: Brightness.dark,
    primaryColor: Colors.black54,
    //Searchbar text color
    primaryColorDark: Colors.black87,
    scaffoldBackgroundColor: Colors.grey.shade900,
    textTheme: TextTheme(
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 16.5,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black54,
      foregroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade100,
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );
}
