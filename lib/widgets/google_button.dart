import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      iconSize: 40,
      icon: SvgPicture.asset('assets/icons/google.svg',
          semanticsLabel: 'Google Logo',
          height: 40,
          width: 40,
          allowDrawingOutsideViewBox: true),
    );
  }
}