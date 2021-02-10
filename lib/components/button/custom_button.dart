import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry padding;
  final Color textColor;
  final Color buttonColor;
  final double borderRadius;
  final Color shadowColor;
  final double shadowSpreadRadius;
  final double shadowBlurRadius;
  final Offset shadowOffset;

  const CustomButton({
    Key key,
    this.title,
    this.padding,
    this.textColor,
    this.buttonColor,
    this.borderRadius,
    this.shadowColor,
    this.shadowSpreadRadius,
    this.shadowBlurRadius,
    this.shadowOffset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: padding,
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: shadowSpreadRadius,
            blurRadius: shadowBlurRadius,
            offset: shadowOffset,
          ),
        ],
      ),
    );
  }
}
