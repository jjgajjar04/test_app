import 'package:flutter/material.dart';

class FeedbackItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: Colors.yellow,
      ),
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          'A',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
