import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:truecode_solutions/pages/home/main_screen.dart';
import 'package:truecode_solutions/provider/handling_bottom_navigator.dart';
import 'package:truecode_solutions/utils/colors.dart';
import 'package:truecode_solutions/widgets/big_text.dart';
import 'package:truecode_solutions/widgets/bookings_container.dart';
import 'package:truecode_solutions/widgets/small_text.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({super.key});

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndexProvider =
        Provider.of<SelectedPageIndexProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 243, 243),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    BigTextWidget(text: 'My Bookings'),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.more_horiz_rounded,
                      color: AppColors.darkGreyColor,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 18.w, right: 18.w, top: 16.h, bottom: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallTextWidget(
                        text: 'Upcoming',
                        fontweight: FontWeight.bold,
                        color: AppColors.greyColor,
                        size: 16.sp,
                      ),
                      SmallTextWidget(
                        text: 'Completed',
                        fontweight: FontWeight.bold,
                        color: AppColors.mainColor,
                        size: 16.sp,
                      ),
                      SmallTextWidget(
                        text: 'Cancelled',
                        fontweight: FontWeight.bold,
                        color: AppColors.greyColor,
                        size: 16.sp,
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 2.h,
                      color: const Color.fromARGB(255, 196, 195, 195),
                    ),
                    Positioned(
                      left: 130.w,
                      child: Container(
                          width: 110.w,
                          height: 2.h,
                          color: AppColors.mainColor),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                const BookingContainer(
                    service: 'Home Cleaning',
                    text: 'Maryland Winkles',
                    image: 'assets/images/a.jpeg'),
                SizedBox(
                  height: 15.h,
                ),
                const BookingContainer(
                    service: 'Laundry Service',
                    text: 'Aileen Fullbright',
                    image: 'assets/images/d.jpeg'),
                SizedBox(
                  height: 15.h,
                ),
                const BookingContainer(
                    service: 'Painting Walls',
                    text: 'Alfanzo Schellar',
                    image: 'assets/images/a.jpeg')
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 246, 243, 243),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
          ],
          currentIndex: selectedIndexProvider.selectedIndex,
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: AppColors.greyColor,
          showUnselectedLabels: true,
          onTap: (value) {
            selectedIndexProvider.updateSelectedIndex(value);
            if (value == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BookingsScreen()));
            } else if (value == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainScreen()));
            }
          }),
    );
  }
}
