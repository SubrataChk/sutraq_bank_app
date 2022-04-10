import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcons;
  final IconData? suficIcon;
  final bool? obscure;
  final TextEditingController controller;

  const CustomTextFormField({
    required this.hintText,
    this.obscure,
    required this.prefixIcons,
    this.suficIcon,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.w, right: 7.w, bottom: 1.h),
      child: TextFormField(
        controller: controller,
        obscureText: obscure!,
        decoration: InputDecoration(
          suffixIcon: Icon(
            suficIcon,
            color: Color(0xffDADADA),
          ),
          hintText: hintText,
          prefixIcon: Icon(
            prefixIcons,
            color: AppColor.iconColor,
          ),
          contentPadding: EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
