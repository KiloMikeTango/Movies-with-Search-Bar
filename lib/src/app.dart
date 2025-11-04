import 'package:flutter/material.dart';
import 'package:movie_with_searchbar/src/screens/movie_screen.dart';
import 'package:provider/provider.dart';
import 'theme/theme.dart';
import 'services/theme_service.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          theme: MovieTheme.lightTheme,
          darkTheme: MovieTheme.darkTheme,
          themeMode: themeService.themeMode,
          home: MovieScreen(),
        );
      },
    );
  }
}
