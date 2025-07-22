import 'package:flutter/material.dart';
import 'dart:math';
import 'quote_card.dart';

class MyQuoteApp extends StatefulWidget {
  @override
  State<MyQuoteApp> createState() => _MyQuoteAppState();
}

class _MyQuoteAppState extends State<MyQuoteApp> {
  String? quote;
  String? author;
  var quotes_list = [
  {
    'quote': "I always wanted to be somebody, but now I realize I should have been more specific.",
    'author': "Lily Tomlin"
  },
  {
    'quote': "If at first you don't succeed, then skydiving definitely isn't for you.",
    'author': "Steven Wright"
  },
  {
    'quote': "My bed is a magical place where I suddenly remember everything I forgot to do.",
    'author': "Anonymous"
  },
  {
    'quote': "I'm not arguing. I'm just explaining why I'm right.",
    'author': "Anonymous"
  },
  {
    'quote': "I used to think I was indecisive, but now I'm not too sure.",
    'author': "Anonymous"
  },
  {
    'quote': "I told my computer I needed a break, and it gave me a BSOD.",
    'author': "Every developer ever"
  }
];


@override
void initState() {
  super.initState();
  changeQuote();
}

  void changeQuote(){
    setState(() {
      int randomIndex = Random().nextInt(quotes_list.length);
      quote = quotes_list[randomIndex]['quote'];
      author = quotes_list[randomIndex]['author'];
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return QuoteCard(quote, author, changeQuote);
  }

}