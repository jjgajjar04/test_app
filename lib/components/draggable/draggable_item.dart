import 'package:flutter/material.dart';
import 'package:test_app/components/draggable/box.dart';
import 'package:test_app/components/draggable/feedback_item.dart';
import 'package:test_app/components/draggable/box_left_behind.dart';

class DraggableItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Draggable<List>(
      axis: Axis.vertical,
      feedback: FeedbackItem(),
      data: ['ambuj', 'aditya'],
      child: Box(),
      childWhenDragging: BoxLeftBehind(),
    );
  }
}
