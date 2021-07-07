import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/item/widgets/item_card.dart';
import 'package:date_topics/screens/topic/widgets/topic_card.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final Topic topic;

  ItemList({this.topic});

  @override
  Widget build(BuildContext context) {
    if (topic != null && topic.items != null && topic.items.length > 0) {
      return ListView.builder(
        itemCount: topic.items.length,
        itemBuilder: (context, i) {
          return ItemCard(item: topic.items[i]);
        },
      );
    } else {
      return Container(
        child: Center(
          child: Text(
            "Пока тут пусто",
            style: TextStyle(fontSize: 30),
          ),
        ),
      );
    }
  }
}
