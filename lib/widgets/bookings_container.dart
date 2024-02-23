import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truecode_solutions/utils/colors.dart';

class BookingContainer extends StatelessWidget {
  final String service;
  final String text;
  final String image;

  const BookingContainer(
      {super.key,
      required this.service,
      required this.text,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 120.w,
                    height: 120.h,
                    decoration: BoxDecoration(
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
                  SizedBox(width: 10.w),
                  SizedBox(
                    height: 120.h,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            service,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            text,
                            style: TextStyle(
                              color: AppColors.darkGreyColor,
                              fontSize: 13.sp,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                'Completed',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 237, 209, 255),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.message_rounded,
                      size: 20.sp,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 17.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: const Color.fromARGB(255, 196, 195, 195),
              ),
              SizedBox(height: 8.h),
              Icon(
                Icons.arrow_drop_down_outlined,
                size: 24.sp,
              ),
            ],
          )),
    );
  }
}
