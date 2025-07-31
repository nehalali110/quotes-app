import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/navigation_bar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                width: (screenWidth * 0.5).clamp(300, 600),
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
