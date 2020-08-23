import 'package:flutter/material.dart';
import 'package:flutter_app/CarouselDemo.dart';
// import 'home_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter精美UI系列视频",
      home: CarouselDemo(),
    );
  }
}