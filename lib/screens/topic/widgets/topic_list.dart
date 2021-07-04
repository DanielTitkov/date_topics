import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/topic/widgets/topic_card.dart';
import 'package:flutter/material.dart';

class TopicList extends StatelessWidget {
  final TopicGroup topicGroup;

  TopicList({this.topicGroup});

  @override
  Widget build(BuildContext context) {
    if (topicGroup != null && topicGroup.topics.length > 0) {
      return ListView.builder(
        itemCount: topicGroup.topics.length,
        itemBuilder: (context, i) {
          return TopicCard(topic: topicGroup.topics[i]);
        },
      );
    } else {
      return Container(
        child: Center(
          child: Text(
            "Тема пуста",
            style: TextStyle(fontSize: 30),
          ),
        ),
      );
    }
  }
}
