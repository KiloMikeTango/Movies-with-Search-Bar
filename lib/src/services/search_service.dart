import 'dart:async';

class SearchService {
  final StreamController<String> _searchQueryController = StreamController();

  Stream<String> get searchQueryStream => _searchQueryController.stream;
  Function(String) get updateSearchQuery => _searchQueryController.sink.add;

void dispose(){
_searchQueryController.close();
}

}

