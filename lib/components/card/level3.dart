import 'package:flutter/material.dart';

class Level3 extends StatefulWidget {
  final String title;
  Level3({this.title});

  @override
  _Level3State createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        height: 40.0,
        width: 200.0,
        color: Colors.red,
        child: Center(
            child: Text(
          widget.title == null ? 'level 3' : widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
