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
  TopicGroup(
    title: "Профанное",
    description: "Вопросы на бытовые темы",
    topics: [
      Topic(
        title: "Что ты планируешь делать на следующей неделе?",
        items: [Item(body: "Что ты планируешь делать на следующей неделе?")],
      ),
      Topic(
        title: "Что тебе нравится и не нравится в свиданиях?",
        items: [
          Item(
              body:
                  "Что тебе нравится и не нравится в свиданиях?, Что тебе нравится и не нравится в свиданиях?Что тебе нравится и не нравится в свиданиях?Что тебе нравится и не нравится в свиданиях?")
        ],
      ),
      Topic(
        title: "Чем ты славишься среди своих друзей?",
        items: [Item(body: "Чем ты славишься среди своих друзей?")],
      ),
      Topic(
        title:
            "Какой стереотип о мужчинах / женщинах ты ненавидишь больше всего?",
        items: [
          Item(
              body:
                  "Какой стереотип о мужчинах / женщинах ты ненавидишь больше всего?")
        ],
      ),
      Topic(
        title: "Что заставляет тебя нервничать?",
        items: [Item(body: "Что заставляет тебя нервничать?")],
      ),
      Topic(
        title: "Что может мгновенно вызвать в тебе отторжение к человеку?",
        items: [
          Item(
              body: "Что может мгновенно вызвать в тебе отторжение к человеку?")
        ],
      ),
      Topic(
        title: "С каким заблуждением о себе ты сталкиваешься чаще всего?",
        items: [
          Item(body: "С каким заблуждением о себе ты сталкиваешься чаще всего?")
        ],
      ),
      Topic(
        title: "Какое у тебя самое яркое воспоминание из детства?",
        items: [
          Item(body: "Какое у тебя самое яркое воспоминание из детства?")
        ],
      ),
      Topic(
        title: "Ты жаворонок или сова?",
        items: [Item(body: "Ты жаворонок или сова?")],
      ),
      Topic(
        title: "Что ты любишь на ужин/завтрак?",
        items: [Item(body: "Что ты любишь на ужин/завтрак?")],
      ),
      Topic(
        title: "Ты любишь больше кошек или собак?",
        items: [Item(body: "Ты любишь больше кошек или собак?")],
      ),
    ],
    tags: [],
  ),
];
