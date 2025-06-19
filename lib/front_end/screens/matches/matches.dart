import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/clipper/clipper.dart';

class Matches extends StatelessWidget {
  const Matches({super.key});

  @override
  Widget build(BuildContext context) {
    List options = [
      {"option": "Chat"},
      {"option": "Pending"},
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

              /// APPBAR
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
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                gradient: SweepGradient(stops: [
                                  0.0,
                                  0.3,
                                  0.4,
                                  0.7,
                                  0.8,
                                  1.0
                                ], colors: [
                                  Color(0xff15151f),
                                  Color(0xff4b8b24),
                                  Color(0xff4b8b24),
                                  Color(0xff4b8b24),
                                  Color(0xff363636),
                                  Color(0xff363636),
                                ]),
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 5,
                              left: 5,
                              right: 5,
                              bottom: 5,
                              child: ClipOval(
                                child: Image.asset(
                                  "asset/dp/Image.png",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(right: 0,top: 25,
                                child: Container(height: 5,width: 10,color: Color(
                                    0x96b5b2ff),))
                          ],
                        ),
                        Positioned(
                          bottom: -20,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff12161f),
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                            child: Center(
                              child: TText(
                                text: "90",
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              /// Tap to answer Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff252423),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      height: 300,
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        child: Stack(
                          children: [
                            ClipPath(
                              clipper: TClip1(),
                              child: Container(
                                height: 300,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        stops: [
                                      0.0,
                                      0.1,
                                      0.5,
                                      1.0
                                    ],
                                        colors: [
                                      Colors.green,
                                      Colors.green,
                                      Colors.black,
                                      Colors.black,
                                    ])),
                              ),
                            ),
                            ClipPath(
                              clipper: TClip2(),
                              child: Container(
                                color: Colors.purple,
                                height: 300,
                                width: 200,
                              ),
                            ),
                            ClipPath(
                              clipper: TClip3(),
                              child: Container(
                                color: Color(0xff44423c),
                                height: 300,
                                width: 200,
                              ),
                            ),
                            ClipPath(
                              clipper: TClip4(),
                              child: Container(
                                color: Colors.black,
                                height: 300,
                                width: 200,
                              ),
                            ),
                            Positioned.fill(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 20,
                                  sigmaY: 20,
                                ),
                                child: Container(
                                  color: Color(0x64000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 20,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(),
                                  Text(
                                    "Tap to answer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white30,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Amanda,22",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 26),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "What is your favourite childhood memory",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff252423),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      height: 300,
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      stops: [0.0, 0.8, 1.0],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topLeft,
                                      colors: [
                                        Colors.black,
                                        Colors.brown,
                                        Colors.brown,
                                      ])),
                              height: 300,
                              width: 200,
                            ),
                            Positioned.fill(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 20,
                                  sigmaY: 20,
                                ),
                                child: Container(
                                  color: Color(0x64000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 20,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 20,
                                      left: 10,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                        color: Colors.black),
                                    height: 30,
                                    width: double.maxFinite,
                                    child: Center(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Transform.flip(
                                              flipX: true,
                                              child: Icon(
                                                Icons.campaign,
                                                color: Colors.yellow,
                                              ),
                                            ),
                                            TText(
                                              text: ' They made a move',
                                              color: Colors.white,
                                            )
                                          ]),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Tap to answer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white30,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Malta,31",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 26),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "What is the most important quality in friendship to you",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),

              /// CHAT / PENDING
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
                                            borderRadius: BorderRadius.circular(
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

              /// CHATS
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "asset/dp/Photo1.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
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
                                  "6:21pm",
                                  style: TextStyle(
                                    color: Color(0xff514e8a),
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 1),
                                  decoration: BoxDecoration(
                                      color: Color(0xffb5b2ff),
                                      borderRadius: BorderRadius.circular(30)),
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
                        Row(
                          children: [
                            Icon(
                              Icons.keyboard_voice,
                              size: 25,
                              color: Color(0xff645c9a),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              "asset/images/voicenote.png",
                              fit: BoxFit.cover,
                              width: 50,
                              color: Color(0xff645c9a),
                              height: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            TText(
                              text: "00:55",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xff645c9a),
                            )
                          ],
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
                  ClipOval(
                    child: Image.asset(
                      "asset/dp/Photo2.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
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
                              "6:21pm",
                              style: TextStyle(
                                color: Color(0xff514e8a),
                                fontSize: 16,
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
                  ClipOval(
                    child: Image.asset(
                      "asset/dp/Photo3.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
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
                                fontSize: 16,
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
                  ClipOval(
                    child: Image.asset(
                      "asset/dp/Photo4.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
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
                                  "6:21pm",
                                  style: TextStyle(
                                    color: Color(0xff514e8a),
                                    fontSize: 16,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 1),
                                  decoration: BoxDecoration(
                                      color: Color(0xffb5b2ff),
                                      borderRadius: BorderRadius.circular(30)),
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

      /// BOTTOM NAV BAR
      bottomNavigationBar: Container(
          height: 60,
          width: double.maxFinite,
          color: Color(0xff0f1115),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                      "asset/images/Bottom Navigation Bar Icons (3).png"),
                  Image.asset(
                      "asset/images/Bottom Navigation Bar Icons (1).png"),
                  Image.asset(
                      "asset/images/Bottom Navigation Bar Icons (2).png"),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        border: Border.all(width: 5, color: Color(0xff3a3c40))),
                    child: ClipOval(
                        child: Image.asset("asset/dp/Photo3.png",
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class TText extends StatelessWidget {
  const TText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color,
    this.fontWeight = FontWeight.w400,
  });
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
