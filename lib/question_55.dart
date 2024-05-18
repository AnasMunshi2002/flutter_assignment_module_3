import 'package:flutter/material.dart';

class CheckHide extends StatefulWidget {
  @override
  State<CheckHide> createState() => _CheckHideState();
}

class _CheckHideState extends State<CheckHide> {
  bool isChecked = false;
  String textView =
      'The English language has over a million words, but the average person only uses about 50,000 words in their vocabulary. These 50 words are considered to be the most commonly used words in the English language. You can find more information about this topic on websites like Merriam-Webster or Oxford Dictionaries.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox (Hide TextView)'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Visibility(
                visible: isChecked,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                ),
                replacement: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: Text(
                    textAlign: TextAlign.justify,
                    isChecked == false ? textView : '',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  hideText(!isChecked);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          hideText(value);
                        }),
                    Text(
                      'Hide Text',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void hideText(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }
}
