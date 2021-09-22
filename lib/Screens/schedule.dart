import 'package:flutter/material.dart';
import 'package:learncourse/widgets/course_progress.dart';

class Schedule extends StatelessWidget {
  //const Schedule({ Key? key }) : super//(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: NeverScrollableScrollPhysics(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        //color: Colors.yellow,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  color: Colors.white,
                  child: Text(
                    "Course Schedule",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Container(
                      height: MediaQuery.of(context).size.height - 500,
                      margin: EdgeInsets.only(right: 16),
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/vr_course.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20))),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 100, right: 30, left: 40),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('VR and AR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                )),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Learn the basics of AR and \n VR content',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ))
                          ]))
                ])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35, top: 20, bottom: 10),
                  color: Colors.white,
                  child: Text(
                    "Sep 22nd 2021",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35, top: 0, bottom: 10),
                  color: Colors.white,
                  child: Text(
                    "17 lessons",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            CourseProgress(),
          ],
        ),
      ),
    );
  }
}
