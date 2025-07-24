import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return MaterialApp(
      title: "About This App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("About This App"),
          elevation: 10,
          actions: [
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Bangers',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                width: screenWidth * 0.5,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Text(
                  "We don’t believe in sugarcoating things – life’s hard, and sometimes, a brutally honest quote is all you need.\n\n"
                  "Whether you're here to sulk, sigh, or scroll through the wisdom of sarcasm, this app is your daily dose.\n\n"
                  "Built by caffeine-fueled devs who know not every quote should inspire – some should just be true.\n\n"
                  "Tap 'Next' when you're ready for more truth bombs 💣",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
