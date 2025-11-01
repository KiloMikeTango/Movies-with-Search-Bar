class Movie {
  static int id = 0;
  final String? name;
 
  Movie({required this.name}) {
    id++;
  }
}
