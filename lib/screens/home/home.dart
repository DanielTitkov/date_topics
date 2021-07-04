import 'package:date_topics/screens/home/widgets/topic_group_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: SafeArea(
        child: Container(
          child: TopicGroupList(),
        ),
      ),
    );
  }
}
