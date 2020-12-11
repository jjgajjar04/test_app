import 'package:flutter/material.dart';

class RectanglePainter extends CustomPainter {
  RectanglePainter(this.rect);
  final Rect rect;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    canvas.drawRect(rect, paint);
    canvas.drawOval(rect, paint);

    Offset center = new Offset(100, 100);
    canvas.drawCircle(center, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
