import 'package:flutter/material.dart';
import 'package:quotes_app/home.dart';
import 'package:quotes_app/about_us.dart';
import 'package:quotes_app/favourites.dart';
import 'package:quotes_app/widgets/quote_card.dart';

class myNavigationBar extends ChangeNotifier{
  int currentPageIndex = 0;
  List<StatelessWidget> pages = [QuoteCard(), AboutScreen(), favourites()];
  List<String> appBarTitles = ['Demotivate yourself!', 'About', 'Favourites'];
  
  Widget get navbar => NavigationBar(
    destinations: [
      NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      NavigationDestination(icon: Icon(Icons.info), label: 'About'),
      NavigationDestination(icon: Icon(Icons.favorite), label: 'Favourites'),
    ],

    selectedIndex: currentPageIndex,
    onDestinationSelected: (index) {
      currentPageIndex = index;
      notifyListeners();
    },
  );
}