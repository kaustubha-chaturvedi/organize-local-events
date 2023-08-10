import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/bottom_nav_bar.dart';
import 'package:undigitally/widgets/app_bar_widget.dart';
import 'package:undigitally/widgets/search_bar.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);
  static const routeName = '/profile-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          Container(
            color: appBarColor,
            child: const SearchBarWidget(),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 15,
              padding: const EdgeInsets.all(15),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10.0);
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: accent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/user-big.svg',
                    ),
                    title: const Text('User Name'),
                    subtitle: const Text('Last Message'),
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
