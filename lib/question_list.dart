import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment_module_3/question_49_1.dart';
import 'package:flutter_assignment_module_3/question_49_2.dart';
import 'package:flutter_assignment_module_3/question_50.dart';
import 'package:flutter_assignment_module_3/question_51.dart';
import 'package:flutter_assignment_module_3/question_52.dart';
import 'package:flutter_assignment_module_3/question_53.dart';
import 'package:flutter_assignment_module_3/question_54.dart';
import 'package:flutter_assignment_module_3/question_55.dart';
import 'package:flutter_assignment_module_3/question_56.dart';
import 'package:flutter_assignment_module_3/question_57.dart';
import 'package:flutter_assignment_module_3/question_58.dart';
import 'package:flutter_assignment_module_3/question_59.dart';
import 'package:flutter_assignment_module_3/question_60_1.dart';
import 'package:flutter_assignment_module_3/questions.dart';

void main() {
  runApp(QuestionList());
}

class QuestionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question List',
      debugShowCheckedModeBanner: false,
      home: QuestionListTile(),
    );
  }
}

class QuestionListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List classess = [
      GridApp(),
      LakeScreen(),
      TextInputField(),
      PrintBetNumbers(),
      RadioRoute(),
      Que53(),
      Que54(),
      CheckHide(),
      ImageAroundText(),
      RadioColor(),
      Seekbar(),
      Login(),
      Restaurant(),
    ];
    Ques que = Ques();
    que.addQuestion('Question 49.1 Create below screens');
    que.addQuestion('Question 49.2 Create below screens');
    que.addQuestion(
        'Question 50 Create an application to take input number from user and print its reverse number in TextField');
    que.addQuestion(
        'Question 51 Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity');
    que.addQuestion(
        'Question 52 Create an application with radio buttons (Add, Substraction, Multiply, Division) EditText (number1, number2) and print result as per user choice from radio button in TextView');
    que.addQuestion(
        'Question 53 create an application to change background when button is clicked');
    que.addQuestion(
        'Question 54 create an application to increase font size when plus button click and decrease when minus button click');
    que.addQuestion(
        'Question 55 create an application to display Textview when checkbox is checked and hide otherwise');
    que.addQuestion(
        'Question 56 Write a program to show four images around Textview.');
    que.addQuestion(
        'Question 57 Write a program in android display screen color which the Color will be select from the radio button.');
    que.addQuestion(
        'Question 58 Write a program you have taken three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.');
    que.addQuestion('Question 59 Create login and registration form');
    que.addQuestion('Question 60.1 Design below screens');
    que.addQuestion('Question 60.2 Design below screens');
    return Scaffold(
      appBar: AppBar(
        title: Text('Question List'),
      ),
      body: ListView.builder(
        itemCount: que.ques.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.blueGrey.shade300,
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => classess[index]));
                },
                leading: Icon(
                  Icons.question_answer,
                ),
                splashColor: Colors.green.shade200,
                title: Text(
                  que.ques[index],
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
