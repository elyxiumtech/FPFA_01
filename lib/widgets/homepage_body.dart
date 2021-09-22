import 'package:flutter/material.dart';
//import 'package:learncourse/providers/courses.dart';
import 'package:learncourse/widgets/home_appBar.dart';
import 'package:learncourse/widgets/most_viewed.dart';
import 'package:learncourse/widgets/popularCourses.dart';

//import 'course_detail.dart';

class HomeBody extends StatelessWidget {
  //const HomeBody({ Key? key }) : super//(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 0),
      child: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HomeAppBar(),
              Text(
                "Hey , Nick",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "What are you up for today?",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 0),
                  height: 40,
                  width: MediaQuery.of(context).size.width - 150,
                  decoration: BoxDecoration(
                      color: Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: TextField(
                      controller: _searchController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for...",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 22,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 25,
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 0),
                      height: 40,
                      //width: 20,
                      width: MediaQuery.of(context).size.width - 370,
                      decoration: BoxDecoration(
                          color: Color(0xffF3F3F3),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/slider_icon.png'),
                            fit: BoxFit.values[1],
                          ))),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 0),
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: PopularCourses(),
                  ),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Most Viewed",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                  ]),
              Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 0),
                        //height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFF),
                            borderRadius: BorderRadius.circular(10)),
                        child: MostViewedCourses(),
                      ),
                    ),
                  ]),
                ],
              ),
            ]),
      ),
    );
  }
}
