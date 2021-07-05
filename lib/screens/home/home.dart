import 'package:date_topics/screens/home/widgets/topic_group_list.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: SafeArea(
        child: Container(
          decoration: gradientBackgroundDecoration,
          child: TopicGroupList(),
        ),
      ),
    );
  }
}
