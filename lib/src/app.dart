import 'package:flutter/material.dart';
import 'package:movie_with_searchbar/src/screens/movie_screen.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MovieTheme.lightTheme,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: MovieScreen(),
    );
  }
}
