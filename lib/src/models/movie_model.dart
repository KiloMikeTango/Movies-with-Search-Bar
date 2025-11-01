
class Movie {
  static int id = 0;
  final String? name;
  final String? movieImage;
  // final AssetImage movieImg;

  Movie({required this.name, required this.movieImage}) {
    id++;
  }
}
