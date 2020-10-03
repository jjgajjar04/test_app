import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Container(
                height: 600.0,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  color: Colors.lightGreen,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Container(
              height: 100.0,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Header',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.lightGreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
