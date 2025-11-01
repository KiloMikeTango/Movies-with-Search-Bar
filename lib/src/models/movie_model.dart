class Movie {
  static int id = 0;
  final String? name;
  final String? movieImage;
  final String? description;
  // final AssetImage movieImg;

  Movie({required this.name, required this.movieImage, required this.description}) {
    id++;
  }
}
