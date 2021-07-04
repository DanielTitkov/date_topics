import 'package:date_topics/screens/topic/widgets/topic_list.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[400],
      body: SafeArea(
        child: Container(
          child: TopicList(),
        ),
      ),
    );
  }
}
