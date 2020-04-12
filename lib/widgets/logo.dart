import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Tech'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text('To'.toUpperCase()),
        Text(
          'Rehab'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
