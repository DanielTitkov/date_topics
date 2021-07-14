import 'package:date_topics/data/topics.dart';
import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/item/widgets/item_card.dart';
import 'package:date_topics/screens/topic_group/topic_group.dart';
import 'package:date_topics/screens/topic_group/widgets/topic_group_list.dart';
import 'package:date_topics/services/topic.dart';
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
    final TopicProcessor processor = TopicProcessor(topicGroups: topicGroups);

    int topicGroupIdx;
    int topicIdx;
    int itemIdx; // not randomized by now

    void _updateRandomItem() {
      RandomItem item = processor.randomItem();
      setState(() {
        topicGroupIdx = item.topicGroupIdx;
        topicIdx = item.topicIdx;
        itemIdx = item.itemIdx;
      });
    }

    _updateRandomItem();

    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(decoration: appBarDecoration),
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
        decoration: screenBackgroundDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Случайный вопрос",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                    SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27),
                      child: Text(
                        "${topicGroups[topicGroupIdx].title}:\n ${topicGroups[topicGroupIdx].topics[topicIdx].title}",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blueGrey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ItemCard(
                item: topicGroups[topicGroupIdx].topics[topicIdx].items[0]),
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
      bottomNavigationBar: Container(
        decoration: appBarDecoration,
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan[200],
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        foregroundColor: Colors.deepPurpleAccent,
        onPressed: _updateRandomItem,
        child: const Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
