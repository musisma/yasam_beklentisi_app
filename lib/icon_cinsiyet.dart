

import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/constants.dart';

class IconCinsiyet extends StatelessWidget {
  final String? yazi;
  final IconData? icon;

  const IconCinsiyet({this.yazi, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$yazi',
          style: kMetinStili
        )
      ],
    );
  }
}