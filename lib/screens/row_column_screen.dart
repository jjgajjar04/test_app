import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class RowColumnScreen extends StatelessWidget {
  static const String id = Constants.ROW_COLUMN_SCREEN;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height / 2,
              width: width,
              color: Colors.red,
            ),
            Container(
              height: height / 2,
              width: width,
              color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: height / 4,
                    width: width / 2,
                    color: Colors.blue,
                  ),
                  Container(
                    height: height / 4,
                    width: width / 2,
                    color: Colors.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: height / 8,
                          width: width / 4,
                          color: Colors.purple,
                        ),
                        Container(
                          height: height / 8,
                          width: width / 4,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
