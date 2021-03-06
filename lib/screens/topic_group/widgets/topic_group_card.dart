import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/topic/topic.dart';
import 'package:date_topics/shared/elevation.dart';
import 'package:flutter/material.dart';

class TopicGroupCard extends StatelessWidget {
  final TopicGroup topicGroup;

  TopicGroupCard({this.topicGroup});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Card(
        elevation: elevation,
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicScreen(
                  topicGroup: topicGroup,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(topicGroup.title),
                subtitle: Text("Доступно тем: ${topicGroup.topics.length}"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  topicGroup.description,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: topicGroup?.tags?.map((e) {
                      return TextButton(
                        onPressed: () {},
                        child: Text(e.title),
                      );
                    })?.toList() ??
                    [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
