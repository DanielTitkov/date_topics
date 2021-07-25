import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/topic_group/widgets/topic_group_list.dart';
import 'package:date_topics/services/filter.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:date_topics/shared/elevation.dart';
import 'package:flutter/material.dart';

class TopicGroupScreen extends StatefulWidget {
  final List<TopicGroup> topicGroups;
  List<Tag> filterTags;

  TopicGroupScreen({this.topicGroups});

  @override
  _TopicGroupScreenState createState() => _TopicGroupScreenState();
}

class _TopicGroupScreenState extends State<TopicGroupScreen> {
  @override
  Widget build(BuildContext context) {
    List<TopicGroup> topicGroups = Filter(
      tags: widget.filterTags,
      topicGroups: widget.topicGroups,
    ).filterTopicGroups();

    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
          backgroundColor: Colors.pink[300],
          title: Text("Каталог"),
          centerTitle: true,
          elevation: elevation,
          flexibleSpace: Container(decoration: appBarDecoration)),
      body: Container(
        decoration: screenBackgroundDecoration,
        child: TopicGroupList(topicGroups: topicGroups),
      ),
    );
  }
}
