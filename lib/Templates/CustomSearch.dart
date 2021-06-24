import 'package:flutter/material.dart';
import 'package:foodie/Templates/SearchResults.dart';

class CustomSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [ IconButton( icon: Icon(Icons.clear), onPressed: () { query = ''; })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton( icon: Icon(Icons.arrow_back), onPressed: () { close(context, ''); });
  }

  late String selectedResult;

  @override
  Widget buildResults(BuildContext context) => SearchResults(query);

  @override
  Widget buildSuggestions(BuildContext context) => Container(child: Column(children: []));
}
