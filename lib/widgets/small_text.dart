import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallTextWidget extends StatelessWidget {
  final Color? color;
  final String text;
  final FontWeight? fontweight;
  double size;

  SmallTextWidget({
    Key? key,
    this.color = const Color.fromARGB(255, 133, 130, 130),
    this.size = 15, //default
    required this.text,
    this.fontweight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontweight,
      ),
    );
  }
}
