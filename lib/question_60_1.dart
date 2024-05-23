import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_assignment_module_3/question_60_2.dart';

class Restaurant extends StatefulWidget {
  @override
  State<Restaurant> createState() => _RestaurantState();
}

class Dishes {
  String title;
  String subtitle;
  int price;
  AssetImage image;
  Dishes(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.price});
}

class _RestaurantState extends State<Restaurant> {
  List<Color> rowColor = [
    Colors.amber,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  List<String> categories = [
    'Recommended',
    'Popular',
    'Noodles',
    'Pizza',
  ];
  List<Color> cat_Color = [
    Colors.white,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  List<Dishes> dishes = [
    Dishes(
        title: 'Soba Soup',
        price: 12,
        subtitle: 'No.1 in sales',
        image: AssetImage('assets/images/soba-soup.jpeg')),
    Dishes(
        title: 'Sei Ua Samun Phrai',
        price: 12,
        subtitle: 'No.1 in sales',
        image: AssetImage('assets/images/Sei-Ua-Samun-Phrai-2.jpg')),
    Dishes(
        title: 'Ratatoullie Pasta',
        price: 12,
        subtitle: 'No.1 in sales',
        image: AssetImage('assets/images/Ratatoullie.jpeg')),
    Dishes(
        title: 'Khao Phat Soup',
        price: 12,
        subtitle: 'No.2 in sales',
        image: AssetImage('assets/images/Khao-Phat.jpeg')),
    Dishes(
        title: 'Som Tam',
        price: 12,
        subtitle: 'No.2 in sales',
        image: AssetImage('assets/images/Som-Tam.jpeg')),
    Dishes(
        title: 'Tom Yum Goong',
        price: 12,
        subtitle: 'No.1 in sales',
        image: AssetImage('assets/images/Tom-Yum-Goong.jpeg')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
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
      floatingActionButton: IconButton(
        icon: Icon(
          Icons.shopping_bag_outlined,
          size: 30,
        ),
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber)),
      ),
      body: Container(
        height: double.maxFinite,
        padding: EdgeInsets.only(top: 30, left: 16, right: 16),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Restaurant',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '20-30 min',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '2.4 Km',
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Restaurant',
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Orange Sandwiches is delicious',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'R',
                        style: TextStyle(
                            fontFamily: 'Debrosee',
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border_purple500_sharp,
                          color: Colors.orange,
                        ),
                        Text(
                          '4.7',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 40,
              child: ListView.builder(
                itemCount: rowColor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      FilledButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(rowColor[index]),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 10))),
                          onPressed: () {},
                          child: Text(
                            categories[index],
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: cat_Color[index]),
                          )),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 513,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: dishes.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(0),
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        width: double.maxFinite,
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  ContinuousRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(32)))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DishScreen(dishes[index]),
                                ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: dishes[index].image,
                                    radius: 45,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dishes[index].title,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        dishes[index].subtitle,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.amber,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$ ${dishes[index].price}',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DishScreen(dishes[index]),
                                        ));
                                  },
                                  icon: Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
