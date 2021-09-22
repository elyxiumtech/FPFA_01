import 'package:flutter/material.dart';
import 'package:learncourse/providers/courses.dart';

class PopularCourses extends StatelessWidget {
  //const PopularCourses({ Key? key }) :// super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (c, i) {
        return Stack(children: [
          Container(
              height: 130,
              margin: EdgeInsets.only(right: 16),
              width: MediaQuery.of(context).size.width - 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(online_data_one[i]['img']),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20))),
          Padding(
              padding: const EdgeInsets.only(top: 25, right: 18, left: 18),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      online_data_one[i]['title'],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      margin: EdgeInsets.fromLTRB(10, 0, 30, 0),
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(online_data_one[i]['courses'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    )
                  ]))
        ]);
      },
      scrollDirection: Axis.horizontal,
      itemCount: online_data_one.length,
    );
  }
}
