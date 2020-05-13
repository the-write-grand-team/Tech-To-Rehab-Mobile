import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Tech'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        Text('To'.toUpperCase()),
        Text(
          'Rehab'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          child: Text(
            'MAG'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.fade,
          ),
        ),
      ],
    );
  }
}
