import 'dart:async';
import 'package:movie_with_searchbar/src/data/movies.dart';

import '../models/movie_model.dart';

class SearchService {
  // Handles text from the search bar
  final StreamController<String> _searchQueryController =
      StreamController<String>();

  // push the filtered list of Movies to the UI
  final StreamController<List<Movie>> _filteredMoviesController =
      StreamController<List<Movie>>.broadcast();

  // exposed to the SearchField for input
  Stream<String> get searchQueryStream => _searchQueryController.stream;
  // Stream exposed to the MatchQueryList for output
  Stream<List<Movie>> get filteredMoviesStream =>
      _filteredMoviesController.stream;

  // exposed to the SearchField's onChanged
  Function(String) get updateSearchQuery => _searchQueryController.sink.add;

  //for basic debouncing
  Timer? _debounce;

  SearchService() {
    // Initialize the output stream with the full list
    _filteredMoviesController.add(moviesList);

    // 2. Listen to the search input stream and start filtering
    _searchQueryController.stream.listen((query) {
      if (_debounce?.isActive ?? false) _debounce!.cancel();

      _debounce = Timer(const Duration(milliseconds: 300), () {
        _performSearch(query.toLowerCase());
      });
    });
  }

  void _performSearch(String query) {
    if (query.isEmpty) {
      _filteredMoviesController.add(moviesList); // Emit full list
      return;
    }

    final filteredList = moviesList.where((movie) {
      // Assuming 'name' is the property to search against
      return movie.name!.toLowerCase().contains(query);
    }).toList();

    // Push the new filtered list to the output stream
    _filteredMoviesController.add(filteredList);
  }

  void dispose() {
    _debounce?.cancel();
    _searchQueryController.close();
    _filteredMoviesController.close();
  }
}
