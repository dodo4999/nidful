// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nid/explore_page.dart';
import 'package:nid/view_profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.arrow_back_ios)),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Center(child: Image.asset('assets/Frame 16.png')),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Apple Ipad',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Container(
                        width: 60,
                        height: 30,
                        child: Center(
                          child: Text(
                            'Used',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.amber),
                          ),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text('#250.0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text('Product ID', style: TextStyle(fontSize: 18.0)),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text('#543241',
                        style: TextStyle(
                            fontSize: 18.0, color: Colors.amberAccent)),
                  ),
                ),
                // SizedBox(height: 3.0),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: TabBar(
                      controller: _tabController,
                      // isScrollable: true,
                      labelPadding: const EdgeInsets.only(left: 20, right: 20),
                      labelColor: Colors.deepPurple,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.deepPurple,
                      tabs: [
                        Tab(
                          text: 'Description',
                        ),
                        Tab(
                          text: 'Vetters Profile',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                                    style: TextStyle(letterSpacing: 1.0),
                                  ),
                                  SizedBox(height: 20.0),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text('Quantity',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text('20'),
                                  ),
                                  // SizedBox(height: 20.0),
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Vet'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.deepPurple,
                                        minimumSize: const Size(500, 70),
                                        maximumSize: const Size(500, 70),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ViewProfile()),
                                        );
                                      },
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage(
                                            'assets/Rectangle 1.png'),
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Precious Oladele',
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 15.0),
                                        ),
                                        Text(
                                          '@devprecious',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.all(15.0),
                                  padding: const EdgeInsets.all(3.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Follow',
                                      style:
                                          TextStyle(color: Colors.deepPurple),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border:
                                          Border.all(color: Colors.deepPurple)),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text('Total Vetted Items',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0)),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text('250',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0)),
                            ),
                            SizedBox(height: 10.0),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Vet'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                minimumSize: const Size(500, 50),
                                maximumSize: const Size(500, 50),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
