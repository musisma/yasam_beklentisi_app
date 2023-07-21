

import 'package:flutter/material.dart';


class IconSlider extends StatefulWidget {
  final double? sayi;
  final String? yazi;
  final double? slider;

  IconSlider({this.sayi,this.yazi,this.slider});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$yazi',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          '${sayi}',
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Slider(
          min: 0,
          max: 30,
          value: slider,
          onChanged: (double newValue) {
            setState(() {
             slider = newValue;
            });
          },
        ),
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

