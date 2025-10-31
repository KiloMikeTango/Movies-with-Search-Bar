import 'package:flutter/material.dart';
import 'package:movie_with_searchbar/src/app.dart';
import 'package:movie_with_searchbar/src/screens/movie_screen.dart';

void main() {
  runApp(const App());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: MovieScreen()));
  }
}
