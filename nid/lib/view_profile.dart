// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nid/explore_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile>
    with TickerProviderStateMixin {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Icon(Icons.explore)),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Text("Explore")),
                selectedColor: Colors.deepPurple),
            SalomonBottomBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Icon(Icons.timelapse)),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Text("Timeline")),
                selectedColor: Colors.deepPurple),
            SalomonBottomBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Icon(Icons.settings)),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Text("Settings")),
                selectedColor: Colors.deepPurple),
            SalomonBottomBarItem(
                icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Icon(Icons.notifications)),
                title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Explore()),
                      );
                    },
                    child: Text("Notifications")),
                selectedColor: Colors.deepPurple),
          ],
        ),
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
                    'Profile',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/Rectangle 1.png'),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Precious Oladele',
                              style: TextStyle(
                                  color: Colors.deepPurple, fontSize: 15.0),
                            ),
                            Text(
                              '@devprecious',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10.0),
                            ),
                          ],
                        ),
                      ]),
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(3.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Follow',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.deepPurple)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.instagram,
                                color: Colors.deepPurple),
                            SizedBox(width: 5.0),
                            Text('@of_devprecious_',
                                style: TextStyle(color: Colors.deepPurple)),
                          ],
                        ),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.facebook,
                                color: Colors.deepPurple),
                            SizedBox(width: 5.0),
                            Text('@of_devprecious_',
                                style: TextStyle(color: Colors.deepPurple)),
                          ],
                        )
                      ]),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Text('20 Followers')),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 30,
                      child: Center(
                        child: Text(
                          'All',
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                    Text(
                      'Electronics',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'Clothings',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      'Phone/Tablets',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 171.0,
                      height: 200.0,
                      child: Column(
                        children: [
                          Image.asset('assets/Rectangle 1.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Laptop',
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
                              child: Text(
                                'Free',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 21.0,
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: 171.0,
                      height: 200.0,
                      child: Column(
                        children: [
                          Image.asset('assets/Rectangle 2.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Laptop',
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
                              child: Text(
                                '250.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 171.0,
                      height: 200.0,
                      child: Column(
                        children: [
                          Image.asset('assets/Rectangle 1.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Laptop',
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
                              child: Text(
                                'Free',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 21.0,
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: 171.0,
                      height: 200.0,
                      child: Column(
                        children: [
                          Image.asset('assets/Rectangle 2.png'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Laptop',
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
                              child: Text(
                                '250.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
