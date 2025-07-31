import 'dart:math';
import 'package:flutter/material.dart';
import 'widgets/quote_card.dart';
import 'widgets/quote_screen.dart';
import 'about_us.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'widgets/navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => MyQuoteApp()),
      ChangeNotifierProvider(create: (_) => myNavigationBar()),
    ],
    child: MaterialApp(
      title: "Quotes App",
      home: myHome(),
    ),
    );
  }
}

