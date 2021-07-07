import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/item/item.dart';
import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final Topic topic;

  TopicCard({this.topic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemScreen(
                  topic: topic,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(topic.title),
                subtitle: topic.itemsCount() > 1
                    ? Text("Доступно пунктов: ${topic.itemsCount()}")
                    : null,
              ),
              topic.description != null
                  ? Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        topic.description,
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    )
                  : Container(),
              topic.tags != null
                  ? ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: topic.tags.map((e) {
                        return TextButton(
                          onPressed: () {},
                          child: Text(e.title),
                        );
                      }).toList(),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
