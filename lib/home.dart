import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'filter.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Map<String, dynamic>> i1 = [
    {
      'name': 'Bakery',
      'image': "assets/images/bread.png",
    },
    {
      'name': 'Fruits',
      'image': 'assets/images/grape.png',
    },
    {
      'name': 'Vegetables',
      'image': 'assets/images/mushroom.png',
    },
    {
      'name': 'Milk',
      'image': 'assets/images/milk-box.png',
    },
    {
      'name': 'DryFruits',
      'image': 'assets/images/almond.png',
    },
  ];

  List<Map<String, dynamic>> discount = [
    {
      'off': '25% off',
    },
    {
      'off': '15% off',
    },
  ];

  List<Map<String, dynamic>> con1 = [
    {
      'image': 'assets/images/lemon.png',
      'name1': 'Lemon',
      'name2': 'Bergamo ltaly',
      'doller': '€1.10',
      'doller1': '€2',
    },
    {
      'image': 'assets/images/banana1.png',
      'name1': 'Banana',
      'name2': 'Cattier ltailano',
      'doller': '€2.05',
      'doller1': '€3',
    },
    {
      'image': 'assets/images/grape1.png',
      'name1': 'Grape',
      'name2': 'Cattier ltailano',
      'doller': '€3.15',
      'doller1': '€4',
    },
    {
      'image': 'assets/images/orange.png',
      'name1': 'Orange',
      'name2': 'Cattier ltailano',
      'doller': '€2',
      'doller1': '€3.10',
    },
  ];

  int color = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'EDEKA',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Icon(
                      Icons.forward_10_sharp,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey.shade200,
                    ),
                    child: like(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        hintText: 'Serch product herel',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => filter(),
                          ));
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.tune,
                        size: 24,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 130,
                child: (ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          color = index;
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: EdgeInsets.only(
                                right: 10, left: 10, bottom: 10, top: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: color == index
                                    ? Colors.green
                                    : Colors.white,
                                boxShadow: [
                                  BoxShadow(),
                                ]),
                            child: Center(
                              child: Image.asset(
                                i1[index]['image'],
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                          Text(
                            i1[index]['name'],
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    like(),
                                  ],
                                ),
                                Center(
                                  child: Image.asset(
                                    con1[index]['image'],
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                SizedBox(
                                  height: 21,
                                ),
                                Text(
                                  con1[index]['name1'],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  con1[index]['name2'],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      con1[index]['doller'],
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      con1[index]['doller1'],
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 43,
                                      width: 43,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        color: Colors.green,
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        index == 0 || index == 3
                            ? Positioned(
                                child: Container(
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        index == 0 ? "25% off" : "150% off",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : SizedBox()
                      ],
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2 / 2.8),
                ),
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        offset: Offset(2, 2),
                        blurRadius: 1,
                      )
                    ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Total:',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '3x 49.5',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Spacer(),
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xff0380f8),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Text(
                              'Cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart_outlined,
                            size: 25,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class like extends StatefulWidget {
  const like({Key? key}) : super(key: key);

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        setState(() {
          fav = !fav;
        });
      },
      child: Icon(
        fav == true ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 30,
      ),
    );
  }
}
