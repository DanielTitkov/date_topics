import 'package:date_topics/domain/domain.dart';

final List<TopicGroup> topicGroupsData = [
  TopicGroup(
    title: "Вопросы Арона",
    description: "Вопросы чтобы лучше узнать друг друга",
    topics: [
      Topic(title: "Классическая процедура Арона", description: "36 вопросов"),
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
          title: "Геи в Берлине", description: "Курьёзный случай со свадьбой"),
      Topic(title: "Проблема Вкусвилла", description: "Противоречивая реклама"),
    ],
    tags: [
      Tag(title: "Политика"),
      Tag(title: "Новости"),
    ],
  ),
];
