import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Row(
        children: [
          Container(
              margin: EdgeInsets.all(25),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ))
        ],
      ),
      Container(
        margin: EdgeInsets.all(30),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 0, right: 20),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Nikita Egorov",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Row(children: [
                  Text(
                    "Nikitaes@gmail.com",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ])
              ],
            ),
          ],
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height - 400,
        // color: Colors.grey,
        child: Column(children: [
          ListTile(
            leading: Icon(
              Icons.person_outline,
            ),
            title: Text(
              'Account Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () => null,
            trailing: Container(
                margin: EdgeInsets.only(right: 50),
                child: Icon(Icons.keyboard_arrow_right_outlined)),
          ),
          ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            trailing: Container(
                margin: EdgeInsets.only(right: 50),
                child: Icon(Icons.keyboard_arrow_right_outlined)),
          ),
          ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text(
              'More Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () => null,
            trailing: Container(
                margin: EdgeInsets.only(right: 50),
                child: Icon(Icons.keyboard_arrow_right_outlined)),
          ),
          ListTile(
            leading: Icon(Icons.description_outlined),
            title: Text(
              'Theme',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            trailing: Container(
              margin: EdgeInsets.only(right: 50),
              child: Icon(Icons.keyboard_arrow_right_outlined),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings_accessibility_outlined),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            onTap: () => null,
            trailing: Container(
                margin: EdgeInsets.only(right: 50),
                child: Icon(Icons.keyboard_arrow_right_outlined)),
          ),
        ]),
      ),
    ]);
  }
}
