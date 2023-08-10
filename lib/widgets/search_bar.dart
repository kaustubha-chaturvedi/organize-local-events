import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/input_field.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: InputField(
                controller: controller,
                requiredText: 'Search',
                hintText: 'Search...',
                color: accent,
              ),
            ),
            const SizedBox(width: 5.0),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 30.0,
                  height: 30.0,
                ))
          ],
        ));
  }
}
