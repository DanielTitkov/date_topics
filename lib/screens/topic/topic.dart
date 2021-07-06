import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/topic/widgets/topic_list.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  final TopicGroup topicGroup;

  TopicScreen({this.topicGroup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
          backgroundColor: Colors.pink[300],
          title: Text("${topicGroup.title}"),
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(decoration: gradientAppBarDecoration)),
      body: Container(
        decoration: gradientBackgroundDecoration,
        child: TopicList(
          topicGroup: topicGroup,
        ),
      ),
    );
  }
}
