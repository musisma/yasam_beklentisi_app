import 'package:flutter/material.dart';


import 'input_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.lightBlue[300],
          scaffoldBackgroundColor: Colors.lightBlue[300]),
      home: InputPage(),
      );
  }
}


