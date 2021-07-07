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
        items: [Item(body: "Вопрос про свадьбу будет тут")],
      ),
      Topic(
        title: "Проблема Вкусвилла",
        description: "Противоречивая реклама",
        items: [Item(body: "Вопрос про Вкусвилл будет тут")],
      ),
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
        items: [Item(body: "Вопрос про мандарины будет тут")],
      ),
      Topic(
        title: "Реклама в ОАЭ",
        description: "Культурное соотвествие",
        items: [Item(body: "Вопрос про рекламу в ОАЭ будет тут")],
      ),
      Topic(
        title: "Кролики в Австралии",
        description: "Базовая биология",
        items: [Item(body: "Вопрос про кроликов будет тут")],
      ),
    ],
    tags: [
      Tag(title: "Логика"),
      Tag(title: "Физика"),
    ],
  ),
];
