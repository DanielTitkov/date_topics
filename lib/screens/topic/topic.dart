import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/topic/widgets/topic_list.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  final TopicGroup topicGroup;

  TopicScreen({this.topicGroup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("${topicGroup.title}"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          child: TopicList(
            topicGroup: topicGroup,
          ),
        ),
      ),
    );
  }
}
