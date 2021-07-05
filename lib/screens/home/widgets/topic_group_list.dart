import 'package:date_topics/data/topics.dart';
import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/home/widgets/topic_group_card.dart';
import 'package:flutter/material.dart';

class TopicGroupList extends StatefulWidget {
  @override
  _TopicGroupListState createState() => _TopicGroupListState();
}

class _TopicGroupListState extends State<TopicGroupList> {
  @override
  Widget build(BuildContext context) {
    final List<TopicGroup> topicGroups = topicGroupsData;
    return ListView.builder(
      itemCount: topicGroups.length,
      itemBuilder: (context, i) {
        return TopicGroupCard(topicGroup: topicGroups[i]);
      },
    );
  }
}
