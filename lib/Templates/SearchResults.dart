import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchResults extends StatefulWidget {
  var query;

  SearchResults(this.query, { Key? key }) : super(key: key);

  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}