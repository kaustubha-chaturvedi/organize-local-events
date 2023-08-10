import 'package:flutter/material.dart';
import 'widgetComponents/collapsed_card.dart';
import 'widgetComponents/expanded_card.dart';
import 'widgetComponents/expandable_card.dart';

class PostTile extends StatefulWidget {
  const PostTile({super.key});

  @override
  State<PostTile> createState() => _PostTileState();
}

bool isExpanded = false;

class _PostTileState extends State<PostTile> {
  @override
  Widget build(BuildContext context) {
    return ExpandableCard(
      collapsedChild: InkWell(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: const CollapsedCard(),
      ),
      expandedChild: InkWell(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: const ExpandedCard(),
      ),
      isExpanded: isExpanded,
    );
  }
}