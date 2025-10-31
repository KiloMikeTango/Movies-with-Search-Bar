import 'package:flutter/material.dart';
import 'package:movie_with_searchbar/src/services/search_service.dart';

class SearchField extends StatelessWidget {
  final FocusNode searchFocusNode;
  final SearchService searchQuery;
  const SearchField({super.key, required this.searchFocusNode, required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (query) => searchQuery.updateSearchQuery(query),
      textAlignVertical: TextAlignVertical.bottom,
      cursorColor: Colors.grey,
      focusNode: searchFocusNode,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),

        hintText: 'Search',
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
