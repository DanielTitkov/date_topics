import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/topic_group/widgets/topic_group_list.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:flutter/material.dart';

class TopicGroupScreen extends StatelessWidget {
  final List<TopicGroup> topicGroups;

  TopicGroupScreen({this.topicGroups});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
          backgroundColor: Colors.pink[300],
          title: Text("Каталог"),
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(decoration: gradientAppBarDecoration)),
      body: Container(
        decoration: gradientBackgroundDecoration,
        child: TopicGroupList(topicGroups: topicGroups),
      ),
    );
  }
}
