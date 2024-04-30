import 'package:flutter/material.dart';

void main() {
  runApp(GridApp());
}

class GridApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid App',
      home: GridScreen(),
    );
  }
}

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 250,
              margin: EdgeInsets.symmetric(horizontal: 3),
            ),
            Container(
              margin: EdgeInsets.only(top: 3),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(3),
                    color: Colors.blue,
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(3),
                    color: Colors.yellow,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
