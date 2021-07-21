import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/item/widgets/item_list.dart';
import 'package:date_topics/screens/item/widgets/player_setup.dart';
import 'package:date_topics/shared/action_button.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  final Topic topic;

  ItemScreen({this.topic});

  @override
  Widget build(BuildContext context) {
    void _showPlayerSetupPanel(Topic topic) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: PlayerSetup(topic: topic),
          );
        },
      );
    }

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
      bottomNavigationBar: topic.allowPlayer
          ? Container(
              decoration: appBarDecoration,
              child: BottomAppBar(
                elevation: 0,
                color: Colors.transparent,
                shape: const CircularNotchedRectangle(),
                child: Container(height: 50.0),
              ),
            )
          : null,
      floatingActionButton: topic.allowPlayer
          ? ActionButton(
              onPressed: () => _showPlayerSetupPanel(topic),
              icon: const Icon(Icons.play_arrow),
            )
          : null,
      floatingActionButtonLocation:
          topic.allowPlayer ? FloatingActionButtonLocation.centerDocked : null,
    );
  }
}
