import 'package:flutter/material.dart';
import 'package:test_app/components/card/level2.dart';

class Level1 extends StatefulWidget {
  final String? title;
  Level1({this.title});

  @override
  _Level1State createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  @override
  Widget build(BuildContext context) {
    return Level2(
      title: widget.title,
    );
  }
}
