import 'package:flutter/material.dart';
import 'package:test_app/components/my_timeline_tile.dart';
import 'package:test_app/utils/constants.dart';

class TimelineScreen extends StatefulWidget {
  static const String id = Constants.TIMELINE_SCREEN;

  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen>
    with SingleTickerProviderStateMixin {
  List<MyTimelineTile> timelineList = [];

  @override
  void initState() {
    super.initState();
    timelineList.add(MyTimelineTile());
  }

  _addItemInTimeline() {
    setState(() {
      timelineList.add(MyTimelineTile());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(TimelineScreen.id)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: timelineList,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addItemInTimeline,
      ),
    );
  }
}
