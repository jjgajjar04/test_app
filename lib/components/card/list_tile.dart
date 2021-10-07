import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  final Icon? leading;
  final String? title;
  final Color? tileColor;
  final Function? onTap;

  ListTileCard({
    this.leading,
    this.title,
    this.tileColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        leading: Icon(
          Icons.person,
          color: Colors.white,
        ),
        tileColor: tileColor,
        title: Text(
          title!,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onTap: onTap as void Function()?,
      ),
    );
  }
}
