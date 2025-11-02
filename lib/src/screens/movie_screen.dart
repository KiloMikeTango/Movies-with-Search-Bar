import 'package:flutter/material.dart';
import 'package:movie_with_searchbar/src/widgets/search_field.dart';
import '../services/search_service.dart';
import '../widgets/matchquery_list.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  final FocusNode _searchFocusNode = FocusNode();
  final TextEditingController _searchController = TextEditingController();
  final SearchService _search = SearchService();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 40,
              child: SearchField(
                searchFocusNode: _searchFocusNode,
                searchQuery: _search,
              ),
            ),
            IconButton(
              onPressed: () => _searchFocusNode.requestFocus(),
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),
      body: MatchQueryList(searchQuery: _search),
    );
  }
}
