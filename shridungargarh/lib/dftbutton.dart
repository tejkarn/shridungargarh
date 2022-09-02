import 'package:flutter/material.dart';

class DftButton extends StatelessWidget {
  const DftButton(
      {required this.width,
        required this.height,
        required this.text,
        required this.color,
        required this.textcolor,
        required this.press,
        required this.radius,
        Key? key})
      : super(key: key);
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color textcolor;
  final Function() press;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.only(left: width, right: width, top: height, bottom: height),
        textStyle:
        TextStyle(color: textcolor, fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: () {
      },
      child: Text(text),
    );
  }
}
