import 'package:flutter/material.dart';

class HometabHeader extends StatelessWidget {
  final VoidCallback onMenuPressed;
  HometabHeader({super.key, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey, Alice",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Wellcome back",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ],
        ),
        Spacer(),
        IconButton(onPressed: onMenuPressed, icon: Icon(Icons.menu)),
      ],
    );
  }
}
