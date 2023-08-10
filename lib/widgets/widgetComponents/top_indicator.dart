import 'package:flutter/material.dart';
import '../../consts/colors.dart';

class TopIndicator extends StatelessWidget {
  final int _numTabs;
  final int _activeIdx;
  final Color _activeColor;
  final Color _inactiveColor;
  final double _padding;
  final double _height;

  const TopIndicator(
      {required int numTabs,
      required int activeIdx,
      double? height,
      Color? activeColor,
      double? padding,
      Color? inactiveColor,
      Key? key})
      : _numTabs = numTabs,
        _activeIdx = activeIdx,
        _activeColor = (activeColor != null) ? activeColor : Colors.black,
        _inactiveColor =
            (inactiveColor != null) ? inactiveColor : Colors.transparent,
        _padding = (padding != null) ? padding : 0,
        _height = (height != null) ? height : 3,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final elements = <Widget>[];

    for (var i = 0; i < _numTabs; ++i) {
      elements.add(Expanded(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _padding),
        child: Container(
          decoration: BoxDecoration(
              color: i == _activeIdx ? _activeColor : _inactiveColor,
              borderRadius: const BorderRadius.all(Radius.circular(50))),
        ),
      )));
    }

    return Container(
      decoration: const BoxDecoration(color: appBarColor),
      height: _height,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: elements,
      ),
    );
  }
}