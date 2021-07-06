import 'package:date_topics/data/topics.dart';
import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/item/widgets/item_card.dart';
import 'package:date_topics/screens/topic_group/topic_group.dart';
import 'package:date_topics/screens/topic_group/widgets/topic_group_list.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<TopicGroup> topicGroups = topicGroupsData;
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(decoration: gradientAppBarDecoration),
        actions: [
          TextButton.icon(
            icon: Icon(
              Icons.format_list_bulleted,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicGroupScreen(
                    topicGroups: topicGroups,
                  ),
                ),
              );
            },
            label: Text(
              "Каталог",
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton.icon(
            icon: Icon(
              Icons.tag,
              color: Colors.white,
            ),
            onPressed: () {},
            label: Text(
              "Теги",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: gradientBackgroundDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ItemCard(item: topicGroups[0].topics[0].items[0]),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.purple[100],
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () => setState(() {}),
        child: const Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
