import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class GridScreen extends StatelessWidget {
  static const String id = Constants.GRID_SCREEN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text((index + 1).toString()),
              ),
            );
          },
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        ),
      ),
    );
  }
}
