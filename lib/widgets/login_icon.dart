import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truecode_solutions/utils/colors.dart';

class LoginIcon extends StatefulWidget {
  final String image;
  const LoginIcon({super.key, required this.image});

  @override
  State<LoginIcon> createState() => _LoginIconState();
}

class _LoginIconState extends State<LoginIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 60.h,
      width: 70.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGreyColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        widget.image,
      ),
    );
  }
}
