import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:undigitally/consts/colors.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passwordController;

  const PasswordField({
    super.key,
    required this.passwordController,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool passwordInVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.passwordController,
        obscureText: passwordInVisible,
        enableSuggestions: false,
        autocorrect: false,
        validator: (String? value) {
          if (value!.trim().isEmpty) {
            return 'Password is required';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          fillColor: appBarColor,
          filled: true,
          hoverColor: appBarColor,
          focusColor: appBarColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          hintText: 'Password',
          hintStyle: const TextStyle(color: textSecondary),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordInVisible = !passwordInVisible;
              });
            },
            icon: SvgPicture.asset(passwordInVisible
                ? 'assets/icons/eye.svg'
                : 'assets/icons/eye-off.svg',
                width: 24,
                height: 24,
              ),
          ),
        ));
  }
}
