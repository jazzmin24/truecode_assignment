import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truecode_solutions/pages/home/main_content.dart';
import 'package:truecode_solutions/utils/colors.dart';
import 'package:truecode_solutions/widgets/big_text.dart';
import 'package:truecode_solutions/widgets/small_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 243, 243),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundColor: Colors.grey,
                      backgroundImage:
                          const AssetImage('assets/images/cleaning.png'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallTextWidget(text: 'Good Morning 👋'),
                        BigTextWidget(text: 'Andrew Ainsley'),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      CupertinoIcons.bell,
                      size: 25.sp,
                      color: AppColors.greyColor,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.bookmark_border_rounded,
                      size: 25.sp,
                      color: AppColors.greyColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                //==============searchbar
                SizedBox(
                  height: 100.h,
                  child: TextField(
                    // controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          // Icons.drag_handle_outlined,
                          Icons.clear_all_rounded,
                          color: AppColors.mainColor,
                        ),
                        onPressed: () {},
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 224, 224, 224),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),

                const MainContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
