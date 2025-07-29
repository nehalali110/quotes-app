import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'quote_screen.dart';


class favourite_button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<MyQuoteApp>(
      builder: (context, QuoteModel, child) {
        int index = QuoteModel.index;
        bool isFavourite = QuoteModel.quotes_list[index]['isFavourite'] as bool;
        Widget hearticon;
        if(isFavourite){
          hearticon = Icon(Icons.favorite, color: Colors.red,);
        } else{
          hearticon = Icon(Icons.favorite, color: Colors.grey,);
        }
        return IconButton(onPressed: () => QuoteModel.toggleHeart(), icon: hearticon);
      },
    );
  }
}