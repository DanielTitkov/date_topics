import 'package:date_topics/domain/domain.dart';

class Filter {
  final List<TopicGroup> topicGroups;
  final List<Topic> topics;
  final List<Tag> tags;

  Filter({this.topicGroups, this.topics, this.tags});

  List<TopicGroup> filterTopicGroups() {
    if (tags == null || tags.length < 1) {
      print("unfiltered");
      print(this.topicGroups);
      return this.topicGroups;
    }

    List<TopicGroup> filteredTopicGroups;
    for (var group in this.topicGroups) {
      for (var topic in group.topics) {
        for (var tag in this.tags) {
          if (topic.tags.contains(tag) &&
              !filteredTopicGroups.contains(group)) {
            filteredTopicGroups.add(group);
          }
        }
      }
    }

    print("filtered");
    print(filteredTopicGroups);
    return filteredTopicGroups;
  }

  List<Topic> filterTopics() {
    if (tags == null || tags.length < 1) {
      return this.topics;
    }

    List<Topic> filteredTopics;
    for (var topic in this.topics) {
      for (var tag in this.tags) {
        if (topic.tags.contains(tag) && !filteredTopics.contains(topic)) {
          filteredTopics.add(topic);
        }
      }
    }

    return filteredTopics;
  }
}
