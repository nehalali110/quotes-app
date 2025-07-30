import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/widgets/quote_screen.dart';
import 'home.dart';

class favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Quotes"),
        elevation: 10,
        actions: [
          Container(
            child: Padding(
              padding: EdgeInsetsGeometry.fromLTRB(0, 0, 40, 0),
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontFamily: 'Bangers',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Consumer<MyQuoteApp>(
          builder: (context, QuoteModel, child) {
            return Column(
              
            )
          },
        ), 
      ),
    );
  }
}
