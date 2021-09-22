import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learncourse/providers/courses.dart';

class MostViewedCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: online_data_one.length,
        itemBuilder: (c, i) {
          return Container(
            color: Color(0xffF3F3F3).withOpacity(0.9),
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15, left: 20),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffD98DAB),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                  instructor_data[i]["instructor_img"]),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        height: 60,
                        width: 10,
                      ),
                      Column(
                        children: [
                          Row(children: [
                            Container(
                              color: Color(0xffF3F3F3).withOpacity(0.9),
                              width: 150,
                              height: 30,
                              child: Text(
                                instructor_data[i]['instructor_name'],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ]),
                          Row(children: [
                            Container(
                              color: Color(0xffF3F3F3).withOpacity(0.9),
                              width: 150,
                              height: 30,
                              child: Text(
                                instructor_data[i]['instructor_pos'],
                                style: TextStyle(
                                    fontSize: 1, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ]),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 60,
                  width: 60,
                  child: IconButton(
                      icon: SvgPicture.asset(
                          "assets/images/icons8-forward-30.svg"),
                      color: Colors.white,
                      onPressed: () {}),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
