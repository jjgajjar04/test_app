import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final double? xPos;
  final double? yPos;

  LinePainter({this.xPos, this.yPos});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0;

    Path path = Path();
    path.moveTo(xPos!, xPos!);
    path.lineTo(size.width, size.height);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
