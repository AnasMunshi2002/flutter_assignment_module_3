import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatelessWidget {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 38, 1),
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 30),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStatePropertyAll(BorderSide.none),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
                          shape: MaterialStatePropertyAll(CircleBorder())),
                      onPressed: () {},
                      child: Icon(
                        Icons.person_pin,
                        size: 90,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      right: -10,
                      bottom: -5,
                      child: MaterialButton(
                        shape: CircleBorder(),
                        height: 30,
                        color: Colors.blueGrey,
                        onPressed: () {},
                        child: Icon(
                          Icons.edit,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Username')),
                  controller: userName,
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Password')),
                ),
                SizedBox(
                  height: 30,
                ),
                FilledButton(
                  onPressed: () {
                    String name = userName.text.toString();
                    String pass = password.text.toString();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreen(
                            name: name,
                            password: pass,
                          ),
                        ));
                    Fluttertoast.showToast(
                        msg: 'Login Successflully!',
                        backgroundColor: Colors.green);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Not having an account?',
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ));
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 30),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            /*       margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),*/
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStatePropertyAll(BorderSide.none),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
                          shape: MaterialStatePropertyAll(CircleBorder())),
                      onPressed: () {},
                      child: Icon(
                        Icons.person_pin,
                        size: 90,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      right: -10,
                      bottom: -5,
                      child: MaterialButton(
                        shape: CircleBorder(),
                        height: 30,
                        color: Colors.blueGrey,
                        onPressed: () {},
                        child: Icon(
                          Icons.edit,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('First Name')),
                  controller: firstName,
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Last Name')),
                  controller: lastName,
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Email')),
                  controller: email,
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Password')),
                ),
                SizedBox(
                  height: 30,
                ),
                FilledButton(
                  onPressed: () {
                    String firstname = firstName.text.toString();
                    String lastname = lastName.text.toString();
                    String emailid = email.text.toString();
                    String username = firstname + ' ' + lastname;
                    String pass = password.text.toString();
                    Navigator.pop(context);
                    Fluttertoast.showToast(
                        msg: 'Successfully Registered!',
                        backgroundColor: Colors.green);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  String name;
  String password;

  WelcomeScreen({required this.name, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome screen'),
      ),
      body: Center(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: TextStyle(fontSize: 60),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 45, fontFamily: 'Debrosee'),
              ),
              Text(
                'Your password : ',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                password,
                style: TextStyle(fontSize: 45, fontFamily: 'Monsterrat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
