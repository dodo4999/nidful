import 'package:flutter/material.dart';

class InpuWidget extends StatelessWidget {
  final String labelText;
  final String hintText;

  InpuWidget({Key? key, required this.labelText, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          children: [
            Container(
              height: 38,
              child: new TextField(
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  border: InputBorder.none,
                  labelText: labelText,
                  hintText: hintText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
