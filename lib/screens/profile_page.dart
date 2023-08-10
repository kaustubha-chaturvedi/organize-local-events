import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/bottom_nav_bar.dart';
import 'package:undigitally/widgets/app_bar_widget.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  static const routeName = '/profile-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/user.svg',
                              width: 70,
                              height: 70,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              children: [
                                Text(
                                  'Kaustubha',
                                  style: TextStyle(
                                    color: textPrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '@kaustubha',
                                  style: TextStyle(
                                    color: textSecondary,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: textPrimary,
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Bio',
                      style: TextStyle(
                        color: textPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "I, Giorno Giovanna, have a dream, in which I can get isekaid. I want to walk down the street, casually minding my own business, to be suddenly hit by that beautiful thing called Truck-kun. I want it to speed toward me and say, \"Ara ara\" just before it will hit me.",
                      style: TextStyle(color: textSecondary, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '8',
                              style:
                                  TextStyle(color: textPrimary, fontSize: 30),
                            ),
                            Text(
                              'Events',
                              style:
                                  TextStyle(color: textPrimary, fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '25',
                              style:
                                  TextStyle(color: textPrimary, fontSize: 30),
                            ),
                            Text(
                              'Connections',
                              style:
                                  TextStyle(color: textPrimary, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: lightGreen,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Intrests',
                    style: TextStyle(
                        color: textPrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: darkGreen,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          'Anime',
                          style: TextStyle(
                            color: textPrimary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: darkGreen,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          'Mathematics',
                          style: TextStyle(
                            color: textPrimary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: darkGreen,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          'Programming',
                          style: TextStyle(
                            color: textPrimary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: darkGreen,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          'Hiking',
                          style: TextStyle(
                            color: textPrimary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: lightGreen,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/location.svg',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                        child: Text(
                      '''Amity university Mumbai Mumbai - Pune Expressway Bhatan, Somathne, Panvel, Mumbai, Maharashtra 410206''',
                      style: TextStyle(
                        fontSize: 16,
                        color: textPrimary,
                      ),
                    ))
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/map.png',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
