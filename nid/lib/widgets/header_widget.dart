import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
        ),
      ],
    );
  }
}
