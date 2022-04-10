import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../app/app_color.dart';
import '../../app/app_image.dart';

class MyProfileSection extends StatelessWidget {
  const MyProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff3417A8),
                      child: Text("OP"),
                    ),
                    title: Text(
                      "Hello, Precious!",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      "Su/Pre123",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 9.sp,
                          color: Colors.grey),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Container(
                        height: 7.h,
                        child: Image.asset(
                          AppImage.notification,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "General",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7E7E7E)),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      CustomOption(
                        title: "Bank Account",
                        onTap: () {},
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      CustomOption(
                        title: "My Cards",
                        onTap: () {},
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      CustomOption(
                        title: "Change Transation Pin",
                        onTap: () {},
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      CustomOption(
                        title: "Security",
                        onTap: () {},
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      CustomOption(
                        title: "Document",
                        onTap: () {},
                      ),
                      //Preferences
                      Text(
                        "General",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7E7E7E)),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      CustomOption(
                        title: "Bank Account",
                        onTap: () {},
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      CustomOption(
                        title: "My Cards",
                        onTap: () {},
                      ),

                      Text(
                        "General",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7E7E7E)),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Get real-time updates",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          CupertinoSwitch(value: true, onChanged: (value) {}),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      )),
    );
  }
}

class CustomOption extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomOption({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff000000),
              size: 4.w,
            )
          ],
        ),
      ),
    );
  }
}
