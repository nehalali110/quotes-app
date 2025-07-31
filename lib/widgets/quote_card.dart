import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_to_favourites.dart';
import 'quote_screen.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child : DefaultTextStyle(
      style: TextStyle(fontFamily: 'Bangers'),
      child: Container(
        height: (screenWidth * 0.3).clamp(300,600),
        width: (screenWidth * 0.8).clamp(300, 600),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 5),
              blurStyle: BlurStyle.solid,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Consumer<MyQuoteApp>(
          builder: (context, QuoteModel, child) {
            //var index = QuoteModel.index;
            return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(60, 0, 40, 0),
              child: SingleChildScrollView(
                child: Text(
                  "${QuoteModel.quotes_list[QuoteModel.index]['quote']}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            SizedBox(height: 50),
            Text("${QuoteModel.quotes_list[QuoteModel.index]['author']}"),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {
                QuoteModel.index < QuoteModel.quotes_list.length - 1 ? QuoteModel.index++ : QuoteModel.index = 0;
              },
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Bangers',
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Add to Favourites : "),
                favourite_button()
              ],
            )
          ],
        );
          },
        ) 
      ),
    )
    );
  }
}
