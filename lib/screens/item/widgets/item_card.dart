import 'package:date_topics/domain/domain.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final Color color;

  ItemCard({this.item, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Card(
        elevation: 0,
        color: color,
        margin: EdgeInsets.fromLTRB(20, 6, 20, 6),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (item.title != null)
                Text(
                  item.title,
                  style: TextStyle(color: Colors.grey[800]),
                ),
              if (item.title != null) SizedBox(height: 6),
              Text(
                item.body,
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
