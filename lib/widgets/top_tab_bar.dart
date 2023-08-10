import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';
import 'widgetComponents/pill_indicator.dart';

class TobBarWidget extends StatelessWidget {
  const TobBarWidget({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: TabBar(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        splashFactory: NoSplash.splashFactory,
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          return states.contains(MaterialState.focused)
              ? null
              : Colors.transparent;
        }),
        labelColor: textPrimary,
        unselectedLabelColor: textPrimary,
        // indicatorSize: TabBarIndicatorSize.label,
        indicator: PillIndicator(),
        tabs: [
          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(child: Text("For You")),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(child: Text("Current")),
            ),
          ),
          Tab(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(child: Text("Previous"))),
          ),
        ],
      ),
    );
  }
}