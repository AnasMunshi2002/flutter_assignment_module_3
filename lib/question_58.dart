import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seekbar extends StatefulWidget {
  @override
  State<Seekbar> createState() => _SeekbarState();
}

class _SeekbarState extends State<Seekbar> {
  double red = 0, blue = 0, green = 0;
  Color bgColor = Color.fromRGBO(255, 255, 255, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('RGB Seekbar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Slider(
                  max: 255,
                  divisions: 255,
                  activeColor: Colors.red,
                  value: red,
                  onChanged: (value) {
                    setState(() {
                      red = value;
                      changeBgColor();
                    });
                  },
                  label: red.round().toString(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Slider(
                  label: green.round().toString(),
                  max: 255,
                  divisions: 255,
                  activeColor: Colors.green,
                  value: green,
                  onChanged: (value) {
                    setState(() {
                      green = value;
                      changeBgColor();
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Slider(
                  label: blue.round().toString(),
                  max: 255,
                  divisions: 255,
                  activeColor: Colors.blue,
                  value: blue,
                  onChanged: (value) {
                    setState(() {
                      blue = value;
                      changeBgColor();
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void changeBgColor() {
    bgColor = Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1);
  }
}
