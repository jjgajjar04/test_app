import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class SimpleStateScreen extends StatefulWidget {
  static const String id = Constants.SIMPLE_STATE_SCREEN;
  final Color? color;
  SimpleStateScreen({this.color});

  @override
  _SimpleStateScreenState createState() => _SimpleStateScreenState();
}

class _SimpleStateScreenState extends State<SimpleStateScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.SIMPLE_STATE_SCREEN),
        backgroundColor: widget.color,
      ),
      body: Container(
        child: Center(
          child: Text(
            '$count',
            style: TextStyle(
              color: Colors.black,
              fontSize: 48.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: widget.color,
      ),
    );
  }
}
