import 'package:flutter/material.dart';

class filter extends StatefulWidget {
  const filter({Key? key}) : super(key: key);

  @override
  State<filter> createState() => _filterState();
}

class _filterState extends State<filter> {
  List button = [
    {'color': Colors.green, 'name': 'Delivery'},
    {'color': Colors.grey.shade200, 'name': 'Pick up'}
  ];
  List items = [
    {'icon': Icons.delivery_dining, 'name': 'Fast Delivery'},
    {'icon': Icons.location_on_outlined, 'name': 'Stores in amy area'},
    {'icon': Icons.book, 'name': 'Previous Orders'},
    {'icon': Icons.star_outline, 'name': 'Popular Orders'},
  ];
  int selected = 0;
  double slidevalue = 0;
  double slidevalue1 = 0;
  int right = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: List.generate(
                  items.length,
                  (index) => Column(
                        children: [
                          ListTile(
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            leading: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.green.shade100,
                              child: Icon(
                                items[index]['icon'],
                                color: Colors.green,
                              ),
                            ),
                            title: Text(
                              items[index]['name'],
                              textScaleFactor: 1.2,
                            ),
                            trailing: Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selected == index
                                          ? Colors.white
                                          : Colors.grey,
                                      width: 1.5),
                                  color: selected == index
                                      ? Colors.green
                                      : Colors.white,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.check,
                                size: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(),
                        ],
                      )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                'MIN ORDER AMOUNT',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 2.5,
                overlayColor: Colors.white10,
                thumbColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                activeTrackColor: Colors.green,
              ),
              child: Slider(
                max: 100,
                label: '${slidevalue.toStringAsFixed(0)}',
                min: 0,
                divisions: 100,
                value: slidevalue,
                onChanged: (value) {
                  setState(() {
                    slidevalue = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                'MIN ORDER AMOUNT',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 2.5,
                overlayColor: Colors.white10,
                thumbColor: Colors.white,
                inactiveTrackColor: Colors.grey,
                activeTrackColor: Colors.green,
              ),
              child: Slider(
                max: 1000,
                //label: '${slidevalue1.toStringAsFixed(0)}',
                min: 0,
                divisions: 5,
                value: slidevalue1,
                onChanged: (value) {
                  setState(() {
                    slidevalue1 = value;
                  });
                },
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text(
                  '0.5-2km',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '3-5km',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '6-8km',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '9-10km',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                'ORDER TYPE',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                2,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      right = index;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      color:
                          right == index ? Colors.green : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Center(
                          child: Text(
                            button[index]['name'],
                            style: TextStyle(
                              color: index == 0 ? Colors.white : Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: right == index
                                      ? Colors.white
                                      : Colors.grey.shade400,
                                  width: 1.5),
                              color: right == index
                                  ? Colors.white
                                  : Colors.grey.shade200,
                              shape: BoxShape.circle),
                          child: right == index
                              ? Icon(
                                  Icons.check,
                                  size: 15,
                                  color: Colors.green,
                                )
                              : SizedBox(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
