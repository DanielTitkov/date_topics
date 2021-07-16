import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/item/widgets/item_card.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:flutter/material.dart';

class PlayerScreen extends StatefulWidget {
  final Topic topic;

  PlayerScreen({this.topic});

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
          backgroundColor: Colors.pink[300],
          title: Text("${widget.topic.title}"),
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(decoration: appBarDecoration)),
      body: Container(
        decoration: screenBackgroundDecoration,
        child: Column(
          children: [
            Text(
              "Случайный вопрос",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey[800],
              ),
            ),
            ItemCard(item: widget.topic.items[0]),
          ],
        ),
      ),
    );
  }
}
