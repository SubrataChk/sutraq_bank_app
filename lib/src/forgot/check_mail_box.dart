import 'package:flutter/material.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/app/app_image.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';
import 'package:sutraq_bank_app/src/widget/custom_button.dart';

class CheckMailBox extends StatefulWidget {
  const CheckMailBox({Key? key}) : super(key: key);

  @override
  State<CheckMailBox> createState() => _CheckMailBoxState();
}

class _CheckMailBoxState extends State<CheckMailBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
          child: SafeArea(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: Container(
              height: 40.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColor.checkBox,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImage.forgot,
                      height: 8.h,
                      width: double.infinity,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 4.h, top: 1.h),
                        child: Column(
                          children: [
                            Text(
                              "Check your Inbox!s",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18.sp),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8.w, right: 8.w, bottom: 4.h),
                              child: Text(
                                "An email has been sent to you. Click the link to reset your password.",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xff8D8D8D)),
                              ),
                            ),
                            CustomButton(
                                backGroundColor: AppColor.iconColor,
                                onTap: () {
                                  Navigator.pushNamed(context, Routes.gotIt);
                                },
                                textColor: Colors.white,
                                title: "Check Mail")
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ))),
    );
  }
}
