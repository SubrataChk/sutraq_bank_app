import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../app/app_color.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color backGroundColor;
  final Color textColor;
  final VoidCallback onTap;

  const CustomButton({
    Key? key,
    required this.backGroundColor,
    required this.onTap,
    required this.textColor,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 6.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backGroundColor,
          ),
          alignment: Alignment.center,
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.w700, color: textColor, fontSize: 13.sp),
          ),
        ),
      ),
    );
  }
}
