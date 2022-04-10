import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sutraq_bank_app/src/app/app_image.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';

import '../widget/custom_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int activeIndex = 0;

  List imageList = [
    AppImage.sliderThree,
    AppImage.sliderOne,
    AppImage.sliderTwo,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Container(
            child: Column(
              children: [
                CarouselSlider.builder(
                    itemCount: imageList.length,
                    itemBuilder: (context, index, realIndex) {
                      final imageUrl = imageList[index];

                      return buildImage(imageUrl, index);
                    },
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        height: 35.h,
                        autoPlayInterval: Duration(seconds: 2))),
                SizedBox(
                  height: 1.h,
                ),
                buildIndecator(),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.iconColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.h,
                    ),
                    child: Text(
                      "Send Money Anywhere",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 6.w, right: 6.w, top: 1.h, bottom: 4.h),
                    child: Text(
                      "With our unique technology, you can get money anywhere in the world.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 10.sp),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomButton(
                    textColor: Colors.white,
                    backGroundColor: AppColor.btnBlk,
                    title: "LOGIN",
                    onTap: () {
                      Navigator.pushNamed(context, Routes.loginPage);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.signupPage);
                        },
                        child: Text(
                          "Try Sutraq",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 13.sp),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildImage(String imageUrl, int index) {
    return Container(
        // margin: EdgeInsets.symmetric(horizontal: 2.w),
        color: AppColor.backgroundColor,
        child: Image.asset(
          imageUrl,
          fit: BoxFit.fill,
        ));
  }

  buildIndecator() {
    return AnimatedSmoothIndicator(
        effect: JumpingDotEffect(
            dotHeight: 1.h,
            dotWidth: 2.w,
            activeDotColor: AppColor.iconColor,
            dotColor: AppColor.iconColor),
        activeIndex: activeIndex,
        count: imageList.length);
  }
}
