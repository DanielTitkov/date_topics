import 'package:flutter/painting.dart';

class Item {
  final String id;
  final String title; // optional
  final String body;
  final int orderIndex; // this may be optional

  Item({this.id, this.title, this.body, this.orderIndex});
}

class Topic {
  final String id;
  final String title;
  final String description;
  final String image;
  final List<Item> items;
  List<Item> itemsFiltered;
  final List<Tag> tags;
  final bool allowPlayer;
  final bool allowRandom;

  Topic({
    this.id,
    this.title,
    this.description,
    this.image,
    this.items,
    this.tags,
    this.allowPlayer = true,
    this.allowRandom = true,
  });

  int itemsCount() {
    return items?.length ?? 0;
  }

  bool allowsRandomChoice() {
    return allowRandom;
  }
}

class TopicGroup {
  final String id;
  final String title;
  final String description;
  final List<Topic> topics;
  final List<Tag> tags;

  TopicGroup({this.id, this.title, this.description, this.topics, this.tags});

  bool allowsRandomChoice() {
    for (var topic in topics) {
      if (topic.allowsRandomChoice()) {
        return true;
      }
    }

    return false;
  }
}

class Tag {
  final String id;
  final String title;
  final String description;

  Tag({this.id, this.title, this.description});
}

class Member {
  final int id;
  final Color color;

  Member({this.id, this.color});
}
