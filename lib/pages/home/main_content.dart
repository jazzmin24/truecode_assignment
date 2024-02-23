import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truecode_solutions/utils/colors.dart';
import 'package:truecode_solutions/widgets/big_text.dart';
import 'package:truecode_solutions/widgets/service_container.dart';
import 'package:truecode_solutions/widgets/service_icon_widget.dart';
import 'package:truecode_solutions/widgets/small_text.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  List<String> items = ['All', 'Cleaning', 'Repairing', 'Painting'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigTextWidget(text: 'Special Offers'),
            SmallTextWidget(
              text: 'See All',
              color: AppColors.mainColor,
              fontweight: FontWeight.w700,
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 75, 22, 125),
                Color.fromARGB(255, 146, 93, 217)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 35.w, top: 25.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '30%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Today\s Special!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            'Get discount for every order, only valid for today',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50.h),
                    child: Image.asset(
                      'assets/images/cleaning.png',
                      width: 215.w,
                      height: 150.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Positioned(
                  bottom: 10.h,
                  left: 160.w,
                  child: DotsIndicator(
                    dotsCount: 4,
                    decorator: DotsDecorator(
                      spacing: EdgeInsets.only(left: 3.w, right: 3.w),
                      color: Colors.white,
                      activeColor: Colors.white,
                      size: const Size.square(3.0),
                      activeSize: const Size(18.0, 3.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0)),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigTextWidget(text: 'Services'),
            SmallTextWidget(
              text: 'See All',
              color: AppColors.mainColor,
              fontweight: FontWeight.w700,
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ServiceIconWidget(
              text: 'Cleaning',
              icon: Icon(
                Icons.cleaning_services,
              ),
              containerColor: Color.fromARGB(255, 242, 224, 254),
              iconColor: Color.fromARGB(255, 102, 15, 232),
            ),
            ServiceIconWidget(
              text: 'Repairing',
              icon: Icon(
                Icons.handyman,
              ),
              containerColor: Color.fromARGB(255, 255, 229, 208),
              iconColor: Color.fromARGB(255, 244, 164, 44),
            ),
            ServiceIconWidget(
              text: 'Painting',
              icon: Icon(
                Icons.imagesearch_roller,
              ),
              containerColor: Color.fromARGB(255, 230, 238, 255),
              iconColor: Color.fromARGB(255, 62, 146, 241),
            ),
            ServiceIconWidget(
              text: 'Laundry',
              icon: Icon(
                Icons.local_laundry_service,
              ),
              containerColor: Color.fromARGB(255, 246, 241, 214),
              iconColor: Color.fromARGB(255, 250, 207, 66),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ServiceIconWidget(
              text: 'Appliance',
              icon: Icon(
                Icons.electrical_services_outlined,
              ),
              containerColor: Color.fromARGB(255, 255, 229, 229),
              iconColor: Color.fromARGB(255, 222, 104, 108),
            ),
            ServiceIconWidget(
              text: 'Plumbling',
              icon: Icon(
                Icons.plumbing,
              ),
              containerColor: Color.fromARGB(255, 230, 255, 238),
              iconColor: Color.fromARGB(255, 103, 222, 178),
            ),
            ServiceIconWidget(
              text: 'Shifting',
              icon: Icon(
                Icons.local_shipping_rounded,
              ),
              containerColor: Color.fromARGB(255, 227, 251, 255),
              iconColor: Color.fromARGB(255, 138, 231, 236),
            ),
            ServiceIconWidget(
              text: 'More',
              icon: Icon(
                Icons.pending,
              ),
              containerColor: Color.fromARGB(255, 242, 224, 254),
              iconColor: Color.fromARGB(255, 102, 15, 232),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color: const Color.fromARGB(255, 196, 195, 195),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigTextWidget(text: 'Most Popular Services'),
            SmallTextWidget(
              text: 'See All',
              color: AppColors.mainColor,
              fontweight: FontWeight.w700,
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 50.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                  padding:
                      const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? AppColors.mainColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: AppColors.mainColor,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    items[index],
                    style: TextStyle(
                      color: selectedIndex == index
                          ? Colors.white
                          : AppColors.mainColor,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const ServiceContainer(
          text: 'Kylee Danford',
          service: 'House Cleaning',
          amount: '\$21',
          ratings: '4.8',
          reviews: '8,289',
          icon: Icon(Icons.bookmark),
          image: 'assets/images/first.webp',
        ),
        SizedBox(
          height: 20.h,
        ),
        const ServiceContainer(
          text: 'Alfonzo Schuessler',
          service: 'Floor Cleaning',
          amount: '\$20',
          ratings: '4.9',
          reviews: '6,182',
          icon: Icon(Icons.bookmark_outline_rounded),
          image: 'assets/images/second.jpeg',
        ),
        SizedBox(
          height: 20.h,
        ),
        const ServiceContainer(
          text: 'Sanjaunita Ordonez',
          service: 'Washing Clothes',
          amount: '\$22',
          ratings: '4.7',
          reviews: '7,938',
          icon: Icon(Icons.bookmark),
          image: 'assets/images/third.png',
        ),
        SizedBox(
          height: 20.h,
        ),
        const ServiceContainer(
          text: 'Freida Varnes',
          service: 'Bathroom Cleaning',
          amount: '\$24',
          ratings: '4.9',
          reviews: '6,182',
          icon: Icon(Icons.bookmark_outline_rounded),
          image: 'assets/images/forth.png',
        ),
      ],
    );
  }
}
