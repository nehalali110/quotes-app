import 'package:flutter/material.dart';

class MyQuoteApp extends ChangeNotifier {
  int _index = 0;
  final quotes_list = [
  {
    'quote': "I always wanted to be somebody, but now I realize I should have been more specific.",
    'author': "Lily Tomlin",
    'isFavourite' : false
  },
  {
    'quote': "If at first you don't succeed, then skydiving definitely isn't for you.",
    'author': "Steven Wright",
    'isFavourite' : false
  },
  {
    'quote': "My bed is a magical place where I suddenly remember everything I forgot to do.",
    'author': "Anonymous",
    'isFavourite' : false
  },
  {
    'quote': "I'm not arguing. I'm just explaining why I'm right.",
    'author': "Anonymous",
    'isFavourite' : false
  },
  {
    'quote': "I used to think I was indecisive, but now I'm not too sure.",
    'author': "Anonymous",
    'isFavourite' : false
  },
  {
    'quote': "I told my computer I needed a break, and it gave me a BSOD.",
    'author': "Every developer ever",
    'isFavourite' : false
  }
  ];

  int get index => _index;

  set index(int newIndex){
    _index = newIndex;
    notifyListeners();
  }
}

