import 'package:flutter/material.dart';

Widget textFormField({
  required String hintText,
  required String labelText,
  bool isPassword = false,
  required TextEditingController controller,
}) {
  return TextField(
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[500]),
      labelText: labelText,
      labelStyle: TextStyle(color: Colors.grey[700], fontSize: 16),

      filled: true,
      fillColor: Colors.grey.shade300,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: Colors.grey, width: 2),
      ),
    ),
  );
}
