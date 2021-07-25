import 'package:date_topics/data/tags.dart';
import 'package:date_topics/shared/button.dart';
import 'package:date_topics/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:date_topics/domain/domain.dart';

class TagsCloud extends StatefulWidget {
  List<Tag> tags = tagsData;

  @override
  _TagsCloudState createState() => _TagsCloudState();
}

class _TagsCloudState extends State<TagsCloud> {
  List<Tag> _activeTags = [];

  bool _tagIsActive(Tag tag) {
    for (var e in _activeTags) {
      if (e.id == tag.id) {
        return true;
      }
    }
    return false;
  }

  void _toggleTagActive(Tag tag) {
    if (_tagIsActive(tag)) {
      setState(() {
        _activeTags.remove(tag);
      });
    } else {
      setState(() {
        _activeTags.add(tag);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
            alignment: WrapAlignment.center,
            children: widget.tags.map((e) {
              return ActionChip(
                onPressed: () {
                  _toggleTagActive(e);
                },
                label: Text(e.title),
                backgroundColor: _tagIsActive(e) ? accentColor : Colors.grey,
              );
            }).toList()),
        Button(
          text: "Подвердить",
          onPressed: () {},
        ),
      ],
    );
  }
}
