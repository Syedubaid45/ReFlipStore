import 'package:flutter/material.dart';

class BottomActionBar extends StatelessWidget {
  final VoidCallback onSave;
  final VoidCallback onBuy;
  const BottomActionBar({super.key, required this.onSave, required this.onBuy});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onSave,
            child: Container(
              height: 60,
              color: const Color(0xFF3C3C3C),
              alignment: Alignment.center,
              child: const Text(
                "Save item",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: onBuy,
            child: Container(
              height: 60,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
