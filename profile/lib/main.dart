import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'
          ),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: <Widget>[
            Pic(),
            Name(),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 74.0,
              endIndent: 28.0,
            ),
            About(),
            Divider(
              color: Colors.grey,
              thickness: 0.4,
              indent: 74.0,
              endIndent: 28.0,
            ),
            Phone()
          ],
        )
      ),
    );
  }
}

class Pic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/profile.jpg'),
          )
        ],
      ),
    );
  }
}

class Name extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.person,
            color: Colors.teal,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  ),
                  SizedBox(
                    width: 275.0,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Czech',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87
                    ),
                  ),
                  SizedBox(
                    width: 250.0,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                'This is not your username or pin. The name will be \nvisible to your WhatsApp contacts.',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class About extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.info,
            color: Colors.teal,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'About',
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
                  SizedBox(
                    width: 251.0,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Android Developer .... Photographer',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                        color: Colors.black87
                    ),
                  ),
                  SizedBox(
                    width: 88.0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Phone extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.phone,
            color: Colors.teal,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Phone',
                    style: TextStyle(
                        color: Colors.black54
                    ),
                  ),
                  SizedBox(
                    width: 251.0,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '+234 905 655 ****',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87
                    ),
                  ),
                  SizedBox(
                    width: 198.0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}