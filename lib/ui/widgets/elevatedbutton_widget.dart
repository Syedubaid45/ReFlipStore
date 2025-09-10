import 'package:flutter/material.dart';

Widget ElevatedButtonWidget({
  required VoidCallback onPressed,
  required String text,
  required Color color,
}) {
  return SizedBox(
    width: double.infinity,
    height: 55,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 4,
        shadowColor: color.withOpacity(0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      child: Text(text),
    ),
  );
}
