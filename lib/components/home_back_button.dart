import 'package:flutter/material.dart';

class HomeBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 80,
      child: Center(
          child: Text(
        'Back',
        style: TextStyle(color: Colors.white),
      )),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(21),
      ),
    );
  }
}
