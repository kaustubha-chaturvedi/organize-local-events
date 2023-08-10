import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String requiredText;
  final String hintText;
  final Color color;
  const InputField({
    super.key,
    required this.controller,
    required this.requiredText,
    required this.hintText,
    this.color = appBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (String? value) {
        if (value!.trim().isEmpty) {
          return requiredText;
        }
        return null;
      },
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          fillColor: color,
          filled: true,
          hoverColor: color,
          focusColor: color,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          hintText: hintText,
          hintStyle: const TextStyle(color: textSecondary)),
    );
  }
}
