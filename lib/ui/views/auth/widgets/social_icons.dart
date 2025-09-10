import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final String assetPath;
  final VoidCallback onTap;

  const SocialIconButton({
    super.key,
    required this.assetPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.07,
      width: screenWidth * 0.3,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        icon: Image.asset(assetPath),
        iconSize: 50,
        onPressed: onTap,
      ),
    );
  }
}
