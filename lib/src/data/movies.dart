import '../models/movie_model.dart';

List<Movie> _movies = [
  Movie(name: 'Titanic'),
  Movie(name: 'Catch Me If You Can'),
  Movie(name: 'Tom & Jerry'),
  Movie(name: 'My Love'),
  Movie(name: 'Our Beloved Summer'),
  Movie(name: 'Squid Game'),
];


List<Movie> get moviesList => _movies;
