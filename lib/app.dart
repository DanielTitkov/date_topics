import 'package:date_topics/screens/home/home.dart';
import 'package:date_topics/screens/topic/topic.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        // "/": (context) => Loading(),
        "/": (context) => HomeScreen(),
        "/topic": (context) => TopicScreen(),
      },
    );
  }
}
