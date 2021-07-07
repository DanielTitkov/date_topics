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
  final List<Item> items;
  final List<Tag> tags;

  Topic({this.id, this.title, this.description, this.items, this.tags});

  int itemsCount() {
    return items?.length ?? 0;
  }

  bool allowsRandomChoice() {
    if (this.itemsCount() == 1) {
      return true;
    }
    return false;
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
