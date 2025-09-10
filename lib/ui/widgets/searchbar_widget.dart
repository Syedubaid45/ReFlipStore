import 'package:flutter/material.dart';

class SearchbarWidget extends StatefulWidget {
  @override
  _SearchbarWidgetState createState() => _SearchbarWidgetState();
}

class _SearchbarWidgetState extends State<SearchbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search for books, guitars and more...",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[300],
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
