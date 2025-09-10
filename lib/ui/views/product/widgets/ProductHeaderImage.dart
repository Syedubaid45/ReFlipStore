import 'package:flutter/material.dart';

class ProductHeaderImage extends StatelessWidget {
  final String imageUrl;
  const ProductHeaderImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.circle, size: 8, color: Colors.black26),
            SizedBox(width: 4),
            Icon(Icons.circle, size: 8, color: Colors.black),
            SizedBox(width: 4),
            Icon(Icons.circle, size: 8, color: Colors.black26),
          ],
        ),
      ],
    );
  }
}
