class Item {
  final int id;
  final String body;
  final int orderIndex; // this may be optional

  Item({this.id, this.body, this.orderIndex});
}

class Topic {
  final int id;
  final String title;
  final String description;
  final List<Item> items;
  final List<Tag> tags;

  Topic({this.id, this.title, this.description, this.items, this.tags});
}

class TopicGroup {
  final int id;
  final String title;
  final String description;
  final List<Topic> topis;

  TopicGroup({this.id, this.title, this.description, this.topis});
}

class Tag {
  final int id;
  final String title;
  final String description;

  Tag({this.id, this.title, this.description});
}
