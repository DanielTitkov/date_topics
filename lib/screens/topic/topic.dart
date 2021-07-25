import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/topic/widgets/topic_list.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:date_topics/shared/elevation.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatefulWidget {
  final TopicGroup topicGroup;
  List<Tag> filterTags;

  TopicScreen({this.topicGroup});

  @override
  _TopicScreenState createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
          backgroundColor: Colors.pink[300],
          title: Text("${widget.topicGroup.title}"),
          centerTitle: true,
          elevation: elevation,
          flexibleSpace: Container(decoration: appBarDecoration)),
      body: Container(
        decoration: screenBackgroundDecoration,
        child: TopicList(
          topicGroup: widget.topicGroup,
        ),
      ),
    );
  }
}
