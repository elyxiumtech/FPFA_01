import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learncourse/Screens/chat_screen.dart';
import 'package:learncourse/Screens/schedule.dart';
//import 'package:learncourse/widgets/home_appBar.dart';
import 'package:learncourse/widgets/homepage_body.dart';

import 'settings_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/Home';

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeBody(),
    Schedule(),
    ChatScreen(),
    Settings(),
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    return AnimatedBottomNavigationBar(
      icons: [
        Icons.home,
        Icons.schedule_rounded,
        Icons.chat_bubble_rounded,
        Icons.settings
      ],
      activeColor: Colors.black,
      splashColor: Colors.amberAccent,
      inactiveColor: Colors.black.withOpacity(0.5),

      activeIndex: pageIndex,

      //notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 0,
      iconSize: 25,
      rightCornerRadius: 0,
      onTap: (index) {
        selectedTab(index);
      },
      //other params
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
