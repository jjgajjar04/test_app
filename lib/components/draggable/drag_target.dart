import 'package:flutter/material.dart';
import 'package:test_app/components/draggable/box.dart';

class DragTargetItem extends StatefulWidget {
  @override
  _DragTargetItemState createState() => _DragTargetItemState();
}

class _DragTargetItemState extends State<DragTargetItem> {
  bool accepted;

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
      onWillAccept: (data) {
        setState(() {
          accepted = true;
        });

        return true;
      },
      onAccept: (data) {
        setState(() {
          accepted = true;
        });
      },
      onLeave: (data) {
        setState(() {
          accepted = true;
        });
      },
    );
  }
}
