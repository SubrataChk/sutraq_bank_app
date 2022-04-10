import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sutraq_bank_app/src/app/app_image.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';
import 'package:sutraq_bank_app/src/widget/custom_button.dart';

class EmailGotItSection extends StatelessWidget {
  const EmailGotItSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A132F),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 50.h),
              child: Image.asset(
                AppImage.bell,
                height: 20.h,
                width: double.infinity,
              ),
            ),
          ),
          CustomButton(
              backGroundColor: AppColor.iconColor,
              onTap: () {
                Navigator.pushNamed(context, Routes.loginPage);
              },
              textColor: Colors.white,
              title: "Got It!")
        ],
      )),
    );
  }
}
