import 'package:flutter/cupertino.dart';

class Data {
  String? title;
  Color? color;

  Data({this.title, this.color});

  void setData(String title) {
    this.title = title;
  }

  void setColor(Color color) {
    this.color = color;
  }
}
