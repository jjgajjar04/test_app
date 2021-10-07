import 'package:flutter/material.dart';
import 'package:test_app/components/draggable/box.dart';

class DragTargetItem extends StatefulWidget {
  @override
  _DragTargetItemState createState() => _DragTargetItemState();
}

class _DragTargetItemState extends State<DragTargetItem> {
  late bool accepted;

  @override
  void initState() {
    super.initState();
    accepted = false;
  }

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, candidateData, rejectedData) {
        return accepted
            ? Box()
            : Container(
                height: 100,
                width: 100,
                color: Colors.black,
              );
      },
      onWillAccept: (dynamic data) {
        setState(() {
          accepted = true;
        });

        return true;
      },
      onAccept: (dynamic data) {
        setState(() {
          accepted = true;
        });
      },
      onLeave: (dynamic data) {
        setState(() {
          accepted = true;
        });
      },
    );
  }
}
