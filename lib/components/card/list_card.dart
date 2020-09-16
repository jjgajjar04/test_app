import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color color;

  ListCard({@required this.title, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: color == null ? Colors.lightBlueAccent : color,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
