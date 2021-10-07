import 'package:flutter/material.dart';

class HomeCardItem extends StatelessWidget {
  final String title;
  final Function? onTap;
  final Color? color;

  HomeCardItem({required this.title, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        height: 60.0,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color == null ? Colors.lightBlueAccent : color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
