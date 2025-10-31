List<String> _movies = [
  'Titanic',
  'Catch Me If You Can',
  'Tom & Jerry',
  'My Love',
  'Our Beloved Summer',
  'Squid Game',
];

   List matchQuery(List items, String query) {
      if (query.isEmpty) {
        return items;
      }
      return items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }



List<String> get moviesList => _movies;
