import 'package:date_topics/domain/domain.dart';
import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final Topic topic;

  TopicCard({this.topic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: InkWell(
          // onTap: () async {
          //   Navigator.pushNamed(context, "/topic");
          // },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(topic.title),
                subtitle: Text("Доступно пунктов: ${topic.items?.length ?? 0}"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  topic.description,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
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
