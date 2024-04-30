import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(LakeScreen());
}

class LakeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lake Screen',
      home: LakePage(),
    );
  }
}

class LakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.wildlensbyabrar.com/images/easyblog_articles/100/a1sx2_custom_DSC01603.jpg'))),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deschinen Lake Campground',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Kanderstag, Switzerland',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.redAccent,
                      ),
                      Text(
                        '41',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      child: Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      margin: EdgeInsets.all(5),
                    ),
                    Text(
                      'CALL',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      transformAlignment: Alignment.center,
                      transform: Matrix4.rotationZ(1),
                      child: Icon(
                        Icons.navigation,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'ROUTE',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      transformAlignment: Alignment.center,
                      child: Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'ROUTE',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
