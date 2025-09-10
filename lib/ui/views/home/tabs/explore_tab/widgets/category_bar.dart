import 'package:flutter/material.dart';

class CategoryBar extends StatelessWidget {
  final List<String> categories;

  const CategoryBar({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
              backgroundColor: Color(0xFF3C3C3C),
              label: Text(
                categories[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
