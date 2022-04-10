import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sutraq_bank_app/src/app/app_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
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
                  //Balance Section
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BalanceDetails(
                          title: "SUTRAQ CURRENCY",
                          logo: AppImage.logo,
                          icons: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.remove_red_eye)),
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
                        BalanceDetails(
                          title: "SUTRAQ CURRENCY",
                          logo: AppImage.logo,
                          icons: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.remove_red_eye)),
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
                  color: AppColor.iconColor,
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
                                      backgroundColor: Colors.black,
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
                                            color: Colors.white,
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
                                      backgroundColor: Colors.black,
                                      child: Image.asset(
                                        AppImage.inputt,
                                        height: 8.h,
                                        width: 12.w,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Send Money",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
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
                                      backgroundColor: Colors.black,
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
                                            color: Colors.white,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Title:
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
                      ],
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
  final IconButton icons;
  final String subTitle;
  final IconButton arrowIcons;
  final String subText;

  const BalanceDetails({
    Key? key,
    required this.arrowIcons,
    required this.icons,
    required this.logo,
    required this.subText,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 16.h,
        width: 70.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
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
                      color: Colors.black),
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
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColor.iconColor),
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
