import 'package:flutter/material.dart';
import 'package:movie_with_searchbar/src/screens/data/movies.dart';
import '../services/search_service.dart';

class MatchQueryList extends StatefulWidget {
  final SearchService searchQuery;
  const MatchQueryList({super.key, required this.searchQuery});

  @override
  State<MatchQueryList> createState() => _MatchQueryListState();
}

class _MatchQueryListState extends State<MatchQueryList> {
  @override
  void dispose() {
    widget.searchQuery.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.searchQuery.searchQueryStream,
      builder: (context, snapshot) {
        final currentQuery = snapshot.data ?? '';
        final matchQueryList = matchQuery(moviesList, currentQuery);
        return ListView.builder(
          itemCount: matchQueryList.length,
          itemBuilder: (context, index) {
            final item = matchQueryList[index];
            return ListTile(title: Text(item));
          },
        );
      },
    );
  }
}
