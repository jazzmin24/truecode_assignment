import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigTextWidget extends StatelessWidget {
  final Color? color;
  final String text;
  double size;

  BigTextWidget({
    Key? key,
    this.color = Colors.black,
    this.size = 18, //default

    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
