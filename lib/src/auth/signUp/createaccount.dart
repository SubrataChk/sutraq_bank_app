import 'package:flutter/material.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sutraq_bank_app/src/app/app_image.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';
import 'package:sutraq_bank_app/src/widget/custom_button.dart';
import 'package:sutraq_bank_app/src/widget/textformfield.dart';
import 'package:sutraq_bank_app/src/widget/textformtitle.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  //Dropdown Button:
  List items = ["Personal Use", "Business Use"];
  String? selectItems = "Personal Use";

  //Country:
  List citems = [
    "Bangladesh",
    "Canada",
    "India",
    "Pakistan",
  ];
  String? cselectItems = "Bangladesh";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.h, bottom: 1.h),
              child: Image.asset(
                AppImage.logo,
                height: 5.h,
                width: double.infinity,
              ),
            ),

            //! Header
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: Text(
                    "Create your Sutraq account & start transacting!",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Enter your details to begin",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            //!middle part
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFieldTitle(title: "I’m opening this account for"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: SizedBox(
                    width: double.infinity,
                    height: 6.5.h,
                    child: DropdownButtonFormField(
                      iconEnabledColor: AppColor.iconColor,
                      decoration: InputDecoration(
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
                      onChanged: (value) {
                        setState(() {
                          selectItems = value.toString();
                        });
                      },
                      value: selectItems,
                      items: items
                          .map((items) => DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp),
                              )))
                          .toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                TextFieldTitle(title: "First Name"),
                CustomTextFormField(
                    hintText: "Name",
                    obscure: false,
                    prefixIcons: Icons.person,
                    controller: fName),
                SizedBox(
                  height: 0.5.h,
                ),
                TextFieldTitle(title: "Last Name"),
                CustomTextFormField(
                    hintText: "Last Name",
                    obscure: false,
                    prefixIcons: Icons.person,
                    controller: lName),
                SizedBox(
                  height: 0.5.h,
                ),
                TextFieldTitle(title: "Email Address"),
                CustomTextFormField(
                    hintText: "Email",
                    obscure: false,
                    prefixIcons: Icons.email,
                    controller: email),
                TextFieldTitle(title: "Create Password"),
                CustomTextFormField(
                    hintText: "Password",
                    obscure: true,
                    prefixIcons: Icons.vpn_key,
                    controller: password),
                SizedBox(
                  height: 0.5.h,
                ),
                TextFieldTitle(title: "Country of Residence"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: SizedBox(
                    width: double.infinity,
                    height: 6.5.h,
                    child: DropdownButtonFormField(
                      iconEnabledColor: AppColor.iconColor,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.location_on,
                          color: AppColor.iconColor,
                        ),
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
                      onChanged: (value) {
                        setState(() {
                          cselectItems = value.toString();
                        });
                      },
                      value: cselectItems,
                      items: citems
                          .map((citems) => DropdownMenuItem(
                              value: citems,
                              child: Text(
                                citems,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp),
                              )))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),

            CustomButton(
                backGroundColor: AppColor.iconColor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => kycPage()));
                },
                textColor: AppColor.backgroundColor,
                title: "Register"),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
              child: Text(
                "By signing up, you agree to our Terms of Use and Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      )),
    );
  }

  //! Process Page
  kycPage() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppImage.bell,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 33.w),
              child: Text(
                "Good!",
                style: TextStyle(color: AppColor.iconColor, fontSize: 18.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
              child: Text(
                "Now tell us a bit about yourself",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            CustomButton(
                backGroundColor: AppColor.iconColor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => uploadImage()));
                },
                textColor: Colors.white,
                title: "KYC")
          ],
        ),
      ),
    );
  }

  uploadImage() {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Upload Photo",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.sp),
                    ),
                  ),
                  Text(
                    "Upload a photo of yourself. A picture showing your face properly is recommended",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                height: MediaQuery.of(context).size.width * 1.2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Image.asset(
                      AppImage.photo,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Allows png, jpeg formats",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomButton(
                        backGroundColor: AppColor.iconColor,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => uploadFile()));
                        },
                        textColor: Colors.white,
                        title: "Next"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Step 1/2",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
  //! File Upload

  uploadFile() {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "I.D Upload",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.sp),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Text(
                      "We need a valid government issued I.D to continue.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                height: MediaQuery.of(context).size.width * 1.2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Image.asset(
                      AppImage.file,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Allows .docx, .doc, .pdf, jpeg, png formats",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomButton(
                        backGroundColor: AppColor.iconColor,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewDashBoard()));
                        },
                        textColor: Colors.white,
                        title: "Done"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Step 2/2",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  viewDashBoard() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppImage.bell,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
              child: Text(
                "Thanks for your time Precious",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            CustomButton(
                backGroundColor: AppColor.iconColor,
                onTap: () {
                  Navigator.pushNamed(context, Routes.navBar);
                },
                textColor: Colors.white,
                title: "View Dashboard")
          ],
        ),
      ),
    );
  }
}
