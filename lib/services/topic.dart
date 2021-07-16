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

    int itemIdx = _random
        .nextInt(topicGroups[topicGroupIdx].topics[topicIdx].items.length);

    return RandomItem(
      topicGroupIdx: topicGroupIdx,
      topicIdx: topicIdx,
      itemIdx: itemIdx,
    );
  }
}

class RandomItem {
  final int topicGroupIdx;
  final int topicIdx;
  final int itemIdx;

  RandomItem({this.topicGroupIdx, this.topicIdx, this.itemIdx});
}
