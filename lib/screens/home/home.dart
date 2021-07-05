import 'package:date_topics/screens/home/widgets/topic_group_list.dart';
import 'package:date_topics/shared/background.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: SafeArea(
        child: Container(
          decoration: gradientDecoration,
          child: TopicGroupList(),
        ),
      ),
    );
  }
}
