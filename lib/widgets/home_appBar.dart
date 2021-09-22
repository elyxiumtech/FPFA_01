import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntrinsicHeight(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 0),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffD98DAB),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/icons-boy.png'),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 60,
                width: 60,
                child: IconButton(
                    icon: SvgPicture.asset("assets/images/burger_icon.svg"),
                    color: Colors.white,
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
