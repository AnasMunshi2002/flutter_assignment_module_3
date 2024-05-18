import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//53. create an application to change background when button is clicked.

class Que53 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BackgroundScreen();
  }
}

class BackgroundScreen extends State<Que53> {
  List<Color> colorlist = [
    Colors.black45,
    Colors.brown,
    Colors.purpleAccent,
    Colors.deepOrangeAccent,
    Colors.blueAccent,
    Colors.lightGreen,
    Colors.amber,
    Colors.cyanAccent.shade200,
    Colors.teal,
    Colors.deepPurple,
    Colors.pink,
    Colors.white30,
  ];

  /*var lastSelectedIndex = -1;*/
  Color bgcolor = Colors.white;
  int random_no = 0;
  var random = new Random();
  void changeBackgroundColor() {
    setState(() {
      int random_index = random.nextInt(colorlist.length - 1);
      if (random_no != random_index) {
        random_no = random_index;
        bgcolor = colorlist[random_no];
      } else {
        random_no++;
        bgcolor = colorlist[random_no];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              changeBackgroundColor();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white)),
            child: Text('Change Backgound Color')),
      ),
    );
  }
}
