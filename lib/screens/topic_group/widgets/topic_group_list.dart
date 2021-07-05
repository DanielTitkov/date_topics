import 'package:date_topics/data/topics.dart';
import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/topic_group/widgets/topic_group_card.dart';
import 'package:flutter/material.dart';

class TopicGroupList extends StatelessWidget {
  final List<TopicGroup> topicGroups;

  TopicGroupList({this.topicGroups});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topicGroups.length,
      itemBuilder: (context, i) {
        return TopicGroupCard(topicGroup: topicGroups[i]);
      },
    );
  }
}
