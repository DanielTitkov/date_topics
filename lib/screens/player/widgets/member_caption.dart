import 'package:date_topics/domain/domain.dart';
import 'package:flutter/material.dart';

class MemberCaption extends StatelessWidget {
  const MemberCaption({
    Key key,
    @required this.member,
  }) : super(key: key);

  final Member member;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Отвечает ",
        style: TextStyle(
          fontSize: 22,
          color: Colors.blueGrey[800],
          // fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
            text: "Участник ${member.id}",
            style: TextStyle(
              fontSize: 22,
              // fontWeight: FontWeight.bold,
              color: member.color,
            ),
          ),
        ],
      ),
    );
  }
}
