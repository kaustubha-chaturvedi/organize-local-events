import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "UnDigitally",
        style: TextStyle(fontSize: 18, color: textPrimary),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
