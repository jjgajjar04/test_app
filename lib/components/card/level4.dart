import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/models/data_provider.dart';

class Level4 extends StatelessWidget {
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
            '${Provider.of<DataProvider>(context).getTitle}',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
