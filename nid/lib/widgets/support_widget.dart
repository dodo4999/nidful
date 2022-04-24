import 'package:flutter/material.dart';

class SupportWidget extends StatelessWidget {
  final IconData icon;
  final String topic;
  const SupportWidget({Key? key, required this.topic, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
        ),
        title: Text(topic),
        // trailing: Icon(Icons.info_outline),
      ),
    );
  }
}
