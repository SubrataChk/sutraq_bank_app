import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';

import '../app/app_color.dart';
import '../app/app_image.dart';
import '../widget/custom_button.dart';
import '../widget/textformfield.dart';
import '../widget/textformtitle.dart';

class ForgotPasswordSection extends StatefulWidget {
  const ForgotPasswordSection({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordSection> createState() => _ForgotPasswordSectionState();
}

class _ForgotPasswordSectionState extends State<ForgotPasswordSection> {
  TextEditingController forgotPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 2.h,
            width: 2.w,
            decoration: BoxDecoration(
                color: AppColor.iconColor,
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //!Logo
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, bottom: 2.h),
                    child: Image.asset(
                      AppImage.logo,
                      height: 10.h,
                      width: double.infinity,
                    ),
                  ),
                ),
                //! Title
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Column(
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 9.w),
                          child: const Text(
                            "Enter the email address associated with your account to recover password.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xff8D8D8D)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const TextFieldTitle(
                  title: "Email Address",
                ),
                //! Form Field
                CustomTextFormField(
                  hintText: "Email",
                  controller: forgotPass,
                  prefixIcons: CupertinoIcons.mail,
                  obscure: false,
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomButton(
                    backGroundColor: AppColor.iconColor,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.checkBox);
                    },
                    textColor: Colors.white,
                    title: "RECOVER PASSWORD"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
