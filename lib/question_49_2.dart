import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LakeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LakeView'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/mountains_and_rivers.jpg'))),
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
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Kanderstag, Switzerland',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
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
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Call Toast', backgroundColor: Colors.black45);
                  },
                  child: Column(
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
                ),
                TextButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Route Toast?', backgroundColor: Colors.black45);
                  },
                  child: Column(
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
                ),
                TextButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Share Toast?', backgroundColor: Colors.black45);
                  },
                  child: Column(
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
                        'SHARE',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                      textAlign: TextAlign.justify,
                      'Oeschinensee is accessible by foot from Kandersteg within 1.5 hours. The cable car operates in summer and winter season daily from mornings till evenings - non stop. In summer enjoy swimming in the lake, boat rides on the blue and clear water or just have fun with the toboggan run at the top station of the cable car. Several hotels around the lake offer rooms in summer. Restaurants are open in winter and summer. The region belongs to the Unesco heritage Jungfrau-Aletsch.Oeschinensee is accessible by foot from Kandersteg within 1.5 hours. The cable car operates in summer and winter season daily from mornings till evenings - non stop. In summer enjoy swimming in the lake, boat rides on the blue and clear water or just have fun with the toboggan run at the top station of the cable car. Several hotels around the lake offer rooms in summer. Restaurants are open in winter and summer. The region belongs to the Unesco heritage Jungfrau-Aletsch.'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
