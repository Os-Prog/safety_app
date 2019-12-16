import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'e_loading.dart';
import 'e_loading_general.dart';
import 'e_loading_med.dart';
import 'e_loading_post.dart';

class EmergencyScreen extends StatefulWidget {
  static final id = 'Emergency';
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(216, 216, 216, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _sendFire();
                          });
                        },
                        child: Card(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 14.0),
                              child: ListTile(
                                title: Center(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.whatshot,
                                        size: 52.0,
                                        color: Colors.orangeAccent,
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        'Fire',
                                        style: TextStyle(
                                            fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _sendMed();
                          });
                        },
                        child: Card(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 14.0),
                              child: ListTile(
                                title: Center(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.add_box,
                                        size: 52.0,
                                        color: Colors.redAccent,
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        'Medical',
                                        style: TextStyle(
                                            fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _sendPolice();
                          });
                        },
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 14.0),
                            child: ListTile(
                              title: Center(
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.directions_car,
                                      size: 52.0,
                                      color: Colors.blueAccent,
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      'Police',
                                      style: TextStyle(
                                          fontSize: 18.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 14.0),
                              child: ListTile(
                                title: Center(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.announcement,
                                        size: 52.0,
                                        color: Colors.orangeAccent,
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        'General',
                                        style: TextStyle(
                                            fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0, vertical: 4.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _sendGeneral();
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 17.0),
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [BoxShadow(color: Colors.black38)],
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.devices,
                                size: 52.0,
                                color: Colors.orangeAccent,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Activate Device',
                                style: TextStyle(
                                    fontSize: 18.0, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendFire() async {
    Future resp = Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoadingR()));
  }
  void _sendMed() async {
    Future resp = Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoadingR_med()));
  }
  void _sendPolice() async {
    Future resp = Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoadingR_Police()));
  }
  void _sendGeneral() async {
    Future resp = Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoadingR_Gen()));
  }

}
