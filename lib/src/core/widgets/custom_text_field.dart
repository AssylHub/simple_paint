import 'package:flutter/material.dart';
import 'package:simple_paint/src/core/theme/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
  });

  final String hintText;
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.transparent.withOpacity(0.3),
        filled: true,
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        contentPadding: EdgeInsets.all(16),
      ),
    );
  }
}
