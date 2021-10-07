import 'package:flutter/material.dart';
import 'package:test_app/components/painter/rectangle_painter.dart';
import 'package:test_app/utils/constants.dart';

class CanvasScreen extends StatelessWidget {
  static const String id = Constants.CANVAS_SCREEN;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('Canvas')),
      body: Container(
        child: CustomPainterDraggable(screenHeight: height, screenWidth: width),
      ),
    );
  }
}

class CustomPainterDraggable extends StatefulWidget {
  final double? screenHeight;
  final double? screenWidth;

  const CustomPainterDraggable({
    Key? key,
    this.screenHeight,
    this.screenWidth,
  }) : super(key: key);

  @override
  _CustomPainterDraggableState createState() => _CustomPainterDraggableState();
}

class _CustomPainterDraggableState extends State<CustomPainterDraggable> {
  var xPos = 0.0;
  var yPos = 0.0;
  final width = 100.0;
  final height = 100.0;
  bool _dragging = false;

  /// Is the point (x, y) inside the rect?
  bool _insideRect(double x, double y) {
    bool isInside =
        x >= xPos && x <= xPos + width && y >= yPos && y <= yPos + height;

    if (isInside) {
      print('inside rect');
      print(widget.screenHeight);
      print(widget.screenWidth);
    }
    return isInside;
  }

  Function? _callOnTap(var x, var y) {
    print('$x - $y');
    return null;
  }

  // @override
  // void initState() {
  //   super.initState();
  //   xPos = 0.0;
  //   yPos = 0.0;
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _callOnTap(xPos, yPos) as void Function()?,
      onPanStart: (details) => _dragging = _insideRect(
        details.globalPosition.dx,
        details.globalPosition.dy,
      ),
      onPanEnd: (details) {
        _dragging = false;
      },
      onPanUpdate: (details) {
        if (_dragging) {
          setState(() {
            xPos += details.delta.dx;
            yPos += details.delta.dy;
          });
        }
      },
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: CustomPaint(
                painter:
                    RectanglePainter(Rect.fromLTWH(xPos, yPos, width, height)),
                child: Container(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
