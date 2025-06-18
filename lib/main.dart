import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List options = [
      {"option": "Chat"},
      {"option": "Pending"},
    ];


    List slider = [
      {"name": "Amanda,22","question":"What is your favourite childhood memory"},
      {"name": "Malta,31","question":"What is the most important quality in friendship to you"},
    ];

    var currentIndex = 0.obs;

    changeCurrentIndex(int index) {
      currentIndex.value = index;
    }

    return Scaffold(
        backgroundColor: Color(0xFF0F0F0F),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                AppBar(
                  backgroundColor: Color(0xFF0F0F0F),
                  flexibleSpace: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Your Turn",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 1),
                                decoration: BoxDecoration(
                                    color: Color(0xffb5b2ff),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Make your move, they are waiting 🎵",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 300,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) => Container(
                      height: 300,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                        Text(slider[index]["name"],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 26),)
                      ],)),
                    ),
                    separatorBuilder: (_, __) => SizedBox(
                      width: 20,
                    ),
                    itemCount: 3,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return Obx(
                            () => InkWell(
                              onTap: () => changeCurrentIndex(index),
                              child: IntrinsicWidth(
                                child: Column(
                                  children: [
                                    Text(
                                      options[index]["option"],
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: currentIndex.value == index
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                    currentIndex.value == index
                                        ? Container(
                                            height: 2,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                30,
                                              ),
                                            ),
                                          )
                                        : SizedBox()
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (_, __) => SizedBox(
                          width: 17,
                        ),
                        itemCount: 2,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("The ice is broken. Time to hit it off",
                        style: TextStyle(
                            color: Colors.grey, fontStyle: FontStyle.italic)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Jessica",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                        color: Color(0xff37355c)),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 10,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "New chat",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "6:30PM",
                                    style: TextStyle(
                                      color: Color(0xff514e8a),
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 1),
                                    decoration: BoxDecoration(
                                        color: Color(0xffb5b2ff),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Lol i love house music too",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Amanda",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                        color: Colors.grey.shade800),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Your move",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "6:30PM",
                                style: TextStyle(
                                  color: Color(0xff514e8a),
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Lol i love house music too",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Sila",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                              Text(
                                "Wed",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "You: I love the people there tbh,\nhave you been there",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Marie",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                        color: Colors.grey.shade800),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Your move",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "6:30PM",
                                    style: TextStyle(
                                      color: Color(0xff514e8a),
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 1),
                                    decoration: BoxDecoration(
                                        color: Color(0xffb5b2ff),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Text(
                                      "4",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Hahaha that's interesting, it does\nseem like people here are starti...",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),

    );
  }
}

