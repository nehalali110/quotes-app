import 'dart:math';
import 'package:flutter/material.dart';
import 'widgets/quote_card.dart';
import 'widgets/quote_screen.dart';
import 'about_us.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Quotes App",
      home: myHome(),
    );
  }
}

