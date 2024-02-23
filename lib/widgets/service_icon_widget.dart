import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceIconWidget extends StatelessWidget {
  final Color? containerColor;
  final Color? iconColor;
  final String text;
  final Icon icon;

  const ServiceIconWidget(
      {super.key,
      this.containerColor,
      this.iconColor,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: containerColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon.icon,
            size: 30.sp,
            color: iconColor,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
