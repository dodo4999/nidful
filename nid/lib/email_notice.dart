// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nid/explore_page.dart';

class EmailNotice extends StatelessWidget {
  const EmailNotice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset('assets/logo1.png'),
              ),
              SizedBox(height: 50.0),
              Center(child: Image.asset('assets/Frame.png')),
              const SizedBox(height: 20.0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: Text('Email Verification',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0)),
                ),
              ),
              SizedBox(height: 5.0),
              Center(
                child: Text(
                  'An email has been sent to bnworgu04@gmail.com with a link to verify your account. If you have not received the email after a few minutes, please check your spam folder. ',
                  style: TextStyle(color: Colors.grey[500], letterSpacing: 1.0),
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Explore()),
                        );
                      },
                      child: Text('Continue'),
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
      ),
    );
  }
}
