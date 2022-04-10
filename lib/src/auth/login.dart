import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sutraq_bank_app/src/app/app_image.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';
import 'package:sutraq_bank_app/src/widget/custom_button.dart';

import '../widget/textformfield.dart';
import '../widget/textformtitle.dart';

class LoginPageSection extends StatefulWidget {
  const LoginPageSection({Key? key}) : super(key: key);

  @override
  State<LoginPageSection> createState() => _LoginPageSectionState();
}

class _LoginPageSectionState extends State<LoginPageSection> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "Welcome Back!",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20.sp),
                        ),
                        const Text(
                          "Enter your details to continue",
                          style: TextStyle(color: Color(0xff8D8D8D)),
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
                  controller: email,
                  prefixIcons: CupertinoIcons.mail,
                  obscure: false,
                ),
                const TextFieldTitle(
                  title: "Password",
                ),
                CustomTextFormField(
                  hintText: "Password",
                  controller: password,
                  prefixIcons: Icons.vpn_key,
                  obscure: true,
                  suficIcon: Icons.remove_red_eye,
                ),
                //! Forgot Password
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.forgotPass);
                          },
                          child: const Text(
                            "Forgot Password",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColor.iconColor),
                          )),
                    ],
                  ),
                ),
                CustomButton(
                    backGroundColor: AppColor.iconColor,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.navBar);
                    },
                    textColor: Colors.white,
                    title: "LOGIN"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Need an Account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.signupPage);
                        },
                        child: const Text(
                          "Try Sutraq",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColor.iconColor),
                        ))
                  ],
                ),
                //Tap Finger

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 7.h, child: Image.asset(AppImage.finger)),
                        SizedBox(
                          height: 1.h,
                        ),
                        const Text(
                          "Tap to use fingerprint",
                          style: TextStyle(color: AppColor.iconColor),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
