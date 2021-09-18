// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe

// ignore: import_of_legacy_library_into_null_safe

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/Home';

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int pageIndex = 0;
  List<Widget> pages = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
      /* floatingActionButton: FloatingActionButton(
            onPressed: () {
              selectedTab(4);
            },
            child: Icon(
              Icons.add,
              size: 25,
            ),
            backgroundColor: Colors.pink
            //params
            ), */
      /*  floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked */
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
        Icons.schedule_outlined,
        Icons.chat_bubble,
        Icons.home
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
