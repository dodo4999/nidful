// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nid/explore_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> with TickerProviderStateMixin {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo1.png'),
                    Container(
                      width: 60,
                      height: 30,
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: 20,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[300]),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Timeline',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Jane Done',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '12:30pm',
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.white,
                        width: 171.0,
                        height: 200.0,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle 4.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'JBL',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Container(
                                    width: 50,
                                    height: 20,
                                    child: Center(
                                      child: Text(
                                        'Used',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[500]),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      '250.00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(Icons.arrow_forward_sharp)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.black),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Jane Done',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '12:30pm',
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.white,
                        width: 171.0,
                        height: 200.0,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle 4.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'JBL',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Container(
                                    width: 50,
                                    height: 20,
                                    child: Center(
                                      child: Text(
                                        'Used',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[500]),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      '250.00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(Icons.arrow_forward_sharp)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.black),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Jane Done',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '12:30pm',
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.white,
                        width: 171.0,
                        height: 200.0,
                        child: Column(
                          children: [
                            Image.asset('assets/Rectangle 4.png'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'JBL',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Container(
                                    width: 50,
                                    height: 20,
                                    child: Center(
                                      child: Text(
                                        'Used',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[500]),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      '250.00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(Icons.arrow_forward_sharp)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.black)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
