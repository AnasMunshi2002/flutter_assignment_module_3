import 'package:flutter/material.dart';

class RadioColor extends StatefulWidget {
  @override
  State<RadioColor> createState() => _RadioColorState();
}

class BgColor {
  Color color;
  String colorName;

  BgColor(this.color, this.colorName);
}

class _RadioColorState extends State<RadioColor> {
  List<BgColor> colorList = [
    BgColor(Colors.black45, 'Black'),
    BgColor(Colors.brown, 'Brown'),
    BgColor(Colors.purpleAccent, 'Purple Accent'),
    BgColor(Colors.deepOrangeAccent, 'Deep Orange Accent'),
    BgColor(Colors.blueAccent, 'Blue Accent'),
    BgColor(Colors.lightGreen, 'Light Green'),
    BgColor(Colors.amber, 'Amber'),
    BgColor(Colors.cyanAccent.shade200, 'Cyan Accent'),
    BgColor(Colors.teal, 'Teal'),
    BgColor(Colors.deepPurple, 'Deep Purple'),
    BgColor(Colors.pink, 'Pink'),
    BgColor(Colors.white30, 'White30'),
  ];
  Color bgColor = Colors.white;
  int radioValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return RadioListTile(
              title: Text(colorList[index].colorName),
              value: index + 1,
              groupValue: radioValue,
              onChanged: (value) {
                bgColor = colorList[index].color;
                setState(() {
                  radioValue = value!;
                });
              },
            );
          },
        ));
  }
}
