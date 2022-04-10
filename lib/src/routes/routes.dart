import 'package:flutter/material.dart';
import 'package:sutraq_bank_app/src/auth/login.dart';
import 'package:sutraq_bank_app/src/auth/signUp/createaccount.dart';
import 'package:sutraq_bank_app/src/auth/signUp/signup.dart';
import 'package:sutraq_bank_app/src/forgot/forgotpass.dart';
import 'package:sutraq_bank_app/src/forgot/got_it.dart';
import 'package:sutraq_bank_app/src/home/card/card.dart';
import 'package:sutraq_bank_app/src/home/dashboard/homepage.dart';
import 'package:sutraq_bank_app/src/home/setting/setting.dart';
import 'package:sutraq_bank_app/src/home/wallet/wallet.dart';
import 'package:sutraq_bank_app/src/nav/navigation.dart';
import 'package:sutraq_bank_app/src/splash/splash.dart';
import 'package:sutraq_bank_app/src/welcome/welcome_page.dart';

import '../forgot/check_mail_box.dart';

class Routes {
  static String splash = "/";
  static String welcomePage = "welcomePage";
  static String loginPage = "loginPage";
  static String signupPage = "signupPage";
  static String createAccount = "createAccount";
  static String homePage = "homePage";
  static String forgotPass = "forgotPass";
  static String checkBox = "checkBox";
  static String gotIt = "gotIt";
  static String navBar = "navBar";
  static String myWallet = "myWallet";
  static String myCard = "myCard";
  static String myProfileSection = "myProfileSection";
}

Map<String, WidgetBuilder> routes = {
  Routes.splash: (context) => const SplashScreen(),
  Routes.welcomePage: (context) => const WelcomePage(),
  Routes.loginPage: (context) => const LoginPageSection(),
  Routes.signupPage: (context) => const SignUpPageSection(),
  Routes.forgotPass: (context) => const ForgotPasswordSection(),
  Routes.checkBox: (context) => const CheckMailBox(),
  Routes.gotIt: (context) => const EmailGotItSection(),
  Routes.homePage: (context) => const HomePage(),
  Routes.navBar: (context) => const CustomBottomNavBar(),
  Routes.myWallet: (context) => const MyWalletSection(),
  Routes.myCard: (context) => const MyCardPageSection(),
  Routes.myProfileSection: (context) => const MyProfileSection(),
  Routes.createAccount: (context) => const CreateAccount(),
};
