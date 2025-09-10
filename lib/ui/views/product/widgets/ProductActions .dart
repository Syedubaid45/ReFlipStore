import 'package:flutter/material.dart';

class ProductActions extends StatelessWidget {
  final VoidCallback onSearch;
  const ProductActions({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onSearch,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      icon: Image.asset("assets/images/Google.png"),
      label: const Text("Search Details"),
    );
  }
}
