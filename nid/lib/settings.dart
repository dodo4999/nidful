// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nid/edit_profile.dart';
import 'package:nid/explore_page.dart';
import 'package:nid/faq_page.dart';
import 'package:nid/help_or_support.dart';
import 'package:nid/widgets/header_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> with TickerProviderStateMixin {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
              child: Column(
                children: [
                  Header(),
                  SizedBox(height: 20.0),
                  Column(children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                        ),
                        title: Text('Edit Profile'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.notifications,
                      ),
                      title: Text('Notifications'),
                      trailing: Icon(Icons.toggle_off),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpOrSupport()),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.info_outline,
                        ),
                        title: Text('Help/Support'),
                        trailing: Icon(Icons.info_outline),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FaqPage()),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.help_outline,
                        ),
                        title: Text('Faq'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
