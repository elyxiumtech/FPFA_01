//import 'package:courseloop/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'home_screen.dart';

// ignore: use_key_in_widget_constructors
class WelcomeScreen extends StatelessWidget {
  //const WelcomeScreen({ Key? key }) : //super(key: key);

  @override
  Widget build(BuildContext context) {
    //Color bg = Colors.purple.shade900;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xff5452EF),
          body: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'CourseLoop',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/welcome_background.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, right: 4, left: 4),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 20, top: 10),
                          child: const Text("Welcome",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Text(
                              "Learn new things daily. Explore thousands of courses. Stay connected to other people. Make learning joyful, not stressed. ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white)),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0, left: 25),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(HomeScreen.routeName);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text("Start learning",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff5452EF),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ])),
    );
  }
}
