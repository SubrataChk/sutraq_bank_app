import 'package:flutter/material.dart';
import 'package:sutraq_bank_app/src/app/app_color.dart';
import 'package:sutraq_bank_app/src/home/card/card.dart';
import 'package:sutraq_bank_app/src/home/dashboard/homepage.dart';
import 'package:sutraq_bank_app/src/home/setting/setting.dart';
import 'package:sutraq_bank_app/src/home/wallet/wallet.dart';
import 'package:sutraq_bank_app/src/routes/routes.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MyWalletSection(),
    MyCardPageSection(),
    MyProfileSection(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.iconColor,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
