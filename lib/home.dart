import 'package:flutter/material.dart';
import 'package:quotes_app/widgets/navigation_bar.dart';
import 'about_us.dart';
import 'favourites.dart';
import 'widgets/quote_card.dart';
import 'widgets/quote_screen.dart';
import 'package:provider/provider.dart';


class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<myNavigationBar>(
          builder: (context, value, child) => Text('${value.appBarTitles[value.currentPageIndex]}'),
        ),
        elevation: 10,
      ),
      bottomNavigationBar: Consumer<myNavigationBar>(
        builder: (context, value, child) => value.navbar,
      ),
      body: Consumer<myNavigationBar>(
        builder: (context, Navbar, child) {
          return Navbar.pages[Navbar.currentPageIndex];
        },
      )
    );
  }
}
