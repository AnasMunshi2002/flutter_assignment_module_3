import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RadioRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ArithScreen();
  }
}

class ArithScreen extends State<RadioRoute> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int selected = 0;
  double? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter : ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 25, fontFamily: 'Monsterrat'),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: num1,
                decoration: InputDecoration(
                  label: Text('Number 1'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: num2,
                decoration: InputDecoration(
                    label: Text('Number 2'), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Column(
                children: [
                  RadioListTile(
                      title: Text('Add'),
                      value: 1,
                      groupValue: selected,
                      onChanged: (value) {
                        result = double.parse(num1.text.toString()) +
                            double.parse(num2.text.toString());
                        setState(() {
                          selected = 1;
                        });
                      }),
                  RadioListTile(
                      title: Text('Subtract'),
                      value: 2,
                      groupValue: selected,
                      onChanged: (value) {
                        result = double.parse(num1.text.toString()) -
                            double.parse(num2.text.toString());
                        setState(() {
                          selected = 2;
                        });
                      }),
                  RadioListTile(
                      title: Text('Multiplication'),
                      value: 3,
                      groupValue: selected,
                      onChanged: (value) {
                        result = double.parse(num1.text.toString()) *
                            double.parse(num2.text.toString());
                        setState(() {
                          selected = 3;
                        });
                      }),
                  RadioListTile(
                      title: Text('Division'),
                      value: 4,
                      groupValue: selected,
                      onChanged: (value) {
                        result = double.parse(num1.text.toString()) /
                            double.parse(num2.text.toString());
                        setState(() {
                          selected = 4;
                        });
                      }),
                ],
              ),
            ),
            Text(
              'Result : ${result == null ? '' : result?.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
