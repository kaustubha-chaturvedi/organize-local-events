import 'package:flutter/material.dart';
import 'package:undigitally/consts/colors.dart';
import 'package:undigitally/widgets/bottom_nav_bar.dart';
import 'package:undigitally/widgets/app_bar_widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);
  static const routeName = '/profile-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
                  itemCount: 15,
                  padding: const EdgeInsets.all(15),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 10.0);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: accent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Bhavesh Bansal',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: textPrimary,
                                  ),
                                ),
                                Text(
                                  '5:46 PM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: textSecondary,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Bhavesh Bansal added you to group "Bussiness Buddies"',
                                    softWrap: false,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: textSecondary,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ],
                        ));
                  }))
        ],
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
