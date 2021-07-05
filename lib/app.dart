import 'package:date_topics/screens/home/home.dart';
import 'package:date_topics/screens/topic/topic.dart';
import 'package:date_topics/screens/topic_group/topic_group.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/topicGroup": (context) => TopicGroupScreen(),
        "/topic": (context) => TopicScreen(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.comfortaaTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
