

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'front_end/screens/matches/matches.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(onNotification: (notification) {
      notification.disallowIndicator();
      return true;
    },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Matches(),
      ),
    );
  }
}



