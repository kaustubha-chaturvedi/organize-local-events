import 'package:flutter/material.dart';
import 'package:undigitally/widgets/bottom_nav_bar.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/app_bar_widget.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);
  static const routeName = '/profile-page';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primary,
      appBar: AppBarWidget(),
      body: Center(
        child: Text('Post'),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}