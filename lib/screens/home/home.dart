import 'package:date_topics/data/topics.dart';
import 'package:date_topics/domain/domain.dart';
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
      backgroundColor: Colors.pink[300],
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
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
              child: Text("Каталог"),
            ),
          ],
        ),
      ),
    );
  }
}
