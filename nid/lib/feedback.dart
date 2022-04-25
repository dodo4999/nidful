import 'package:flutter/material.dart';
import 'package:nid/widgets/header_widget.dart';
import 'package:nid/widgets/input_widget.dart';
import 'package:nid/widgets/sub_header.dart';

class FeedBackPage extends StatelessWidget {
  const FeedBackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                SubHeader(title: 'Feedback'),
                SizedBox(height: 20.0),
                InpuWidget(labelText: 'Full Name', hintText: 'Enter your name'),
                InpuWidget(
                    labelText: 'Email@gmail.com', hintText: 'Enter your email'),
                InpuWidget(
                    labelText: '+2348142403525',
                    hintText: 'Enter your phone number'),
                Container(
                  height: 200,
                  child: Expanded(
                    child: InpuWidget(
                        labelText: 'Message...',
                        hintText: 'Enter your message'),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Send Message',
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
