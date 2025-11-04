import 'package:flutter/material.dart';
import 'package:movie_with_searchbar/src/app.dart';
import 'package:provider/provider.dart';
import '../src/services/theme_service.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => ThemeService(), child: const App()),
  );
}
