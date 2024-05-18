import 'package:flutter/material.dart';

void main() => runApp(ImageAroundText());

class ImageAroundText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/client1.jpeg',
                width: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/client2.jpeg',
                    height: 120,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Text(
                      'Hello, Flutter',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Image.asset(
                    'assets/images/client3.jpeg',
                    height: 120,
                  ),
                ],
              ),
              Image.asset(
                'assets/images/client4.jpeg',
                height: 120,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
