import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatefulWidget {
  @override
  _MyTimelineTileState createState() => _MyTimelineTileState();
}

class _MyTimelineTileState extends State<MyTimelineTile> {
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.center,
      hasIndicator: true,
      indicatorStyle: IndicatorStyle(
        width: 80,
        color: Colors.black,
        iconStyle: IconStyle(
          iconData: Icons.emoji_emotions,
          color: Colors.yellowAccent,
        ),
      ),
      startChild: Container(
        color: Colors.redAccent,
      ),
      endChild: Container(
        constraints: const BoxConstraints(
          minHeight: 120,
        ),
        color: Colors.greenAccent,
      ),
    );
  }
}
