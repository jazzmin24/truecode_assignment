import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truecode_solutions/pages/detailed_view/service_description_screen.dart';
import 'package:truecode_solutions/utils/colors.dart';

class ServiceContainer extends StatelessWidget {
  final String text;
  final String service;
  final String amount;
  final String ratings;
  final String reviews;
  final Icon icon;
  final String image;

  const ServiceContainer(
      {super.key,
      required this.text,
      required this.service,
      required this.amount,
      required this.ratings,
      required this.reviews,
      required this.icon,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ServiceDescription()),
        );
      },
      child: Container(
        height: 180.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Container(
                width: 120.w,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: AppColors.darkGreyColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    service,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    amount,
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 209, 134, 58),
                              Color.fromARGB(255, 248, 201, 16),
                            ],
                            stops: [0.5, 0.51],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: const Icon(
                          Icons.star,
                          size: 13,
                          color: Colors.white, // Set the base color of the icon
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        ratings,
                        style: TextStyle(
                          color: AppColors.darkGreyColor,
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                          color: AppColors.darkGreyColor,
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        reviews,
                        style: TextStyle(
                          color: AppColors.darkGreyColor,
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'reviews',
                        style: TextStyle(
                          color: AppColors.darkGreyColor,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Icon(
                icon.icon,
                color: AppColors.mainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
