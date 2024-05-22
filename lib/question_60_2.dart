import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_assignment_module_3/question_60_1.dart';

class DishScreen extends StatefulWidget {
  Dishes dishes;
  DishScreen(this.dishes);
  @override
  State<DishScreen> createState() => _DishScreenState(dishes);
}

class _DishScreenState extends State<DishScreen> {
  int count = 0;
  int totalAmount = 12;
  Dishes dishes;
  _DishScreenState(this.dishes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        floatingActionButton: FilledButton.icon(
          icon: Icon(
            Icons.shopping_bag_outlined,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {},
          style: ButtonStyle(
              padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 7, vertical: 5)),
              backgroundColor: MaterialStatePropertyAll(Colors.amber)),
          label: CircleAvatar(
            child: Text(count.toString()),
            backgroundColor: Colors.white,
          ),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  height: 140,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                Positioned(
                  right: 100,
                  top: 10,
                  child: TextButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(16),
                        shadowColor: MaterialStatePropertyAll(Colors.black),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                    onPressed: () {},
                    child: CircleAvatar(
                      radius: 100,
                      foregroundImage: dishes.image,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 500,
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Text(
                    dishes.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.blue,
                          ),
                          Text(
                            '50 min',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            '4.8',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.red,
                          ),
                          Text(
                            '325 Kcal',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '\$ ${totalAmount * count}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              children: [
                                IconButton(
                                    style: ButtonStyle(),
                                    onPressed: () {
                                      setState(() {
                                        if (count == 0) {
                                          count = 0;
                                        } else {
                                          count--;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      Icons.exposure_minus_1,
                                    )),
                                Container(
                                  padding: EdgeInsets.only(top: 7),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Text(
                                    count.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                IconButton(
                                    style: ButtonStyle(),
                                    onPressed: () {
                                      setState(() {
                                        count++;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.plus_one_outlined,
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.maxFinite,
                    child: Text(
                      'Ingredients',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              foregroundImage:
                                  AssetImage('assets/images/noodle.jpeg'),
                            ),
                            Text('Noodles'),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              foregroundImage:
                                  AssetImage('assets/images/shrimp.jpeg'),
                            ),
                            Text(' Shrimp'),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              foregroundImage:
                                  AssetImage('assets/images/egg.jpeg'),
                            ),
                            Text('\  \ \ Egg\  \ \ '),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              foregroundImage:
                                  AssetImage('assets/images/scallion.jpeg'),
                            ),
                            Text('Scallion'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    width: double.maxFinite,
                    child: Text(
                      'About',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
                    width: double.maxFinite,
                    child: Text(
                      'A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta\'s Talat Market',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
