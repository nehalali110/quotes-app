import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/widgets/quote_screen.dart';
import 'widgets/navigation_bar.dart';
import 'home.dart';

class favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Consumer<MyQuoteApp>(
          builder: (context, QuoteModel, child) {
            return ListView.separated(
              padding: EdgeInsets.all(8),
              itemBuilder: (BuildContext context , int index) {
                return Card(
                  elevation: 6,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text("${QuoteModel.favourite_quotes[index]['quote']}"),
                        subtitle: Text("${QuoteModel.favourite_quotes[index]['author']}"),
                        trailing: IconButton(onPressed: () => QuoteModel.removeItem(index), icon: Icon(Icons.close)),
                      ),
                    ],
                  ),
                );
              }, 
              separatorBuilder: (BuildContext context, int index) => const Divider(), 
              itemCount: QuoteModel.favourite_quotes.length,
              );
          },
        ), 
      ),
    );
  }
}
