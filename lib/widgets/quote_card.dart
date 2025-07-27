import 'package:flutter/material.dart';
import 'add_to_favourites.dart';

class QuoteCard extends StatelessWidget {
  String? quote;
  String? author;
  VoidCallback next;
  QuoteCard(this.quote, this.author, this.next);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTextStyle(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(60, 0, 40, 0),
              child: SingleChildScrollView(
                child: Text(
                  "$quote",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
            SizedBox(height: 50),
            Text("$author"),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () => next(),
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
        ),
      ),
    );
  }
}
