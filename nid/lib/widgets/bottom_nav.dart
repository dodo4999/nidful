import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
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
    );
  }
}
