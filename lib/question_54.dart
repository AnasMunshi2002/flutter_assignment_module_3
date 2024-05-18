import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Que54 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FontScreen();
  }
}

class FontScreen extends State<Que54> {
  double size = 15;

  void decreaseFont() {
    setState(() {
      size -= 10;
    });
  }

  void increaseFont() {
    setState(() {
      size += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font change'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton.filledTonal(
                  onPressed: () {
                    decreaseFont();
                  },
                  icon: Icon(
                    Icons.do_not_disturb_on,
                    size: 30,
                  )),
              Text(
                'Anas',
                style: TextStyle(fontSize: size),
              ),
              IconButton.filledTonal(
                  onPressed: () {
                    increaseFont();
                  },
                  icon: Icon(
                    Icons.add_circle,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
