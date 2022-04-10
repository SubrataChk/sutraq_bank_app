import 'package:flutter/material.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sizer/sizer.dart';

import '../../app/app_image.dart';

class MyWalletSection extends StatefulWidget {
  const MyWalletSection({Key? key}) : super(key: key);

  @override
  State<MyWalletSection> createState() => _MyWalletSectionState();
}

class _MyWalletSectionState extends State<MyWalletSection> {
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
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "My Wallet",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
              ),
            ),
            Container(
              child: Column(
                children: [
                  //Balance Section
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BalanceDetails(
                          titleTextColor: Colors.white,
                          backGroundColor: Colors.black,
                          title: "SUTRAQ CURRENCY",
                          logo: AppImage.flag,
                          subTitle: "AVAILABLE BALANCE",
                          subText: "Q190,000",
                        ),
                        BalanceDetails(
                          titleTextColor: Colors.black,
                          backGroundColor: Colors.white,
                          title: "SUTRAQ CURRENCY",
                          logo: AppImage.logo,
                          subTitle: "AVAILABLE BALANCE",
                          subText: "Q190,000",
                        ),
                      ],
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
              child: Column(
                children: [
                  //! Header....
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.h, left: 3.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 8.w,
                                      backgroundColor: AppColor.iconColor,
                                      child: Image.asset(
                                        AppImage.wallet,
                                        height: 8.h,
                                        width: 12.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Fund Wallet",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 13.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 8.w,
                                      backgroundColor: AppColor.iconColor,
                                      child: Image.asset(
                                        AppImage.trad,
                                        height: 5.h,
                                        width: 7.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Send Money",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 13.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 8.w,
                                      backgroundColor: AppColor.iconColor,
                                      child: Image.asset(
                                        AppImage.inputt,
                                        height: 8.h,
                                        width: 12.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Withdraw",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 13.sp),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
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
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Title:
                          Padding(
                            padding: EdgeInsets.only(
                                left: 6.w, top: 4.h, bottom: 2.h),
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
                  ))
                ],
              ),
            ))
          ],
        ),
      )),
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

class BalanceDetails extends StatelessWidget {
  final String title;
  final String logo;

  final String subTitle;

  final String subText;
  final Color backGroundColor;
  final Color titleTextColor;

  const BalanceDetails(
      {Key? key,
      required this.logo,
      required this.subText,
      required this.subTitle,
      required this.title,
      required this.backGroundColor,
      required this.titleTextColor})
      : super(key: key);

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
                      color: titleTextColor),
                ),
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
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColor.iconColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
