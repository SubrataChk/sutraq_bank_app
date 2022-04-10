import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextFieldTitle extends StatelessWidget {
  final String title;

  const TextFieldTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: .5.h),
      child: Text(
        title,
        style: TextStyle(color: Color(0xff8D8D8D)),
      ),
    );
  }
}
