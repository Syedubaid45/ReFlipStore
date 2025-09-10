import 'package:flutter/material.dart';

Widget paymentFlowButton({
  required VoidCallback onPressed,
  required String text,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: 60,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.red),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ),
  );
}
