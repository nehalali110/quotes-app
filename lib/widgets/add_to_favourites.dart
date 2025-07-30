import 'package:flutter/material.dart';
import 'quote_screen.dart';

class favourite_button extends StatefulWidget{
  const favourite_button({super.key});

  @override
  State<favourite_button> createState() {
    // TODO: implement createState
    return _favourite_button();
  }
}

class _favourite_button extends State<favourite_button>{
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    void toggleBtn(){
      setState(() {
        isFavourite = !isFavourite;
      });
    }
    Widget hearticon;
    if(isFavourite){
      hearticon = Icon(Icons.favorite, color: Colors.red,);
    } else{
      hearticon = Icon(Icons.favorite, color: Colors.grey,);
    }

    return IconButton(onPressed: () => toggleBtn(), icon: hearticon);
  }
}