import 'package:flutter/material.dart';
import 'package:learncourse/providers/courses.dart';

class CourseProgress extends StatelessWidget {
  //const CourseProgress({ Key? key }) : //super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: cardColor.length,
            //cardColor.length,
            itemBuilder: (c, i) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 02),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black.withOpacity(0.7),
                              ),
                              //height: MediaQuery.of(context).size.height - 250,
                              width: 15,
                              // width: MediaQuery.of(context).size.width - 50,

                              margin: EdgeInsets.only(
                                  left: 20, right: 0, bottom: 0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 190,
                              //height: MediaQuery.of(context).size.height - 250,
                              width: 2,
                              // width: MediaQuery.of(context).size.width - 50,
                              color: Colors.black.withOpacity(0.5),
                              margin: EdgeInsets.only(
                                  left: 20, right: 0, bottom: 0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 0, bottom: 35),
                            color: Colors.white,
                            child: Text(
                              " 10:30am - 1:30 pm",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Stack(children: [
                            Container(
                              height: 130,
                              width: 330,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: cardColor[i].withOpacity(0.6),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, right: 18, left: 18),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        course_desc[i]['course_module'],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(course_desc[i]['course_submodule'],
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black
                                                  .withOpacity(0.6)))
                                    ]))
                          ]),
                        ],
                      ),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
