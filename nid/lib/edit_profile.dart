// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nid/explore_page.dart';
import 'package:nid/widgets/header_widget.dart';
import 'package:nid/widgets/input_widget.dart';
import 'package:nid/widgets/sub_header.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with TickerProviderStateMixin {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
            child: Column(
              children: [
                Header(),
                SubHeader(title: 'Edit Profile'),
                SizedBox(height: 40.0),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/me.jpeg',
                  ),
                ),
                SizedBox(height: 20.0),
                InpuWidget(labelText: 'Full Name'),
                InpuWidget(labelText: 'Username'),
                InpuWidget(labelText: 'Email'),
                InpuWidget(labelText: 'Phone Number'),
                InpuWidget(labelText: 'Address'),
                InpuWidget(labelText: 'Instagram URL'),
                InpuWidget(labelText: 'Facebook URL'),
                InpuWidget(labelText: 'Password'),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Save changes',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    minimumSize: const Size(500, 50),
                    maximumSize: const Size(500, 50),
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
