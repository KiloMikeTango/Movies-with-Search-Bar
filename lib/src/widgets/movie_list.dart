import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../screens/about_movie.dart';

class MovieList extends StatelessWidget {
  final List<Movie> movie;
  const MovieList({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movie.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),

              child: ListTile(
                title: Text(movie[index].name!),
                leading: Image.asset(movie[index].movieImage!),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutMovie(
                      
                        appBarTitle: movie[index].name,
                        movieImage: movie[index].movieImage!,
                        description: movie[index].description!,

                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(),
          ],
        );
      },
    );
  }
}
