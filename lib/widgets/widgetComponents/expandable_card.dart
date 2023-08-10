import 'package:flutter/material.dart';

class ExpandableCard extends StatelessWidget {
  final bool isExpanded;
  final Widget collapsedChild;
  final Widget expandedChild;

  const ExpandableCard({
    super.key,
    required this.isExpanded,
    required this.collapsedChild,
    required this.expandedChild,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: isExpanded ? expandedChild : collapsedChild,
    );
  }
}