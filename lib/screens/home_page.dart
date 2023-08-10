import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/search_bar.dart';
import 'package:undigitally/widgets/top_tab_bar.dart';
import 'package:undigitally/widgets/app_bar_widget.dart';
import 'package:undigitally/widgets/bottom_nav_bar.dart';
import 'package:undigitally/widgets/post_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          TobBarWidget(tabController: tabController),
          const SizedBox(height: 10, width: 0),
          const SearchBarWidget(),
          const SizedBox(height: 20),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                Page(),
                Center(child: Text("Current")),
                Center(child: Text("Previous")),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}

class Page extends StatelessWidget {
  const Page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PostTile(),
          ],
        ),
      ),
    );
  }
}
