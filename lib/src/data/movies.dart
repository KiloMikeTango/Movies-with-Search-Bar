
import '../models/movie_model.dart';

const imageDir = 'lib/src/assets/movies';

List<Movie> _movies = [
  Movie(name: 'Titanic', movieImage: '$imageDir/mov1.jpg'),
  Movie(name: 'Catch Me If You Can', movieImage: '$imageDir/mov2.jpg'),
  Movie(name: 'Tom & Jerry', movieImage: '$imageDir/mov3.jpg'),
  Movie(name: 'My Love', movieImage: '$imageDir/mov4.jpg'),
  Movie(name: 'Our Beloved Summer', movieImage: '$imageDir/mov5.jpg'),
  Movie(name: 'Squid Game', movieImage: '$imageDir/mov6.jpg'),
];

List<Movie> get moviesList => _movies;
