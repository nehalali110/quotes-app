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

  final favourite_quotes = [];

  int get index => _index;

  set index(int newIndex){
    _index = newIndex;
    notifyListeners();
  }

  void toggleHeart(){
    quotes_list[index]['isFavourite'] = !(quotes_list[index]['isFavourite'] as bool);
    if(quotes_list[index]['isFavourite'] as bool){
      favourite_quotes.add({'quote' : quotes_list[index]['quote'] , 'author' : quotes_list[index]['author']});
    } else{
      favourite_quotes.removeWhere((item) => 
        item['quote'] == quotes_list[index]['quote'] &&
        item['author'] == quotes_list[index]['author']
      );
    }
    notifyListeners();
  }

  void removeItem(int index){
    favourite_quotes.removeAt(index);
    quotes_list.map((e) {
      if(e['quote'] == favourite_quotes[index]['quote']){
        e['isFavourite'] = false;
      }
    },);
    notifyListeners();
  }
}

