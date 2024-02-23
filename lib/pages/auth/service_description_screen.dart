import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:truecode_solutions/pages/auth/bookings_screen.dart';
import 'package:truecode_solutions/utils/colors.dart';
import 'package:truecode_solutions/widgets/big_text.dart';
import 'package:truecode_solutions/widgets/small_text.dart';

class ServiceDescription extends StatefulWidget {
  const ServiceDescription({super.key});

  @override
  State<ServiceDescription> createState() => _ServiceDescriptionState();
}

class _ServiceDescriptionState extends State<ServiceDescription> {
  bool _firstTapped = false;
  bool _secondTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/g.jpeg'), // Replace 'your_image.jpg' with your asset image path
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    top: 40.h, left: 25.w, child: const Icon(Icons.arrow_back)),
                Positioned(
                    bottom: 10.h,
                    left: 150.w,
                    child: DotsIndicator(
                      dotsCount: 5,
                      decorator: DotsDecorator(
                        activeColor: AppColors.mainColor,
                        size: const Size.square(9.0),
                        activeSize: const Size(30.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigTextWidget(
                        text: 'House Cleaning',
                        size: 26.sp,
                      ),
                      Icon(
                        Icons.bookmark_outline,
                        color: AppColors.mainColor,
                        size: 30.sp,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Jenny Wilson',
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
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
                        '4.8',
                        style: TextStyle(
                          color: AppColors.darkGreyColor,
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '(4,479 reviews)',
                        style: TextStyle(
                          color: AppColors.darkGreyColor,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 238, 212, 255),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 9.w, right: 9.w, top: 2.h, bottom: 2.h),
                          child: Text(
                            'Cleaning',
                            style: TextStyle(
                                color: AppColors.mainColor, fontSize: 12.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Icon(
                        Icons.location_on_rounded,
                        color: AppColors.mainColor,
                        size: 15.sp,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '255 Grand Park Avenue, New York',
                        style: TextStyle(
                          color: AppColors.darkGreyColor,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$20',
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '(Floor price)',
                        style: TextStyle(
                          color: AppColors.darkGreyColor,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    color: const Color.fromARGB(255, 196, 195, 195),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  BigTextWidget(text: 'About me'),
                  const ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv sdv Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv sdv Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv sdv Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv sdv Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv sdv Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv sdv Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv sdv Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv sdv Lorem ipsum dolor sit amet, consectetur adipiscing elit Maecenas fdhbvfdsh bkvxv',
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimLines: 3,
                    trimCollapsedText: ' Read more',
                    trimExpandedText: ' Read less',
                    lessStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor),
                    moreStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigTextWidget(text: 'Photos & Videos'),
                      SmallTextWidget(
                        text: 'See All',
                        color: AppColors.mainColor,
                        fontweight: FontWeight.w700,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 280.h,
                        width: MediaQuery.of(context).size.width / 2.25,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreyColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset(
                            'assets/images/a.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 134.h,
                            width: MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                              color: AppColors.lightGreyColor,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                'assets/images/b.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            height: 134.h,
                            width: MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                              color: AppColors.lightGreyColor,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                'assets/images/c.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 134.h,
                            width: MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                              color: AppColors.lightGreyColor,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                'assets/images/d.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            height: 134.h,
                            width: MediaQuery.of(context).size.width / 2.25,
                            decoration: BoxDecoration(
                              color: AppColors.lightGreyColor,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: Image.asset(
                                'assets/images/e.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 280.h,
                        width: MediaQuery.of(context).size.width / 2.25,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreyColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.asset(
                            'assets/images/f.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGreyColor),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _firstTapped = !_firstTapped;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                padding: EdgeInsets.only(
                    top: 17.h, left: 50.w, right: 50.w, bottom: 17.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: _firstTapped
                      ? AppColors.mainColor
                      : const Color.fromARGB(255, 238, 212, 255),
                ),
                child: Text(
                  'Message',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: _firstTapped ? Colors.white : AppColors.mainColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BookingsScreen()),
                );
                setState(() {
                  _secondTapped = !_secondTapped;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                padding: EdgeInsets.only(
                    top: 17.h, left: 50.w, right: 50.w, bottom: 17.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: _secondTapped
                      ? AppColors.mainColor
                      : const Color.fromARGB(255, 238, 212, 255),
                ),
                child: Text(
                  'Book Now',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: _secondTapped ? Colors.white : AppColors.mainColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
