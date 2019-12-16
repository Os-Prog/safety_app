import 'package:flutter/material.dart';

class ManageScreen extends StatefulWidget {
  static final id = 'Manage Account';
  @override
  _ManageScreenState createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(216, 216, 216, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.deepPurpleAccent,
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                ),
              ],
            ),
            Container(
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .1),
//              height: 143.0,
              margin: EdgeInsets.only(top: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                      height: 100.0,
                      child: Image.asset('assets/images/new-img.png'),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                    child: Container(
                      height: 86.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              'Muhammed Yayah',
                              style: TextStyle(
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Fullstack web developer & App developer',
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                    child: Container(
                        padding: EdgeInsets.only(bottom: 15.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12.0),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 14.0),
                                        child: Icon(Icons.email, color: Color.fromRGBO(81, 153, 228, 1), size: 24.0,),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text('Email', style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 48.0, right: 8.0, top: 4.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'examples@mail.com'
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 9.0,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12.0),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 14.0),
                                        child: Icon(Icons.phone, color: Color.fromRGBO(81, 153, 228, 1), size: 24.0,),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text('Phone Number', style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 48.0, right: 8.0, top: 4.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                      '07012345678'
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 9.0,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12.0),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 14.0),
                                        child: Icon(Icons.contact_phone, color: Color.fromRGBO(81, 153, 228, 1), size: 24.0,),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text('Contacts', style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 48.0, right: 8.0, top: 4.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                          '08162875010'
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                          '08164093351'
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                          '08146367757'
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
