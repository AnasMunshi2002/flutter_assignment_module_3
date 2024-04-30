import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FontScreen();
  }
}

class FontScreen extends State<MyApp> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      icon: Icon(Icons.trending_down)),
                  Text(
                    'A',
                    style: TextStyle(fontSize: size),
                  ),
                  IconButton.filledTonal(
                      onPressed: () {
                        increaseFont();
                      },
                      icon: Icon(Icons.trending_up)),
                ],
              ),
            ),
          )),
    );
  }
}
