import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextInputField extends StatefulWidget {
  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  TextEditingController number = TextEditingController();
  int? result;
  bool isChecked = false;
  int rev(int no) {
    int reverse = 0;
    setState(() {
      while (no > 0) {
        int remainder = no % 10;
        reverse = (reverse * 10) + remainder;
        no = no ~/ 10;
      }
    });
    return reverse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Text(
                'Reversed no : ${result == null ? '' : result}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: TextField(
                onChanged: (value) {
                  if (isChecked == true) {
                    try {
                      int no = int.parse(number.text.toString());
                      result = rev(no);
                    } catch (e) {
                      Fluttertoast.showToast(
                          msg: 'Invalid Input', backgroundColor: Colors.red);
                    }
                  }
                },
                decoration: InputDecoration(
                  label: Text('Enter number'),
                  border: OutlineInputBorder(),
                ),
                controller: number,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  'Automatic Reverse',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            FilledButton(
              onPressed: () {
                if (isChecked == false) {
                  try {
                    int no = int.parse(number.text.toString());
                    result = rev(no);
                  } catch (e) {
                    Fluttertoast.showToast(
                        msg: 'Invalid Input', backgroundColor: Colors.red);
                  }
                }
              },
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
