import 'package:flutter/material.dart';
import '../screens/data/movies.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
     itemCount: moviesList.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(moviesList[index]));
      },
    );
  }
}
