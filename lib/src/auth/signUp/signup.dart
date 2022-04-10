import 'package:flutter/material.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sutraq_bank_app/src/app/app_image.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/auth/signUp/createaccount.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';
import 'package:sutraq_bank_app/src/widget/custom_button.dart';

class SignUpPageSection extends StatefulWidget {
  const SignUpPageSection({Key? key}) : super(key: key);

  @override
  State<SignUpPageSection> createState() => _SignUpPageSectionState();
}

class _SignUpPageSectionState extends State<SignUpPageSection> {
  @override
  Widget build(BuildContext context) {
    return processPage();
  }

//! Process Page
  processPage() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppImage.bell,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 33.w),
              child: Text(
                "Nice Job!",
                style: TextStyle(color: AppColor.iconColor, fontSize: 18.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
              child: Text(
                "We’d Like to know you better",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            CustomButton(
                backGroundColor: AppColor.iconColor,
                onTap: () {
                  Navigator.pushNamed(context, Routes.createAccount);
                },
                textColor: Colors.white,
                title: "Process")
          ],
        ),
      ),
    );
  }
}
