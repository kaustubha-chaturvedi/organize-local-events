import 'package:flutter/material.dart';
import '../../consts/colors.dart';

class PillIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _PillIndicatorBox();
  }
}

class _PillIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint paint = Paint()
      ..color = lightGreen
      ..strokeWidth = 30
      ..isAntiAlias = true;
    RRect rRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(offset.dx, offset.dy + 7.5, cfg.size!.width,
            cfg.size!.height - 15),
        const Radius.circular(50));
    canvas.drawRRect(rRect, paint);
  }
}