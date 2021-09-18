import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';
import 'Screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: WelcomeScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => const HomeScreen(),
        });
  }
}
