import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/rounded_button.dart';

class CollapsedCard extends StatelessWidget {
  const CollapsedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: accent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          TopPart(),
          MidPart(),
          EndPart(),
        ],
      ),
    );
  }
}

class EndPart extends StatelessWidget {
  const EndPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/time.svg',
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '21/05/2088',
                      style: TextStyle(
                        color: textPrimary,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      '07:23 PM',
                      style: TextStyle(
                        color: textPrimary,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          const Row(
            children: [
              RoundedButton(
                color: lightRed,
                text: 'Ignore',
                textColor: appBarColor,
                fontSize: 12,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              ),
              SizedBox(width: 7),
              RoundedButton(
                color: darkGreen,
                text: 'Accept',
                textColor: appBarColor,
                fontSize: 12,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              ),
            ],
          )
        ],
      ),
    ]);
  }
}

class MidPart extends StatelessWidget {
  const MidPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: lightGreen,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text(
                  'Invite',
                  style: TextStyle(
                    color: textPrimary,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: lightGreen,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text(
                  '00/03',
                  style: TextStyle(
                    color: textPrimary,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 7),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: const Text(
                  'Shopping in Viviana Mall',
                  softWrap: true,
                  style: TextStyle(
                      color: textPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Viviana Mall, near Eastern Express Highway,....',
                      softWrap: true,
                      style: TextStyle(
                        color: textPrimary,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TopPart extends StatelessWidget {
  const TopPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      InkWell(
        onTap: () {},
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/user-big.svg',
            ),
            const SizedBox(width: 5),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User Name',
                  style: TextStyle(
                    color: textPrimary,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '2 hours ago',
                  style: TextStyle(
                    color: textSecondary,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/bookmark.svg',
        ),
      ),
    ]);
  }
}