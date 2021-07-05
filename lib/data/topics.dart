import 'package:date_topics/domain/domain.dart';

final List<TopicGroup> topicGroupsData = [
  TopicGroup(
    title: "Вопросы Арона",
    description: "Вопросы чтобы лучше узнать друг друга",
    topics: [
      Topic(
        title: "Классическая процедура Арона",
        description: "36 вопросов",
        items: [
          Item(body: "Кто ты по жизни?", title: "Вопрос 1"),
          Item(body: "Какой твой любимый цвет?"),
          Item(body: "Зачем ты кушаешь черешню?", title: "Вопрос 3"),
          Item(body: "Какой самый лучший язык программирования?"),
        ],
      ),
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
        title: "Геи в Берлине",
        description: "Курьёзный случай со свадьбой",
      ),
      Topic(title: "Проблема Вкусвилла", description: "Противоречивая реклама"),
    ],
    tags: [
      Tag(title: "Политика"),
      Tag(title: "Новости"),
    ],
  ),
  TopicGroup(
    title: "Загадки и задачки",
    description: "Штуки, над которым скорее всего надо подумать",
    topics: [
      Topic(
        title: "Девочки и мандарины",
        description: "Кое-что о физике",
      ),
      Topic(
        title: "Реклама в ОАЭ",
        description: "Культурное соотвествие",
      ),
      Topic(
        title: "Кролики в Австралии",
        description: "Базовая биология",
      ),
    ],
    tags: [
      Tag(title: "Логика"),
      Tag(title: "Физика"),
    ],
  ),
];
