import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/app/app_image.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  setTimer() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, Routes.welcomePage);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImage.logo,
            height: 15.h,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
