import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final EdgeInsetsGeometry? padding;
  final double fontSize;
  final VoidCallback? onPressed;
  const RoundedButton({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
    this.padding,
    required this.fontSize,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed?? () {},
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Padding(
          padding: padding?? const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: fontSize),
          ),
        ));
  }
}
