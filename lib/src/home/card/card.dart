import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../app/app_color.dart';
import '../../app/app_image.dart';

class MyCardPageSection extends StatelessWidget {
  const MyCardPageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff046AE1),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 8.w,
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "My Wallets",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
              )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BalanceDetails(
                    subTextColor: Colors.white,
                    titleColor: Colors.white,
                    backGroundColor: Colors.black,
                    title: "SUTRAQ CURRENCY",
                    logo: AppImage.logo,
                    icons: IconButton(
                        onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                    subTitle: "AVAILABLE BALANCE",
                    subText: "Q190,000",
                    arrowIcons: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: AppColor.iconColor,
                          size: 4.w,
                        )),
                  ),
                  BalanceDetails(
                    subTextColor: AppColor.iconColor,
                    titleColor: Colors.black,
                    backGroundColor: Colors.white,
                    title: "SUTRAQ CURRENCY",
                    logo: AppImage.logo,
                    icons: IconButton(
                        onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                    subTitle: "AVAILABLE BALANCE",
                    subText: "Q190,000",
                    arrowIcons: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: AppColor.iconColor,
                          size: 7.w,
                        )),
                  ),
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 6.w, top: 4.h, bottom: 2.h),
                      child: Text(
                        "Recent Transactions",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    CustomListTiles(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    CustomListTiles(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    CustomListTiles(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    CustomListTiles(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    CustomListTiles(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    CustomListTiles(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class BalanceDetails extends StatelessWidget {
  final String title;
  final String logo;
  final IconButton icons;
  final String subTitle;
  final IconButton arrowIcons;
  final String subText;
  final Color backGroundColor;
  final Color titleColor;
  final Color subTextColor;

  const BalanceDetails({
    Key? key,
    required this.arrowIcons,
    required this.icons,
    required this.logo,
    required this.subText,
    required this.subTitle,
    required this.title,
    required this.titleColor,
    required this.subTextColor,
    required this.backGroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 16.h,
        width: 70.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: backGroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: ListTile(
                leading: Image.asset(
                  logo,
                  height: 4.h,
                ),
                title: Text(
                  title,
                  style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      color: titleColor),
                ),
                trailing: icons,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                subTitle,
                style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subText,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: subTextColor),
                  ),
                  arrowIcons,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTiles extends StatelessWidget {
  const CustomListTiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: ListTile(
        leading: Icon(Icons.send_rounded),
        title: Text(
          "Access Bank",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
        ),
        subtitle: Text("28, Jan 2020"),
        trailing: Text(
          "\$2400",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
        ),
      ),
    );
  }
}
