import 'dart:math';

import 'package:date_topics/domain/domain.dart';

class TopicProcessor {
  final List<TopicGroup> topicGroups;

  TopicProcessor({this.topicGroups});

  RandomItem randomItem() {
    Map<int, List<int>> topicGroupsToRandomize = {};
    for (int i = 0; i < topicGroups.length; i++) {
      if (topicGroups[i].allowsRandomChoice()) {
        List<int> topicsToRandomize = [];
        for (int j = 0; j < topicGroups[i].topics.length; j++) {
          if (topicGroups[i].topics[j].allowsRandomChoice()) {
            topicsToRandomize.add(j);
          }
        }
        topicGroupsToRandomize[i] = topicsToRandomize;
      }
    }

    final _random = Random();
    int topicGroupIdx = topicGroupsToRandomize.keys
        .elementAt(_random.nextInt(topicGroupsToRandomize.length));

    int topicIdx =
        _random.nextInt(topicGroupsToRandomize[topicGroupIdx].length);

    return RandomItem(
      topicGroupIdx: topicGroupIdx,
      topicIdx: topicIdx,
      itemIdx: 0, // for now only topics with 1 item allowed to random choice
    );
  }
}

class RandomItem {
  final int topicGroupIdx;
  final int topicIdx;
  final int itemIdx;

  RandomItem({this.topicGroupIdx, this.topicIdx, this.itemIdx});
}
