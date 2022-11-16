import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monkey_shop_app/screens/account_screen.dart';
import 'package:monkey_shop_app/screens/cart_screen.dart';
import 'package:monkey_shop_app/screens/home_screen.dart';
import 'package:monkey_shop_app/screens/message_screen.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  static const String id = 'home-screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MessageScreen(),
    CartScreen(),
    AccountScreen(),
    // Text(
    //   'Index 0: Home',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 1: Business',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 2: School',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 3: Settings',
    //   style: optionStyle,
    // ),
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
        elevation: 4,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
            label: 'Home',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1 ? IconlyBold.chat : IconlyLight.chat),
            label: 'Messages',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2 ? IconlyBold.buy : IconlyLight.buy),
            label: 'Cart',
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3 ? CupertinoIcons.person_solid:CupertinoIcons.person),
            label: 'Account',
            // backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
//Bottom Navigation
