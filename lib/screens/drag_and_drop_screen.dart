import 'package:flutter/material.dart';
import 'package:test_app/components/dragGame/app.dart';
import 'package:test_app/utils/constants.dart';

class DragAndDropScreen extends StatelessWidget {
  static const String id = Constants.DRAG_AND_DROP_SCREEN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: ColorGame())
          // Container(
          //   child: Center(child: DraggableItem()),
          // ),
          // Container(
          //   child: Center(child: DragTargetItem()),
          // ),
        ],
      ),
    );
  }
}
