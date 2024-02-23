import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truecode_solutions/pages/home/main_screen.dart';
import 'package:truecode_solutions/utils/colors.dart';
import 'package:truecode_solutions/widgets/big_text.dart';
import 'package:truecode_solutions/widgets/login_icon.dart';
import 'package:truecode_solutions/widgets/small_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back)),
                SizedBox(
                  height: 60.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                      height: 120.h,
                      width: 250.w,
                      child: BigTextWidget(
                        text: 'Create Your Account',
                        size: 40.sp,
                      )),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  height: 60.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 172, 167, 167),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          //key: ValueKey('value'),
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 60.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Row(children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 172, 167, 167),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        //key: ValueKey('value'),
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons
                                      .visibility_off, // Toggle visibility icon
                              color: const Color.fromARGB(255, 172, 167, 167),
                            ),
                            onPressed: () {
                              // Toggle visibility and update icon
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: Icon(
                        isChecked
                            ? Icons.check_box_rounded
                            : Icons.check_box_outline_blank_rounded,
                        color: AppColors.mainColor,
                        size: 20.sp,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    SmallTextWidget(
                      text: 'Remember me',
                      color: AppColors.darkGreyColor,
                      fontweight: FontWeight.bold,
                      // size: 20.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()),
                    );
                  },
                  child: Container(
                    height: 60.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3.31,
                      height: 1,
                      color: const Color.fromARGB(255, 196, 195, 195),
                    ),
                    SmallTextWidget(
                      text: ' or continue with ',
                      size: 15.sp,
                      color: AppColors.darkGreyColor,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.31,
                      height: 1,
                      color: const Color.fromARGB(255, 196, 195, 195),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LoginIcon(image: 'assets/images/facebook.png'),
                    LoginIcon(image: 'assets/images/google.webp'),
                    LoginIcon(image: 'assets/images/apple.png'),
                  ],
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallTextWidget(text: 'Already have an account?'),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign in',
                          style: TextStyle(color: AppColors.mainColor),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
