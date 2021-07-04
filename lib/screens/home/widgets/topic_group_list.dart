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
    final List<TopicGroup> topicGroups = [
      TopicGroup(
        title: "Вопросы Арона",
        description: "Вопросы чтобы лучше узнать друг друга",
        topics: [
          Topic(
              title: "Классическая процедура Арона",
              description: "36 вопросов"),
        ],
        tags: [
          Tag(title: "Личное"),
        ],
      ),
      TopicGroup(
        title: "На злобу дня",
        description: "Интересные кейсы из повседневности",
        topics: [
          Topic(
              title: "Геи в Берлина",
              description: "Курьёзный случай со свадьбой"),
          Topic(
              title: "Проблема Вкусвилла",
              description: "Противоречивая реклама"),
        ],
        tags: [
          Tag(title: "Политика"),
          Tag(title: "Новости"),
        ],
      ),
    ];
    return ListView.builder(
      itemCount: topicGroups.length,
      itemBuilder: (context, i) {
        return TopicGroupCard(topicGroup: topicGroups[i]);
      },
    );
  }
}
