import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';

class HaveAnAccount extends StatelessWidget {
  final String haveText;
  final String buttonText;
  const HaveAnAccount({
    super.key,
    required this.haveText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$haveText have an account?  ',
          style:const TextStyle(
            color: textPrimary,
            fontSize: 12,
          ),
        ),
        InkWell(
            onTap: () {},
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: lightBlue, fontSize: 13, fontWeight: FontWeight.w600),
            )),
      ],
    );
  }
}
