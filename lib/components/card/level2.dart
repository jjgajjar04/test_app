import 'package:flutter/material.dart';
import 'package:test_app/components/card/level3.dart';

class Level2 extends StatefulWidget {
  final String? title;
  Level2({this.title});

  @override
  _Level2State createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  @override
  Widget build(BuildContext context) {
    return Level3(
      title: widget.title,
    );
  }
}
