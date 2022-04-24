// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nid/home_explore.dart';
import 'package:nid/settings.dart';
import 'package:nid/timeline.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int _selectedIndex = 0;
  List<Widget> _pages = <Widget>[
    HomeExplore(),
    TimeLine(),
    Settings(),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex, //New
          onTap: (value) {
            setState(() => _selectedIndex = value);
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explore"),
              selectedColor: Colors.deepPurple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.timelapse),
              title: Text("Timeline"),
              selectedColor: Colors.deepPurple,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"),
              selectedColor: Colors.deepPurple,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.notifications),
              title: Text("Notifications"),
              selectedColor: Colors.deepPurple,
            ),
          ],
        ),
        body: Container(
          child: _pages.elementAt(_selectedIndex),
        ));
  }
}
