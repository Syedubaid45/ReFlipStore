import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String title;
  final VoidCallback onBack;
  final VoidCallback? onMenuTap;

  const AppHeader({
    super.key,
    required this.title,
    required this.onBack,
    this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onBack,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: const Center(
                  child: Icon(Icons.arrow_back_ios, size: 16),
                ),
              ),
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            GestureDetector(
              onTap: onMenuTap,
              child: Icon(Icons.menu, size: 24, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
