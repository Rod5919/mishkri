import 'package:flutter/material.dart';
import 'package:mishkri/MaterialScreens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}

