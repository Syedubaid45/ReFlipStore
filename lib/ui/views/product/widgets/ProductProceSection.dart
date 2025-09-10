import 'package:flutter/material.dart';

class ProductPriceSection extends StatelessWidget {
  final String price;
  final String subtitle;
  const ProductPriceSection({
    super.key,
    required this.price,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "₹ $price",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 14, color: Colors.black87),
        ),
        const SizedBox(height: 12),
        const Text(
          "Make: Shure | Year: 2020",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Row(
          children: const [
            Text("Within Warranty "),
            Icon(Icons.check, color: Colors.green, size: 18),
            SizedBox(width: 12),
            Text("Original Packing "),
            Icon(Icons.close, color: Colors.red, size: 18),
          ],
        ),
      ],
    );
  }
}
