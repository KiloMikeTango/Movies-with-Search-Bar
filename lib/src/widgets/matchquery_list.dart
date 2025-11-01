// matchquery_list.dart (FIXED)
import 'package:flutter/material.dart';
import '../services/search_service.dart';
import 'package:movie_with_searchbar/src/models/movie_model.dart'; // Keep this for type safety

class MatchQueryList extends StatefulWidget {
  final SearchService searchQuery;
  const MatchQueryList({super.key, required this.searchQuery});

  @override
  State<MatchQueryList> createState() => _MatchQueryListState();
}

class _MatchQueryListState extends State<MatchQueryList> {
  @override
  void dispose() {
    // A service passed from a parent should generally be disposed by the parent.
    // If you dispose it here, you risk closing the stream while the parent still needs it.
    // widget.searchQuery.dispose(); // <-- REMOVE THIS LINE
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1. Listen to the filtered list stream!
    return StreamBuilder<List<Movie>>(
      stream: widget.searchQuery.filteredMoviesStream,
      builder: (context, snapshot) {
        // Handle loading/initial state
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final List<Movie> filteredMovies = snapshot.data!;

        // 2. Handle no results
        if (filteredMovies.isEmpty) {
          return const Center(child: Text('No results found.'));
        }

        // 3. Build the list from the stream data
        return ListView.builder(
          itemCount: filteredMovies.length,
          itemBuilder: (context, index) {
            final movie = filteredMovies[index];
            return ListTile(title: Text(movie.name!));
          },
        );
      },
    );
  }
}