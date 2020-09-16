import 'package:flutter/material.dart';
import 'package:test_app/components/card/level1.dart';
import 'package:test_app/utils/constants.dart';

class MultiWidgetStateScreen extends StatefulWidget {
  static const String id = Constants.MULTI_WIDGET_STATE_SCREEN;
  @override
  _MultiWidgetStateScreenState createState() => _MultiWidgetStateScreenState();
}

class _MultiWidgetStateScreenState extends State<MultiWidgetStateScreen> {
  String title = 'level';
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.MULTI_WIDGET_STATE_SCREEN),
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Level1(title: title),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
            title = 'level ' + count.toString();
          });
        },
      ),
    );
  }
}
