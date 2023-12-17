import 'package:flutter/material.dart';
import 'package:loginpage/screens/homescreen.dart';
import 'package:loginpage/screens/notificationscreen.dart';
import 'package:loginpage/screens/settingscreen.dart';
import 'package:loginpage/screens/test.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currntIndex = 0;
  final List<Widget> pages = [
    const HomeSrc(),
    const NotificationScr(),
    const Settingscr(),
    const TestSrc()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'setting'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'profile'),
        ],
        currentIndex: currntIndex,
        onTap: (index) {
          setState(() {
            currntIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currntIndex,
        children: pages,
      ),
    );
  }
}
