import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sutraq_bank_app/src/home/dashboard/homepage.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';
import 'package:sutraq_bank_app/src/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sutraq',
          theme: ThemeData.light(),
          initialRoute: "/",
          routes: routes,
        );
      },
    );
  }
}
