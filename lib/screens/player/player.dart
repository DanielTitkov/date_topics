import 'package:date_topics/data/members.dart';
import 'package:date_topics/domain/domain.dart';
import 'package:date_topics/screens/item/widgets/item_card.dart';
import 'package:date_topics/screens/player/widgets/member_caption.dart';
import 'package:date_topics/shared/button.dart';
import 'package:date_topics/shared/decoration.dart';
import 'package:flutter/material.dart';

class PlayerScreen extends StatefulWidget {
  final Topic topic;
  final int membersNumber;
  List<int> membersIdxs;

  PlayerScreen({this.topic, this.membersNumber}) {
    List<int> membersIdxs = [];

    int _curMemberIdx = 0;
    for (var i = 0; i < topic.itemsCount(); i++) {
      membersIdxs.add(_curMemberIdx);
      if (_curMemberIdx == membersNumber - 1) {
        _curMemberIdx = 0;
      } else {
        _curMemberIdx += 1;
      }
    }

    this.membersIdxs = membersIdxs;
  }

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final List<Member> members = membersData;

  int _currentItemIdx = 0;
  int _currentMemberIdx = 0;
  Member member = membersData[0];

  void _nextItem() {
    if (_currentItemIdx == widget.topic.itemsCount() - 1) {
      return;
    }
    setState(() {
      _currentItemIdx += 1;
      _currentMemberIdx += 1;
      member = membersData[widget.membersIdxs[_currentMemberIdx]];
    });
  }

  void _previousItem() {
    if (_currentItemIdx == 0) {
      return;
    }
    setState(() {
      _currentItemIdx -= 1;
      _currentMemberIdx -= 1;
      member = membersData[widget.membersIdxs[_currentMemberIdx]];
    });
  }

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
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Вопрос ${_currentItemIdx + 1}/${widget.topic.itemsCount()}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                    SizedBox(height: 35),
                    MemberCaption(member: member),
                    SizedBox(height: 27),
                    ItemCard(
                      item: widget.topic.items[_currentItemIdx],
                      color: member.color,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "Предыдущий",
                    onPressed: _previousItem,
                  ),
                  Button(
                    text: "Следующий",
                    onPressed: _nextItem,
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
