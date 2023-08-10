import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:go_router/go_router.dart';
import 'widgetComponents/top_indicator.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

int pageIndex = 0;
class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TopIndicator(
            numTabs: 5,
            activeIdx: pageIndex,
            activeColor: darkGreen,
            padding: 15,
          ),
          BottomNavigationBar(
            backgroundColor: appBarColor,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: pageIndex,
            onTap: (index) {
              pageIndex=index;
              if (index == 0){
                context.go('/');
              }else if (index == 1){
                context.go('/chats');
              }else if (index == 2){
                context.go('/post');
              }else if (index == 3){
                context.go('/notifications');
              }else if (index == 4){
                context.go('/profile');
              }else{
                context.go('/');
              }
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  width: 35,
                  height: 35,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/chats.svg',
                  width: 35,
                  height: 35,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/post.svg',
                  width: 35,
                  height: 35,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bell.svg',
                  width: 35,
                  height: 35,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  width: 35,
                  height: 35,
                ),
                label: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}