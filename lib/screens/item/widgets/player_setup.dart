import 'package:flutter/material.dart';

class PlayerSetup extends StatefulWidget {
  @override
  _PlayerSetupState createState() => _PlayerSetupState();
}

class _PlayerSetupState extends State<PlayerSetup> {
  final _formKey = GlobalKey<FormState>();
  final List<int> membersNumber = [1, 2, 3, 4];

  int _currentMembersNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            'Проиграть вопросы темы',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          SizedBox(height: 10.0),
          Text("Количество участников $_currentMembersNumber"),
          Slider(
            activeColor: Colors.deepPurpleAccent,
            inactiveColor: Colors.deepPurple[200],
            min: membersNumber[0].toDouble(),
            max: membersNumber.last.toDouble(),
            divisions: membersNumber.length - 1,
            value: (_currentMembersNumber ?? 2).toDouble(),
            onChanged: (val) =>
                setState(() => _currentMembersNumber = val.round()),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.deepPurpleAccent,
            child: Text(
              'Запустить плеер',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              if (_formKey.currentState.validate()) {
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
