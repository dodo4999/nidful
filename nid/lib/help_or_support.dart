import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nid/feedback.dart';
import 'package:nid/widgets/header_widget.dart';
import 'package:nid/widgets/sub_header.dart';
import 'package:nid/widgets/support_widget.dart';

class HelpOrSupport extends StatelessWidget {
  const HelpOrSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
          child: Column(
            children: [
              Header(),
              SubHeader(title: 'Help & Support'),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Support',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SupportWidget(
                      icon: Icons.chat_outlined,
                      topic: 'Livechat',
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeedBackPage()),
                        );
                      },
                      child: SupportWidget(
                        icon: Icons.feedback_outlined,
                        topic: 'Send Feedback',
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Contact',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SupportWidget(
                      icon: Icons.phone_outlined,
                      topic: '+2348142403525',
                    ),
                    SupportWidget(
                      icon: Icons.email_outlined,
                      topic: 'hr@groomlog.com',
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Social Media',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SupportWidget(
                      icon: FontAwesomeIcons.instagram,
                      topic: 'Groomlog',
                    ),
                    SupportWidget(
                      icon: FontAwesomeIcons.facebook,
                      topic: 'Groomlog',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
