import 'package:flutter/material.dart';

class ProductTitleRow extends StatelessWidget {
  final String title;
  const ProductTitleRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFFEBEE),
          ),
          child: const Icon(
            Icons.chat_bubble_outline,
            color: Colors.red,
            size: 22,
          ),
        ),
      ],
    );
  }
}
