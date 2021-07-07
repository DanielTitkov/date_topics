import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/item/widgets/item_card.dart';
import 'package:date_topics/screens/item/widgets/item_list.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  final Topic topic;

  ItemScreen({this.topic});

  @override
  Widget build(BuildContext context) {
    print(topic);
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
          backgroundColor: Colors.pink[300],
          title: Text("${topic.title}"),
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(decoration: appBarDecoration)),
      body: Container(
        decoration: screenBackgroundDecoration,
        child: ItemList(topic: topic),
      ),
    );
  }
}
